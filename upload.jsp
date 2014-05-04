<%--
温馨提示：
	在flash的参数名upload_url中可自行定义一些参数（请求方式：POST），定义后在服务器端获取即可，比如可以应用到用户验证，文件的保存名等。
	本示例未作极致的用户体验与严谨的安全设计（如用户直接访问此页时该如何，万一客户端数据不可信时验证文件的大小、类型等），只保证正常情况下无误，请阁下注意。
--%>
<%@ page session="false" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="com.ceou.bean.UserBean"%>
<%@ page import="com.ceou.action.PersonalAction"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>
<%@ page import="org.apache.commons.fileupload.util.*"%>
<%@ page import="com.alibaba.fastjson.*"%>
<%
	HttpSession session = request.getSession();
	String contentType = request.getContentType();

	//session中获取用户信息
	UserBean ub = (UserBean) session.getAttribute("userBean");
	String useremail = ub.getEmail();
	//System.out.println(useremail);

	if (contentType.indexOf("multipart/form-data") >= 0) {
		Result result = new Result();
		result.avatarUrls = new ArrayList();
		result.success = false;
		result.msg = "Failure!";

		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		FileItemIterator fileItems = upload.getItemIterator(request);
		//定义一个变量用以储存当前头像的序号
		int avatarNumber = 1;
		//取服务器时间+8位随机码作为部分文件名，确保文件名无重复。
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(
				"yyyyMMddHHmmss");
		String fileName = simpleDateFormat.format(new Date());
		Random random = new Random();
		String randomCode = "";
		for (int i = 0; i < 8; i++) {
			randomCode += Integer.toString(random.nextInt(36), 36);
		}
		fileName = fileName + randomCode;
		//基于原图的初始化参数
		String initParams = "";
		BufferedInputStream inputStream;
		BufferedOutputStream outputStream;
		//遍历表单域
		while (fileItems.hasNext()) {
			FileItemStream fileItem = fileItems.next();
			String fieldName = fileItem.getFieldName();
			//是否是原始图片 file 域的名称（默认的 file 域的名称是__source，可在插件配置参数中自定义。参数名：src_field_name）
			Boolean isSourcePic = fieldName.equals("__source");
			//文件名，如果是本地或网络图片为原始文件名（不含扩展名）、如果是摄像头拍照则为 *FromWebcam
			//String name = fileItem.getName();	
			//当前头像基于原图的初始化参数（即只有上传原图时才会发送该数据），用于修改头像时保证界面的视图跟保存头像时一致，提升用户体验度。
			//修改头像时设置默认加载的原图url为当前原图url+该参数即可，可直接附加到原图url中储存，不影响图片呈现。
			if (fieldName.equals("__initParams")) {
				inputStream = new BufferedInputStream(fileItem
						.openStream());
				byte[] bytes = new byte[inputStream.available()];
				inputStream.read(bytes);
				initParams = new String(bytes, "UTF-8");
				inputStream.close();
			}
			//如果是原始图片 file 域的名称或者以默认的头像域名称的部分“__avatar”打头
			else if (isSourcePic || fieldName.startsWith("__avatar")) {

				File dir = new File(application.getRealPath("/avatar")
						+ File.separator + useremail);
				if (!dir.exists()) {
					dir.mkdir();
				}
				//输出路径用户文件夹路径
				//System.out.println(dir.getCanonicalPath());

				String virtualPath = "/" + useremail + "/"
						+ avatarNumber + "_" + fileName + ".jpg";
				//原始图片（默认的 file 域的名称是__source，可在插件配置参数中自定义。参数名：src_field_name）。
				if (isSourcePic) {
					result.sourceUrl = virtualPath = "/" + fileName
							+ ".jpg";
				}
				//头像图片（默认的 file 域的名称：__avatar1,2,3...，可在插件配置参数中自定义，参数名：avatar_field_names）。
				else {
					result.avatarUrls.add(virtualPath);
					avatarNumber++;
				}
				inputStream = new BufferedInputStream(fileItem
						.openStream());
				outputStream = new BufferedOutputStream(
						new FileOutputStream(application
								.getRealPath("/avatar")
								+ virtualPath.replace("/", "\\")));
				Streams.copy(inputStream, outputStream, true);
				inputStream.close();
				outputStream.flush();
				outputStream.close();
			}
			/*else
			{
				附加在接口中的其他参数...
				如下代码在上传接口upload.jsp中定义了一个user=xxx的参数：
				var swf = new fullAvatarEditor("swf", {
					id: "swf",
					upload_url: "Upload.asp?user=xxx"
				});
				即可如下获取user的值xxx
			
				inputStream = new BufferedInputStream(fileItem.openStream());
				byte[] bytes = new byte [inputStream.available()];
				inputStream.read(bytes); 
				String user = new String(bytes, "UTF-8");
				inputStream.close();
			}*/
		}
		if (result.sourceUrl != null) {
			result.sourceUrl += initParams;
		}
		result.success = true;
		result.msg = "Success!";
		/*
			To Do...可在此处处理储存事项
		 */
		//返回图片的保存结果（返回内容为json字符串，可自行构造，该处使用fastjson构造）
		out.println(JSON.toJSONString(result));
		String jsonStr = JSON.toJSONString(result);//封装在json中的图片路径数据
		//System.out.println(jsonStr);

		String imgData = jsonStr.substring(jsonStr.indexOf("[") + 1,
				jsonStr.indexOf("]"));//取出json格式数据中的[]括号内的内容

		imgData = imgData.replace('"', ' ');//将有引号的“字符都替换成空格
		//System.out.println("sds:" + imgData);
		imgData = imgData.replaceAll("/" + useremail, "avatar/"
				+ useremail);//将所有是斜杠/的字符串都替换成文件夹：”upload/“ 

		//System.out.println(imgData);//存入的3张头像，可以添加到数据库

		String[] str = imgData.split(",");//将img数据根据，分割取出
		session.setAttribute("img1", str[0]);
		session.setAttribute("img2", str[1]);
		session.setAttribute("img3", str[2]);//放入session中以供页面显示
		PersonalAction pa = new PersonalAction();
		pa.editAvatar(str[0].trim(),str[1].trim(),str[2].trim(),ub.getId());
		System.out.println(str[0]);
		System.out.println(str[1]);
		System.out.println(str[2]);
		System.out.println(ub.getId());
		
	}
%>
<%!/**
	 * 表示上传的结果。
	 */
	private class Result {
		/**
		 * 表示图片是否已上传成功。
		 */
		public Boolean success;
		/**
		 * 自定义的附加消息。
		 */
		public String msg;
		/**
		 * 表示原始图片的保存地址。
		 */
		public String sourceUrl;
		/**
		 * 表示所有头像图片的保存地址，该变量为一个数组。
		 */
		public ArrayList avatarUrls;
	}%>