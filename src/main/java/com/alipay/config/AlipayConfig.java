package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016092400583296";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCpZea8Q4rSQDejytUbH8qtJlvyifxNg98X3mbSUWLc8ndFbXbfE4VM3hQXVwhsr6TYLwQfnE0DV6cay1bx0TrJuTj81HoBu3MG7781Xnjjsnk724f8If61ihqF+K0I1bXTcmtp12aR6rYXYWgl+SoWCIPFlQuB4js8J2Lt+UvfdYf2mr9tpUlzk3Mkt10wDXTxJ9krDdEOQfAFxG3TZTKsR6ho23WKPTHCEoXK9OYMQ+C4ddn6Js18q3hWh0OtJmt2vwHA6NIF/7z1RU1ROhxCYPXiI85JDbwOoWQndzrewbvUJExx7w2V19ul3vyys+Bo0RM2rkUiTd3KsIfrmsTnAgMBAAECggEAOAMPxlR3BIpjW29oA64BcDtsz8e8e00NaXEKgqSSkghCU9ycH6ruurn73rPSf02crjbtoB4ogOBsyrlNqGvMioMKSt9e8E+w+ywvB1CTnIaY+6fdUQtUk2Z02rOdU3yGwMHmrnqg2cLILvbwXw4CUoLCP4TG502M1JkZZyK1ac+DFkhDR9AHwkX8W8UV304q181b0C6g4UUXZw0AvLa/AOyQjh3IbaNQ9hUhsSanEzV2mf4+iiKTC+inmmA3wwc0xalovFdNsTQJX0nU+khK6B3xTEoIMFB2jSfouSLun5vxLoydNzPofE6ATTpkgoq3Ch/2TQ0jGF9Mv5lNvtRG8QKBgQDcGrPLwJeJn/0UcBtqMWNJJJd4/9KKV0anHSxMhrc/ERo6KfEARkt+X4nrvwTDEVHcpTy9QJXv6lERR2jQVhF8CdZaDmzC371Z4gE//NWHwcN43Q7OUB+rsvOah4GfluH9SHsjcSn5AGEMThSMuLCjW6V0Dtr4bJbtC66a4u6RGwKBgQDFBjndWPMCKvy3GPXOsuppWR6Re+/GZaI551ZUvTi9nz8WFbrRv7TCXyFUiEKLoGBPQ1dxcoGEfd83aiH+NKtTBvShG7IeH4FSqZFDLK8uNzgihnLRTgDoeuKGWJX9iiQ01z8TvaHC8xY3C634RUAneE7ADmK28XaFBPeDm6gkJQKBgHtxrm0T8umJBVO1HGsOj/SxxRJjyB02nbWUMwgodhW07dS5OSVCR4z04FGLrIwK5rKtKceqtWz9KcJbHnnaC6xZiBKyDGWvPm9uxeyxTMD69zqOIIOthFWz49RDM3viD5USVZ2nFjdE8ykHkZbq7oZwG/dfbYfuvybral4L8GkJAoGBAKh5MnG75dAswfwvM8GT7C45LpJo0BduQNISpxe+1g4PZfqUijNhIkgy4GVQPtb2RGSCyPsRVv7cQ0s3Ten5T6ang/dfn2dyuTreFIDEbOewAChFn1iqwswIiDso9NjgjyVACYfv16rEAnL/YbuyO7GEhpJjurWEtDv6i0vWhmihAoGAItEzj30znCDcVa4XcZI1yagB7qPmx0ePCmkKFNNnzPLS5me0H/a2zGTY7RDqR06IrdiwaNEiZmOa3SGChBpA7jsH9XZLmrl50jyyDRXJanbAgstRd+rilSQT34f8vC5ZX2+/pFKnTL1s9QOlhxClybtc9sB0h1aLqgxovwtykWI=";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzI68e+aOtmq7EnzDbDP30bGnsROECqdDnXEhZ7OTdjcxO0SoTGdyC6PlLDzkDCs0FLnRaLe+hNJ2t7rGHeN07iYIzbQqqmwnT0yJDfceAVZMkVFnXZga2NpqDOtBD2LQzqQL3b1ISIWSuri1xp9obPQ7wQ8AQfuL8ma5UNj06R7lfKufGM9jzS0jZSQXPC8hDQs8Vg+aZc0tRCv+Q/46sXvaRyzDXOhIN0tbULkX4K2/6pK0gibMbduxgzt9K02GVnehW5AFpRbXTfffw3tsICSU7K6iVR9Q8xe9lb8nJKMGrl3gOCJ8a2xzeK67tTMBAJsGN3x5LHSgB+PI0U++QQIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://工程公网访问地址/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://eeitdemo10401.southeastasia.cloudapp.azure.com:8080/Travel/flight/xianqi/Success.jsp";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

