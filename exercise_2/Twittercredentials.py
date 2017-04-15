import tweepy

consumer_key = "op7Q3YdNCVitVc8dT7aEcI9d5";
#eg: consumer_key = "YisfFjiodKtojtUvW4MSEcPm";


consumer_secret = "4oWdWuC1EYDCw8uk5dJiIFxhOQRpd6IQlyf9p5XSV6IxkfByCp";
#eg: consumer_secret = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

access_token = "850840621057155072-ztVCZziA1DPKRoiN883ZfsWShvfIr0P";
#eg: access_token = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

access_token_secret = "aWyC0csMpNTjbKOXfgLVpEvvtAXCEkLfqb9P8xLJZNUZo";
#eg: access_token_secret = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";


auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)

api = tweepy.API(auth)

