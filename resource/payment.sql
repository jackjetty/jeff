pi�˻�ͨ��ssh ��¼��ݮ��
���ļ� justbon-upgrade.zip��deploy-upgrade.sh �ϴ���/home/pi/��
chmod +x deploy-upgrade.sh
sh deploy-upgrade.sh
�Զ�������
��������Ӧ���Ƿ�����
ps -ef|grep iot
 �Ƿ������/bin/bash /home/pi/iot/iot-gateway/bin/autorestart.sh
 ������java -Djava.io.tmpdir=/home/pi/iot/iot-gateway/bin/../tmp -Dlogback.configurationFile=/home/pi/iot/iot-gateway/bin/../logs -jar /home/pi/iot/iot-gateway/bin/../libs/iot-gateway.jar

 ps -ef|grep upgrade
 �Ƿ������java -jar upgrade-client.jar

18302877886

ɾ����װ��
rm -rf /home/pi/justbon-upgrade.zip /home/pi/justbon-upgrade /home/pi/deploy-upgrade.sh

1����֯�ܹ����ݱ���Ҫ��ȫ���
2���α�����֯�ܹ����ṩ�ӿ�ͬ��
3���ϱ����ݽ������򲻽������û���ֱ�Ӵ���ƥ��
4���������ء����������͹���
5�����زɼ�����֧�ֱ�������
6���������������
7���ֲ�ʽ��������

git tag -a DATA-RTS-V1.0 -m "��ɹ��ܣ�1��http��ws�ӿڲ�ѯʵʱ����"
git push origin DATA-RTS-V1.0
Command line instructions

Git global setup
git config --global user.name "�ƽ���1"
git config --global user.email "121437479@qq.com"

Create a new repository
git clone ssh://git@gitlab.example.com:2213/tech/ecm-server.git
cd ecm-server
touch README.md
git add README.md
git commit -m "add README"
git push -u origin master

Existing folder or Git repository
cd existing_folder
git init
git remote add origin ssh://git@gitlab.example.com:2213/tech/ecm-server.git
git add .
git commit
git push -u origin master




 SELECT
            e. NAME,
            e. CODE,
            case when e.type =2
            then m.name else e.name
            end as location,
            o. NAME AS projectName,
            e.brand_name AS brandName,
            e.model_name AS modelName,
            case when e.type =2
            then t. NAME else st. NAME
            end as deviceType,
            case when e.type =2
            then t.code else null
            end as templateCode
          FROM
            ecm_monitor e
            left join ecm_monitor m on e.space_id = m.id  and m.is_deleted =0
            LEFT JOIN ecm_org o ON e.project_id = o.id AND o.is_deleted = 0
            LEFT JOIN ecm_device_template t ON t.id = e.template_id AND t.is_deleted = 0
            LEFT JOIN ecm_space_template st ON st.id = e.template_id AND st.is_deleted = 0
          where
            1=1
            and e.id =#{id,jdbcType=VARCHAR}


this.monitorHistoryInfo.deviceAttrGroupList


https://116.63.39.205/justbon-ecm/ecm-server-view/device/report/details

{"code":200,"success":true,"data":{"deviceHierarchy":{"groupCode":"ZZJSY","groupName":"����α�����","projectCode":"GG1881","projectName":"���ɶ������⡤����1881","spaceCode":"13060559-690615-4869212","spaceName":"1#��ѹ��緿","deviceCode":"13116027-700491-4879130","deviceName":"��ѹ���߹�2#"},"deviceInfo":{"name":"��ѹ���߹�2#","code":"13116027-700491-4879130","location":"1#��ѹ��緿","projectName":"���ɶ������⡤����1881","deviceType":"��ѹ���߹�","brandName":"","modelName":"","templateCode":"DYCXG"},"deviceGeneralSituation":{"deviceRunTime":51,"historyWanrTotal":0,"warnCurrent":0,"warnOverTime":0,"workOrder":0,"deviceFailureRate":0.00},"deviceRunData":{"deviceAttrGroupList":[{"paramGroupName":"����1234g","deviceAttr":[{"monitorId":"778586342111051776","attrId":"790638009002229760","paramGroupName":"����1234g","name":"����4","remarkName":"","symbol":"ON4","unit":"","runDataList":[{"attrId":"790638009002229760","collectDate":"2021-01-13 17:00:12","collectTime":1610528412,"value":0},{"attrId":"790638009002229760","collectDate":"2021-01-13 17:02:13","collectTime":1610528533,"value":0},{"attrId":"790638009002229760","collectDate":"2021-01-13 17:08:14","collectTime":1610528894,"value":0},{"attrId":"790638009002229760","collectDate":"2021-01-13 17:14:15","collectTime":1610529255,"value":0},{"attrId":"790638009002229760","collectDate":"2021-01-13 17:20:15","collectTime":1610529615,"value":0},{"attrId":"790638009002229760","collectDate":"2021-01-13 17:26:17","collectTime":1610529977,"value":0},{"attrId":"790638009002229760","collectDate":"2021-01-13 17:32:17","collectTime":1610530337,"value":0},{"attrId":"790638009002229760","collectDate":"2021-01-13 17:38:17","collectTime":1610530697,"value":0},{"attrId":"790638009002229760","collectDate":"2021-01-13 17:44:19","collectTime":1610531059,"value":0}],"runDataValueList":[0,0,0,0,0,0,0,0,0]},{"monitorId":"778586342111051776","attrId":"790638009002229761","paramGroupName":"����1234g","name":"����3","remarkName":"","symbol":"ON3","unit":"","runDataList":[{"attrId":"790638009002229761","collectDate":"2021-01-13 17:00:12","collectTime":1610528412,"value":0},{"attrId":"790638009002229761","collectDate":"2021-01-13 17:02:13","collectTime":1610528533,"value":0},{"attrId":"790638009002229761","collectDate":"2021-01-13 17:08:14","collectTime":1610528894,"value":0},{"attrId":"790638009002229761","collectDate":"2021-01-13 17:14:15","collectTime":1610529255,"value":0},{"attrId":"790638009002229761","collectDate":"2021-01-13 17:20:15","collectTime":1610529615,"value":0},{"attrId":"790638009002229761","collectDate":"2021-01-13 17:26:17","collectTime":1610529977,"value":0},{"attrId":"790638009002229761","collectDate":"2021-01-13 17:32:17","collectTime":1610530337,"value":0},{"attrId":"790638009002229761","collectDate":"2021-01-13 17:38:17","collectTime":1610530697,"value":0},{"attrId":"790638009002229761","collectDate":"2021-01-13 17:44:19","collectTime":1610531059,"value":0}],"runDataValueList":[0,0,0,0,0,0,0,0,0]},{"monitorId":"778586342111051776","attrId":"790638009002229762","paramGroupName":"����1234g","name":"����2","remarkName":"","symbol":"ON2","unit":"","runDataList":[{"attrId":"790638009002229762","collectDate":"2021-01-13 17:00:12","collectTime":1610528412,"value":0},{"attrId":"790638009002229762","collectDate":"2021-01-13 17:02:13","collectTime":1610528533,"value":0},{"attrId":"790638009002229762","collectDate":"2021-01-13 17:08:14","collectTime":1610528894,"value":0},{"attrId":"790638009002229762","collectDate":"2021-01-13 17:14:15","collectTime":1610529255,"value":0},{"attrId":"790638009002229762","collectDate":"2021-01-13 17:20:15","collectTime":1610529615,"value":0},{"attrId":"790638009002229762","collectDate":"2021-01-13 17:26:17","collectTime":1610529977,"value":0},{"attrId":"790638009002229762","collectDate":"2021-01-13 17:32:17","collectTime":1610530337,"value":0},{"attrId":"790638009002229762","collectDate":"2021-01-13 17:38:17","collectTime":1610530697,"value":0},{"attrId":"790638009002229762","collectDate":"2021-01-13 17:44:19","collectTime":1610531059,"value":0}],"runDataValueList":[0,0,0,0,0,0,0,0,0]},{"monitorId":"778586342111051776","attrId":"790638009002229763","paramGroupName":"����1234g","name":"����1","remarkName":"","symbol":"ON1","unit":"","runDataList":[{"attrId":"790638009002229763","collectDate":"2021-01-13 17:00:12","collectTime":1610528412,"value":0},{"attrId":"790638009002229763","collectDate":"2021-01-13 17:02:13","collectTime":1610528533,"value":0},{"attrId":"790638009002229763","collectDate":"2021-01-13 17:08:14","collectTime":1610528894,"value":0},{"attrId":"790638009002229763","collectDate":"2021-01-13 17:14:15","collectTime":1610529255,"value":0},{"attrId":"790638009002229763","collectDate":"2021-01-13 17:20:15","collectTime":1610529615,"value":0},{"attrId":"790638009002229763","collectDate":"2021-01-13 17:26:17","collectTime":1610529977,"value":0},{"attrId":"790638009002229763","collectDate":"2021-01-13 17:32:17","collectTime":1610530337,"value":0},{"attrId":"790638009002229763","collectDate":"2021-01-13 17:38:17","collectTime":1610530697,"value":0},{"attrId":"790638009002229763","collectDate":"2021-01-13 17:44:19","collectTime":1610531059,"value":0}],"runDataValueList":[0,0,0,0,0,0,0,0,0]}],"queryTimeList":["2021-01-13 17:00:00","2021-01-13 17:06:00","2021-01-13 17:12:00","2021-01-13 17:18:00","2021-01-13 17:24:00","2021-01-13 17:30:00","2021-01-13 17:36:00","2021-01-13 17:42:00","2021-01-13 17:48:00"],"maxValue":0,"minValue":0}]}},"msg":"�����ɹ�"}


#�����
client_max_body_size 10M ����Ҫ����server�µ�server_name�£�

server {

listen 80;

server_name localhost;

client_max_body_size 80M;
proxy_buffering off;

proxy_send_timeout 90; #��˷��������ݻش�ʱ��(�����ͳ�ʱ)
proxy_read_timeout 90; #���ӳɹ��󣬺�˷�������Ӧʱ��(������ճ�ʱ)
 

D:\app\upgrade\file

http://my_ip_address:8088/download/images/fei_ji.jpg

server {
        listen 8088;
        location /download/images {
                alias /home/net-files/images;
        }
}

location /ccp {
                proxy_pass http://10.0.0.102:11000;
        }



Capture-BRC-CD-YJWF-7

{
    "code": 1,
    "data": {
        "fileName": "iot-gateway.jar",
        "md5": "025aae6dd8010ab6483096937fadf569",
        "url": "http://smartecm.justbon.com/static/upgrade/file/iot-gateway.jar"
    },
    "message": "success",
    "timestamp": "2020-07-06 09:05:10"
}

{
    "code": 1,
    "data": {
        "fileName": "upgrade1.sh",
        "md5": "6c5966b2d0395c159a859953fd3cb9a4",
        "url": "http://smartecm.justbon.com/static/upgrade/file/upgrade1.sh"
    },
    "message": "success",
    "timestamp": "2020-07-06 09:05:56"
}


{
    "id": "0.0.1",
    "desc": "upgrade",
    "shellUrl": "http://smartecm.justbon.com/static/upgrade/file/upgrade1.sh",
	"jarUrl":"http://smartecm.justbon.com/static/upgrade/file/iot-gateway.jar",
	"shellMd5":"6c5966b2d0395c159a859953fd3cb9a4",
	"jarMd5":"025aae6dd8010ab6483096937fadf569"
}

id;
    private String ;
    private String ;
    private String ;
    private String ;
    private String 
{
    "code": 1,
    "data": {
        "fileName": "upgrade.sh",
        "md5": "795db120d9cb4990dad05c7f397e8848",
        "url": "http://10.1.202.204:8220/upgrade/file/download/upgrade.sh"
    },
    "message": "success",
    "timestamp": "2020-06-19 16:37:00"
}


{
    "code": 1,
    "data": {
        "fileName": "upgrade1.sh",
        "md5": "e3f1bcf2a86dfe19a40374d95208a70a",
        "url": "http://10.1.202.204:8220/upgrade/file/download/upgrade1.sh"
    },
    "message": "success",
    "timestamp": "2020-06-22 10:03:30"
}
sed -i 's/\r//g' gggggggg.txt 
sed -i 's/java/iot-gateway/' stop.sh

sed -n 's/���滻���ַ���/�µ��ַ���/p'
sed -n  's/java/iot-gateway/p' stop.sh
{
    "code": 1,
    "data": {
        "fileName": "upgrade1.sh",
        "md5": "36566b248d001bba283cdba2b9517ec6",
        "url": "http://10.1.202.204:8220/upgrade/file/download/upgrade1.sh"
    },
    "message": "success",
    "timestamp": "2020-06-22 13:57:08"
}

{
    "code": 1,
    "data": {
        "fileName": "upgrade1.sh",
        "md5": "",
        "url": "http://10.1.202.204:8220/upgrade/file/download/upgrade1.sh"
    },
    "message": "success",
    "timestamp": "2020-06-22 15:02:14"
}

{
    "id": "0.0.1",
    "desc": "upgrade",
    "shellUrl": "http://smartecm.justbon.com/static/upgrade/file/upgrade1.sh",
	"jarUrl":"http://smartecm.justbon.com/static/upgrade/file/iot-gateway.jar",
	"shellMd5":"2d748c6d4ca02e2944d7922e09ca9b55",
	"jarMd5":"6c5966b2d0395c159a859953fd3cb9a4"
}


{
    "code": 1,
    "data": {
        "fileName": "iot-gateway.jar",
        "md5": "2d748c6d4ca02e2944d7922e09ca9b55",
        "url": "http://smartecm.justbon.com/static/upgrade/file/iot-gateway.jar"
    },
    "message": "success",
    "timestamp": "2020-07-02 21:10:52"
}

{
    "code": 1,
    "data": {
        "fileName": "upgrade1.sh",
        "md5": "6c5966b2d0395c159a859953fd3cb9a4",
        "url": "http://smartecm.justbon.com/static/upgrade/file/upgrade1.sh"
    },
    "message": "success",
    "timestamp": "2020-07-02 21:12:26"
}

--nacos.addr=10.121.200.129:8848


sh upgrade1.sh /home/pi/upgrade/tmp/iot-gateway.jar

nohup java -jar /home/pi/upgrade/libs/upgrade-client-1.0-SNAPSHOT.jar > /dev/null 2>&1&

/home/pi/upgrade/bin

/bin/su - pi -c "chmod +x /home/pi/upgrade/bin/*"
/bin/su - pi -c "/home/pi/upgrade/bin/start.sh"


upgrade_pid=`ps -ef | grep upgrade-client | grep -v grep | awk '{print $2}'`
if [ ! -n "$upgrade_pid" ];then
		echo "not exist"
else
		sudo kill -9 $upgrade_pid
		sleep 1
fi
2020.06.28-2020.07.03
���ܹ�������ܽ�ͷ�˼
1���Բ�ɼ������Զ����·���
2������ecm�������ϣ�upgrade �����/�ͻ��ˣ�
3��Э��ecm 4.0.0���ߺ͸���
4��Э��������Ŀ����
5��ѧϰflink������������


���ܹ�������
1.ecm �ع��Ŀ�������





10.0.5.233
10001

�ƽ��� 2018��4��13���ܱ�
���ܹ�����
1�����Ժ��Ż����ݶԽ�ϵͳ
2��Э���������ݶԽ�ϵͳ
���ܼƻ���
product �㼶
line
SSID:	TP-LINK_3878-Plus
Protocol:	802.11n
Security type:	WPA2-Personal
Network band:	2.4 GHz
Network channel:	1
IPv4 address:	192.168.0.4
IPv4 DNS servers:	192.168.0.1
Manufacturer:	Ralink Technology, Corp.
Description:	802.11n USB Wireless LAN Card
Driver version:	5.1.10.0
Physical address (MAC):	00-87-36-2F-CB-C1
ssh-keygen �Ct rsa �CC "jian12000@sina.com"

ssh://git@10.0.0.201:2213/pengyouhong/justboncloud.git
ssh pg@10.1.195.211
C6-36-55-0A-0B-25

{"id":"0000000025","publishTopic":"t_pub/0000000001/0000000025","devices":[{"id":"0000000956","workingMode":0,"slave":3,"ip":"10.1.120.224","port":10009},{"id":"0000000669","workingMode":0,"slave":2,"ip":"10.0.5.233","port":10001},{"id":"0000000673","workingMode":0,"slave":6,"ip":"10.0.5.233","port":10001},{"id":"0000000672","workingMode":0,"slave":5,"ip":"10.0.5.233","port":10001},{"id":"0000000957","workingMode":0,"slave":7,"ip":"10.1.120.224","port":10009},{"id":"0000000700","workingMode":0,"slave":1,"ip":"10.1.120.222","port":10002},{"id":"0000000675","workingMode":0,"slave":4,"ip":"10.0.5.233","port":10001},{"id":"0000000671","workingMode":0,"slave":4,"ip":"10.0.5.233","port":10001},{"id":"0000000955","workingMode":0,"slave":2,"ip":"10.1.120.224","port":10009},{"id":"0000000762","workingMode":0,"slave":1,"ip":"10.0.5.85","port":10012},{"id":"0000000668","workingMode":0,"slave":1,"ip":"10.0.5.233","port":10001},{"id":"0000000954","workingMode":0,"slave":5,"ip":"10.1.120.224","port":10009},{"id":"0000000670","workingMode":0,"slave":3,"ip":"10.0.5.233","port":10001},{"id":"0000000674","workingMode":0,"slave":1,"ip":"10.0.5.233","port":10001}],"gatherItems":[{"id":"0000000754","protocol":0,"pollingRules":[{"function":4,"startAddress":0,"dataLength":46,"reqInterval":10,"deviceId":"0000000671"}]},{"id":"0000000751","protocol":0,"pollingRules":[{"function":4,"startAddress":0,"dataLength":46,"reqInterval":10,"deviceId":"0000000668"}]},{"id":"0000000757","protocol":0,"pollingRules":[{"function":3,"startAddress":64,"dataLength":10,"reqInterval":13,"deviceId":"0000000674"}]},{"id":"0000000752","protocol":0,"pollingRules":[{"function":2,"startAddress":0,"dataLength":16,"reqInterval":10,"deviceId":"0000000669"}]},{"id":"0000001037","protocol":0,"pollingRules":[{"function":4,"startAddress":24,"dataLength":2,"reqInterval":10,"deviceId":"0000000954"}]},{"id":"0000000755","protocol":0,"pollingRules":[{"function":3,"startAddress":0,"dataLength":2,"reqInterval":10,"deviceId":"0000000672"}]},{"id":"0000000783","protocol":0,"pollingRules":[{"function":3,"startAddress":0,"dataLength":5,"reqInterval":1,"deviceId":"0000000700"}]},{"id":"0000001039","protocol":0,"pollingRules":[{"function":4,"startAddress":0,"dataLength":12,"reqInterval":10,"deviceId":"0000000956"}]},{"id":"0000001038","protocol":0,"pollingRules":[{"function":4,"startAddress":24,"dataLength":2,"reqInterval":10,"deviceId":"0000000955"}]},{"id":"0000000758","protocol":0,"pollingRules":[{"function":3,"startAddress":64,"dataLength":10,"reqInterval":13,"deviceId":"0000000675"}]},{"id":"0000001040","protocol":0,"pollingRules":[{"function":2,"startAddress":0,"dataLength":16,"reqInterval":10,"deviceId":"0000000957"}]},{"id":"0000000756","protocol":0,"pollingRules":[{"function":4,"startAddress":0,"dataLength":12,"reqInterval":10,"deviceId":"0000000673"}]},{"id":"0000000753","protocol":0,"pollingRules":[{"function":4,"startAddress":24,"dataLength":2,"reqInterval":10,"deviceId":"0000000670"}]}]}

if(computeMeta.getKpiType().value().equalsIgnoreCase("OUTPUT")){
            log.error("EventResult:{}",computeMeta.hashCode());
        }
		log.error("statistic:{}",computeMeta.hashCode());

1��product ����ɫ�Ĺ�����ϵ
2��product �ķֲ� ���� 
3���������м�洢 ����ʵʱ����
4��LTP ��ʲô����
5��ict �� ��һֵ Ϊʲô���ж���� 
6��ract�������������� 
7��linename �Ƿ������ظ�
8������ ����ڵ� product-random-

���ݿ����ơ��ӿ���ơ�Ȩ�޿��ƣ�����Ҫ��ȷ�£���

1��������õķ�ʽ����ô����   
2��SubProductType ������ �Ƿ����product group
3������ʵʱͳ���� ���Ƿֱ�ͳ��-�����Ǿ�ȷ��Сʱ��ʵʱ��¼�� 
4��ָ�� output ��EFF��LTH��ͣ��������ͣ��ʱ����mtbf�����������fpy��
 
this.smt.convertAndSendToUser

Jiang.zhang@siemens.com 
DEDSwin@2019



https://dicsdev-simicaspa-dicsdev.cn1.mindsphere-in.cn/macb/performance/eff/info?&lineIds=8bdd101d705c4809a607283d2facc5b5&from=2019-09-17T16:00:00.000Z&to=2019-09-18T16:00:00.000Z&timeZone=8
pOLICY Secure��uac�� or connect Secure(vpn)

URA 2.0
 ura.siemens.com 
 2c249daa-2f48-45c4-94ff-35a97c3f28c9
 2c249daa-2f48-45c4-94ff-35a97c3f28c9
 ad001.siemens.net
 ad005.onehc.net
 ad009.windad.org
 cn001.siemens.net
  GID: Z0040M9S
AD Account: AD001\Z0040M9S
Email: jianfeng.huang.ext@siemens.comCommon Name: Huang Jian Feng
GID: Z0040M9S
AD Account: AD001\Z0040M9S
Email: jianfeng.huang.ext@siemens.com



configureMessageConverters�����У������û�и��ǲ���û���������converter, ��convertersΪempty����WebMvcConfigurationSupport�����addDefaultHttpMessageConverters������Ĭ�ϵ�converter,���а�����Ĭ�ϵ�MappingJackson2HttpMessageConverter
��
������extendMessageConverters�����MappingJackson2HttpMessageConverter������Ч����

����취��������
1��������configureMessageConverters�����������������Ҫ��converter
2��������extendMessageConverters���ж�converter�����ͣ���������Ҫ������

{"version":"2020-03-04 18:08:32","basic":{"productionLineName":"CD_LXTEST_111","description":"","productionLineId":"269c3c82c95d138b9843c2d2559e9c11","assetId":"3371f793491c4d88bacbbd486af4a15a"},"workSpaceModel":{"class":"go.GraphLinksModel","nodeDataArray":[{"disText":"���ϻ�����","isGroup":true,"category":"OfGroups","containing":[],"key":"a9823bd20f2a603c88c6adf0317c0bf4","loc":"-473.0228474983079 -144.02499593580794"},{"disText":"�˹���λ","isGroup":true,"category":"OfGroups","containing":[],"key":"9f6a5bd595c602bc5df7843c8115feda","loc":"-214.0228474983079 -146.02499593580794"},{"disText":"�Զ�����λ","isGroup":true,"category":"OfGroups","containing":[],"key":"d030a00aac04ca38a68330e969043a43","loc":"22.97715250169209 -154.02499593580794"},{"disText":"���ʹ�","isGroup":true,"category":"OfGroups","containing":[],"key":"12e44eeaeca87a82b36a44d84f54b607","loc":"254.9771525016921 -151.02499593580794"}],"linkDataArray":[{"from":"a9823bd20f2a603c88c6adf0317c0bf4","to":"9f6a5bd595c602bc5df7843c8115feda"},{"from":"9f6a5bd595c602bc5df7843c8115feda","to":"d030a00aac04ca38a68330e969043a43"},{"from":"d030a00aac04ca38a68330e969043a43","to":"12e44eeaeca87a82b36a44d84f54b607"}]},"messageTypes":[{"name":"Status","displayName":"Status","description":"Production Line overall status","station":"12e44eeaeca87a82b36a44d84f54b607","options":{}},{"name":"Status","displayName":"Status","description":"Production Line overall status","station":"d030a00aac04ca38a68330e969043a43","options":{}},{"name":"Status","displayName":"Status","description":"Production Line overall status","station":"9f6a5bd595c602bc5df7843c8115feda","options":{}},{"name":"Status","displayName":"Status","description":"Production Line overall status","station":"a9823bd20f2a603c88c6adf0317c0bf4","options":{}},{"name":"WIP","displayName":"WIP","description":"","station":"LINE","options":{}},{"name":"StopCode","displayName":"StopCode","description":"StopCode details","station":"LINE","options":{}},{"name":"Status","displayName":"Status","description":"Production Line overall status","station":"LINE","options":{}},{"name":"Output","displayName":"Output","description":"Counter of qualified finished products within this production line since last RESET or changeover","station":"LINE","options":{}},{"name":"NGReason","displayName":"NGReason","description":"NGReason details","station":"LINE","options":{}},{"name":"FPY","displayName":"FPY","description":"The first pass yield(FPY) designates the percentage of products, which fulfill the quality requirements in the first process run without reworks","station":"LINE","options":{}}]}



һ��� Ӧ�ò�ൽ����  


simicas-dev
fae77d19bb1cea02bae1477565a8e772
gateway.eu1.mindsphere.io/api/macbdemo-macpartb/v1/api/start
  
ssh-keygen -t rsa -C "18757530227"

git.exe pull -v --progress "origin" DEV

cf login -a https://api.local.pcfdev.io --skip-ssl-validation

$ ssh-keygen -t rsa -C "jianfeng.huang.ext@siemens.com"


ws://10.1.202.204:8115/space/772868381928849408/real_data


ws://127.0.0.1:8301/pull/biz/ECM/org/1000002/aspect/error-rate/real_time

ws://127.0.0.1:8301/pull/data


ws://116.63.43.67:8301/pull/data


ws://127.0.0.1:8301/pull/data

{"msgType":"real_time_subscribe","msgParam":[{"bizCode":"ECM","orgId":"44717858"}]}

http://116.63.39.205/justbon-ecm/ecm-server-view/third-api/data/space/{spaceId}/realtime


http://116.63.39.205/justbon-ecm/ecm-server-view/device/report/spaceDeviceRun?id=778586313371680768

http://116.63.39.205/justbon-ecm/ecm-server-view/device/run/spaceDeviceAttrList

{monitorId: "778586313371680768", status: 1}

<----- ���գ�2020-12-01 16:17:09
heartBeat


<----- ���գ�2020-12-01 16:17:12
heartBeat


-----> ���ͣ�2020-12-01 16:17:12
{"msgType":"real_time_subscribe","msgParam":[{"bizCode":"ECM","orgId":"44717858"}]}


<----- ���գ�2020-12-01 16:17:12
{"msgType":"real_time_record","result":{"aspectCode":"overall","bizCode":"ECM","data":{"onlineDeviceCount":3,"faultDeviceRate":"0","deviceCount":69,"monitorHealthRate":"100","spaceHealthRate":"100","deviceHealthRate":"100","onlineDeviceRate":"4","faultDeviceCount":0,"deviceAttributeCount":396},"orgId":"44717858","timestamp":"2020-12-01 16:14:46"}}


<----- ���գ�2020-12-01 16:17:12
{"msgType":"real_time_record","result":{"aspectCode":"spaces","bizCode":"ECM","data":[{"templateName":"��ѹ��緿","name":"��ѹ��緿","id":"778586311240974336","status":1},{"templateName":"��ѹ��緿","name":"1#��ѹ��緿","id":"778586311438106624","status":1},{"templateName":"��ѹ��緿","name":"2#��ѹ��緿","id":"778586311635238912","status":1},{"templateName":"��ѹ��緿","name":"3#��ѹ��緿","id":"778586311819788288","status":1},{"templateName":"��ѹ��緿","name":"������ѹ��緿","id":"778586312008531968","status":1},{"templateName":"ˮ�÷�","name":"����ˮ�÷�","id":"778586327284187136","status":1},{"templateName":"ˮ�÷�","name":"����ˮ�÷�","id":"778586327401627648","status":1},{"templateName":"�������","name":"�������","id":"778586306778234880","status":1},{"name":"��ѹ���߹�","id":"778586335068815360","status":1},{"name":"��ѹ���߹�","id":"778586335186255872","status":1},{"name":"��ѹ���߹�","id":"778586335295307776","status":1},{"name":"��ѹ���߹�","id":"778586335404359680","status":1},{"name":"��ѹ���߹�1#","id":"778586341704204288","status":1},{"name":"��ѹ���߹�1#","id":"778586341809061888","status":1},{"name":"��ѹ���߹�1#","id":"778586341909725184","status":1},{"name":"��ѹ���߹�1#","id":"778586342010388480","status":1},{"name":"��ѹ���߹�2#","id":"778586342111051776","status":1},{"name":"��ѹ���߹�2#","id":"778586342215909376","status":1},{"name":"��ѹ���߹�2#","id":"778586342312378368","status":1},{"name":"��ѹ���߹�2#","id":"778586342417235968","status":1},{"name":"��ѹ���߹�3#","id":"778586342517899264","status":1},{"name":"��ѹ���߹�4#","id":"778586342618562560","status":1},{"name":"��ѹ���߹�5#","id":"778586342719225856","status":1},{"name":"��ѹ���߹�6#","id":"778586342815694848","status":1},{"name":"��ѹ���߹�7#","id":"778586342920552448","status":1},{"name":"��ѹ���߹�8#","id":"778586343042187264","status":1},{"name":"��ѹ��1#","id":"778586358795993088","status":1},{"name":"��ѹ��1#","id":"778586359118954496","status":1},{"name":"��ѹ��1#","id":"778586359458693120","status":1},{"name":"��ѹ��1#","id":"778586359773265920","status":1},{"name":"��ѹ��2#","id":"778586360121393152","status":1},{"name":"��ѹ��2#","id":"778586360440160256","status":1},{"name":"��ѹ��2#","id":"778586360763121664","status":1},{"name":"��ѹ��2#","id":"778586361111248896","status":1},{"name":"���ݲ�����1#","id":"778586395919777792","status":1},{"name":"���ݲ�����1#","id":"778586396062384128","status":1},{"name":"���ݲ�����1#","id":"778586396200796160","status":1},{"name":"���ݲ�����1#","id":"778586396376956928","status":1},{"name":"���ݲ�����2#","id":"778586396515368960","status":1},{"name":"���ݲ�����2#","id":"778586396657975296","status":1},{"name":"���ݲ�����2#","id":"778586396821553152","status":1},{"name":"���ݲ�����2#","id":"778586396955770880","status":1},{"name":"��ѹ���ع�1#","id":"778586412789268480","status":1},{"name":"��ѹ���ع�2#","id":"778586413191921664","status":1},{"name":"��ѹ���ع�3#","id":"778586413586186240","status":1},{"name":"7�ű�ѹ�����ع�1#","id":"778586413955284992","status":1},{"name":"7�ű�ѹ�����ع�2#","id":"778586414353743872","status":1},{"name":"7�ű�ѹ�����ع�3#","id":"778586414722842624","status":1},{"name":"7�ű�ѹ�����ع�4#","id":"778586415100329984","status":1},{"name":"7�ű�ѹ�����ع�5#","id":"778586415515566080","status":1},{"name":"8�ű�ѹ�����ع�1#","id":"778586415880470528","status":1},{"name":"8�ű�ѹ�����ع�2#","id":"778586416249569280","status":1},{"name":"8�ű�ѹ�����ع�3#","id":"778586416631250944","status":1},{"name":"8�ű�ѹ�����ع�4#","id":"778586417021321216","status":1},{"name":"8�ű�ѹ�����ع�5#","id":"778586417432363008","status":1},{"name":"�������","id":"778586455315316736","status":1},{"name":"����ˮ��1#","id":"778586466073706496","status":1},{"name":"����ˮ��2#","id":"778586466233090048","status":1},{"name":"����ˮ��3#","id":"778586466400862208","status":1},{"name":"����ˮ��4#","id":"778586466568634368","status":1},{"name":"����ˮ��1#","id":"778586466748989440","status":1},{"name":"����ˮ��2#","id":"778586466920955904","status":1},{"name":"����ˮ��3#","id":"778586467084533760","status":1},{"name":"����ˮ��4#","id":"778586467248111616","status":1},{"name":"����ˮ��1#","id":"778586491008843776","status":1},{"name":"����ˮ��2#","id":"778586491117895680","status":1},{"name":"���ƹ�1#","id":"778586492434907136","status":1},{"name":"���ƹ�2#","id":"778586492581707776","status":1},{"name":"����ϵͳ","id":"778586496499187712","status":1},{"name":"����˨��1#","id":"778586559401164800","status":1},{"name":"����˨��2#","id":"778586559560548352","status":1},{"name":"���ܱ�1#","id":"778586566229491712","status":1},{"name":"���ܱ�2#","id":"778586566401458176","status":1},{"name":"����˨�ÿ��ƹ�","id":"778586572504170496","status":1},{"name":"���ܱñÿ��ƹ�","id":"778586574567768064","status":1},{"name":"����ˮ��","id":"778586577252122624","status":1},{"name":"¥������ˮ��","id":"778586577361174528","status":1}],"orgId":"44717858","timestamp":"2020-12-01 16:14:57"}}

ws://127.0.0.1:8301/subscribe/real_time?topics=%5B%7B%22biz%22%3A%22ECM%22%2C%22org%22%3A%221000002%22%7D%5D


/PULL/X1XXX02010280018/DPUC/config

{"cloud":{"cProtocol":"mqtt","client_id":"X1XXX02010280018","description":"justbon server","host":"116.63.43.67","keepalive":60,"port":61613,"qos":1,"reconnect_time":100,"report":{"cycle":300,"mode":1,"payloadsize":100},"sn_id":"X1XXX02010280018","topic":{"pubtopic":"PUSH","subtopic":"PULL"},"username":"rjchang","userpassword":"rj123584"},"description":"justbon format  chengdu ","interface":{"RS485COM2":{"description":"COM2","dev":{"1329244261390471170":{"collect":"enable","cycle":1000,"daddress":"3","data":{"1329244261449191426":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":100.0},"calc":{"base":0.0,"mode":2,"mult":1.6E-4},"description":"","node":{"func":"4","reg_addr":"1","sub_addr":"0"},"radix_point":2,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"uint16"},"1329244261436608513":{"alarm":{"equal":0.0,"lowlimit":0.31,"mode":3,"uplimit":100.0},"calc":{"base":0.0,"mode":2,"mult":1.6E-4},"description":"","node":{"func":"4","reg_addr":"0","sub_addr":"0"},"radix_point":2,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"uint16"},"1329244261457580034":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":100.0},"calc":{"base":0.0,"mode":2,"mult":1.6E-4},"description":"","node":{"func":"4","reg_addr":"2","sub_addr":"0"},"radix_point":2,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"uint16"},"1329244261465968642":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":100.0},"calc":{"base":0.0,"mode":2,"mult":1.6E-4},"description":"","node":{"func":"4","reg_addr":"3","sub_addr":"0"},"radix_point":2,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"uint16"}},"description":"","gParam":{"options":"9600,8N1"},"protocol":"modbusRTU","sParam":{"byteorder_float":"ABCD","byteorder_int":"ABCD","byteorder_short":"AB"},"spacing":300,"timeout":5000},"1328979771453235201":{"collect":"enable","cycle":1000,"daddress":"2","data":{"1328979771495178241":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":90.0},"calc":{"base":0.0,"mode":1,"mult":0.1},"description":"","node":{"func":"3","reg_addr":"0","sub_addr":"0"},"radix_point":2,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"uint16"},"1328979771503566849":{"alarm":{"equal":0.0,"lowlimit":15.0,"mode":3,"uplimit":88.0},"calc":{"base":0.0,"mode":1,"mult":0.1},"description":"","node":{"func":"3","reg_addr":"1","sub_addr":"0"},"radix_point":2,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"uint16"}},"description":"","gParam":{"options":"9600,8N1"},"protocol":"modbusRTU","sParam":{"byteorder_float":"ABCD","byteorder_int":"ABCD","byteorder_short":"AB"},"spacing":300,"timeout":5000},"1329232815097106434":{"collect":"enable","cycle":1000,"daddress":"5","data":{"1329232815185186817":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":10000.0},"calc":{"base":0.0,"mode":2,"mult":0.2},"description":"","node":{"func":"4","reg_addr":"10","sub_addr":"0"},"radix_point":2,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"uint16"},"1329232815139049474":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":260.0},"calc":{"base":0.0,"mode":2,"mult":0.026},"description":"","node":{"func":"4","reg_addr":"0","sub_addr":"0"},"radix_point":2,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"uint16"},"1329232815160020993":{"alarm":{"equal":0.0,"lowlimit":0.1,"mode":3,"uplimit":10000.0},"calc":{"base":0.0,"mode":2,"mult":0.2},"description":"","node":{"func":"4","reg_addr":"8","sub_addr":"0"},"radix_point":2,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"uint16"},"1329232815172603905":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":10000.0},"calc":{"base":0.0,"mode":2,"mult":0.2},"description":"","node":{"func":"4","reg_addr":"9","sub_addr":"0"},"radix_point":2,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"uint16"},"1329232815147438081":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":260.0},"calc":{"base":0.0,"mode":2,"mult":0.026},"description":"","node":{"func":"4","reg_addr":"1","sub_addr":"0"},"radix_point":2,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"uint16"},"1329232815155826689":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":260.0},"calc":{"base":0.0,"mode":2,"mult":0.026},"description":"","node":{"func":"4","reg_addr":"2","sub_addr":"0"},"radix_point":2,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"uint16"}},"description":"","gParam":{"options":"9600,8N1"},"protocol":"modbusRTU","sParam":{"byteorder_float":"ABCD","byteorder_int":"ABCD","byteorder_short":"AB"},"spacing":300,"timeout":5000},"1329230524986150913":{"collect":"enable","cycle":1000,"daddress":"4","data":{"1329230525166505985":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":1.0},"calc":{"base":0.0,"mode":0,"mult":1.0},"description":"","node":{"func":"2","reg_addr":"3","sub_addr":"0"},"radix_point":0,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"bit"},"1329230525116174338":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":1.0},"calc":{"base":0.0,"mode":0,"mult":1.0},"description":"","node":{"func":"2","reg_addr":"1","sub_addr":"0"},"radix_point":0,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"bit"},"1329230525116174339":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":0.9},"calc":{"base":0.0,"mode":0,"mult":1.0},"description":"","node":{"func":"2","reg_addr":"0","sub_addr":"0"},"radix_point":0,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"bit"},"1329230525116174337":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":0.9},"calc":{"base":0.0,"mode":0,"mult":1.0},"description":"","node":{"func":"2","reg_addr":"2","sub_addr":"0"},"radix_point":0,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"bit"}},"description":"","gParam":{"options":"9600,8N1"},"protocol":"modbusRTU","sParam":{"byteorder_float":"ABCD","byteorder_int":"ABCD","byteorder_short":"AB"},"spacing":300,"timeout":5000}},"model":"COM2","param":{"options":"9600,8N1"}},"RS485COM1":{"description":"COM1","dev":{},"model":"COM1","param":{"options":"9600,8N1"}}},"msg_id":426}
Class Name                                                                                                                                                                                                                                                                                    | Shallow Heap | Retained Heap | Percentage
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
char[262144] @ 0xbd31bbc8  reateTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"\u4e8c\u6b21\u544a\u8b66\uff1a\u96c6\u56e2\u603b\u90e8B\u533a \u751f\u6d3b\u6cf5\u623f\u6c34\u6d78\u53d1\u751f\u6c34\u6d78\u544a\u8b66\uff0c\u53d1\u751f\u6c34\u6d78\uff0...|      524,304 |       524,304 |      0.06%
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#{groupId,jdbcType=INTEGER}

#{groupId,jdbcType=VARCHAR}

#{projectId,jdbcType=INTEGER}

#{projectId,jdbcType=VARCHAR}

<result column="project_id" property="projectId" jdbcType="INTEGER" />

<result column="project_id" property="projectId" jdbcType="VARCHAR" />

<result column="group_id" jdbcType="VARCHAR" property="groupId" />
server:
  port: 8111


spring:
  # �ų�DruidDataSourceAutoConfigure
  autoconfigure:
    exclude: org.springframework.boot.autoconfigure.mongo.MongoAutoConfiguration,com.justbon.smart.cloud.core.mdb.SaveMongoEventListener
  datasource:
    url: jdbc:mysql://116.63.39.205:3306/ecm?useUnicode=true&amp&characterEncoding=UTF-8&allowMultiQueries=true&zeroDateTimeBehavior=convertToNull&useOldAliasMetadataBehavior=true&serverTimezone=GMT%2b8
    username: root
    password: 123456
  kafka:
    bootstrap-servers: 116.63.39.205:9092
    consumer:
      group-id: ecm-biz
      auto-offset-reset: earliest
      enable-auto-commit: false
      auto-commit-interval: 10
    listener:
      ack-mode: MANUAL_IMMEDIATE
  redis:
    host: 116.63.39.205
    port: 8113
    password:  
    

gateway:
  cloud:
    host: 10.0.9.188
    port: 61613
    username: rjchang
    userpassword: rj123
  mqtt:
    publish:
      clientid: biz
      username: admin
ecm-smart-proxy:
  ribbon:
    ReadTimeout: 6000 #ribbon��ȡ��ʱʱ�䣬�ӿڴ���ʱ�䣬��������������ʱ��
    ConnectTimeout: 6000 #ribbon��������ʱ��

hystrix:
  command:
    IMqttClient#publish(PublishMessage):
      execution:
        isolation:
          thread:
            timeoutInMilliseconds: 10000
ribbon:
  ReadTimeout: 10000
  ConnectTimeout: 10000

#FMS�����ݺ͹����������
fms:
  data:
    #�����ļ���·��
    path: /home/ecm/ecm-server-biz/config/iceglacier2_beta.properties
    #�ĸ����ָ������̵�basecode
    basecode: LGJBSHEBEI
    #���ݷ������ 36
    tags: 34||36
  workorder:
    #�ӿڵ�ַ
    url: http://testfms.justbon.com/uhomecp-equipment/rest-api/v1/energyConsumptionApi/createDeviceWarData
    #��ҪУ��ǩ����KEY
    appKey: bbcb67ac09ead5d2086310bb62f9968d
    #��Կ
    secret: MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCH/aE8QB1Tyyq6KK912jCM2nd/BB0sAE8aF3GiVjl28IhTpJAZGmeM3OwzUOumUDSwSl0Z1e+B/3t1T02yYybsLx7K0NGQi8Hn3O59UJcTyDJAaEfTU7DdLslGJl9ZeTkAqxxOVK3Agvaj3UwEUj2/BwitATDVrVeliBnMxzJaDQIDAQAB
    #ҵ�����
    code: createDeviceWarData
    #���ұ���
    vender: JB

#ECMĬ����ҵid������ͬ��FMS�豸ʵ��
ecm:
  groupId: 2

#ͬ��FMS�豸ʵ�����ڣ�ʱ�����
task:
  flag: 1
  cron:
    cycle: 300000

�������ǲ�˹˵�ģ�ֻ����Щ�����Ϊ�Լ����Ըı�������˲��������ظı����硣���ѹ�����ҿ�������ҹս�����߲��ݣ�������ѣ���Ը��ӭ�Ѷ��ϡ�����������

�ȴ���һ����  
���Ǳߵ���� ��������
����ν��

783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯",
"isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},
{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"c
ge":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"783772391737131008","userId":"234","message":"���θ澯�������ܲ�B�� ����÷�ˮ������ˮ���澯������ˮ�����澯�ȼ�:�����澯","isConfirm":null,"warningStatus":1,"createTime":"2020-12-02 19:11:40"},{"id":"
justbon-smart-auth

eyJ0eXAiOiJKc29uV2ViVG9rZW4iLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJpc3N1c2VyIiwiYXVkIjoiYXVkaWVuY2UiLCJ0ZW5hbnRfaWQiOiIiLCJyb2xlX25hbWUiOiIiLCJkZXB0X3BhdGgiOiItMSwyLCIsInVzZXJfaWQiOiIyMjciLCJyb2xlX2lkIjoiNzciLCJncm91cF9pZCI6IjIiLCJ1c2VyX25hbWUiOiIiLCJkYXRhX2dyb3VwX2lkIjoiNzUiLCJ0b2tlbl90eXBlIjoiYWNjZXNzX3Rva2VuIiwiZGVwdF9pZCI6IjIiLCJhY2NvdW50IjoiaGpmIiwiY2xpZW50X2lkIjoic2FiZXIiLCJleHAiOjE2MDUxNDM0ODYsIm5iZiI6MTYwNTA1NzA4Nn0.7c_o4t9qIETbi7FiPl8TTIeIfCi-KxRruShzU99YHwk
 
1��� ecmϵͳ�еġ��������㱾�ػ����������� 
2���������ṹ����ɱ��ز���
��Ŀ���գ�
  storm ��Ϊ�½Ӵ���������ҪЩʱ�䣬
  ԭ�ȵ�ecmϵͳ ����ṹȱ������ĵ���ע��֧�֣���Ҫ��������
��λ�밴������ʽ���ύ�ܱ���11��ǰ�ᱨ���ң�����ֵ��������������Ŀ�鸺���ƶ���11��󷢺���20Ԫ10����

ssh-keygen -t rsa -C "jian12000@sina.com" 
D:\apps\ecm\ecm-manager>mvn clean package  -Dmaven.test.skip=true

�κδ���������webϵͳ�����ǳ��ɻ������Ĺ�����ѯ���Լ����ӵ����ݷ������͵ı����ѯ���ر���SNS���͵���վ���������Լ���Ʒ��ƽ� �ȣ��ͱ�������������Ĳ���


https://testecm.justbon.com/justbon-ecm/ecm-server-biz/space/778586311240974336/warning_rules

{"code":200,"success":true,"data":
{"��ʪ��":[{"id":"778586311274528768","paramName":"ʪ��","paramSymbol":"H","unit":"RH%","dataType":"0","choiceOne":"","choiceTwo":"","groupName":"","status":1,"paramId":"760480536161419264","warningRules":[{"id":"778586311295500288","monitorAttributeId":"778586311274528768","warningLevel":5,"warningRule":1,"warningFormula":"x > 90","numbers":[90.0],"warningContent":"�豸��ʪ�ȹ���","warningCount":0,"warningTime":0,"warningType":"760785570560475136","times":["00:00","23:59"],"maxValue":"90","minValue":"0","status":true}]},{"id":"778586311303888896","paramName":"�¶�","paramSymbol":"T","unit":"��","dataType":"0","choiceOne":"","choiceTwo":"","groupName":"","status":1,"paramId":"760480433417748480","warningRules":[{"id":"778586311320666112","monitorAttributeId":"778586311303888896","warningLevel":5,"warningRule":1,"warningFormula":"x > 35","numbers":[35.0],"warningContent":"�豸���¶ȹ���","warningCount":0,"warningTime":0,"warningType":"760785464541052928","times":["00:00","23:59"],"maxValue":"35","minValue":"0","status":true}]}],"���ݲ�������ʪ��":[{"id":"778586311383580672","paramName":"�¶�","paramSymbol":"T","unit":"��","dataType":"0","choiceOne":"","choiceTwo":"","groupName":"","status":1,"paramId":"760480433417748480","warningRules":[{"id":"778586311400357888","monitorAttributeId":"778586311383580672","warningLevel":5,"warningRule":1,"warningFormula":"x > 35","numbers":[35.0],"warningContent":"���ݲ������¶ȹ���","warningCount":0,"warningTime":0,"warningType":"760785464541052928","times":["00:00","23:59"],"maxValue":"35","minValue":"0","status":true}]},{"id":"778586311412940800","paramName":"ʪ��","paramSymbol":"H","unit":"RH%","dataType":"0","choiceOne":"","choiceTwo":"","groupName":"","status":1,"paramId":"760480536161419264","warningRules":[{"id":"778586311429718016","monitorAttributeId":"778586311412940800","warningLevel":5,"warningRule":1,"warningFormula":"x > 90","numbers":[90.0],"warningContent":"���ݲ������¶ȹ���","warningCount":0,"warningTime":0,"warningType":"760785570560475136","times":["00:00","23:59"],"maxValue":"90","minValue":"0","status":true}]}],"���µع���ʪ��":[{"id":"778586311329054720","paramName":"�¶�","paramSymbol":"T","unit":"��","dataType":"0","choiceOne":"","choiceTwo":"","groupName":"","status":1,"paramId":"760480433417748480","warningRules":[{"id":"778586311350026240","monitorAttributeId":"778586311329054720","warningLevel":5,"warningRule":1,"warningFormula":"x > 35","numbers":[35.0],"warningContent":"���µع��¶ȹ���","warningCount":0,"warningTime":0,"warningType":"760785464541052928","times":["00:00","23:59"],"maxValue":"35","minValue":"0","status":true}]},{"id":"778586311358414848","paramName":"ʪ��","paramSymbol":"H","unit":"RH%","dataType":"0","choiceOne":"","choiceTwo":"","groupName":"","status":1,"paramId":"760480536161419264","warningRules":[{"id":"778586311375192064","monitorAttributeId":"778586311358414848","warningLevel":5,"warningRule":1,"warningFormula":"x > 90","numbers":[90.0],"warningContent":"���µع�ʪ�ȹ���","warningCount":0,"warningTime":0,"warningType":"760785570560475136","times":["00:00","23:59"],"maxValue":"90","minValue":"0","status":true}]}]},"msg":"�����ɹ�"}


https://testecm.justbon.com/justbon-ecm/ecm-server-config/space/template/1324283159897980930/warning

{"code":200,"success":true,"data":{"name":"����ˮ�÷�","alarmTemplateName":"����ˮ�÷�","deviceAttributeWarningRuleMap":{"ˮ��2":[{"id":"1324283221751382018","paramName":"ˮ��","paramSymbol":"SJ","unit":"SJ","dataType":"0","choiceOne":"����","choiceTwo":"��ˮ","groupName":"","status":1,"paramId":"760483154648629248","warningRules":[{"id":"1344166658052694017","deviceAttributeTemplateId":0,"warningLevel":5,"warningRule":0,"warningFormula":"x < 1000","numbers":[1000.0],"warningContent":"�豸����ˮ","warningCount":0,"warningTime":0,"warningType":"765965413631655936","times":["00:00","23:59"],"maxValue":"65535","minValue":"1000","status":true}]}],"��ʪ��":[{"id":"1324283199479627777","paramName":"ʪ��","paramSymbol":"H","unit":"RH%","dataType":"0","choiceOne":"","choiceTwo":"","groupName":"","status":1,"paramId":"760480536161419264","warningRules":[{"id":"1344166658052694018","deviceAttributeTemplateId":0,"warningLevel":5,"warningRule":1,"warningFormula":"x > 90","numbers":[90.0],"warningContent":"�豸��ʪ�ȹ���","warningCount":0,"warningTime":0,"warningType":"760785570560475136","times":["00:00","23:59"],"maxValue":"90","minValue":"0","status":true}]},{"id":"1324283199492210689","paramName":"�¶�","paramSymbol":"T","unit":"��","dataType":"0","choiceOne":"","choiceTwo":"","groupName":"","status":1,"paramId":"760480433417748480","warningRules":[{"id":"1344166658052694019","deviceAttributeTemplateId":0,"warningLevel":5,"warningRule":1,"warningFormula":"x > 35","numbers":[35.0],"warningContent":"�豸���¶ȹ���","warningCount":0,"warningTime":0,"warningType":"760785464541052928","times":["00:00","23:59"],"maxValue":"35","minValue":"0","status":true}]}]}},"msg":"�����ɹ�"}




MY_LOGS_DIR=D:\\log

${MY_LOGS_DIR:-../logs}
Linuxϵͳ��set ��env �� export ������Բ鿴����������

1��set������ʾ��ǰshell�ı�����������ǰ�û��ı�����set��Ҫ��������sh�Ĳ�����ѡ��

2��env������ʾ��ǰ�û��ı�����env�����ڹ����Ļ�������������

3��export������ʾ��ǰ�������û�������shell����

ÿ��shell�������еı���set��ʾ�ı�����������û������ǲ�ͬ�ģ���ǰ�û���������ʲôshell�޹أ������û�ʹ��ʲôshell������ڣ�����HOME��SHELL����Щ������

scheduler.add_job(job, 'cron', day_of_week='0-5', hour=16, minute=47)


{"responseHead":"<meta charset=utf-8 />...","responseBody":"eruityerty...","method":"POST","requestBody":"eruityerty...","requestHead":"<meta charset=utf-8 />...","responseStatus":200,"url":"http://jcp.justbon.com"}
L4SBrXJYKuypCeAq


./kafka-configs.sh --zookeeper localhost:2181 --alter --entity-name topic_rts_aspect --entity-type topics --add-config retention.ms=86400000
./kafka-configs.sh --zookeeper localhost:2181 --describe --entity-name topic_rts_aspect --entity-type topics

Questions��
1��������ճ������н�����ѧϰ�Ľ����Լ���ϼα�ƽ̨��ʲô�ֳ�;����
2���ϸ�ļα��˻�������ļα��˵������Ե�������ʲô��
3��������ο�������α�����չ�����ľ��ϣ�


������ �ƽ��� ��������ְ��ѵ�ĵڶ��죬����һ�������ǽ����ˡ���Ƽ�졷������ҵ����֪ʶ���Ŀγ�ѧϰ���ֳ���Ŀ�ι��Լ��쵼����ᣬ����һ���ջ�������һ�죬��Ƽ������������ʵ�İ�������α���ɫ��Ƽ���ƶȣ����ӳ���������ְҵ���ģ���ҵ����֪ʶ����ӡ������ľ�������ʦ˵����ҵ�������ݲ��޶�����ֹ����ȷʵ��ʱ��������ҵ�����µĶ��壬�ֳ���Ŀ�ι۸����е���ᵽ���ճ�����ҵ��������ʵ�����ܼҷ��񡢹ܼҷ���α�����ģʽ�����������ܽ��������Ϊ���ǽ���������ඥ�����˻�Ȼ���ʡ�

mvn clean install -Dmaven.test.skip=true

jobGroup: 12
jobDesc: �ֶ�����Ѳ�챨��1
executorRouteStrategy: FIRST
cronGen_display: 0 15 10 1 * ? 1990
jobCron: 0 15 10 1 * ? 1990
executorHandler: manual-inspect-job
executorBlockStrategy: SERIAL_EXECUTION
childJobId: 
executorTimeout: 0
executorFailRetryCount: 0
author: admin
alarmEmail: 
executorParam: 
id: 37

{"stateCode":"jb_000000","description":"�ɹ�","page":{"total":4,"result":[{"id":"fcdeedce-73c8-4521-9cb4-6e2b4e746253","code":"1","parentId":"0","seq":0,"status":"1","createTime":"2015-11-30 02:43:37","leaf":"1","typeId":"ca87c58c-4c87-4e2e-ba52-d13fbe1b6d28","name":"����"},{"id":"e8bacdd3-c0cc-45e9-af4a-d74444e43af8","code":"2","parentId":"0","seq":0,"status":"1","createTime":"2015-11-30 02:43:42","leaf":"1","typeId":"ca87c58c-4c87-4e2e-ba52-d13fbe1b6d28","name":"�ѳ���"},{"id":"b004e831-a05e-4d3d-ad62-c60fb17de6eb","code":"3","parentId":"0","seq":0,"status":"1","createTime":"2015-11-30 02:44:15","leaf":"1","typeId":"ca87c58c-4c87-4e2e-ba52-d13fbe1b6d28","name":"������"},{"id":"f04d9294-7f14-40e3-a970-70ca3c144c91","code":"4","parentId":"0","seq":0,"status":"1","createTime":"2015-11-30 02:44:25","leaf":"1","typeId":"ca87c58c-4c87-4e2e-ba52-d13fbe1b6d28","name":"����"}],"pageNum":1,"pageSize":20,"pageCount":1}}


https://dev.justbon.com:9443/soi/api/v1/staff/staffOrgTree/664499D59A25066EE0530100007F6089


https://test.justbon.com/soi/api/v1/staff/staffOrgTree/664499D59A25066EE0530100007F6089

https://test.justbon.com/soi/api/v1/sysDict/findDictDetaiByType?typeCode=ACITIVITY_TYPE

https://test.justbon.com/soi/api/v1/sysDict/findDictDetaiByType?typeCode=activityType


https://dev.justbon.com:9443/soi/api/v1/sysDict/findDictDetaiByType?typeCode=activityType

http://testjcp.justbon.cn/jcp/admin;JSESSIONID=80492081-ac5c-4bf2-82ad-ed7c578a3a34#
mvn clean package -Dmaven.test.skip=true -Pprod -U
ssh://git@10.0.0.201:2213/bodhi/backend.git
ssh://git@10.0.0.201:2213/bodhi/backend-interface.git
ssh://git@10.0.0.201:2213/bodhi/ecm-interface.git
ssh://git@10.0.0.201:2213/bodhi/backend-interface.git
ssh://git@10.0.0.201:2213/bodhi/ecm-manager.git
git@code.siemens.com:MACB/App-Dev/documents.git
ssh-keygen -t rsa -C "jianfeng.huang.ext@siemens.com"  
mvn  clean package  -Dmaven.test.skip=true

Ѳ�����  /inspectionInfoPdf/

Ѳ�챨��  getInspectionPDF


this.link = res.data;
          this.src = pdf.createLoadingTask({
            url: this.link,
            cMapUrl: "static/cmaps/",
            cMapPacked: true,
          });
          console.log(this.src.promise);
          this.src.promise
            .then((pdf) => {
              this.numPages = pdf.numPages;
              console.log(this.numPages);
              setTimeout(()=>{
                this.loading = false;
              },800)
            })
            .catch(() => {
              this.loading = false;
            });
        } else {
          this.link = "";
          this.loading = false;
        }

{
                "id": "788481275613675520",
                "parentId": "-1",
                "item": "����",
                "itemList": [
                    {
                        "id": "788481275647229952",
                        "parentId": "788481275613675520",
                        "item": "����ɳ��",
                        "itemList": []
                    },
                    {
                        "id": "788481275676590080",
                        "parentId": "788481275613675520",
                        "item": "�����",
                        "itemList": []
                    }
                ]
            }
      
/etc/sshd.deny.hostguard
sshd: /etc/sshd.bip.hostguard
/root/.jenkins/workspace/ecm-server-ci/

  kafka:
    bootstrap-servers: 10.121.10.176:9092,10.121.10.170:9092,10.121.10.40:9092
    producer:
      key-serializer: org.apache.kafka.common.serialization.StringSerializer
      value-serializer: org.apache.kafka.common.serialization.StringSerializer
1602229594

[{"id":"1314478781708132353","monitorAttributeId":"1300993132903514114","warningLevel":0,"warningRule":0,"warningFormula":"x < 1","warningContent":"","warningCount":0,"warningTime":0,"warningType":"","times":[],"maxValue":"2","minValue":"1","status":1},{"id":"1314478781720715266","monitorAttributeId":"1300993132903514115","warningLevel":0,"warningRule":0,"warningFormula":"x < 1","warningContent":"","warningCount":0,"warningTime":0,"warningType":"","times":[],"maxValue":"2","minValue":"1","status":1},{"id":"1314474352762183682","monitorAttributeId":"1300990822588571649","warningLevel":0,"warningRule":0,"warningFormula":"x < 1","warningContent":"","warningCount":0,"warningTime":0,"warningType":"","times":[],"maxValue":"3","minValue":"3","status":1},{"id":"1314474352783155202","monitorAttributeId":"1305471465913536513","warningLevel":0,"warningRule":0,"warningFormula":"x < 1","warningContent":"","warningCount":0,"warningTime":0,"warningType":"","times":[],"maxValue":"3","minValue":"3","status":1},{"id":"1314474352791543810","monitorAttributeId":"1305471465913536513","warningLevel":0,"warningRule":0,"warningFormula":"x < 1","warningContent":"","warningCount":0,"warningTime":0,"warningType":"","times":[],"maxValue":"3","minValue":"3","status":1},{"id":"1314474615023624193","monitorAttributeId":"1305471465913536513","warningLevel":0,"warningRule":0,"warningFormula":"x < 1","warningContent":"","warningCount":0,"warningTime":0,"warningType":"","times":[],"maxValue":"3","minValue":"3","status":1},{"id":"1314475172891222018","monitorAttributeId":"1305471465913536513","warningLevel":0,"warningRule":0,"warningFormula":"x < 1","warningContent":"","warningCount":0,"warningTime":0,"warningType":"","times":[],"maxValue":"3","minValue":"3","status":1},{"id":"1314478781792018434","monitorAttributeId":"1299181925742698497","warningLevel":0,"warningRule":0,"warningFormula":"x < 1","warningContent":"","warningCount":0,"warningTime":0,"warningType":"","times":[],"maxValue":"2","minValue":"1","status":1}]



spawn scp -r  -P 3333 root@10.0.0.102:/data/node_modules.zip ./
expect "*password:"
send "justbon123\n"
expect eof

InetSocketAddress insocket = (InetSocketAddress) channel.remoteAddress();
        int port = insocket.getPort();

mvn clean package -Dmaven.test.skip=true -Pprod_park -U

�ҵĿ�����
1���ۺ�н��
2��������λ
3������ǿ��
4��siemens ���� ��� ������Ŀ����ôﵽһ������������Ӧ�ò�Ͷ���� ���Ͼ���Щ����СǮ�����ڻ��Ǳ�����������Ŷ�״̬˵���������� ��ֵȡ���� ���ǲ�����Ĵ��� 
5��������Լ������ҹ���

���� ��siemens ������Ŀ������� ������ ���ֻ��������� ���԰� ������������ ���ֲ��� ������ �Է���û���� �Һα��� 

���� ���Ǹ�����������  
 


mvn clean deploy -X -Dmaven.test.skip=true
git clone ssh://git@gitlab.example.com:2213/terminal/upgrade.git
cd upgrade
touch README.md
git add README.md
git commit -m "add README"
git push -u origin master


scp -r  -P 2213 /data/ecm-server-config.jar root@116.63.43.67:/data/

ssh -p 2213 root@116.63.43.67

BNGm8trSKIU9cQZz

AC-enhancement-SPRINT1-CHANNELSTATUS

mvn  install -Dmaven.test.skip=true
jdbc:phoenix:10.0.0.187:2181

 jdbc:phoenix:10.0.0.187:2181
 org.apache.phoenix.jdbc.PhoenixDriver

/usr/local/services/phonix/apache-phoenix-4.14.0-HBase-1.2-bin


2020-06-15 17:18:20.897 [ForkJoinPool-1-worker-3] ERROR c.j.bodhi.iot.gateway.master.Master -Completed exceptionally
java.nio.channels.ClosedChannelException: null
        at io.netty.channel.AbstractChannel$AbstractUnsafe.write(...)(Unknown Source)
2020-06-15 17:18:21.400 [ForkJoinPool-1-worker-3] ERROR c.j.bodhi.iot.gateway.master.Master -Completed exceptionally
java.nio.channels.ClosedChannelException: null
        at io.netty.channel.AbstractChannel$AbstractUnsafe.write(...)(Unknown Source)
2020-06-15 17:18:21.903 [ForkJoinPool-1-worker-3] ERROR c.j.bodhi.iot.gateway.master.Master -Completed exceptionally
java.nio.channels.ClosedChannelException: null
        at io.netty.channel.AbstractChannel$AbstractUnsafe.write(...)(Unknown Source)
2020-06-15 17:18:22.407 [ForkJoinPool-1-worker-3] ERROR c.j.bodhi.iot.gateway.master.Master -Completed exceptionally
java.nio.channels.ClosedChannelException: null
        at io.netty.channel.AbstractChannel$AbstractUnsafe.write(...)(Unknown Source)
2020-06-15 17:18:22.910 [ForkJoinPool-1-worker-3] ERROR c.j.bodhi.iot.gateway.master.Master -Completed exceptionally
java.nio.channels.ClosedChannelException: null
        at io.netty.channel.AbstractChannel$AbstractUnsafe.write(...)(Unknown Source)
2020-06-15 17:18:23.413 [ForkJoinPool-1-worker-3] ERROR c.j.bodhi.iot.gateway.master.Master -Completed exceptionally
java.nio.channels.ClosedChannelException: null
        at io.netty.channel.AbstractChannel$AbstractUnsafe.write(...)(Unknown Source)
2020-06-15 17:18:23.915 [ForkJoinPool-1-worker-3] ERROR c.j.bodhi.iot.gateway.master.Master -Completed exceptionally
java.nio.channels.ClosedChannelException: null
        at io.netty.channel.AbstractChannel$AbstractUnsafe.write(...)(Unknown Source)
2020-06-15 17:18:24.419 [ForkJoinPool-1-worker-3] ERROR c.j.bodhi.iot.gateway.master.Master -Completed exceptionally
java.nio.channels.ClosedChannelException: null
        at io.netty.channel.AbstractChannel$AbstractUnsafe.write(...)(Unknown Source)





float�����ң���һλ�Ƿ���λ,2-9λ��8λ��ʾ����λ��2��8-1�η�����128,����23λ�Ǳ�ʾС���ģ��������ֵ��2^128-1��
double�����ң���һλ�Ƿ���λ��2-12�ǹ�11λ��ʾ����λ��2��11-1�η�����1024��ʣ��20λ��ʾС��,�������ֵ��2^1024-1��
���Կ�����������ȡֵ��Χ��:2^(-149)~~(2-2^(-23))*2^127��Ҳ����Ҳ����Float.MIN_VALUE��Float.MAX_VALUE��
3.������DEMO
import java.io.*;

{
    public static void main (String[] args) throws java.lang.Exception
    {
        String s="41500000"; 
        Float value = Float.intBitsToFloat(Integer.valueOf(s.trim(), 16)); 
        System.out.println(value); 

        Float f=13.0f; 
        System.out.println(Integer.toHexString(Float.floatToIntBits(f))); 
    }
}
1
2
3
4/usr/local/services/sqoop/sqoop-1.99.6/
5
6
7
8
9
10
nohup java -jar macb-consumer-1.0-SNAPSHOT.jar >/dev/null 2>&1 &
String token = tenantRepository.findById(tenantId).map(tenantEntity -> 

��������13.0 
��������41500000

http://smartecm.justbon.com/ecm/api/v1/report/hisrecord?endDate=2018-07-23 11:00:59&pointId=8a808ae264b599fc0164c4e86af10007&startDate=2018-07-23 10:00:00


* Get more help at https://help.gradle.org

Deprecated Gradle features were used in this build, making it incompatible with Gradle 5.0.
Use '--warning-mode all' to show the individual deprecation warnings.
See https://docs.gradle.org/4.10.3/userguide/command_line_interface.html#sec:command_line_warnings

BUILD FAILED in 19s
1 actionable task: 1 executed
ERROR: Job failed: exit status 

<!--	<dependency>
			<groupId>org.slf4j</groupId>
			<artifactId>slf4j-nop</artifactId>
			<version>1.6.4</version>
		</dependency>-->

java -jar safety.jar --spring.config.location=conf/application.yml

storm jar ecm-storm-server-test.jar com.justbon.bodhi.iot.ecm.storm.topology.MqttTopology mqtt -c nimbus.host=localhost
scan 'ecm_ns:T_ECM_GAINLOG', FILTER=>"PrefixFilter('0000000001153032')"
scan 'ecm_ns:T_ECM_GAINLOG', FILTER=>"PrefixFilter('0000000505')"
scan 'ecm_ns:T_ECM_GAINLOG', FILTER=>"PrefixFilter('00000010561605516')"



 docker run -d -p 6379:6379 --name myredis redis
docker run -p 6379:6379 --name myredis?-v $PWD/redis.conf:/etc/redis/redis.conf?-v $PWD/data:/data -d redis:3.2 redis-server?/etc/redis/redis.conf?--appendonly yes
docker run -d --privileged=true -p 6379:6379 -v /usr/redis/redis.conf:/etc/redis/redis.conf -v /usr/redis/data:/data --name redis1 redis:4.0 redis-server /etc/redis/redis.conf --appendonly yes



stages:

- analyze
- deploy

job:
  stage: analyze
  script: 
  - echo "analyze"
  - gradle sonarqube
  /lines/line-1/plans/40288b816854459d01685445b9a80000/detail/40288b8168547d190168547d32450000
  select min(id),sum(data_value),to_char(data_time,'MM-DD HH24') ,output_type from tb_hi_output  
group by  to_char(data_time,'MM-DD HH24') ,output_type
  �����
  
  330602195303203011
  
  ���÷
  
  330602195706303025
  
  CREATE TABLE public.tb_user (
	id int4 NOT NULL,
	"name" varchar(50) NOT NULL,
	depart_code varchar(50) NULL,
	CONSTRAINT tb_user_pkey PRIMARY KEY (id)
);

package com.siemens.csde.macb.jpa.entity;

import java.lang.annotation.Target;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Transient;
import lombok.Data;

@Entity
@Data
@Table(name="tb_user",schema = "public")
public class UserEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE,generator = "macb_seq")
    @SequenceGenerator(name="macb_seq",sequenceName = "seq_macb",schema = "public",allocationSize = 1)
    private Long id;

    @Column(name = "name", nullable = false, unique = true)
    private String name;

    @Column(name = "depart_code", nullable = false)
    private String departCode;


    @ConditionalOnExpression("!'${spring.profiles.active}'.equals('test')")

    @Transient
    private String departName;

}

http://maven.aliyun.com/nexus/content/groups/public/
Integer.parseInt(

  //if(hiAlarmEntity.getNotifyWeb()!=null && hiAlarmEntity.getNotifyWeb() ){
Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6ImtleS1pZC0xIiwidHlwIjoiSldUIn0.ewogICJqdGkiOiAiMDdmYTA1MDg3YjdhNGVlOTlkNzI1YzZiNDI0M2JjNTUiLAogICJzdWIiOiAiYWx0Y3NlMmUiLAogICJzY29wZSI6IFsKICAgICJlbS51IiwKICAgICJhc20uaW1nLnIiLAogICAgImFzbS5sb2MuZCIsCiAgICAiYXNtLnJoLmQiLAogICAgImVtLnIiLAogICAgImFzLnRwLnUiLAogICAgIm5vc2UuYWMiLAogICAgImFzLmFkLnUiLAogICAgImFzbS5pYS53IiwKICAgICJhc20udSIsCiAgICAiYXNtLmltZy53IiwKICAgICJhdG0uYXB0LmQiLAogICAgImFzbS5pbWcuZCIsCiAgICAiYXRtLmFwdC53IiwKICAgICJhdG0uciIsCiAgICAiYXNtLmxvYy53IiwKICAgICJpb3QudGltLnciLAogICAgImFub21hbHlkZXRlY3Rpb24udXNlIiwKICAgICJhc20uaWEuZCIsCiAgICAiYXRtLmFwdC5yIiwKICAgICJhdG0uZCIsCiAgICAiYXMuc3YudSIsCiAgICAiZ3IuciIsCiAgICAiYXMuc2MudSIsCiAgICAiaW90LnRpbS5yIiwKICAgICJlbS5ldC5kIiwKICAgICJlbS5ldC5jIiwKICAgICJpb3QuYmkudyIsCiAgICAiYXRtLmlhLnciLAogICAgImFzLmVhLnUiLAogICAgImFzbS5oLnciLAogICAgImFzbS5yaC53IiwKICAgICJhdG0udyIsCiAgICAiYXMua2MudSIsCiAgICAiZW0uZCIsCiAgICAiZW0uZXQudSIsCiAgICAiZW0uYyIsCiAgICAiYXNtLnIiLAogICAgImVtLmV0LnIiLAogICAgImFzbS5tIiwKICAgICJpb3QudGltLmQiLAogICAgImVtZHMuZW50LnIiLAogICAgImlvdC50c2EuciIsCiAgICAiYXNtLmguZCIsCiAgICAiYXNtLmMiLAogICAgImF0bS5pYS5kIiwKICAgICJpb3QuYmkuciIsCiAgICAiYXNtLmQiCiAgXSwKICAiY2xpZW50X2lkIjogImFsdGNzZTJlIiwKICAidXNlcl9pZCI6InRlc3QiLAogICJ1c2VyX25hbWUiOiJ0ZXN0IG5hbWUiLAogICJlbWFpbCI6IjE4NzU3NTMwMjI3QDEzOS5jb20iLAogICJjaWQiOiAiYWx0Y3NlMmUiLAogICJhenAiOiAiYWx0Y3NlMmUiLAogICJncmFudF90eXBlIjogImNsaWVudF9jcmVkZW50aWFscyIsCiAgInJldl9zaWciOiAiM2Q4YWQ4MCIsCiAgImlhdCI6IDE1NDU5ODI2ODMsCiAgImV4cCI6IDE1NDU5ODQ0ODMsCiAgImlzcyI6ICJodHRwOi8vY29yZS5waWFtLmNmN2IzMDgwYTFkODM0ZTIyODYwYzJhNDY1NWVmNmU3MC5jbi1zaGFuZ2hhaS5hbGljb250YWluZXIuY29tL29hdXRoL3Rva2VuIiwKICAiemlkIjogImNvcmUiLAogICJhdWQiOiBbCiAgICAiYXNtLmltZyIsCiAgICAiYXNtLnJoIiwKICAgICJhcy5zYyIsCiAgICAiYW5vbWFseWRldGVjdGlvbiIsCiAgICAiYWx0Y3NlMmUiLAogICAgImFzLmVhIiwKICAgICJhcy5hZCIsCiAgICAiYXRtLmFwdCIsCiAgICAiYXMuc3YiLAogICAgImlvdC5iaSIsCiAgICAiZW1kcy5lbnQiLAogICAgImF0bSIsCiAgICAiYXNtLmxvYyIsCiAgICAiYXMua2MiLAogICAgIm5vc2UiLAogICAgImFzbS5pYSIsCiAgICAiZW0iLAogICAgImlvdC50aW0iLAogICAgImdyIiwKICAgICJhcy50cCIsCiAgICAiaW90LnRzYSIsCiAgICAiZW0uZXQiLAogICAgImF0bS5pYSIsCiAgICAiYXNtLmgiLAogICAgImFzbSIKICBdLAogICJ0ZW4iOiAiY29yZSIsCiAgInNjaGVtYXMiOiBbCiAgICAidXJuOnNpZW1lbnM6bWluZHNwaGVyZTppYW06djEiCiAgXSwKICAiY2F0IjogImNsaWVudC10b2tlbjp2MSIKfQ.vf1E55lYZfOt-zCpcfCKYO202hNVB3-cstkCuUJGB3k1hXOhSTkzHC8R5xiunnW2zMmmPi4vF2j8jju58WlYxg2PfU6FXySMzKhU2-PsAWlupaf7yWBaThVDUTnepdCk-a648G7AqGBqTVX3Ek1Q9Z3mJQIDk8PIV31pLCPXqQEjJ0hvbBemx3g38yEEu4cP3p1VDsnifE_c9KP9qTfZFvze_cVIJ-EnGH8Wh9Viu-xqSRcT8i4AwY5HxlFEvyxt5DwqCJ0ZIsL14d6jJVpwELZT07y9T7ak0KwjXF3UPFEt4Nk7x5Jj96opDLj2RPXLyVXCwacWjVF6WcFYY4cb7Q  
 BF-NA-Z0040M9S-Sprint1-Status 
 mavenLocal()
		//http://maven.aliyun.com/nexus/content/groups/public/
		maven { url "http://192.168.0.105:8081/repository/maven-public/" }
 AC-NA-jeff-test
 nohup java -jar macb-consumer-1.0-SNAPSHOT.jar --spring.profiles.active=local-dev >/dev/null 2>&1 &
  nohup java -jar bodhi-backend-0.0.1-sch-SNAPSHOT.jar   >/dev/null 2>&1 &
 
 nohup java -jar   >/dev/null 2>&1 &
 432000
 
 
 desc "ecm_ns:T_ECM_GAINLOG"
 disable "ecm_ns:T_ECM_GAINLOG"
 
 count "ecm_ns:T_ECM_ORIGINALMESSAGE"
 
 alter "ecm_ns:T_ECM_GAINLOG",NAME=>'GF',TTL=>'604800'
 -Xms512m -Xmx1524m
 enable  "ecm_ns:T_ECM_GAINLOG" 
compaction
 is_enabled "ecm_ns:T_ECM_GAINLOG" 
 2020.06.09-2020.06.12
���ܹ�������ܽ�ͷ�˼
1������bug ���޸� �Լ�����bug���乤��
2��Э���ſ����д����ӿڵĿ���
3��zeromq-server�ķ�������Ӧ�����ϱ����ݣ�����д��kafka
4�����a/b�������ݲɼ�����
5����ͨ���Ի�����������ת��������

���ܹ�������
1��������Թ�����BUG
2�������Ż���Ӧ�ķ��� ��ݮ��/��˹������
3��Э�����Թ�������

java -Djava.security.egd=file:/dev/./urandom -jar -Dfile.encoding=utf-8 -Duser.timezone=GMT+08 /boot/ecm-server-job-admin.jar --nacos.addr=10.121.200.129:8848 --spring.cloud.nacos.discovery.ip=10.121.200.129


java -jar ecm-server-job-admin.jar --nacos.addr=10.121.200.129:8848  --nacos.config.prefix=iot

--spring.profiles.active=dev 

https://ecmcenter.justbon.com/index.html#/login?access_token=ade6d745-664a-4823-88cc-bb61ad91b281&token=ade6d745-664a-4823-88cc-bb61ad91b281&userId=3BF97AF6EE07480AE0530100007F8D85


https://ecmcenter.justbon.com/justbon-ecm/ecm-server-system/third/api/syn/submit

--nacos.addr=10.0.9.105:8848 --spring.profiles.active=dev --nacos.config.prefix=ecm

#!/usr/bin/expect
set timeout 160                       
spawn ssh -p 3333 root@116.63.39.205  
expect "*password*"                  
send "xDqL2CLNVn2k1RpD\r"
sleep 10
#send "sudo -s\r"  
#send "mkdir /data/test\r"
send "sh /data/deploy.sh\r"
sleep 50
#lsend "sh /data/deploy-biz.sh\r"
sleep 10
send "ls\r"
#echo 'test'
#interact      





docker rm -f report
docker rmi report
docker build -t report -f dockerFileReport .
docker run --name report  -d  -p 8118:8118 -p 8120:8120 report


 ecm_ns:
 scan 'ecm_ns:T_ECM_ALARMLOG',{FILTER=>"PrefixFilter('0000018708')"}
 ecm_ns:
 0000000757
 
 count 'ecm_ns:T_ECM_GAINLOG',INTERVAL => 500,CACHE => 500
 
 truncate 'ecm_ns:T_ECM_GAINLOG'
 
 disable 'ecm_ns:T_ECM_GAINLOG'
 drop 'ecm_ns:T_ECM_GAINLOG'  
 
 create 'ecm_ns:T_ECM_GAINLOG',{NAME => 'GF', BLOOMFILTER => 'ROW', VERSIONS => '1'}
 
 
  scan 'ecm_ns:T_ECM_GAINLOG',{FILTER=>"PrefixFilter('0000018708')"}
 scan 'ecm_ns:T_ECM_GAINLOG',{FILTER=>"PrefixFilter('0000000757')"}
 AC-250-Z0040M9S-BugFix
  AC-044-Z0040M9S-PlanAndDetail
  AC-338-Z0040M9S-PMOutput
  AC-NA-Z0040M9S-Sprint7-AnalyzeMerge01
  
  FB-134-Z0040M9S-AlarmWithUnit
  AC-NA-Z0040M9S-ALISetting
  /home/justbon/jstorm-2.2.1/bin/jstorm nimbus > /home/justbon/jstormlogs/server_nim.out 2> /home/justbon/jstormlogs/server_nim.err &
/home/justbon/jstorm-2.2.1/bin/jstorm supervisor > /dev/null 2>&1 &
/home/justbon/jstormweb/apache-tomcat-7.0.94/bin/startup.sh > /dev/null 2>&1 &                             
webUI��װ������https://my.oschina.net/shyloveliyi/blog/789554
nohup /home/justbon/jstorm-2.2.1/bin/jstorm jar /home/justbon/setup/ecm-storm-server.jar com.justbon.bodhi.iot.ecm.storm.topology.MqttTopology mqtt -c nimbus.host=localhost > /home/justbon/jstormlogs/server.out 2> /home/justbon/jstormlogs/server.err &
jstorm kill mqtt
  0000000078
  ���ڣ�2020��05��06�գ���λ�����춯���� 2020��05�� �����ʽ����춯��λ���з��ţ������ڣ�2020��06��10�� ������ 2020��06��30�� ���ڸ�������˰APP���޸�/�ר��ӿ۳��۽ɵ�λ���ر�˵���� 1�����������ʾʱ��㼰֮������޸ģ���ȷ���ϼҹ��ʷ��ŵ�λ������¸�˰�걨�� 2������APP���޸�ʱ���춯��λѡ�����ϵ����λ˰�������ͬ�£� 3�����޸�/����¹�����δ����ר��۳�������ϵ����λ˰��ͬ�²�ѯ��Ƿ�ɹ������ѳɹ�������¹��ʻ��ۼƽ��п۳�����Ӱ��Ա����ȸ�˰�۳��� 4��������Ա��ʵ���춯ʱ��/����ʱ����������Чʱ�䲻���ϵ�����������п��ܻ�Ӱ�칤�ʷ��ŵ�λ����������ͬ�¹�ͨ�������޸�/��� 5������������˾Ա��������Ҳ������ԭ�����������˾����Ҫ���ʱ������ר��۳���
  ecm_storm_data
  java -jar ecm-server-config.jar --nacos.addr=10.121.200.129:8848
  
  FB-NA-Z0040M9S-ProviderRabbitTemplateSend
  FB-96-Z0040M9S-AlarmSetting
  cf space-users ctiotcnd macb
  cf org-users ctiotcnd
  
  cf unset -org-role  hu.peng@siemens.com ctiotcnd  OrgAuditor 
  cf set-space-role yingjie.liu.ext@siemens.com demodev macb-app SpaceDeveloper

cf set-space-role hai-long.wang@siemens.com  dicsop  macb-1 SpaceManager
cf set-space-role hu.peng@siemens.com demoopt macba-v2 SpaceDeveloper
cf set-space-role junzhi.yuan@siemens.com  dicsdev  macb-app SpaceManager

��


select table_schema as '���ݿ�',
table_name as '����',
table_rows as '��¼��',truncate(data_length/1024/1024, 2) as '��������(MB)',truncate(index_length/1024/1024, 2) as '��������(MB)'
from information_schema.tables where table_schema='ecm' order by data_length desc, index_length desc;




truncate table ecm_inspection_details




�¸������Ĺ���
1��proxy ����ĸ߿���
2��100����Ŀ��Դ����
3��ȥ����������ݿ� ���� map




UTF-8ʹ��1~4�ֽ�Ϊÿ���ַ����룺

1��һ��US-ASCIl�ַ�ֻ��1�ֽڱ��루Unicode��Χ��U+0000~U+007F����

2�����б������ŵ������ġ�ϣ���ġ��������ĸ�����������ϣ�����ġ��������ġ��������ĵ���ĸ����Ҫ2�ֽڱ��루Unicode��Χ��U+0080~U+07FF����

3���������Ե��ַ����������պ����֡����������֡��ж����ֵȣ������˴󲿷ֳ����֣�ʹ��3�ֽڱ��롣

4����������ʹ�õ������ַ�ʹ��4�ֽڱ��롣

cf set-org-role  hai-long.wang@siemens.com dicsop  OrgAuditor 
 ddddd
  AC-028-Z0040M9S-IntegrationTest 
  
  AC-bug-sprint1-alarmdesc
 --stacktrace
docker save -o /data/infrastructure.tar docker.siemens.com/mindsphere-ali/ops/infrastructure/hub/ali-gradle-nodejs-terraform-kubectl-python 
 https://developer.mindsphere.io

 Լ�� ֻ��status һ�� 
 jianfeng.huang.ext@siemens.com
 https://apps.cf.eu1.mindsphere.io
 
 cf bind-service macb-admin my-rabbitmq-service
  cf bind-service macb-admin my-postgresql-service
 
 cf bind-service macb-provider my-postgresql-service
 ctiotcnd
cf push java-hello-offline-mysql -b java-buildpack-offline
 cf  create-service service_name  service_plan  myservice 
 
  cf  create-service rabbitmq36  rabbitmq-xs  my-rabbitmq-service 
 
 cf  create-service redis40  redis-m  my-redis-service
 
 cf delete-service-key my-postgresql-service EXTERNAL-ACCESS-KEY
 
  cf  service-key my-rabbitmq-service EXTERNAL-ACCESS-KEY
  
     cf create-service-key my-rabbitmq-service EXTERNAL-ACCESS-KEY
	 
	 cf create-service-key my-redis-service EXTERNAL-ACCESS-KEY
  
   cf  service-key my-rabbitmq-service EXTERNAL-ACCESS-KEY
   
    cf  service-key my-redis-service EXTERNAL-ACCESS-KEY
   
 cf create-service postgresql94 postgresql-xs my-postgresql-service 
  cf set-org-role hai-long.wang@siemens.com macpartb OrgManager
  
  root@mac-VirtualBox:/home/mac# docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
root@mac-VirtualBox:/home/mac# 
postgres-mac
root@mac-VirtualBox:/home/mac# 
mac-mysql
root@mac-VirtualBox:/home/mac# 
myrabbitmq
root@mac-VirtualBox:/home/mac# 

�ࡡ����	1013540872
�ա�����	�ƽ���  
��ʼʱ��	2020��4��14��09��00
����ʱ��	2020��4��14��11��00
��¼��ַ	https://plus.weicewang.com
��¼�˺�	1013540872
��¼����	QDCTAJ
ȷ�����	��ȷ�ϣ�      


Runtime platform                                    arch=amd64 os=linux pid=5155 revision=8bb608ff version=11.7.0
root@mac-VirtualBox:/home/mac# exit
exit
mac@mac-VirtualBox:~$ cd 
mac@mac-VirtualBox:/usr/share/sonarqube-6.7.6/bin/linux-x86-64$ ./sonar.sh startus
Usage: ./sonar.sh { console | start | stop | restart | status | dump }
mac@mac-VirtualBox:/usr/share/sonarqube-6.7.6/bin/linux-x86-64$ 
Starting SonarQube...
Removed stale pid file: /usr/share/sonarqube-6.7.6/bin/linux-x86-64/./SonarQube.pid
Started SonarQube.
mac@mac-VirtualBox:/usr/share/sonarqube-6.7.6/bin/linux-x86-64$


@app.errorhandler(404)
def not_found(e):
    return render_template('404.html')


@app.route('/users/<user_id>')
def users(user_id):
    if int(user_id) == 1:
        return render_template('users.html', user = user_id)
    else:
        abort(404)
 

  
  
  cf  bind-service macb-admin my-postgresql-service
  
   cf  unbind-service macb-admin my-postgresql-service
  
  cf set-space-role hai-long.wang@siemens.com macpartb macb-app SpaceDeveloper
  {
"alarmConfig":[],
  
  "statusConfig": [
    {
      "downtimeCategory": true,
      "id": "ff808181687d844001687d932839001a",
      "status": "work",
      "value": "danger",
      "visual": "#ff0000"
    }
  ]
}

Created new connection: SpringAMQP#4a50c746:0/SimpleConnection@79ecc507 
[delegate=amqp://a9s-brk-usr-9a91c7b1c35b74c76d114b7997e0a96fb0cfb6bc@172.16.19.28:5672/, localPort= 55404]

amqp://a9s-brk-usr-9a91c7b1c35b74c76d114b7997e0a96fb0cfb6bc:a9sc08d1a8d86cf34f793444d19e5d5421c2177f1b4@rad481785.service.dc1.a9ssvc:5672
{
 "host": "pod24cb3a-psql-master-alias.node.dc1.a9ssvc",
 "hosts": [
  "pod24cb3a-pg-0.node.dc1.a9ssvc",
  "pod24cb3a-pg-1.node.dc1.a9ssvc",
  "pod24cb3a-pg-2.node.dc1.a9ssvc"
 ],
 "name": "pod24cb3a",
 "password": "a9s270fd5e687192083485c9f16c098505ef59f1ea2",
 "port": 5432,
 "uri": "postgres://a9s469c3bd2ab9f8a646bf3797201ef87f6f9d99060:a9s270fd5e687192083485c9f16c098505ef59f1ea2@pod24cb3a-psql-master-alias.node.dc1.a9ssvc:5432/pod24cb3a",
 "username": "a9s469c3bd2ab9f8a646bf3797201ef87f6f9d99060"
}
Sprint6 requirement and task

Alarm setting double check logic
    BE - check�Ƿ�͵�ǰ���� - 8
    Test - �����Ƿ���ϵ�ǰ���� - 4
    
Import Plan double check logic
    FE - import�����Ż����Լ�����ȷ�� - 12
    
Workstations status ��˽ӿ�ȷ��
    FE - check�Ƿ����㵱ǰ�����Լ�support������� - 4
    BE - ���ӽӿڣ�ʵ���߼������� - 12
    Test - �����Ƿ���ϵ�ǰ���� - 4
    PS����Json file �и��£�������Ҫ��ʾ�û���ȥ�������� ��Low Priority��
    
    
setting page ������������
    FE - check�Ƿ�͵�ǰ���� - 4
    Test - �����Ƿ���ϵ�ǰ���� - 4

template ��load���� ����
    FE - check�Ƿ�͵�ǰ���� - 8
    FE - �����Ż�Enhancement - 8
    Test - �����Ƿ���ϵ�ǰ���� - 4

ʱ��ɾѡ���滻��ʱ�ӣ���������µ�һҳչʾ��ʷ��Ĭ���ǵ������ݣ�0�㿪ʼ��Low Priority��
    FE - �������test - 12
    Test - �����Ƿ���ϵ�ǰ���� - 4
    
  

����ҳ������Ҫ���loadingתȦ
    FE - check������Ҫ��ӵĵط� - 16
    
���UT coverage Enhancement
    BE - ���帲���ʴﵽ60%���� - 32
    
RabbitMQ��progresql�Զ�����ע�루������£�
    BE - ����Ķ� - 4

ǰ��CD investigation
    FE - 8
    
Local�����
    FE - 4
    BE - ÿ��Service����Ҫ��ӻ������ã�local-demo.yml�� 8

FPY ��Ƭ���� �C ����ͼ���� Current Defect Pieces- ʵʱ���������� 
    BE - ����һ������pieces�Ľӿ� - 8
    FE - ����support - 4
    
PM����
    Time usage�����߼���1.ʵʱ���� 2.ͬ�����ã�- 8
    Stop Code�����߼���1.ʵʱ���� 2.ͬ�����ã� - 8
    EFF �����߼���1.ʵʱ���� 2.ͬ�����ã� - 12
    Over all FPY�����º���߼��� - 12
    Over all Status���¼ӽӿڣ� - 8
    FE - Over all Status �¼ӽӿ� - 4
    FE - support���� - 8

Page Setting��Refresh�Ƿ���ҪEnable ��ť����Low priority��
    FE - update the logic - 8 

δ���õ�PM����Ƭ��Ҫ�ҵ�
    FE - ��Ҫdouble check with ����
       - �����߼�
    
    
��Ҫ��agent team��һ���ĵ����ڽ�assetʱ��Щfiled�ǻ���ʲô���Ĺ��������ģ�ÿ��variable����������ô����Ҳ��Ҫ����������Щ�ֶ��Ǳ���ģ���Щ�ֶ���optional�ġ�
��Ҫһ��ȫPM�ģ�config file ģ�壨����workstations����
    

	
	
	
	
	SIMICAS Metrics Performer
	
pod24cb3a-pg-0.node.dc1.a9ssvc

cf ssh -L 10002:pod70ad14-pg-0.node.dc1.a9ssvc:5432 macb-admin

cf ssh -L 10002:pod56cded-pg-0.node.dc1.a9ssvc:5432 macb-admin

cf create-service-key my-postgresql-service EXTERNAL-ACCESS-KEY

cf service-key my-postgresql-service EXTERNAL-ACCESS-KEY
cf  service-key my-postgresql-service EXTERNAL-ACCESS-KEYf
cf set-org-role jianfeng.huang.ext@siemens.com dicsop OrgManager
{
    "body":
        {
            "message":"message"
        },
    "recipientsTo":"jianfeng.huang.ext@siemens.com;qing.song@siemens.com",
    "from":"name",
    "subject":"test"
}
https://macpartb.piam.eu1.mindsphere.io/api/notification/v3/publisher/messages


https://gateway.eu1.mindsphere.io/api/eventmanagement/v3/<endpoint>

cf create-service-key my-postgresql-service EXTERNAL-ACCESS-KEY


cf create-service-key my-redis-service EXTERNAL-ACCESS-KEY

Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6ImtleS1pZC0xIiwidHlwIjoiSldUIn0.eyJqdGkiOiI5ZWZlOWY3YTlmOWI0Mzg2ODRkZWNhZGRlMGMyZDI3ZSIsInN1YiI6IjY2M2EyMjUyLWVmMTktNDY5Yy1hZmNjLTk5YjgwMmYzYTAzMSIsInNjb3BlIjpbInVhYS5vZmZsaW5lX3Rva2VuIl0sImNsaWVudF9pZCI6Im1hY2ItbWFjcGFydGIiLCJjaWQiOiJtYWNiLW1hY3BhcnRiIiwiYXpwIjoibWFjYi1tYWNwYXJ0YiIsImdyYW50X3R5cGUiOiJhdXRob3JpemF0aW9uX2NvZGUiLCJ1c2VyX2lkIjoiNjYzYTIyNTItZWYxOS00NjljLWFmY2MtOTliODAyZjNhMDMxIiwib3JpZ2luIjoibWFjcGFydGIiLCJ1c2VyX25hbWUiOiJqaWFuZmVuZy5odWFuZy5leHRAc2llbWVucy5jb20iLCJlbWFpbCI6ImppYW5mZW5nLmh1YW5nLmV4dEBzaWVtZW5zLmNvbSIsImF1dGhfdGltZSI6MTU1MDU3MDU5NiwicmV2X3NpZyI6ImIwY2Q4NTA2IiwiaWF0IjoxNTUwNTcwNTk3LCJleHAiOjE1NTA1NzIzOTcsImlzcyI6Imh0dHBzOi8vbWFjcGFydGIucGlhbS5ldTEubWluZHNwaGVyZS5pby9vYXV0aC90b2tlbiIsInppZCI6Im1hY3BhcnRiIiwiYXVkIjpbInVhYSIsIm1hY2ItbWFjcGFydGIiXSwidGVuIjoibWFjcGFydGIiLCJzY2hlbWFzIjpbInVybjpzaWVtZW5zOm1pbmRzcGhlcmU6aWFtOnYxIl0sImNhdCI6InVzZXItdG9rZW46djEifQ.TYQqrQxNGAr1ZNKfRrL0nlB6iI_7QFyhELz6FARmcXLEwpp_xEpoDe24dRR3ykL5iO4yusaL6H3mHcJ7AiV96ow9Exp4dmhaxTCzw45gVuXm3rky6F80-bqviWe37dsbUhuBm3em6mYHnrLGb-Paw0mrULMQy-PlbgRD99eKEa_5rxtv-y4UzYTBbXnTOCjHkzX7ypRJXIm7vNpFBeJNbDvit5nFBN9CaiAMNqWoeog3mUeg7lVbqRAlw9La1ICcsyFH93oseydG_Ld-optKC1zUhFC7uwG1fYBB9jfurO1lA5klxamVhLFsLKD2ceGrANzhZb41ZNb0XOxf3ZjAJQ

Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6ImtleS1pZC0xIiwidHlwIjoiSldUIn0.eyJqdGkiOiIwN2VmMzg1ZTMwNWQ0MzE0YTVkMzczZjE1MDcyZWU1NCIsInN1YiI6InRlY2h1c2VyLW1hY3BhcnRiIiwic2NvcGUiOlsiaWFtLWFjdGlvbi5jbGllbnRfY3JlZGVudGlhbHMuc3VidGVuYW50LWltcGVyc29uYXRpb24iLCJtZHNwOmNvcmU6QWRtaW4zcmRQYXJ0eVRlY2hVc2VyIl0sImNsaWVudF9pZCI6InRlY2h1c2VyLW1hY3BhcnRiIiwiY2lkIjoidGVjaHVzZXItbWFjcGFydGIiLCJhenAiOiJ0ZWNodXNlci1tYWNwYXJ0YiIsImdyYW50X3R5cGUiOiJjbGllbnRfY3JlZGVudGlhbHMiLCJyZXZfc2lnIjoiODI3NDY2MWUiLCJpYXQiOjE1NTA1NzEwOTIsImV4cCI6MTU1MDU3Mjg5MiwiaXNzIjoiaHR0cHM6Ly9tYWNwYXJ0Yi5waWFtLmV1MS5taW5kc3BoZXJlLmlvL29hdXRoL3Rva2VuIiwiemlkIjoibWFjcGFydGIiLCJhdWQiOlsiaWFtLWFjdGlvbi5jbGllbnRfY3JlZGVudGlhbHMiLCJ0ZWNodXNlci1tYWNwYXJ0YiJdLCJ0ZW4iOiJtYWNwYXJ0YiIsInNjaGVtYXMiOlsidXJuOnNpZW1lbnM6bWluZHNwaGVyZTppYW06djEiXSwiY2F0IjoiY2xpZW50LXRva2VuOnYxIn0.pQXvkK2fR-fptJDaPp5EYh9Jxi9V0YATI9a6klUcTjAy_JIqe6iI1J8W5KWJBDBlaXirFyg2erMYcPme-UK-A1lkDdOtPddy9G67EnHXx9G4cQbpUuIn3FPPGz8nc1qFuws9gSFsVQKv-AOHEwiwO2a_7VZUj5DQ5nHYo6Z4RX7On-NGZgCNhWEgdX-BNyU2QgvXmrWr_QO2NaBIOF42bB9IHAi4Yvqaodcq4QtKfGecCIzmLRiPdA4w9XGCbiVJWqwEsvI6yiS7yfjtn279vv-GwPtnl8f1oCOjbZ_z0Dol6QfLzGXZGAKe1txhQASh8dB3jzDGTNkL06fc9NE3CQ

cf create-service a9s-postgresql postgresql-m my-postgresql-service
Jiang.zhang@siemens.com 
DEDSwin@2019

SIMICAS Metrics Performer
demo:dev ,op ,iot
dics:dev,op,iot

420109931
[{"logref":"c696d15285d642ddab2613796bbcaaf4","message":"MindSphere Gateway error: Invalid CSRF Token 'null' was found on the request parameter '_csrf' or header 'X-XSRF-TOKEN'.","stackTrace":"com.siemens.mindsphere.mindgate.support.exception.GatewayException: Invalid CSRF Token 'null' was found on the request parameter '_csrf' or header 'X-XSRF-TOKEN'.\n"}]
c'f

cf create-space macb-app  -o dicsdev 

location /ecm-test { 
		    proxy_pass   https://test-justbon.obs.cn-east-3.myhuaweicloud.com/ecm-test/;
			proxy_set_header   X-Real-IP        $remote_addr;
			proxy_set_header   X-Forwarded-For  $proxy_add_x_forwarded_for;
			proxy_max_temp_file_size 0;
			proxy_connect_timeout      90;
			proxy_send_timeout         90;
			proxy_read_timeout         90;
			proxy_buffer_size          4k;
			proxy_buffers              4 32k;
			proxy_busy_buffers_size    64k;
			proxy_temp_file_write_size 64k;
		}

git tag -a ECM-V5.0-20201026 -m "ecm5.0�汾��ʼ��������ɹ�����֯�ṹ����ģ������豸�����Լ��������ܣ�������Ŀ������B��"

git push origin ECM-V5.0-20201026

git tag -d ECM-V5.0-20201026

git push origin :refs/tags/ECM-V5.0-20201026


"id": "102",
			"code": "0000098",
			"name": "�ϲ��ֿϹ�԰8��",
			"runStatus": 0,
			"status": 0,
			"userName": "admin",
			"password": "password",
			"remark": null,
			"mqttId": "1",
			"deviceNum": 3,
			"createTime": 1603688175000,
			"createUserid": "8a808ae36481c5a801648845181b0031",
			"createUsername": "����",
			"lastModifyTime": 1603688227000,
			"lastModifyUserid": "8a808ae36481c5a801648845181b0031",
			"lastModifyUsername": "����",
			"projectId": "4691094174",
			"sign": 0,
			"enableTime": 1603688175000
			
			

ecm5.0�汾��ʼ��������ɹ�����֯�ṹ����ģ������豸�����Լ���������


faoi007
cf create-service postgresql94 postgresql-xs my-postgresql-service

 cf create-service redis32 redis-xs my-redis-service
 cf login -a https://api.cf.eu1.mindsphere.io --sso
 SIMICAS Metrics Performer
 cf login -a https://api.cf.cn1.mindsphere-in.cn --sso
 Felix Focus:
docker login code.siemens.com --username jianfeng.huang.ext@siemens.com --password w73Xs6NxLwER_HfTy8YB
docker login docker.siemens.com --username jianfeng.huang.ext@siemens.com --password 2oF7JpJ3YFxftzdKu7cX
Felix Focus: 

 seal0512
 dicsiot
 jianfeng.huang.ext@siemens.com
 2oF7JpJ3YFxftzdKu7cX
  kevin.wu@siemens.com
 6EozkZtLC8ydYNf3d7mz
 hu.peng@siemens.com
Lake@222222
SIMICAS Metrics Performer
Jiang.zhang@siemens.com
DEDSwin@2019
7cc657dc-bebd-4d63-8a79-72cff816a31a
d27cad81-a5bf-468f-879d-c26bf1a78742

APP Package A: SIMICAS Metrics Performer    --- simicasmp
APP Package B: SIMICAS Performance Analyzer --- simicaspa
APP Package C: SIMICAS Factory Logistic --- simicasfl



1.	Tenant: demodev
"client_id": "prmdev3rdpartytu"
          "client_secret": "p6t3qbbm-rf77-46u1-5522-7r0039y714nc"
           "authorities": ["mdsp:core:Admin3rdPartyTechUser"]
"name": "demodev"

2.	Tenant: demoopt 
           "client_id": "prmopt3rdpartytu"
           "client_secret": "xsfe2e8a-0f19-kc04-8m6t-hj3p7rr107v1"
          "authorities": ["mdsp:core:Admin3rdPartyTechUser"]
           "name": "demoopt"

 
 cf ssh -L 10002:pod53214e-pg-0.node.dc1.a9ssvc:5432 macb-admin
 
 cf ssh -L 10002:pod70ad14-pg-0.node.dc1.a9ssvc:5432 macb-admin

 Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6ImtleS1pZC0xIiwidHlwIjoiSldUIn0.eyJqdGkiOiJjMWVmMDY4NzA2Yzk0ZDVmOTE1NmRhNjAzMDljM2UzZiIsInN1YiI6Ik1hY2ItUGVuZ2h1Iiwic2NvcGUiOlsibWRzcDpjb3JlOkFkbWluM3JkUGFydHlUZWNoVXNlciJdLCJjbGllbnRfaWQiOiJNYWNiLVBlbmdodSIsImNpZCI6Ik1hY2ItUGVuZ2h1IiwiYXpwIjoiTWFjYi1QZW5naHUiLCJncmFudF90eXBlIjoiY2xpZW50X2NyZWRlbnRpYWxzIiwicmV2X3NpZyI6ImNmNDgxZTlmIiwiaWF0IjoxNTU2MDA3NjUyLCJleHAiOjE1NTYwMDk0NTIsImlzcyI6Imh0dHBzOi8vZGVtb2Rldi5waWFtLmNuMS5taW5kc3BoZXJlLWluLmNuL29hdXRoL3Rva2VuIiwiemlkIjoiZGVtb2RldiIsImF1ZCI6WyJNYWNiLVBlbmdodSJdLCJ0ZW4iOiJkZW1vZGV2Iiwic2NoZW1hcyI6WyJ1cm46c2llbWVuczptaW5kc3BoZXJlOmlhbTp2MSJdLCJjYXQiOiJjbGllbnQtdG9rZW46djEifQ.IDwE4HYlzMObvPLELWYiH2i7oLnXShRtRmDFwEzmdSeaiC4yZjI1Hih4OSetKkyS-3bstrfIIQbS-InVKPJ8KKa9vBUvB2eICtguPnYuNcJANATjh_rlgm30sJXzlWn-LrPcREaWeoe_TgbFZg9ZKaWLQFzPYVtWKkGacI4oawSW_oW5Tl8inwh-TR9huVLyDqRa904GsTlwSAHylJZVaheZZlGy1BNJh2cKu7MUjXXjsstIVUGop47tH1toDK8DhZMdOTa7mrkDwr20jG8b5FiPXwMXuPV7A_dgSkDFCBLAWOEiXFMJxczC3SmJNlrwsCob5iDBWYHHTjIz-M-ZBg
 https://gateway.cn1.mindsphere-in.cn/api/macb-demodev/v1/macb/token

 cf ssh -L 10002:pod880da3-pg-0.node.dc1.a9ssvc:5432 macb-admin 
 cf ssh -L 10002:pod880da3-pg-0.node.dc1.a9ssvc:5432 macb-admin 
 
  cf ssh -L 10003:pod49c055-psql-master-alias.node.dc1.a9ssvc:5432 macb-admin 
  
  
  ������������  �����status ���ص�ʱ��� downtimecategory ���ϣ�ǰ�˸�������ж��Ƿ���ʾstopcode ��������������Ǻ�� ����downtimecateogry ������stopcode��������
  17:59:17.296 [http-nio-8080-exec-23] INFO  o.s.c.c.service.impl.LineServiceImpl - Initialization line delete param: {assetId=7dc03c24a2734414a052d0fb1173b5cd, lineName=����111, lineId=8ed665013c5948c18396caad3d40fbe9, force=false, deviceId=SV-K5BU6557, version=2020-03-04 17:59:17, tenant=dicsdev} ,operation: [app, agent, deleteAsset, box, local]
17:59:25.515 [http-nio-8080-exec-88] INFO  o.s.c.a.s.impl.AgentServiceImpl - Receive agent feedback : AgentFeedback(agentId=9cb08483f33146a2bef466eab1a49ca1, action=publish, result=Failed, detail=[2020-03-04 09:59:30] initializeDataSource failed!, version=2020-01-20 14:30:00, timestamp=2020-59-03/04/20 09%:59)
17:59:26.795 [http-nio-8080-exec-23] INFO  o.s.c.c.service.impl.LineServiceImpl - Result from MindSphere app :{"timestamp":"Mar 4, 2020 9:59:26 AM","lineId":"8ed665013c5948c18396caad3d40fbe9","assetId":"7dc03c24a2734414a052d0fb1173b5cd","action":"deleteLine","result":"Failed","detail":{"tb_workstation_status":"Success","tb_st_stopcode":"Success","tb_data_asset":"Success","tb_hi_eff":"Success","tb_st_eff":"Success","tb_production_line":"Failed","tb_user2fav":"Success","tb_message_range":"Success","tb_hi_usage":"Success","tb_hi_output":"Success","tb_category2email":"Success","tb_st_output":"Success","tb_user2line":"Success","tb_alarm_rule":"Success","tb_notice":"Success","tb_hi_output_change_over":"Success","tb_line_status":"Success","tb_message_type":"Success","tb_user_compar2setting":"Success","tb_message_output":"Success","tb_st_fpy":"Success","tb_hi_defect_piece":"Success","tb_hi_fpy":"Success","tb_hi_alarm":"Success","tb_alarm_category":"Success"}}
17:59:26.796 [http-nio-8080-exec-23] INFO  o.s.c.c.p.bo.publish.OperationQueue - Operation app  finished: true, result: FAILED
  
  cf ssh -L 10004:red76ad25-master.service.dc1.a9ssvc:6379 macb-admin 
  
  ƴ�� + token  f
  
  cf ssh -L 30003:red76ad25-master.service.dc1.a9ssvc:6379 demo-sso
 
 ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDkljuE3VLWq1OJHN82gqpeyHs+V5kPpZZ3oa81oBcbvnQpP0yV1my+W1v1Pud5B+QMESxuXMhzmDuVMkjSG21JqBhglx4LVXEz7dXFkdiOrvYcdyOtioVAvMCHpQtThHUAI33ukapVpyt5E5EX3tovCebI8HayKPEYTI6kEtGLWvE3wSsO8DO/T6NeOrOtnGxS6jjoApYoUxY7IlElJkw8gFCLbTZI8pdO0Kb2U4dr0Iz9FM4dV+o7kcBang43r137KwPQO+BOWsIuzxUM5XutG4s8XRD5KV99zv+AchUqF1bSWRQRjNy2wht6AAQwI5/xyMo8/XOjyPfThdo8xB+L jianfeng.huang.ext@siemens.com
 
  cf ssh -L 20002:rad959a07.service.dc1.a9ssvc:15672 macb-admin
  
  
  cf ssh -L 20002:rad8f4f9.service.dc1.a9ssvc:15672 macb-admin
  
  a9s-brk-usr-c23eb52728f59e2e6252079559af6778f74d18bc
  a9sb26683caeaa33d7846ff463c809396c31526ea4d
 npm install -g @angular/cli@8.0.2
  cf ssh -L 10002:pod42a5f2-pg-0.node.dc1.a9ssvc:5432 macb-admin 
  
  
   seal0512_tu  V1xxkTNeVL5b4I3HoYgN
 sslc-tu VOibQyiNI5iEnJ32XDlO
 simicas-iot gUM2yZviReQu7yWzNYMWc4hYy5K2Mv96
 dicsext-techuser H0V8brLLwXzIZUD50UXA
 
 
 SIMICAS Metrics Performer
 
 
 dicsext
 
 
 dicsiot
 
 seal0512
 
 sslc
 
 daichen.pu@siemens.com
 
 
 
 dicsext
 dicsiot
 seal0512
 
 SIMICAS Performance Analyzer
  stack:cflinuxfs3
  
  {
 "host": "pod880da3-psql-master-alias.node.dc1.a9ssvc",
 "hosts": [
  "pod880da3-pg-0.node.dc1.a9ssvc"
 ],
 "name": "pod880da3",
 "password": "a9s1d18c720314540721b9fbba422ed296b7b0dbadf",
 "port": 5432,
 "uri": "postgres://a9sb74a02f6873d10ca5c6e64d7b70456c04d2e63f2:a9s1d18c720314540721b9fbba422ed296b7b0dbadf@pod880da3-psql-master-alias.node.dc1.a9ssvc:5432/pod880da3",
 "username": "a9sb74a02f6873d10ca5c6e64d7b70456c04d2e63f2"
}
 
 
client_id:  
client_secret: 

 client_id: simicas-iot 
client_secret: gUM2yZviReQu7yWzNYMWc4hYy5K2Mv96
���� post 
https://gateway.cn1.mindsphere-in.cn/api/macb-demodev/v1/macb/lines/{lineId}/config

���� post 
https://gateway.cn1.mindsphere-in.cn/api/macb-demodev/v1/macb/lines/{lineId}/config

iot ������ 

���� post 
https://gateway.cn1.mindsphere-in.cn/api/simicasmp-dicsop/1/macb/lines/{lineId}/config

���� post 
https://gateway.cn1.mindsphere-in.cn/api/macb-dicsop/1/macb/lines/{lineId}/config

tech user �� dicsop �� 
2019-09-17 10:00:04.883 [consumer_async_event_handler-thread-1] ERROR c.s.c.m.c.s.s.i.OutputStatServiceImpl - ͳ��EFF {"kpiType":"OUTPUT","lineTo":{"tenant":"macpartb","lineId":"3b1c0a00a76c11e8b7856f1df029bd21","lineName":"App@3RW51_Mock","assetId":"2c9083b063007b44016426d2a8c0001d"},"stationTo":{"stationId":"LINE"},"varToMetricMap":{"Output":{"dataType":"INT","unit":"one","defaultValue":"0","length":0}},"iMoJson":"{\"ORDERID\":\"\",\"Output\":1.0,\"ProductID\":\"product-010\",\"_time\":\"2019-09-17T02:00:00.052Z\",\"Changeover\":true}"} �쳣
org.springframework.orm.ObjectOptimisticLockingFailureException: Batch update returned unexpected row count from update [0]; actual row count: 0; expected: 1; nested exception is org.hibernate.StaleStateException: Batch update returned unexpected row count from update [0]; actual row count: 0; expected: 1
	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:320)
	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:244)
	at org.springframework.orm.jpa.AbstractEntityManagerFactoryBean.translateExceptionIfPossible(AbstractEntityManagerFactoryBean.java:488)
	at org.springframework.dao.support.ChainedPersistenceExceptionTranslator.translateExceptionIfPossible(ChainedPersistenceExceptionTranslator.java:59)
	at org.springframework.dao.support.DataAccessUtils.translateIfNecessary(DataAccessUtils.java:213)
	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:147)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)
	at org.springframework.data.jpa.repository.support.CrudMethodMetadataPostProcessor$CrudMethodMetadataPopulatingMethodInterceptor.invoke(CrudMethodMetadataPostProcessor.java:133)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)
	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)
	at org.springframework.data.repository.core.support.SurroundingTransactionDetectorMethodInterceptor.invoke(SurroundingTransactionDetectorMethodInterceptor.java:57)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)
	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:213)
	at com.sun.proxy.$Proxy151.findByLineIdAndProductIdNotAndEndTimeIsNullAndLastTimeLessThanEqual(Unknown Source)
	at com.siemens.csde.macb.consumer.service.stat.impl.OutputStatServiceImpl.stEFF(OutputStatServiceImpl.java:174)
	at com.siemens.csde.macb.consumer.service.stat.impl.OutputStatServiceImpl.statistic(OutputStatServiceImpl.java:81)
	at com.siemens.csde.macb.consumer.service.stat.impl.OutputStatServiceImpl$$FastClassBySpringCGLIB$$39e1cbe8.invoke(<generated>)
	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:738)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)
	at org.springframework.transaction.interceptor.TransactionInterceptor$1.proceedWithInvocation(TransactionInterceptor.java:99)
	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:282)
	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:96)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)
	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:673)
	at com.siemens.csde.macb.consumer.service.stat.impl.OutputStatServiceImpl$$EnhancerBySpringCGLIB$$5e94ff49.statistic(<generated>)
	at com.siemens.csde.macb.consumer.event.ConsumerEvent.call(ConsumerEvent.java:97)
	at com.siemens.csde.macb.common.reactor.event.impl.AbstractEventListener.fireEvent(AbstractEventListener.java:42)
	at com.siemens.csde.macb.consumer.event.ConsumerEventListener.fireEvent(ConsumerEventListener.java:23)
	at com.siemens.csde.macb.common.reactor.event.EventBus.handleSingleEvent(EventBus.java:130)
	at com.siemens.csde.macb.common.reactor.event.service.SingleEventWork.run(SingleEventWork.java:29)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
	at java.lang.Thread.run(Thread.java:748)
Caused by: org.hibernate.StaleStateException: Batch update returned unexpected row count from update [0]; actual row count: 0; expected: 1
	at org.hibernate.jdbc.Expectations$BasicExpectation.checkBatched(Expectations.java:67)
	at org.hibernate.jdbc.Expectations$BasicExpectation.verifyOutcome(Expectations.java:54)
	at org.hibernate.engine.jdbc.batch.internal.NonBatchingBatch.addToBatch(NonBatchingBatch.java:46)
	at org.hibernate.persister.entity.AbstractEntityPersister.delete(AbstractEntityPersister.java:3261)
	at org.hibernate.persister.entity.AbstractEntityPersister.delete(AbstractEntityPersister.java:3498)
	at org.hibernate.action.internal.EntityDeleteAction.execute(EntityDeleteAction.java:98)
	at org.hibernate.engine.spi.ActionQueue.executeActions(ActionQueue.java:582)
	at org.hibernate.engine.spi.ActionQueue.executeActions(ActionQueue.java:456)
	at org.hibernate.event.internal.AbstractFlushingEventListener.performExecutions(AbstractFlushingEventListener.java:337)
	at org.hibernate.event.internal.DefaultFlushEventListener.onFlush(DefaultFlushEventListener.java:39)
	at org.hibernate.internal.SessionImpl.flush(SessionImpl.java:1282)
	at org.hibernate.jpa.spi.AbstractEntityManagerImpl.flush(AbstractEntityManagerImpl.java:1300)
	at org.hibernate.jpa.internal.QueryImpl.beforeQuery(QueryImpl.java:518)
	at org.hibernate.jpa.internal.QueryImpl.getResultList(QueryImpl.java:481)
	at org.springframework.data.jpa.repository.query.JpaQueryExecution$CollectionExecution.doExecute(JpaQueryExecution.java:121)
	at org.springframework.data.jpa.repository.query.JpaQueryExecution.execute(JpaQueryExecution.java:85)
	at org.springframework.data.jpa.repository.query.AbstractJpaQuery.doExecute(AbstractJpaQuery.java:116)
	at org.springframework.data.jpa.repository.query.AbstractJpaQuery.execute(AbstractJpaQuery.java:106)
	at org.springframework.data.repository.core.support.RepositoryFactorySupport$QueryExecutorMethodInterceptor.doInvoke(RepositoryFactorySupport.java:483)
	at org.springframework.data.repository.core.support.RepositoryFactorySupport$QueryExecutorMethodInterceptor.invoke(RepositoryFactorySupport.java:461)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)
	at org.springframework.data.projection.DefaultMethodInvokingMethodInterceptor.invoke(DefaultMethodInvokingMethodInterceptor.java:56)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)
	at org.springframework.transaction.interceptor.TransactionInterceptor$1.proceedWithInvocation(TransactionInterceptor.java:99)
	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:282)
	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:96)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)
	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:136)
	... 29 common frames omitted
2019-09-17 10:00:04.899  INFO 8212 --- [andler-thread-1] o.h.e.j.b.internal.AbstractBatchImpl     : HHH000010: On release of batch it still contained JDBC statements
Exception in thread "consumer_async_event_handler-thread-1" java.lang.Error: org.springframework.transaction.TransactionSystemException: Could not commit JPA transaction; nested exception is javax.persistence.RollbackException: Transaction marked as rollbackOnly
	at com.siemens.csde.macb.common.reactor.event.service.SingleEventWork.run(SingleEventWork.java:32)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
	at java.lang.Thread.run(Thread.java:748)
Caused by: org.springframework.transaction.TransactionSystemException: Could not commit JPA transaction; nested exception is javax.persistence.RollbackException: Transaction marked as rollbackOnly
	at org.springframework.orm.jpa.JpaTransactionManager.doCommit(JpaTransactionManager.java:526)
	at org.springframework.transaction.support.AbstractPlatformTransactionManager.processCommit(AbstractPlatformTransactionManager.java:761)
	at org.springframework.transaction.support.AbstractPlatformTransactionManager.commit(AbstractPlatformTransactionManager.java:730)
	at org.springframework.transaction.interceptor.TransactionAspectSupport.commitTransactionAfterReturning(TransactionAspectSupport.java:504)
	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:292)
	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:96)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)
	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:673)
	at com.siemens.csde.macb.consumer.service.stat.impl.OutputStatServiceImpl$$EnhancerBySpringCGLIB$$5e94ff49.statistic(<generated>)
	at com.siemens.csde.macb.consumer.event.ConsumerEvent.call(ConsumerEvent.java:97)
	at com.siemens.csde.macb.common.reactor.event.impl.AbstractEventListener.fireEvent(AbstractEventListener.java:42)
	at com.siemens.csde.macb.consumer.event.ConsumerEventListener.fireEvent(ConsumerEventListener.java:23)
	at com.siemens.csde.macb.common.reactor.event.EventBus.handleSingleEvent(EventBus.java:130)
	at com.siemens.csde.macb.common.reactor.event.service.SingleEventWork.run(SingleEventWork.java:29)
	... 3 more
Caused by: javax.persistence.RollbackException: Transaction marked as rollbackOnly
	at org.hibernate.jpa.internal.TransactionImpl.commit(TransactionImpl.java:58)
	at org.springframework.orm.jpa.JpaTransactionManager.doCommit(JpaTransactionManager.java:517)
	... 16 more

Process finished with exit code -1



ͳ�ƴ��ڵ����⣺ 
     output:���ݿ���ֻ���ڰ����ߡ�product ��Сʱά��ͳ�ƣ�����֧�ֵ�����ͳ��
	 fpy��failed pieces���������ݿ���ֻ������batch��������ֵ��changeover����Ȼ��һ��changeover����Ƕ�Сʱ����˾��޷���Сʱ������ͳ��
	 LTH����ͬ��fpy���޷�֧�ְ�Сʱ������ͳ��
	 EFF:  ��ʽ�� Finishing Time-Starting Time/Output��finishing time ָ����ʲô��һ��batch ����ʱ���𣿵���һ��batch ���ܿ�Сʱ��

���������
     ��Ҫ�����������е�output�� defact ʵʱ��¼�洢���ݿ⣬�����ǰ�ͳ�Ƽ�¼��Ȼ����˻�Ӵ����ݵĴ洢�� ���������ݿ��������ӣ���Ҫ��dai chenȷ�ϣ�

{
 "host": "pod97b6d2-psql-master-alias.node.dc1.a9ssvc",
 "hosts": [
  "pod97b6d2-pg-0.node.dc1.a9ssvc",
  "pod97b6d2-pg-1.node.dc1.a9ssvc",
  "pod97b6d2-pg-2.node.dc1.a9ssvc"
 ],
 "name": "pod97b6d2",
 "password": "a9s02010f32d32b0e0c1f269eafdb2f50439f8bc598",
 "port": 5432,
 "uri": "postgres://a9se235f6f777e0ec036732ca02956585109174fe8a:a9s02010f32d32b0e0c1f269eafdb2f50439f8bc598@pod97b6d2-psql-master-alias.node.dc1.a9ssvc:5432/pod97b6d2",
 "username": "a9se235f6f777e0ec036732ca02956585109174fe8a"
}
  List<IotTimeSeriesItem> iotTimeSeriesItems=Optional.ofNullable(hiIotTimeSeriesItems)
                .orElseGet(Collections::emptyList)
                .stream()
                .filter(iotTimeSeriesItem -> Objects.nonNull(iotTimeSeriesItem.fuzzyGetStringValue(KpiEnum.STATUS.name())))
                .collect(Collectors.toList());
 
 https://demodev.cn1.mindsphere-in.cn 

 
 compile group: 'org.springframework.cloud', name: 'spring-cloud-spring-service-connector', version: '1.2.3.RELEASE'
 
 compile group: 'org.springframework.cloud', name: 'spring-cloud-cloudfoundry-connector', version: '1.2.3.RELEASE'
 
 Account��hu.peng@siemens.com
Passwd: Lake@123456

 Manage My Plant Transparency
 macb


macb-admin  /macb/**
macb  /**


default-src 'self' static.eu1.mindsphere.io; style-src * 'unsafe-inline'; script-src code.jquery.com 'self' 'unsafe-inline' 'unsafe-eval' static.eu1.mindsphere.io; img-src * data:;
default-src 'self' static.cn1.mindsphere-in.cn; style-src * 'unsafe-inline'; script-src code.jquery.com 'self' 'unsafe-inline' 'unsafe-eval' static.cn1.mindsphere-in.cn; img-src * data:;


default-src 'self' static.cn1.mindsphere-in.cn static.eu1.mindsphere.io; style-src * 'unsafe-inline'; script-src code.jquery.com 'self' 'unsafe-inline' 'unsafe-eval' static.cn1.mindsphere-in.cn; img-src * data:;
?
AWS link: https://ctiotcnd.eu1.mindsphere.io
?

https://macpartb.eu1.mindsphere.io/index.html 
APP UI link: https://code.siemens.com/MACB/App-Dev/app-ui

 https://github.com/kubernetes/kubernetes/archive/v1.16.0.tar.gz
 /api/notification/v3/publisher/messages
 gpg --keyserver keyserver.ubuntu.com --recv-keys BA07F4FB
 
 gpg --export --armor BA07F4FB | sudo apt-key add - 
 
 
 sudo apt-get install docker-ce=18.06.3~ce~3-0~ubuntu
 
  sudo apt-get install -y docker.io kubelet kubernetes-cni=0.7.5-00 kubeadm
  kubeadm init  --image-repository registry.cn-hangzhou.aliyuncs.com/google_containers  --kubernetes-version v1.15.2     


kubeadm init     --image-repository registry.aliyuncs.com/google_containers     --kubernetes-version v1.13.1     --pod-network-cidr=10.244.0.0/16  
  apt-cache madison docker-ce

 https://<tenant>.appsdev.mindsphere.io/api/CommunicationServiceMessageQueueProducer/api/publisher/messages
 macb-admin-cheerful-lynx.apps.cn1.mindsphere-in.cn
 cf set-space-role jianfeng.huang.ext@siemens.com  dicsdev  macb-app SpaceDeveloper
 
  cf set-space-role yingjie.liu.ext@siemens.com  dicsdev  macb-app SpaceDeveloper
  
  
   cf set-space-role jianfeng.huang.ext@siemens.com  supplab wwk_multiple SpaceDeveloper
 create_user_id
 create_time
 update_user_id
 update_time
 staus 
  http.cors().disable().authorizeRequests()
                .antMatchers("/favicon.ico", "/swagger-ui.html", "/webjars/**", "/swagger-resources/**", "/swagger-resources", "/v2/api-docs")
                .permitAll()
                .antMatchers("/resources/**", "/error").permitAll()
                .antMatchers("/userview/admin").hasRole("ADMIN1")
                //.antMatchers("/userview/vip/**").hasRole("VIP")
                .antMatchers("/db/**").access("hasRole('ADMIN') and hasRole('DBA')")
                //δƥ��·��Ϊ��½�ɷ���
                //.antMatchers("/guest").hasRole("ADMIN")
                .anyRequest().authenticated()
                .and()


                .formLogin().disable()
                .sessionManagement().disable()
                 /*
                .headers().addHeaderWriter(new StaticHeadersWriter(Arrays.asList(
                new Header("Access-control-Allow-Origin", "*"),
                new Header("Access-Control-Expose-Headers", "token"))))
                */
                //.addFilterAfter(new OptionsRequestFilter(), CorsFilter.class)

                .apply(new JwtLoginConfigurer<>())
                .tokenValidSuccessHandler(jwtAuthenticationSuccessHandler())
                .tokenValidFailureHandler(jwtAuthenticationFailureHandler())
                .permissiveRequestUrls("/logout")

                .and()
                .logout()
                .and()
                .exceptionHandling().accessDeniedHandler(authenticationAccessDeniedHandler());

  
  Hibernate: insert into public.tb_alarm_rule (alarm_level, create_time, create_user_id, expression, highlight, line_id, message_type, notify_email, notify_sms, notify_web, status, update_time, update_user_id, id) 
  values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)

dialect: org.hibernate.dialect.PostgreSQLDialect


2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.916 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:PATH value:/usr/local/bin:/usr/bin:/bin
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.917 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:VCAP_APP_HOST value:0.0.0.0
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.917 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:INSTANCE_INDEX value:0
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.917 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:LANG value:en_US.UTF-8
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.917 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:CF_INSTANCE_PORTS value:[{"external":61014,"internal":8080}]
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.917 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:CF_SYSTEM_CERT_PATH value:/etc/cf-system-certificates
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.917 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:CF_INSTANCE_GUID value:3adb305f-44f8-4e03-46c1-23f8
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.917 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:CF_INSTANCE_KEY value:/etc/cf-instance-credentials/instance.key
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.917 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:PWD value:/home/vcap/app
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.917 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:CF_INSTANCE_PORT value:61014
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.917 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:VCAP_APPLICATION value:{"application_id":"c56c37f6-78d5-4aac-83a8-d6c1b340a13c","application_name":"macb-demo","application_uris":["macb-demo-insightful-ratel.apps.cn1.mindsphere-in.cn"],"application_version":"52b0108f-c3a3-4ae8-b7ce-51281ebd4fc7","cf_api":"https://api.cf.cn1.mindsphere-in.cn","host":"0.0.0.0","instance_id":"3adb305f-44f8-4e03-46c1-23f8","instance_index":0,"limits":{"disk":512,"fds":16384,"mem":800},"name":"macb-demo","organization_id":"b308581c-2620-4bb0-9278-36a0be0a9b60","organization_name":"supplab","port":8080,"process_id":"c56c37f6-78d5-4aac-83a8-d6c1b340a13c","process_type":"web","space_id":"00492f6e-9ea5-442a-824d-8153594a00ed","space_name":"wwk_multiple","uris":["macb-demo-insightful-ratel.apps.cn1.mindsphere-in.cn"],"version":"52b0108f-c3a3-4ae8-b7ce-51281ebd4fc7"}
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.917 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:SERVER_PORT value:8080
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.917 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:CF_INSTANCE_IP value:172.16.102.45
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.917 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:PORT value:8080
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.918 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:VCAP_SERVICES value:{}
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.918 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:INSTANCE_GUID value:3adb305f-44f8-4e03-46c1-23f8
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.918 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:OLDPWD value:/home/vcap
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.918 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:USER value:vcap
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.918 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:DEPS_DIR value:/home/vcap/deps
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.918 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:VCAP_APP_PORT value:8080
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.918 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:TMPDIR value:/home/vcap/tmp
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.918 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:CF_INSTANCE_ADDR value:172.16.102.45:61014
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.918 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:CF_INSTANCE_INDEX value:0
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.918 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:CF_INSTANCE_INTERNAL_IP value:10.255.225.171
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.918 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:MEMORY_LIMIT value:800m
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.918 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:CF_INSTANCE_CERT value:/etc/cf-instance-credentials/instance.crt
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.918 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:SHLVL value:0
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.918 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:HOME value:/home/vcap/app
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.918 [main] INFO  c.siemens.macb.demo.DemoApplication - env key:MALLOC_ARENA_MAX value:2
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.919 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.runtime.name value:OpenJDK Runtime Environment
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.919 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.protocol.handler.pkgs value:org.springframework.boot.loader
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.919 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:sun.boot.library.path value:/home/vcap/app/.java-buildpack/open_jdk_jre/lib/amd64
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.919 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.vm.version value:25.232-b09
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.919 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.vm.vendor value:Pivotal Software Inc
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.919 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.vendor.url value:https://pivotal.io
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.919 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:path.separator value::
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.919 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.vm.name value:OpenJDK 64-Bit Server VM
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.919 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:file.encoding.pkg value:sun.io
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.919 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:user.country value:US
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.919 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:sun.java.launcher value:SUN_STANDARD
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.919 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:sun.os.patch.level value:unknown
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.919 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:PID value:6
   2020-03-18T14:35:43.91+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.919 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.security.properties value:/home/vcap/app/.java-buildpack/java_security/java.security
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.920 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.vm.specification.name value:Java Virtual Machine Specification
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.920 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:user.dir value:/home/vcap/app
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.920 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.runtime.version value:1.8.0_232-09
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.920 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.awt.graphicsenv value:sun.awt.X11GraphicsEnvironment
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.920 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:org.jboss.logging.provider value:slf4j
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.920 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.endorsed.dirs value:/home/vcap/app/.java-buildpack/open_jdk_jre/lib/endorsed
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.920 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:os.arch value:amd64
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.920 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.io.tmpdir value:/home/vcap/tmp
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.920 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:line.separator value:
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.920 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.vm.specification.vendor value:Oracle Corporation
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.920 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:os.name value:Linux
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.920 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:sun.jnu.encoding value:UTF-8
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.920 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:spring.beaninfo.ignore value:true
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.920 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.library.path value:/usr/java/packages/lib/amd64:/usr/lib64:/lib64:/lib:/usr/lib
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.921 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.specification.name value:Java Platform API Specification
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.921 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.class.version value:52.0
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.921 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:sun.management.compiler value:HotSpot 64-Bit Tiered Compilers
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.921 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:os.version value:4.15.0-66-generic
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.921 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:user.home value:/home/vcap
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.921 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:catalina.useNaming value:false
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.921 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:user.timezone value:Etc/UTC
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.921 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.awt.printerjob value:sun.print.PSPrinterJob
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.921 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:file.encoding value:UTF-8
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.921 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.specification.version value:1.8
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.921 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:catalina.home value:/home/vcap/tmp/tomcat.8914754937871898798.8080
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.921 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.class.path value:/home/vcap/app/.
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.921 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:user.name value:vcap
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.921 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.vm.specification.version value:1.8
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.921 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:sun.java.command value:org.springframework.boot.loader.JarLauncher
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.921 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.home value:/home/vcap/app/.java-buildpack/open_jdk_jre
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.921 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:sun.arch.data.model value:64
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.921 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:user.language value:en
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.922 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.specification.vendor value:Oracle Corporation
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.922 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:awt.toolkit value:sun.awt.X11.XToolkit
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.922 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.vm.info value:mixed mode
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.922 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.version value:1.8.0_232
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.922 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.ext.dirs value:/home/vcap/app/.java-buildpack/container_security_provider:/home/vcap/app/.java-buildpack/open_jdk_jre/lib/ext
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.922 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:sun.boot.class.path value:/home/vcap/app/.java-buildpack/open_jdk_jre/lib/resources.jar:/home/vcap/app/.java-buildpack/open_jdk_jre/lib/rt.jar:/home/vcap/app/.java-buildpack/open_jdk_jre/lib/sunrsasign.jar:/home/vcap/app/.java-buildpack/open_jdk_jre/lib/jsse.jar:/home/vcap/app/.java-buildpack/open_jdk_jre/lib/jce.jar:/home/vcap/app/.java-buildpack/open_jdk_jre/lib/charsets.jar:/home/vcap/app/.java-buildpack/open_jdk_jre/lib/jfr.jar:/home/vcap/app/.java-buildpack/open_jdk_jre/classes
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.922 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.awt.headless value:true
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.922 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.vendor value:Pivotal Software Inc
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.922 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:catalina.base value:/home/vcap/tmp/tomcat.8914754937871898798.8080
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.922 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:file.separator value:/
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.922 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:java.vendor.url.bug value:http://bugreport.sun.com/bugreport/
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.922 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:sun.io.unicode.encoding value:UnicodeLittle
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.922 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:sun.cpu.endian value:little
   2020-03-18T14:35:43.92+0800 [APP/PROC/WEB/0] OUT 2020-03-18 06:35:43.922 [main] INFO  c.siemens.macb.demo.DemoApplication - properties key:sun.cpu.isalist value:
   2020-03-18T14:35:45.25+0800 [CELL/0] OUT Container became healthy
new token 
 


Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6ImtleS1pZC0xIiwidHlwIjoiSldUIn0.ewogICJqdGkiOiAiMDdmYTA1MDg3YjdhNGVlOTlkNzI1YzZiNDI0M2JjNTUiLAogICJzdWIiOiAiYWx0Y3NlMmUiLAogICJzY29wZSI6IFsKICAgICJlbS51IiwKICAgICJhc20uaW1nLnIiLAogICAgImFzbS5sb2MuZCIsCiAgICAiYXNtLnJoLmQiLAogICAgImVtLnIiLAogICAgImFzLnRwLnUiLAogICAgIm5vc2UuYWMiLAogICAgImFzLmFkLnUiLAogICAgImFzbS5pYS53IiwKICAgICJhc20udSIsCiAgICAiYXNtLmltZy53IiwKICAgICJhdG0uYXB0LmQiLAogICAgImFzbS5pbWcuZCIsCiAgICAiYXRtLmFwdC53IiwKICAgICJhdG0uciIsCiAgICAiYXNtLmxvYy53IiwKICAgICJpb3QudGltLnciLAogICAgImFub21hbHlkZXRlY3Rpb24udXNlIiwKICAgICJhc20uaWEuZCIsCiAgICAiYXRtLmFwdC5yIiwKICAgICJhdG0uZCIsCiAgICAiYXMuc3YudSIsCiAgICAiZ3IuciIsCiAgICAiYXMuc2MudSIsCiAgICAiaW90LnRpbS5yIiwKICAgICJlbS5ldC5kIiwKICAgICJlbS5ldC5jIiwKICAgICJpb3QuYmkudyIsCiAgICAiYXRtLmlhLnciLAogICAgImFzLmVhLnUiLAogICAgImFzbS5oLnciLAogICAgImFzbS5yaC53IiwKICAgICJhdG0udyIsCiAgICAiYXMua2MudSIsCiAgICAiZW0uZCIsCiAgICAiZW0uZXQudSIsCiAgICAiZW0uYyIsCiAgICAiYXNtLnIiLAogICAgImVtLmV0LnIiLAogICAgImFzbS5tIiwKICAgICJpb3QudGltLmQiLAogICAgImVtZHMuZW50LnIiLAogICAgImlvdC50c2EuciIsCiAgICAiYXNtLmguZCIsCiAgICAiYXNtLmMiLAogICAgImF0bS5pYS5kIiwKICAgICJpb3QuYmkuciIsCiAgICAiYXNtLmQiCiAgXSwKICAiY2xpZW50X2lkIjogImFsdGNzZTJlIiwKICAidXNlcl9pZCI6InRlc3QiLAogICJ1c2VyX25hbWUiOiJ0ZXN0IG5hbWUiLAogICJlbWFpbCI6IjE4NzU3NTMwMjI3QDEzOS5jb20iLAogICJjaWQiOiAiYWx0Y3NlMmUiLAogICJhenAiOiAiYWx0Y3NlMmUiLAogICJncmFudF90eXBlIjogImNsaWVudF9jcmVkZW50aWFscyIsCiAgInJldl9zaWciOiAiM2Q4YWQ4MCIsCiAgImlhdCI6IDE1NDU5ODI2ODMsCiAgImV4cCI6IDE1NDU5ODQ0ODMsCiAgImlzcyI6ICJodHRwOi8vY29yZS5waWFtLmNmN2IzMDgwYTFkODM0ZTIyODYwYzJhNDY1NWVmNmU3MC5jbi1zaGFuZ2hhaS5hbGljb250YWluZXIuY29tL29hdXRoL3Rva2VuIiwKICAiemlkIjogImNvcmUiLAogICJhdWQiOiBbCiAgICAiYXNtLmltZyIsCiAgICAiYXNtLnJoIiwKICAgICJhcy5zYyIsCiAgICAiYW5vbWFseWRldGVjdGlvbiIsCiAgICAiYWx0Y3NlMmUiLAogICAgImFzLmVhIiwKICAgICJhcy5hZCIsCiAgICAiYXRtLmFwdCIsCiAgICAiYXMuc3YiLAogICAgImlvdC5iaSIsCiAgICAiZW1kcy5lbnQiLAogICAgImF0bSIsCiAgICAiYXNtLmxvYyIsCiAgICAiYXMua2MiLAogICAgIm5vc2UiLAogICAgImFzbS5pYSIsCiAgICAiZW0iLAogICAgImlvdC50aW0iLAogICAgImdyIiwKICAgICJhcy50cCIsCiAgICAiaW90LnRzYSIsCiAgICAiZW0uZXQiLAogICAgImF0bS5pYSIsCiAgICAiYXNtLmgiLAogICAgImFzbSIKICBdLAogICJ0ZW4iOiAiY29yZSIsCiAgInNjaGVtYXMiOiBbCiAgICAidXJuOnNpZW1lbnM6bWluZHNwaGVyZTppYW06djEiCiAgXSwKICAiY2F0IjogImNsaWVudC10b2tlbjp2MSIKfQ.vf1E55lYZfOt-zCpcfCKYO202hNVB3-cstkCuUJGB3k1hXOhSTkzHC8R5xiunnW2zMmmPi4vF2j8jju58WlYxg2PfU6FXySMzKhU2-PsAWlupaf7yWBaThVDUTnepdCk-a648G7AqGBqTVX3Ek1Q9Z3mJQIDk8PIV31pLCPXqQEjJ0hvbBemx3g38yEEu4cP3p1VDsnifE_c9KP9qTfZFvze_cVIJ-EnGH8Wh9Viu-xqSRcT8i4AwY5HxlFEvyxt5DwqCJ0ZIsL14d6jJVpwELZT07y9T7ak0KwjXF3UPFEt4Nk7x5Jj96opDLj2RPXLyVXCwacWjVF6WcFYY4cb7Q
        d infrastructure
   
  cis
docker run --name mypostgres -e POSTGRES_PASSWORD=password -p 5432:5432 -d postgres:9.4

docker run --name elasticsearch -p 9200:9200 -p 9300:9300 -e ��discovery.type=single-node�� -d docker.elastic.co/elasticsearch/elasticsearch:6.5.4

docker run --name logstash -it -p 4560:4560 -v /usr/share/logstash/pipeline/:/usr/share/logstash/pipeline/ -d docker.elastic.co/logstash/logstash:6.5.4

docker run --rm   -it -p 4560:4560 -v /usr/share/logstash/pipeline/:/usr/share/logstash/pipeline/ -d docker.elastic.co/logstash/logstash:6.5.4


1
sudo docker run --name mykibana -e ELASTICSEARCH_URL=http://172.17.0.1:9200 -p 5601:5601 -d kibana
����ָ����ES��ַΪdocker����IP��ַ��172.17.0.1Ϊ����docker����IP��ַ����ȻҲ����ָ����ӦES������IP��ַ

docker run -d --name kibana --net somenetwork -p 5601:5601 kibana:7.1.1

docker run --name kibana5.6.11 -e ELASTICSEARCH_URL=http://192.168.1.1:9200 -p 5601:5601 -d 388661dcd03e
docker run -d  -p 5601:5601 --name kibana --link elasticsearch:elasticsearch  docker.elastic.co/kibana/kibana:6.5.4



docker run -e ES_JAVA_OPTS="-Xms256m -Xmx256m" -d -p 9200:9200 -p 9300:9300 --name elasticsearch  73e6fdf8bd4f[ע������Ҫ���еľ���id]

docker run -d --name myrabbitmq -p 5672:5672 -p 15672:15672 -v `pwd`/data:/var/lib/rabbitmq --hostname myRabbit -e RABBITMQ_DEFAULT_VHOST=my_vhost  -e RABBITMQ_DEFAULT_USER=admin -e RABBITMQ_DEFAULT_PASS=admin -d rabbitmq
docker run -d --name myrabbitmq -e RABBITMQ_DEFAULT_USER=admin -e RABBITMQ_DEFAULT_PASS=admin  --hostname my-rabbit -p 5672:5672 -p 15672:15672 rabbitmq:3.7.3-management

docker run -d --name myrabbitmq -e RABBITMQ_DEFAULT_USER=admin -e RABBITMQ_DEFAULT_PASS=admin  --hostname my-rabbit -p 5672:5672 -p 15672:15672 rabbitmq:3-management

docker run -d --name myredis -p 6379:6379 -v /usr/redis/config:/etc/redis -v /usr/redis/data:/data redis:4.0 redis-server /etc/redis/redis.conf --appendonly yes

Set up a specific Runner manually
	1. Install GitLab Runner
	2. Specify the following URL during the Runner setup:https://code.siemens.com/?
	3. Use the following registration token during setup:?H-ZszrsRUT71iBJzMow7?
Start the Runner!

139.24.217.160

3834062229461

its.tax861.gov.cn



String kpiMapKey=String.format(KEY_SIMICAS_LINE_KPI_MAP,tenant,lineId);
        if(redisTemplate.opsForHash().hasKey(kpiMapKey, kpi)){
            redisTemplate.opsForHash().delete(kpiMapKey,kpi);
        }

docker run --name mysonar --link mypostgres -e SONARQUBE_JDBC_URL=jdbc:postgresql://192.168.1.19:5432/sonar -e SONARQUBE_JDBC_USERNAME=postgres -e SONARQUBE_JDBC_PASSWORD=password -p 9000:9000 -d sonarqube
 startTime:

    private Instant endTime;
    private Integer outputCount;

af4b528780c70738e49c06580ee2409be4d5e384

plugins {
plugins {
  id "org.sonarqube" version "2.6"
}
http://proxyconf-uba.siemens.net/proxy-coia.pac 
AC-NA-Z0040M9S-SPINT5-Swagger

Private Sub Worksheet_Change(ByVal Target As Range)

    Dim cellInF, cellInG, cellInH, cellInI As Double
    cellInF = Cells(1, "f")
    cellInG = Cells(1, "g")
    cellInH = Cells(1, "h")
    cellInI = Cells(1, "i")
    Dim max As Double
    max = cellInF
    max = IIf(max > cellInG, max, cellInG)
    max = IIf(max > cellInH, max, cellInH)
    max = IIf(max > cellInI, max, cellInI)
    If max <> ROWMAX Then
       Cells(5, "f") = ROWMAX - max
    Else
       Cells(5, "f") = ""
    End If
    
       
 
End Sub


Private Sub Worksheet_Change(ByVal Target As Range)
   Application.EnableEvents = False
   CHANGE = CHANGE + 1
    [D9] = CHANGE
 Application.EnableEvents = True
 

End Sub



01 ��վ
04  ������
5c   ���ݳ���

23ef1d22a522a73d1a2404240400250104000a80adffed0095ffa4000fffa90080805300420001e4007200067fc78f19e635cadf1b9f006615aac54e8d18c623e10ec225c6637f06d33153ffab55ce316d408121c122e7d12623ef1d22a522a73d1a2404240400250104000a80adffed0095ffa4000fffa90080805300420001e4007200067fc78f19e635cadf1b9f006615aac54e8d18c623e10ec225c6637f06d33153ffab55ce316d408121c122e7d126
5c23ef1d22a522a73d1a2404240400250104000a80adffed0095ffa4000fffa90080805300420001e4007200067fc78f19e635cadf1b9f006615aac54e8d18c623e10ec225c6637f06d33153ffab55ce316d408121c122e7

d126  ��֤��




01045c22fa22af228022923e1a3013301a38000026011e000500aefded0016ffab000fffa7004d00430002004b00fe007600037fde0f12e39f88bf93bf00612000880c00328406c20c420484c66f0c436066fdbb80c3206e0206038200eff593

05245c229622b4229422b53c1d3c1b3c1d3e1c0026013c0085005cf3ed002aeeab0007ffa7004c00530206005b01fe000108fffd37ebba181fb14c5460905c4864c4448c4c4262308c28281cdc6ac046090a13194037e5

281c657a336233b233da606262226232623a4222011a0010aeffed0096fea9000fffa7004e00530043003600fe00560064fba25ecfc9db752b090322c60404501632210030d4564f0347ccdc2f9c7e523216d114f2ee4d

/home/justbon/jstorm-2.2.1/bin/jstorm nimbus > /home/justbon/jstormlogs/server_nim.out 2> /home/justbon/jstormlogs/server_nim.err &
/home/justbon/jstorm-2.2.1/bin/jstorm supervisor > /dev/null 2>&1 &
/home/justbon/jstormweb/apache-tomcat-7.0.94/bin/startup.sh > /dev/null 2>&1 &                             webUI��װ������https://my.oschina.net/shyloveliyi/blog/789554
nohup /home/justbon/jstorm-2.2.1/bin/jstorm jar /home/justbon/setup/ecm-storm-server.jar com.justbon.bodhi.iot.ecm.storm.topology.MqttTopology mqtt -c nimbus.host=localhost > /home/justbon/jstormlogs/server.out 2> /home/justbon/jstormlogs/server.err &
jstorm kill mqtt

AC-enhancement-SPRINT1-TIMEOUT
AC-1044-Z0040M9S-SPINT3-FixAlarm
BF-858-Z0040M9S-DefectStatitc
${vcap.services.my-rabbitmq-service.credentials.uri}
AC-487-Z0040M9S-bugfix-399

netstat?-tunlp|grep 21000
AC-446-Z0040M9S-RemoveUnuseModel

AC-656-Z0040M9S-SPRINT20-EFFStatistic02


AC-108-Z0040M9S-NoticeAddresses

AC-089-Z0040M9S-AlarmCalculate

AC-105-Z0040M9S-EmailSend

	@Column(name = "active_time"  )
    private Date activeTime;

    @Column(name = "recovery_time"  )
    private Date recoveryTime;

AC-NA-Z0040M9S-Sprint4-01
AC-172-Z0040M9S-COVER5
AC-173-Z0040M9S-COVER3
AC-175-Z0040M9S-COVER2
		String userId=userBean.getUserId();
        List <User2LineEntity> user2LineEntities=productionLineRepository.findAll().stream().map(productionLineEntity -> {
            String lineId= productionLineEntity.getId() ;
            User2LineEntity user2LineEntity=new User2LineEntity();
            user2LineEntity.setLineId(lineId);
            user2LineEntity.setUserId(userId);
            return user2LineEntity;
        }).collect(Collectors.toList());
        if(CollectionUtils.isNotEmpty(user2LineEntities)){
            user2LineRepository.save(user2LineEntities);
        }
		
AC-NA-Z0040M9S-Sprint6-promoteut
update  tb_hi_eff 
set data_time=(select end_time from tb_hi_output_change_over 
 where id=10841)  
where   tb_hi_eff.id='8a7fec726a621e06016a688645b90895'

AC-348-Z0040M9S-PMEFF-Month
AC-112-Z0040M9S-fixbug
nohup java -jar macb-admin-1.0-SNAPSHOT.jar --spring.config.location=application-local.yaml >/dev/null 2>&1 &

nohup java -jar macb-admin-1.0-SNAPSHOT.jar --spring.profiles.active=local-dev >/dev/null 2>&1 &
nohup java -jar macb-consumer-1.0-SNAPSHOT.jar --spring.profiles.active=local-dev >/dev/null 2>&1 &

sh start.sh

AC-299-Z0040M9S-BugFix
nohup java -jar /home/pi/upgrade/libs/upgrade-client.jar  >/dev/null 2>&1 &
nohup java -jar /home/pi/upgrade/libs/upgrade-client.jar &
/bin/su - pi -c "/home/pi/upgrade/bin/start.sh"

for id in $ID
do
 
kill -9 $id
 
echo "killed $id"
 
done

nohup java -jar macb-eureka-1.0-SNAPSHOT.jar --spring.config.location=application.yaml >/dev/null 2>&1 &


localhost:2181


./kafka-configs.sh --zookeeper localhost:2181 --alter --entity-name topic.ecm.event --entity-type topics --add-config retention.ms=86400000



nohup java -jar ../libs/ecm-server-proxy.jar --nacos.addr=10.0.0.133:8848 >/dev/null 2>&1 &
spring.config.location=

spring.config.location=config/dev/;spring.profiles.active=dev

chmod +x start.sh

Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6ImtleS1pZC0xIiwidHlwIjoiSldUIn0.eyJqdGkiOiJkMmEyYzE2OGE0OGQ0MzZhYWIxNTI5MzVlOTM4MjVlMSIsInN1YiI6InRlY2h1c2VyLW1hY3BhcnRiIiwic2NvcGUiOlsiaWFtLWFjdGlvbi5jbGllbnRfY3JlZGVudGlhbHMuc3VidGVuYW50LWltcGVyc29uYXRpb24iLCJtZHNwOmNvcmU6QWRtaW4zcmRQYXJ0eVRlY2hVc2VyIl0sImNsaWVudF9pZCI6InRlY2h1c2VyLW1hY3BhcnRiIiwiY2lkIjoidGVjaHVzZXItbWFjcGFydGIiLCJhenAiOiJ0ZWNodXNlci1tYWNwYXJ0YiIsImdyYW50X3R5cGUiOiJjbGllbnRfY3JlZGVudGlhbHMiLCJyZXZfc2lnIjoiODI3NDY2MWUiLCJpYXQiOjE1NTE2NzA4MzUsImV4cCI6MTU1MTY3MjYzNSwiaXNzIjoiaHR0cHM6Ly9tYWNwYXJ0Yi5waWFtLmV1MS5taW5kc3BoZXJlLmlvL29hdXRoL3Rva2VuIiwiemlkIjoibWFjcGFydGIiLCJhdWQiOlsiaWFtLWFjdGlvbi5jbGllbnRfY3JlZGVudGlhbHMiLCJ0ZWNodXNlci1tYWNwYXJ0YiJdLCJ0ZW4iOiJtYWNwYXJ0YiIsInNjaGVtYXMiOlsidXJuOnNpZW1lbnM6bWluZHNwaGVyZTppYW06djEiXSwiY2F0IjoiY2xpZW50LXRva2VuOnYxIn0.D1AdUc35u_oLFCyxIkf2boBmBt2MMz-lM3AI0OcYPt5pLJwreHejowv3oKANzr9CNw9LN2ehfmEZf1oE-vC4Qb6eT1j0UVfbWlu3qUm_zL271QGvDG4SKsiUp-zBIB8CIYCxbF-W4-dPDI6witP0nmB06CaNh_kmII_sA3jJLNnAVpdKM56pr0DFBUZGw_B2rMkdbFUnxR8RvaYn39HTCfntCC6Ti-hmMFeQjq5T_K1kcnyru26a0o06iGfs4mkB8mF_wjs_AIDVASLztgAu1lCsH6zbAMTjVY6IWrYlleZh70wfL98-GloaIwZCzeoyNdoyZ374CJBN0oRaHH16JA


eyJhbGciOiJSUzI1NiIsImtpZCI6ImtleS1pZC0xIiwidHlwIjoiSldUIn0.eyJqdGkiOiI4NmMzMmYyN2VkZTE0MzZhYWE1ZDQ0NDZhZDZhNmI2MyIsInN1YiI6InRlY2h1c2VyLW1hY3BhcnRiIiwic2NvcGUiOlsiaWFtLWFjdGlvbi5jbGllbnRfY3JlZGVudGlhbHMuc3VidGVuYW50LWltcGVyc29uYXRpb24iLCJtZHNwOmNvcmU6QWRtaW4zcmRQYXJ0eVRlY2hVc2VyIl0sImNsaWVudF9pZCI6InRlY2h1c2VyLW1hY3BhcnRiIiwiY2lkIjoidGVjaHVzZXItbWFjcGFydGIiLCJhenAiOiJ0ZWNodXNlci1tYWNwYXJ0YiIsImdyYW50X3R5cGUiOiJjbGllbnRfY3JlZGVudGlhbHMiLCJyZXZfc2lnIjoiODI3NDY2MWUiLCJpYXQiOjE1NTE2Njg1ODQsImV4cCI6MTU1MTY3MDM4NCwiaXNzIjoiaHR0cHM6Ly9tYWNwYXJ0Yi5waWFtLmV1MS5taW5kc3BoZXJlLmlvL29hdXRoL3Rva2VuIiwiemlkIjoibWFjcGFydGIiLCJhdWQiOlsiaWFtLWFjdGlvbi5jbGllbnRfY3JlZGVudGlhbHMiLCJ0ZWNodXNlci1tYWNwYXJ0YiJdLCJ0ZW4iOiJtYWNwYXJ0YiIsInNjaGVtYXMiOlsidXJuOnNpZW1lbnM6bWluZHNwaGVyZTppYW06djEiXSwiY2F0IjoiY2xpZW50LXRva2VuOnYxIn0.Sfr6PLEV81vgsqZfWklnv9Kiflst_57FFhrlqQTDSlmRdl6ZpXbhtx9SF53y75ulCf9AV6CPHGLLv_vKSHRbJ6DMun8vLs3LG0a2zNfmdp34rhqR5jv-36Kv2D8dz7zoKCTeayeuBYclGm3mHoHPfr3PM1oUYbTAM33VzqN_HNmhStEDnA4OgGIYu227wVIzpg2J6RX4kwypRDRYomrwYfigyofEq8lpdxvi28rlBOZ7vm9ANQre3UXdw21CR-RtuRbtOJhpafdhwrHBpa90YW6FQcihaFtN3CNMa4HgL2gLAuo-O9c6KQvhGXY4vZ3WkHRsU02wKiAchkYWv1u9ig

{
  "model": {
    "nodeDataArray": [
      {
        "text": "3RW51_S4",
        "category": "OfGroups",
        "key": -1,
        "id": "B1B2C3D4E5F6A7B8C9D0A1B2C3D4E5F6",
        "loc": "-289.6000061035156 222"
      },
      {
        "text": "3RW51_S2S3",
        "category": "OfGroups",
        "key": -2,
        "id": "C1B2C3D4E5F6A7B8C9D0A1B2C3D4E5F6",
        "loc": "-291.6000061035156 357"
      },
      {
        "text": "3RW51_Test",
        "category": "OfGroups",
        "key": -3,
        "id": "A1B2C3D4E5F6A7B8C9D0A1B2C3D4E5F6",
        "loc": "-45.600006103515625 293"
      }
    ],
    "linkDataArray": [
      {
        "from": -1,
        "to": -3
      },
      {
        "from": -2,
        "to": -3
      }
    ],
    "class": "go.GraphLinksModel"
  }
}



{
    "nodeDataArray": [
      {
        "text": "3RW51_S4",
        "category": "OfGroups",
        "key": -1,
        "id": "B1B2C3D4E5F6A7B8C9D0A1B2C3D4E5F6",
        "loc": "-289.6000061035156 222"
      },
      {
        "text": "3RW51_S2S3",
        "category": "OfGroups",
        "key": -2,
        "id": "C1B2C3D4E5F6A7B8C9D0A1B2C3D4E5F6",
        "loc": "-291.6000061035156 357"
      },
      {
        "text": "3RW51_Test",
        "category": "OfGroups",
        "key": -3,
        "id": "A1B2C3D4E5F6A7B8C9D0A1B2C3D4E5F6",
        "loc": "-45.600006103515625 293"
      }
    ],
    "linkDataArray": [
      {
        "from": -1,
        "to": -3
      },
      {
        "from": -2,
        "to": -3
      }
    ],
    "class": "go.GraphLinksModel"
  }
  
 0��sql ��ʼ��
 1��date formater
 2��jpa ����
 
 

				
				
2019-03-07 14:50:33.475 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��
2019-03-07 14:50:33.748 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��
2019-03-07 14:50:33.831 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - ������
2019-03-07 14:50:34.683 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��
2019-03-07 14:50:34.685 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��
2019-03-07 14:50:34.825 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:06:56.831Z","tenant":"macpartb","kpiName":"FPY","lineId":"547abd3868044425afdef3e5f71e762a","lineName":"ForMendixPoC","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{"value":92.0}}
2019-03-07 14:50:35.164 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:06:56.831Z","tenant":"macpartb","kpiName":"STATUS","lineId":"547abd3868044425afdef3e5f71e762a","lineName":"ForMendixPoC","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{"value":"Working","visual":"#008000","downtimeCategory":false}}
2019-03-07 14:50:35.164 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:06:56.831Z","tenant":"macpartb","kpiName":"TIMEUSAGE","lineId":"547abd3868044425afdef3e5f71e762a","lineName":"ForMendixPoC","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{}}
2019-03-07 14:50:35.290 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��
2019-03-07 14:50:35.523 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��
2019-03-07 14:50:35.524 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:07:04.833Z","tenant":"macpartb","kpiName":"TIMEUSAGE","lineId":"line-1","lineName":"3RW51_Test","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{}}
2019-03-07 14:50:35.716 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:07:04.833Z","tenant":"macpartb","kpiName":"OUTPUT","lineId":"line-1","lineName":"3RW51_Test","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{"value":"0.0"}}
2019-03-07 14:50:35.881 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:07:04.833Z","tenant":"macpartb","kpiName":"STOPCODE","lineId":"line-1","lineName":"3RW51_Test","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{"value":"Schedule Down"}}
2019-03-07 14:50:35.882 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:07:04.833Z","tenant":"macpartb","kpiName":"TIMEUSAGE","lineId":"line-1","lineName":"3RW51_Test","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{}}
2019-03-07 14:50:36.101 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:07:04.833Z","tenant":"macpartb","kpiName":"EFF","lineId":"547abd3868044425afdef3e5f71e762a","lineName":"ForMendixPoC","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{"value":306.85}}
2019-03-07 14:50:36.309 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:07:04.833Z","tenant":"macpartb","kpiName":"EFF","lineId":"line-1","lineName":"3RW51_Test","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{"value":117.24}}
2019-03-07 14:50:36.451 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:07:04.833Z","tenant":"macpartb","kpiName":"FPY","lineId":"line-1","lineName":"3RW51_Test","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{"value":29.0}}
2019-03-07 14:50:36.488 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - ������{"time":"2019-03-05T06:07:04.833Z","tenant":"macpartb","kpiName":"ALARM","lineId":"line-1","lineName":"3RW51_Test","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{"value":"29.0","rules":"X\u003c80","highlight":true,"notifyWeb":true,"alarmLevel":"Danger","messageType":"FPY","id":"4028b8816956eace016956eb0447000b","activeTime":"2019-03-05T06:07:04.833Z","recoveryTime":""}}
2019-03-07 14:50:36.675 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:07:04.833Z","tenant":"macpartb","kpiName":"STOPCODE","lineId":"547abd3868044425afdef3e5f71e762a","lineName":"ForMendixPoC","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{"value":"Broken"}}
2019-03-07 14:50:36.676 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:07:04.833Z","tenant":"macpartb","kpiName":"TIMEUSAGE","lineId":"547abd3868044425afdef3e5f71e762a","lineName":"ForMendixPoC","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{}}
2019-03-07 14:50:36.791 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:07:04.834Z","tenant":"macpartb","kpiName":"FPY","lineId":"547abd3868044425afdef3e5f71e762a","lineName":"ForMendixPoC","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{"value":59.0}}
2019-03-07 14:50:37.032 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:07:04.834Z","tenant":"macpartb","kpiName":"STATUS","lineId":"547abd3868044425afdef3e5f71e762a","lineName":"ForMendixPoC","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{"value":"Idle","visual":"#008000","downtimeCategory":false}}
2019-03-07 14:50:37.033 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:07:04.834Z","tenant":"macpartb","kpiName":"TIMEUSAGE","lineId":"547abd3868044425afdef3e5f71e762a","lineName":"ForMendixPoC","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{}}
2019-03-07 14:50:37.159 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:07:04.834Z","tenant":"macpartb","kpiName":"OUTPUT","lineId":"547abd3868044425afdef3e5f71e762a","lineName":"ForMendixPoC","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{"value":"3.0"}}
2019-03-07 14:50:37.361 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:07:12.832Z","tenant":"macpartb","kpiName":"STATUS","lineId":"line-1","lineName":"3RW51_Test","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{"value":"Working","visual":"#ffb900","downtimeCategory":true}}
2019-03-07 14:50:37.362 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:07:12.832Z","tenant":"macpartb","kpiName":"TIMEUSAGE","lineId":"line-1","lineName":"3RW51_Test","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{}}
2019-03-07 14:50:37.515 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:07:12.832Z","tenant":"macpartb","kpiName":"OUTPUT","lineId":"line-1","lineName":"3RW51_Test","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{"value":"1.0"}}
2019-03-07 14:50:37.681 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:07:12.832Z","tenant":"macpartb","kpiName":"STOPCODE","lineId":"line-1","lineName":"3RW51_Test","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{"value":"Broken"}}
2019-03-07 14:50:37.682 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:07:12.832Z","tenant":"macpartb","kpiName":"TIMEUSAGE","lineId":"line-1","lineName":"3RW51_Test","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{}}
2019-03-07 14:50:37.832 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:07:12.832Z","tenant":"macpartb","kpiName":"EFF","lineId":"547abd3868044425afdef3e5f71e762a","lineName":"ForMendixPoC","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{"value":131.32}}
2019-03-07 14:50:38.004 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:07:12.832Z","tenant":"macpartb","kpiName":"EFF","lineId":"line-1","lineName":"3RW51_Test","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{"value":562.03}}
2019-03-07 14:50:38.173 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:07:12.832Z","tenant":"macpartb","kpiName":"FPY","lineId":"line-1","lineName":"3RW51_Test","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{"value":79.0}}
2019-03-07 14:50:38.242 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - ������{"time":"2019-03-05T06:07:12.832Z","tenant":"macpartb","kpiName":"ALARM","lineId":"line-1","lineName":"3RW51_Test","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{"value":"79.0","rules":"X\u003c80","highlight":true,"notifyWeb":true,"alarmLevel":"Danger","messageType":"FPY","id":"4028b8816956eace016956eb0b220014","activeTime":"2019-03-05T06:07:12.832Z","recoveryTime":""}}
2019-03-07 14:50:38.451 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:07:12.832Z","tenant":"macpartb","kpiName":"STOPCODE","lineId":"547abd3868044425afdef3e5f71e762a","lineName":"ForMendixPoC","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{"value":"Broken"}}
2019-03-07 14:50:38.451 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:07:12.832Z","tenant":"macpartb","kpiName":"TIMEUSAGE","lineId":"547abd3868044425afdef3e5f71e762a","lineName":"ForMendixPoC","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{}}
2019-03-07 14:50:38.604 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:07:12.832Z","tenant":"macpartb","kpiName":"FPY","lineId":"547abd3868044425afdef3e5f71e762a","lineName":"ForMendixPoC","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{"value":66.0}}
2019-03-07 14:50:38.891 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:07:12.832Z","tenant":"macpartb","kpiName":"STATUS","lineId":"547abd3868044425afdef3e5f71e762a","lineName":"ForMendixPoC","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{"value":"Working","visual":"#008000","downtimeCategory":false}}
2019-03-07 14:50:38.892 [SimpleAsyncTaskExecutor-1] INFO  c.s.c.m.c.s.impl.AbstractServiceImpl - 192.168.1.6��{"time":"2019-03-05T06:07:12.832Z","tenant":"macpartb","kpiName":"TIMEUSAGE","lineId":"547abd3868044425afdef3e5f71e762a","lineName":"ForMendixPoC","orderId":"order-random-id","productId":"product-random-id","productName":"6","data":{}}

./gradlew sonarqube \
  -Dsonar.host.url=http://192.168.11.3:9000 \
  -Dsonar.login=af4b528780c70738e49c06580ee2409be4d5e384

gitlab-ci-multi-runner-windows-amd64.exe register
Please enter the gitlab-ci coordinator URL (e.g. https://gitlab.com/):
https://code.siemens.com/
Please enter the gitlab-ci token for this runner:
H-ZszrsRUT71iBJzMow7
Please enter the gitlab-ci description for this runner:
[DESKTOP-G3GHHJ7]: macb-dev
Please enter the gitlab-ci tags for this runner (comma separated):
dev
Whether to run untagged builds [true/false]:
[false]: true
Whether to lock Runner to current project [true/false]:
[false]:
Registering runner... succeeded                   [0;m  runner[0;m=H-ZszrsR
Please enter the executor: docker, docker+machine, docker-ssh+machine, kubernetes, docker-ssh, parallels, shell, ssh, virtualbox:
shell
Runner registered successfully. Feel free to start it, but if it's running already the config should be automatically reloaded![0;m

��������
1��enruka ���� ��
2��macb-admin � api ���ظ�ʽ��ʵ�� spring sercurity scope ��װ ������swagger�� ��
3��msp api user ��ͨ������װ ����Ҫ�ṩ�˺ţ� 
4��git ci jfrog snorar  ���ͣ�
5��ut controller server ����Ӧ������
6��websocket  demoʵ��
7��

public abstract class AbstractAuthenticationFilterConfigurer<B extends HttpSecurityBuilder<B>, T extends AbstractAuthenticationFilterConfigurer<B, T, F>, F extends AbstractAuthenticationProcessingFilter> extends AbstractHttpConfigurer<T, B> {

public final class FormLoginConfigurer<H extends HttpSecurityBuilder<H>> extends AbstractAuthenticationFilterConfigurer<H, FormLoginConfigurer<H>, UsernamePasswordAuthenticationFilter> 




2018-09-11T08:35:43.436+0800: 74095.155: [GC (Allocation Failure) 2018-09-11T08:35:43.436+0800: 74095.155: [ParNew: 722560K->80256K(722560K), 0.1118920 secs] 918879K->364162K(1170560K), 0.1120812 secs] [Times: user=0.32 sys=0.01, real=0.11 secs]


2018-09-07 12:18:52.886 c.j.o.s.r.RfisRest Thread-13-analyse_app_customer_bolt-executor[6 6] [ERROR] rfis url:http://lotus.justbon.com/rfis/v1/contact/id/1717370986 ��ȡcustomer ��Ϣ����Could not extract response: no suitable HttpMessageConverter found for response type [class java.lang.String] and content type [application/octet-stream]
2018-09-07 12:18:52.886 c.j.o.s.b.AnalyseAppCustomerBolt Thread-13-analyse_app_customer_bolt-executor[6 6] [INFO] customer app type:00
2018-09-07 12:18:52.888 c.j.o.s.b.AnalyseAppCustomerBolt Thread-13-analyse_app_customer_bolt-executor[6 6] [INFO] customer app type:00
2018-09-07 12:18:52.896 c.j.o.s.r.RfisRest Thread-13-analyse_app_customer_bolt-executor[6 6] [ERROR] rfis url:http://lotus.justbon.com/rfis/v1/contact/id/1922707276 ��ȡcustomer ��Ϣ����Could not extract response: no suitable HttpMessageConverter found for response type [class java.lang.String] and content type [application/octet-stream]


mvn install:install-file -Dfile=D:/jar/elasticsearch-hadoop-5.5.3.jar -DgroupId=org.elasticsearch -DartifactId=elasticsearch-hadoop -Dversion=5.5.3 -Dpackaging=jar


mvn install:install-file -Dfile=<path-to-file> -DgroupId=<group-id> -DartifactId=<artifact-id> -Dversion=<version> -Dpackaging=<packaging>

��
storm jar ecm-storm-server.jar com.justbon.bodhi.iot.ecm.storm.topology.MqttTopology mqtt -c nimbus.host=localhost





storm jar ecm-storm-server-park.jar com.justbon.bodhi.iot.ecm.storm.topology.MqttTopology mqtt-park -c nimbus.host=localhost




storm jar ecm-storm-server-rpi.jar com.justbon.bodhi.iot.ecm.storm.topology.MqttTopology mqtt-rpi -c nimbus.host=localhost




private String getSubscribeLineId(String subscriptionContent){
        if(StringUtils.isEmpty(subscriptionContent)){
            return null;
        }
        String lineId="";
        JsonParser jsonParser= new JsonParser();
        JsonElement jsonElement=jsonParser.parse(subscriptionContent).getAsJsonObject().get("content").getAsJsonObject().get("metric");
        if(jsonElement== null){
            return null;
        }
        MetricTo metricTo = gson.fromJson(jsonElement, MetricTo.class);
        lineId=metricTo.getLineId();
        return lineId;

    }




:http://lotus.justbon.com/rfis/v1/contact/id/1717370986 ��ȡcustomer ��Ϣ����Could not extract response: no suitable HttpMessageConverter found for response type [class java.lang.String] and content type [application/octet-stream]
2018-09-07 12:18:52.886 c.j.o.s.b.AnalyseAppCustomerBolt Thread-13-analyse_app_customer_bolt-executor[6 6] [INFO] customer app type:00
2018-09-07 12:18:52.888 c.j.o.s.b.AnalyseAppCustomerBolt Thread-13-analyse_app_customer_bolt-executor[6 6] [INFO] customer app type:00
2018-09-07 12:18:52.896 c.j.o.s.r.RfisRest Thread-13-analyse_app_customer_bolt-executor[6 6] [ERROR] rfis url:http://lotus.justbon.com/rfis/v1/contact/id/1922707276 
storm jar oms-store-server.jar com.justbon.oms.store.topology.LogTopology kafka -c nimbus.host=localhost


curl --user elastic:El@justbon2018 -XPOST http://es-cn-v0h0o7nu0001jb2sz.elasticsearch.aliyuncs.com:9200/oms-app-action-log*/doc/_search -d '{ "from" : 0, "size" : 20,"query": { "bool":{ "filter":{ "bool":{ "must":{ "range": { "startTime":{ "gte": "2018-06-30 17:00:00", "lte": "2018-07-25 23:59:59" } } } } } } } }'


db.receiveMsgAlarm.ensureIndex( { "timestamp": 1 }, { expireAfterSeconds: 500 } )  
1562561263  ������ǻ�С��

http://10.0.0.168:9200/oms-app-action-log*/doc/_search

storm jar oms-store-server-test.jar com.justbon.oms.store.topology.LogTopology kafka -c nimbus.host=localhost

com.justbon.smart.deviceAttrs[SmokeS]= ����̽����
 
 


 
 
public BaseView addCommon(HttpServletRequest request, HttpServletResponse response, Model model, @RequestBody NoticeForm form, MobileOper mo) {
		long l1 = System.currentTimeMillis();

		BaseView rv = new BaseView();

		if (form == null) {
			logger.warn("request params is null error:" + form);
		}

		if (mo.paramMobileError(form) || mo.paramUserIdError(form) || StringUtils.isBlank(form.getClientType())
		// || ("xqgg".equals(form.getClientType()) && (mo.paramTitleError(form)
		// || mo.paramBidError(form) || mo.paramContentError(form)))
		) {
			rv.setR("3");
			rv.setMsg("userId or mobile or clientType is not empty");
		} else {
			String clientType = form.getClientType();
			clientType = clientType.trim().toLowerCase();

			if (clientTypes == null) {
				clientTypes = NoticeDAO.NAMES.keySet();
			}

			if (!clientTypes.contains(clientType)) {
				rv.setR("4");
				rv.setMsg("not agree client type");
			} else {
				// �Ǵ�����־
				if (map == null) {
					map = new HashMap<String, Integer>();
					map.put("xqgg", this.pushConfig.getXqgg());
					//���߱���
					map.put("zxbx", this.pushConfig.getZxbx());
					map.put("zxjf", this.pushConfig.getZxjf());
					map.put("wyts", this.pushConfig.getWyts());
					map.put("wdyb", this.pushConfig.getWdyb());
					map.put("fwzs", this.pushConfig.getFwzs());
					map.put("ll", this.pushConfig.getLl());
					map.put("csds", this.pushConfig.getCsds());
					map.put("wycf", this.pushConfig.getWycf());
					map.put("kmhb", this.pushConfig.getKmhb());
					map.put("wdybnew", this.pushConfig.getWdybnew());
					map.put("wjdc", this.pushConfig.getWjdc());
					map.put("jjaf", this.pushConfig.getJjaf());
					map.put("mygj", this.pushConfig.getMygj());
				}

				if (map.get(clientType) == 0) {
					rv.setR("5");
					rv.setMsg(clientType + " not agree push");
				} else {
					logger.info(" ================== ============================  " );
					logger.info("form: " + new Gson().toJson(form) );
					logger.info("clientType: "+clientType);
					logger.info(" ================== ============================  " );
					int r = mo.invokeService(noticeService, form, clientType);

					if (r == 2) {
						rv.setR("2");
						rv.setMsg("user is old app or not user");
					}
				}
			}
		}

		long l2 = System.currentTimeMillis();
		logger.info(" method:" + mo.getMethodName() + " userId:" + form.getUserId() + " useTime:" + (l2 - l1) + " requ:" + form + " resp:" + rv);
		return  rv;

	}
	
	
	
	
	
	redis.clients.jedis.JedisPool.getResource

 
 
 

 CachingConfigurer

 

 
 [
 
 
 {"timestamp":1533193532155,"gatewayId":"ff8080815c627a79015c7b5f64b80002","response":"{\"params\":{\"data\":[{\"deviceId\":\"1df6b265cfed4c2f855e4d6f22ad1e77\",\"deviceName\":\"�ظ�_1_05091200\",\"parentDeviceId\":\"a5a4c08742b542dba07f230da270493e\",\"deviceType\":\"2\",\"deviceStatus\":\"1\"}]}}"},
 {"timestamp":1533193532155,"gatewayId":"ff8080815c627a79015c7b5f64b80002","response":"{\"params\":{\"data\":[{\"deviceId\":\"2342b44416f34a25a905070139d4b56c\",\"deviceName\":\"207�ڳ���\",\"parentDeviceId\":\"\",\"deviceType\":\"1\",\"deviceStatus\":\"1\"}]}}"},
 {"timestamp":1533193532155,"gatewayId":"ff8080815c627a79015c7b5f64b80002","response":"{\"params\":{\"data\":[{\"deviceId\":\"328cc28b99604c9ca6e9b355ddd03be5\",\"deviceName\":\"209�����2\",\"parentDeviceId\":\"\",\"deviceType\":\"0\",\"deviceStatus\":\"1\"}]}}"},
 {"timestamp":1533193532155,"gatewayId":"ff8080815c627a79015c7b5f64b80002","response":"{\"params\":{\"data\":[{\"deviceId\":\"3a23f76f27724d8d9a6c048c9c1b8bf7\",\"deviceName\":\"��բ_1_05091200\",\"parentDeviceId\":\"a5a4c08742b542dba07f230da270493e\",\"deviceType\":\"3\",\"deviceStatus\":\"0\"}]}}"},
 {"timestamp":1533193532155,"gatewayId":"ff8080815c627a79015c7b5f64b80002","response":"{\"params\":{\"data\":[{\"deviceId\":\"3b861302dc32482da16f26e0c3339d6c\",\"deviceName\":\"��բ_1_18061200\",\"parentDeviceId\":\"cac143c3b0d74dcb9cadc12093b9d18f\",\"deviceType\":\"3\",\"deviceStatus\":\"0\"}]}}"},{"timestamp":1533193532155,"gatewayId":"ff8080815c627a79015c7b5f64b80002","response":"{\"params\":{\"data\":[{\"deviceId\":\"5222eadfa5354039926128d1da9bba9e\",\"deviceName\":\"209�����1һ���\",\"parentDeviceId\":\"\",\"deviceType\":\"1\",\"deviceStatus\":\"1\"}]}}"},{"timestamp":1533193532155,"gatewayId":"ff8080815c627a79015c7b5f64b80002","response":"{\"params\":{\"data\":[{\"deviceId\":\"5dbbc8571af34e7ba3d84ff4286b84a1\",\"deviceName\":\"��բ_1_16061200\",\"parentDeviceId\":\"c9675025310a45c78cf49d02a398d8d3\",\"deviceType\":\"3\"}]}}"},{"timestamp":1533193532155,"gatewayId":"ff8080815c627a79015c7b5f64b80002","response":"{\"params\":{\"data\":[{\"deviceId\":\"638d2193525c4e87a134d88f3601875b\",\"deviceName\":\"�ظ�_1_18061200\",\"parentDeviceId\":\"cac143c3b0d74dcb9cadc12093b9d18f\",\"deviceType\":\"2\",\"deviceStatus\":\"1\"}]}}"},{"timestamp":1533193532155,"gatewayId":"ff8080815c627a79015c7b5f64b80002","response":"{\"params\":{\"data\":[{\"deviceId\":\"73cf3fa800524533a390cca15433a635\",\"deviceName\":\"��բ_1_12061200\",\"parentDeviceId\":\"328cc28b99604c9ca6e9b355ddd03be5\",\"deviceType\":\"3\"}]}}"},{"timestamp":1533193532155,"gatewayId":"ff8080815c627a79015c7b5f64b80002","response":"{\"params\":{\"data\":[{\"deviceId\":\"73d3f0313445482e94d97f52f706e286\",\"deviceName\":\"�ظ�_1_15281200\",\"parentDeviceId\":\"bf61400e897b438d953a104ce11f5bb6\",\"deviceType\":\"2\",\"deviceStatus\":\"1\"}]}}"},{"timestamp":1533193532155,"gatewayId":"ff8080815c627a79015c7b5f64b80002","response":"{\"params\":{\"data\":[{\"deviceId\":\"74a3acafff0f43139531afdd278ab01f\",\"deviceName\":\"208���һ���\",\"parentDeviceId\":\"\",\"deviceType\":\"1\",\"deviceStatus\":\"1\"}]}}"},{"timestamp":1533193532155,"gatewayId":"ff8080815c627a79015c7b5f64b80002","response":"{\"params\":{\"data\":[{\"deviceId\":\"7f446f2be77f4343a7b68dfc8612e6f5\",\"deviceName\":\"�ظ�_1_12061200\",\"parentDeviceId\":\"328cc28b99604c9ca6e9b355ddd03be5\",\"deviceType\":\"2\",\"deviceStatus\":\"1\"}]}}"},{"timestamp":1533193532155,"gatewayId":"ff8080815c627a79015c7b5f64b80002","response":"{\"params\":{\"data\":[{\"deviceId\":\"a5a4c08742b542dba07f230da270493e\",\"deviceName\":\"208�ڳ���\",\"parentDeviceId\":\"\",\"deviceType\":\"0\",\"deviceStatus\":\"1\"}]}}"},{"timestamp":1533193532155,"gatewayId":"ff8080815c627a79015c7b5f64b80002","response":"{\"params\":{\"data\":[{\"deviceId\":\"a79afade10cf41a1a79fd8c2f45e8302\",\"deviceName\":\"��բ_1_15281200\",\"parentDeviceId\":\"bf61400e897b438d953a104ce11f5bb6\",\"deviceType\":\"3\",\"deviceStatus\":\"0\"}]}}"},{"timestamp":1533193532155,"gatewayId":"ff8080815c627a79015c7b5f64b80002","response":"{\"params\":{\"data\":[{\"deviceId\":\"bf61400e897b438d953a104ce11f5bb6\",\"deviceName\":\"208�����\",\"parentDeviceId\":\"\",\"deviceType\":\"0\",\"deviceStatus\":\"1\"}]}}"},{"timestamp":1533193532155,"gatewayId":"ff8080815c627a79015c7b5f64b80002","response":"{\"params\":{\"data\":[{\"deviceId\":\"c095698cace748a68a8dcc8b68d56cce\",\"deviceName\":\"�ظ�_1_16061200\",\"parentDeviceId\":\"c9675025310a45c78cf49d02a398d8d3\",\"deviceType\":\"2\",\"deviceStatus\":\"1\"}]}}"},{"timestamp":1533193532155,"gatewayId":"ff8080815c627a79015c7b5f64b80002","response":"{\"params\":{\"data\":[{\"deviceId\":\"c9675025310a45c78cf49d02a398d8d3\",\"deviceName\":\"207�ڳ���\",\"parentDeviceId\":\"\",\"deviceType\":\"0\",\"deviceStatus\":\"1\"}]}}"},{"timestamp":1533193532155,"gatewayId":"ff8080815c627a79015c7b5f64b80002","response":"{\"params\":{\"data\":[{\"deviceId\":\"cac143c3b0d74dcb9cadc12093b9d18f\",\"deviceName\":\"209�����1\",\"parentDeviceId\":\"\",\"deviceType\":\"0\",\"deviceStatus\":\"1\"}]}}"},{"timestamp":1533193532155,"gatewayId":"ff8080815c627a79015c7b5f64b80002","response":"{\"params\":{\"data\":[{\"deviceId\":\"d1131c2ffb64437e93d64e75e93233d6\",\"deviceName\":\"209�����2һ���\",\"parentDeviceId\":\"\",\"deviceType\":\"1\",\"deviceStatus\":\"1\"}]}}"},{"timestamp":1533193532155,"gatewayId":"ff8080815c627a79015c7b5f64b80002","response":"{\"params\":{\"data\":[{\"deviceId\":\"f9882617e2a94f42825c20a2b7dfb3fa\",\"deviceName\":\"208����һ���\",\"parentDeviceId\":\"\",\"deviceType\":\"1\",\"deviceStatus\":\"1\"}]}}"}]
 

deviceId: 8a808ae36444f79e0164496033720012
deviceName: 5#��ѹ��
deviceRoomId: 8a808ae36444f79e0164495f005c0011
deviceRoomName: 1#��緿
gainTime: 2018-06-30 09:20
pageNum: 1
pageSize: 30
projectName: COCO��ɳ����



export HBASE_HOME=/data/package/alihbase-1.1.4
export PATH=$PATH:$HBASE_HOME/bin

scp -r  -P 2213 /data/tmp ubuntu@116.62.246.131:/data/microservice/ecm-storm


scp -r  -P 2213 /data/tmp ubuntu@116.62.246.131:/data/tmp

scp -r  -P 2213 /data/tmp ubuntu@47.99.33.239:/data

scp -r  -P 9998 /data/tmp WmCd3EFJ_ubuntu@114.55.141.171:/data/apache-tomcat-leaguenotice

ssh @114.55.141.171 -p 9998
scp -r  -P 9998 /data/tmp CcYm0QUO_ubuntu@114.55.141.171:/data
ssh @114.55.141.171 -p 9998

ssh @ -p 9998

org.elasticsearch.hadoop.serialization.EsHadoopSerializationException: Cannot handle type [class com.justbon.oms.store.entity.es.ActionLogESEntity] within type [class org.apache.storm.tuple.TupleImpl], instance [com.justbon.oms.store.entity.es.ActionLogESEntity@288e57dc] within instance [source: store_instant_bolt:15, stream: default, id: {-7743182742624045222=6254156846951019439}, [com.justbon.oms.store.entity.es.ActionLogESEntity@288e57dc]] using writer [org.elasticsearch.storm.serialization.StormValueWriter@2b34cde5]



ssh @114.55.141.171 -p 9998
 ssh @114.55.141.171 -p 9998
 
 ssh @114.55.141.171 -p 9998
 
 ssh @114.55.141.171 -p 9998

ssh @114.55.141.171 -p 9998
ssh @114.55.141.171 -p 9998

ssh @ -p 9998
ssh @114.55.141.171 -p 9998
 

scp -r  -P 2213 ubuntu@116.62.246.131:/data/package/apache-storm-1.0.5/logs/workers-artifacts/mqtt-7-1531272609/6700/woker.log /data/tmp





hb-bp1t0s3y8ua563zu5-001.hbase.rds.aliyuncs.com:2181,hb-bp1t0s3y8ua563zu5-002.hbase.rds.aliyuncs.com:2181,hb-bp1t0s3y8ua563zu5-003.hbase.rds.aliyuncs.com:2181

http://10.0.0.201/cloud_platform/pushProducter.git



scp -r  -P 2213 /data/tmp ubuntu@47.99.34.245:/data


org.glassfish.jersey.message.internal.MessageBodyProviderNotFoundException: MessageBodyReader not found for media type=text/html, type=class com.justbon.rfis.restful.result.org.OrgResult, genericType=class com.justbon.rfis.restful.result.org.OrgResult.




{"appInfo":{"type":"00","version":"2.988"},"deviceInfo":{"brand":"ƻ��","id":"ewrtuewrrt93485","latitude":"176.32","longitude":"176.32","model":"Iphone 5s","os":"Android","osVersion":"4.4.0","other":"dfgdgdgd"},"id":"ewrtuewrrt93485","key":"class com.justbon.kafka.po.SyncClientUserActionEntity:create:ewrtuewrrt93485","msgDateTime":1528703660512,"operationType":"create","userEvent":{"action":"change","data":[{"responseHead":"<meta charset=utf-8 />...","responseBody":"eruityerty...","method":"POST","requestBody":"eruityerty...","requestHead":"<meta charset=utf-8 />...","responseStatus":200,"url":"http://jcp.justbon.com"}],"endTime":"1528368769000","fromFunctionCode":"00000","startTime":"1527368769000","toFunctionCode":"00005","userId":"erty3948534y2346525729083y5","userProjectId":"349857y348yt4","userProjectName":"�����㾳1223"}}


Received message from unsupported version: [2.0.0] minimal compatible version is: [5.0.0]

<dependency>
			<groupId>org.elasticsearch.client</groupId>
			<artifactId>transport</artifactId>
			<version>5.5.3</version>
		</dependency>
		<dependency>
			<groupId>org.elasticsearch</groupId>
			<artifactId>elasticsearch</artifactId>
			<version>5.5.3</version>
		</dependency>

t_pub/8a8149855ba440a1015ba441e0ee0000/ff8080815cbff6f9015cd2efca300088,
https://repository.sonatype.org/service/local/artifact/maven/redirect?r=atlassian&g=ring-cors&a=ring-cors&v=0.1.5&e=jar


storm jar D:/jar/ecm-storm-server.jar com.justbon.bodhi.iot.ecm.storm.topology.MqttTopology WordCount -c nimbus.host=localhost


mvn deploy:deploy-file  -DgroupId=ring-cors  -DartifactId=ring-cors  -Dversion=0.1.5  -Dpackaging=jar  -Dfile=D:\jar\ring-cors-0.1.5.jar  -Durl=http://10.0.0.152:8081/repository/3rd/  -DrepositoryId=maven-releases

mvn deploy:deploy-file -DgroupId=com.xy.oracle -DartifactId=ojdbc14 -Dversion=10.2.0.4.0 -Dpackaging=jar -Dfile=E:\ojdbc14.jar -Durl=http://localhost:9090/nexus-2.2-01/content/repositories/thirdparty/ -DrepositoryId=thirdparty


mvn deploy:deploy-file  -DgroupId=com.justbon.bodhi.iot  -DartifactId=ecm-storm-model  -Dversion=0.0.1  -Dpackaging=jar  -Dfile=D:\jar\ecm-storm-model-0.0.1.jar  -Durl=http://10.0.0.152:8081/repository/3rd/  -DrepositoryId=maven-releases


mvn deploy:deploy-file  -DgroupId=com.justbon.ecm  -DartifactId=ecm-interface-sch  -Dversion=0.0.1-SNAPSHOT  -Dpackaging=jar  -Dfile=D:\jar\ecm-interface-sch-0.0.1-SNAPSHOT.jar  -Durl=http://10.0.0.152:8081/repository/3rd/  -DrepositoryId=maven-releases


mvn deploy:deploy-file  -DgroupId=com.spring4all  -DartifactId=swagger-spring-boot-starter  -Dversion=1.7.0  -Dpackaging=jar  -Dfile=D:\jar\swagger-spring-boot-starter-1.7.0.jar  -Durl=http://10.0.0.152:8081/repository/maven-releases/  -DrepositoryId=releases


2018-05-31 15:33:15.547  INFO 8460 --- [           main] com.justbon.App                          : Starting App on DESKTOP-9PP30NG with PID 8460 (started by Administrator in D:\����\�ӼҰ���\safety)
2018-05-31 15:33:15.549  INFO 8460 --- [           main] com.justbon.App                          : No active profile set, falling back to default profiles: default
2018-05-31 15:33:15.591  INFO 8460 --- [           main] s.c.a.AnnotationConfigApplicationContext : Refreshing org.springframework.context.annotation.AnnotationConfigApplicationContext@1ea9f6af: startup date [Thu May 31 15:33:15 CST 2018]; root of context hierarchy
2018-05-31 15:33:16.578  INFO 8460 --- [           main] j.LocalContainerEntityManagerFactoryBean : Building JPA container EntityManagerFactory for persistence unit 'default'
2018-05-31 15:33:18.793  INFO 8460 --- [           main] j.LocalContainerEntityManagerFactoryBean : Initialized JPA EntityManagerFactory for persistence unit 'default'
2018-05-31 15:33:19.381  INFO 8460 --- [           main] o.s.j.e.a.AnnotationMBeanExporter        : Registering beans for JMX exposure on startup
2018-05-31 15:33:19.671  INFO 8460 --- [ntLoopGroup-2-1] com.justbon.runner.MyApplicationRunner   : ���Ӱ�΢�������ɹ�
2018-05-31 15:33:19.707  INFO 8460 --- [           main] com.justbon.App                          : Started App in 4.715 seconds (JVM running for 5.651)
2018-05-31 15:33:19.729  INFO 8460 --- [ntLoopGroup-2-1] com.justbon.codec.SafetyEncoder          : ������ӼҰ����������ĵ�¼����@#$%00da{"api_version":"3.0","from":"brcjbsvr01","to":"","msg_id":"1","msg_class":"jb_mgmt","msg_name":"jb_server_gettoken","msg_type":"get","token":"","param":{"password":"3a9d0f0cd79b48e0a56db40c9c2a9177","appId":"312"}}
2018-05-31 15:33:19.745  INFO 8460 --- [ntLoopGroup-2-1] com.justbon.runner.MyApplicationRunner   : ���ͳɹ�
2018-05-31 15:33:19.807  INFO 8460 --- [ntLoopGroup-2-1] com.justbon.codec.SafetyDecoder          : ���յ��ԾӼҰ��������������ݣ�@#$%00D3{"api_version":"3.0","from":"","to":"brcjbsvr01","msg_id":"1","msg_class":"jb_mgmt","msg_name":"jb_server_gettoken","msg_type":"response","status":0,"result":{"token":"f9858fd8ecf54d4db06fc9fc487afa21"}}
2018-05-31 15:33:19.827  INFO 8460 --- [ntLoopGroup-2-1] com.justbon.codec.SafetyEncoder          : ������ӼҰ�������������������@#$%00b2{"api_version":"3.0","from":"brcjbsvr01","to":"","msg_id":"2","msg_class":"app_common","msg_name":"app_heartbeat","msg_type":"get","token":"f9858fd8ecf54d4db06fc9fc487afa21"}
2018-05-31 15:33:19.828  INFO 8460 --- [ntLoopGroup-2-1] com.justbon.callback.LoginCallback       : ��¼�ص�.....
2018-05-31 15:33:19.865  INFO 8460 --- [ntLoopGroup-2-1] com.justbon.codec.SafetyDecoder          : ���յ��ԾӼҰ��������������ݣ�@#$%009B{"api_version":"3.0","from":"","to":"brcjbsvr01","msg_id":"2","msg_class":"app_common","msg_name":"app_heartbeat","msg_type":"response","status":0}

Process finished with exit code 1



http://example.org/api/v2/api-doc
//��ʽ����

http://10.0.0.201/root/smart_home.git
http://10.0.0.201/root/safety.git


mvn clean deploy -Dmaven.test.skip=true

ff8080815ea3a608015f481a136c00d7
 




 http://10.0.0.152:8081/repository/3rd/ring-cors/ring-cors/0.1.5/ring-cors-0.1.5.jar


2018-07-23 17:02:22.966 ERROR 20326 --- [qtp874740624-26] c.j.e.m.service.report.ReportService     : point id:8a808ae264b599fc0164c4e86af10007
2018-07-23 17:02:22.966 ERROR 20326 --- [qtp874740624-26] c.j.e.m.service.report.ReportService     : ��ʼʱ��:1532312280000,����ʱ�䣺1532312999000



018-06-11 09:20:36.045 [http-nio-18080-exec-4] INFO  c.j.f.i.mvc.UserInterceptor - uri:/common/tokenLogin
2222222222222222222222222222222222222222222
3333333333333333333333333333333333:null
xuhui_redis_get key:com.justbon.commons.utils.redis.entities.tokenuserid_c4f660851d0c495088105076e8fb68da      size:149
invoke_url:http://10.0.0.176:28080/rfis/v1/staff/gjaf/initMenu
use time:106
token:c4f660851d0c495088105076e8fb68da
rUrl:http://10.0.0.179:3100/#/resourceList
2018-06-11 09:20:36.705 [http-nio-18080-exec-10] INFO  c.j.smart.intercept.LoginInterceptor -  Get token : c4f660851d0c495088105076e8fb68da
invoke_url:http://10.0.0.176:28080/rfis/v1/token/c4f660851d0c495088105076e8fb68da/staff
============================c4f660851d0c495088105076e8fb68da
use time:43
2018-06-11 09:20:36.749 [http-nio-18080-exec-10] INFO  c.j.f.i.mvc.UserInterceptor - uri:/smart/v1/workorder/unhandle_count
ip__________________________________:10.0.0.179 url:/smart/v1/workorder/unhandle_count
redis_time :0
2222222222222222222222222222222222222222222
3333333333333333333333333333333333:null
invoke_url:http://10.0.0.176:28080/rfis/v1/staffId/664499D59A25066EE0530100007F6089/projects/
============================c4f660851d0c495088105076e8fb68da
2018-06-11 09:20:36.964 [http-nio-18080-exec-9] INFO  c.j.smart.intercept.LoginInterceptor -  Get token : c4f660851d0c495088105076e8fb68da
2018-06-11 09:20:36.964 [http-nio-18080-exec-9] INFO  c.j.f.i.mvc.UserInterceptor - uri:/smart/v1/project/page_info
ip__________________________________:10.0.0.179 url:/smart/v1/project/page_info
redis_time :1
2222222222222222222222222222222222222222222
3333333333333333333333333333333333:null
invoke_url:http://10.0.0.176:28080/rfis/v1/projects
============================c4f660851d0c495088105076e8fb68da
use time:953


664499D59A25066EE0530100007F6089



�߼��� 
    һ�������� �����λ
    һ���豸�� һ�������ɼ���ɼ�ָ�꣩

�����ǣ� 
      �ȶ����˵�λ��Ȼ���λ��ɼ��������
      ���ڲɼ�����������  ��λ����ֵ
     ��λ�Ͳɼ����ǿ��Ե����ģ��ᵼ��ͳ��������

���飺
     �ȶ����豸�� �ٶ��� �豸�µĲɼ���ɲɼ������ҽӵ�������
     ��� �ɼ����������� ��ֱ���� �豸�ɼ����ֵ





sqoop import --connect jdbc:mysql://10.0.0.100:3306/ais --username root --password jb123456 --table user --hbase-table smq_hbase --column-family info --hbase-row-key IDCARDNUM




/opt/server/jdk1.8.0_45/bin/java

-Dstorm.options= -Dstorm.home=D:\\apache-storm-1.1.2 -Djava.library.path=C:\\Program Files\\Java\\jdk1.8.0_162\\bin;C:\\Program Files\\Java\\jdk1.8.0_162\\lib;C:\\Program Files\\Java\\jdk1.8.0_162\\jre\\bin;C:\\Program Files\\Java\\jdk1.8.0_162\\jre\\lib -Dlog4j.configurationFile="D:\\apache-storm-1.1.2\\log4j2\\cluster.xml" -Dstorm.log.dir=D:\\apache-storm-1.1.2\\logs -Ddaemon.name=nimbus


/usr/local/services/zookeeper/zookeeper-3.4.11/conf


/usr/local/services/hbase/hbase-1.2.6


/usr/local/services/zookeeper/zookeeper-3.4.11/data


export JAVA_HOME=/opt/server/jdk1.8.0_45


/usr/local/services/hbase/hbase-1.2.6/conf



./mr-jobhistory-daemon.sh start historyserver --config /usr/local/services/hadoop/hadoop-2.7.1/etc/hadoop

/data/hdfs/namenode


/usr/local/services/hadoop/hadoop-2.6.5


/home/hadoop/HBase/Hfiles

/home/hadoop/hadoop-2.7.1
 

http://10.0.0.179:3100/smart/v1/
http://10.0.0.179:18080/
00000000291527012590000

6ae0add8157e4bbe82245dc5c39737ef


 List<Resource> allResources=resourcesRestful.listByProjectIdAll(projectId);
        List<Resource> rootsResources =  Lists.newArrayList();



        List<TSmartResource> tSmartResources = smartResourceRepository.findByProjectIdAndStatus(projectId, GlobalConstant.Status.ENABLE.getId());
        Set<String> tSmartResourceIdSet = tSmartResources.stream().map(r -> r.getResourceId()).collect(Collectors.toSet());
        Set<String> rootResourceIdSet= Sets.newHashSet();
        List<Resource> leafResources=Lists.newArrayList();
        for(Resource aResource:allResources){
            if(tSmartResourceIdSet.contains(aResource.getResourceId())){
                rootResourceIdSet.add(RegularUtil.getRootResourceId(aResource.getResourceFullId()));
                leafResources.add(aResource);
            }
            if(aResource.getParentId().equals(projectId))
                rootsResources.add(aResource);
        }
        List<Resource> relateRootResources=Lists.newArrayList();
        for(Resource aResource:rootsResources){
            if(rootResourceIdSet.contains(aResource.getResourceId())){
                relateRootResources.add(aResource);
            }

        }
        ResourceConstant.projectResourcesMap.put(projectId,leafResources);
        return relateRootResources;

		
		/home/monitor/hbase-1.2.2


mvn clean package -pl service-config -am  -Dmaven.test.skip=true 


nohup java -jar -Xbootclasspath/a:/usr/lib/jvm/jdk-8-oracle-arm32-vfp-hflt/lib/tools.jar -DTargetMainPath=iot-gateway.jar -DConfigPath=/home/pi/iot/iot-gateway/config/application.properties  /home/pi/iot/iot-monitor/libs/iot-monitor.jar > /dev/null 2>&1 &

    rows = FunAvalidRows()
   
   columns = ActiveSheet.UsedRange.columns.Count
   MAX_COLUMN = 2
   max_val = 0
   For row = 1 To rows
      If VBA.IsNumeric(Cells(row, MAX_COLUMN)) And max_val < Cells(row, MAX_COLUMN) Then
           max_val = Cells(row, MAX_COLUMN)
           MAX_ROW = row
      End If
   Next
   
   If MAX_ROW <> 0 Then
       Cells(MAX_ROW, MAX_COLUMN).Font.Bold = True
       Cells(MAX_ROW, MAX_COLUMN).Font.Color = vbBlue
   End If
    
    If Not INIT_FLAG Then
       
    
        
        ReDim Preserve ARR_ROWMAX(rows)
         
        For row = 1 To rows
            rowmax = 0
            For column = 1 To columns
                If VBA.IsNumeric(Cells(row, column)) And rowmax < Cells(row, column) Then
                    rowmax = Cells(row, column)
                End If
            Next
            ARR_ROWMAX(row) = rowmax
        Next
        INIT_FLAG = True
        
    End If
	
	
	��Receive from 10.1.202.204 : 52494��:
00 01 00 00 00 06 03 04 00 18 00 02
��Receive from 10.1.202.204 : 52545��:
00 01 00 00 00 06 03 04 00 18 00 02
��Receive from 10.1.202.204 : 52679��:
00 01 00 00 00 06 03 04 00 18 00 02
��Receive from 10.1.202.204 : 53612��:
03 04 00 18 00 02 F0 2E

03 04 04 02 75 f8 30 8b f2


��Receive from 10.1.202.204 : 52494��:
00 01 00 00 00 06 03 04 00 18 00 02
��Receive from 10.1.202.204 : 52545��:
00 01 00 00 00 06 03 04 00 18 00 02
��Receive from 10.1.202.204 : 52679��:
00 01 00 00 00 06 03 04 00 18 00 02
��Receive from 10.1.202.204 : 53612��:
03 04 00 18 00 02 F0 2E

	
{"id":"0000000078","publishTopic":"t_pub/0000000001/0000000078","devices":[{"id":"0000001159","workingMode":0,"slave":4,"ip":"10.1.129.26","port":10002},{"id":"0000001156","workingMode":0,"slave":1,"ip":"10.1.129.26","port":10002},{"id":"0000001158","workingMode":0,"slave":3,"ip":"10.1.129.26","port":10002},{"id":"0000001157","workingMode":0,"slave":2,"ip":"10.1.129.26","port":10002}],"gatherItems":[{"id":"0000001241","protocol":0,"pollingRules":[{"function":4,"startAddress":24,"dataLength":2,"reqInterval":10,"deviceId":"0000001158"}]},{"id":"0000001242","protocol":0,"pollingRules":[{"function":3,"startAddress":0,"dataLength":2,"reqInterval":10,"deviceId":"0000001159"}]},{"id":"0000001239","protocol":0,"pollingRules":[{"function":4,"startAddress":0,"dataLength":46,"reqInterval":10,"deviceId":"0000001156"}]},{"id":"0000001240","protocol":0,"pollingRules":[{"function":2,"startAddress":0,"dataLength":16,"reqInterval":10,"deviceId":"0000001157"}]}]}
	
    dedevicePointOffline
    
    
    MsgBox ("The value is i is : " & rowmax)
    
    ps -eo pid,lstart,etime|grep 3484
    
    
    Dim cellInF, cellInG, cellInH, cellInI As Double
    cellInF = Cells(1, "f")
    cellInG = Cells(1, "g")
    cellInH = Cells(1, "h")
    cellInI = Cells(1, "i")
    Dim max As Double
    max = cellInF
    max = IIf(max > cellInG, max, cellInG)
    max = IIf(max > cellInH, max, cellInH)
    max = IIf(max > cellInI, max, cellInI)
    
    
    
    
    
    If rowmax = 0 Then
    [D9] = ""
    Else
     [D9] = rowmax
   End If
    
    
    
    
    rowmax = max
    
   '' Cells(5, "f") = max
    '��1-10����Ȼ����������
   '' Cells(1, "f") = cellInF
     SELECTCHANGE = SELECTCHANGE + 1
    [D8] = "select change event " + Str(SELECTCHANGE)

    If Cells(Target.row, "b") <> "" Then
        [d3] = Cells(Target.row, "b")
    Else
        [d3] = ""
    End If
	
	
	
 If Not INIT_FLAG Then
       
    
        
        ReDim Preserve ARR_ROWMAX(rows)
         
        For row = 1 To rows
            rowmax = 0
            For column = 1 To columns
                If VBA.IsNumeric(Cells(row, column)) And rowmax < Cells(row, column) Then
                    rowmax = Cells(row, column)
                End If
            Next
            ARR_ROWMAX(row) = rowmax
        Next
        INIT_FLAG = True
        
    End If

mvn  package -Dmaven.test.skip=true 

clean package -pl module_name -am
 
��ģ�鹤�̵Ĵ������ο���

-am --also-make ͬʱ��������ģ�������ģ�飻
-amd -also-make-dependents ͬʱ��������������ģ���ģ�飻
-pl --projects <arg> �����ƶ���ģ�飬ģ����ö��ŷָ���
-rf -resume-from <arg> ��ָ����ģ��ָ���Ӧ�ѡ�
�ܱ�
2020.7.27-2020.7.31
���ܹ�������ܽ�ͷ�˼
1������ѡ����Ա��������� 100%
2��ECM �������Ľӿڿ���  100% ��������ء��ɼ�ģ�顢�ɼ���λ���豸�� ��
3��ECM ҵ�����Ľӿڿ���  50% ��������ء��ɼ�ģ�飩


���ܹ�������
1��ECM ҵ������ʣ��ӿڿ������ɼ���λ���豸����
2����ؽӿڵ��Բ�
3��Э�����ǰ�˽��нӿ�����

��ҪЭ���Ͱ�����
 ����

D:\apps\smart_home>mvn clean package


2020.07.06-2020.07.10
���ܹ�������ܽ�ͷ�˼
1���δ������豸����
2��mqtt broker������δ������ϱ������ݣ���д��kafka
3�����ݽ������򣺽���kafka����ת������


���ܹ�������
1.���ݽ�����������������hbase��redis

00f87ba2f4a2e2204f5208d21a002000240070e464ffa226ffd1424088442400040018ff7f07656750fad720360218d4341c6801c1096038cc62201f026b38ddffdaa0d77f008080c010f7f5f9


03 ��վ
f8 8+

2*2*2*2
16

1111 


16*16


01
04
5c
23f8
23
40234f21512f2e3d053d003c20002f010000160002ff250080ff0111ff01a6005f0040006000010000004d77f60fe8ec378aa69b8f09452002980c00128406c20c42e28484c65e0c4c604effb980de635f0206028200efece1



00000001361531794848000' on table 'ecm_ns:T_ECM_GAINLOG

scan 'ecm_ns:T_ECM_ORIGINALMESSAGE', {LIMIT=10},FILTER=>"PrefixFilter('0000000086')"

scan 'ecm_ns:T_ECM_ORIGINALMESSAGE',{LIMIT=10}, FILTER=>"PrefixFilter('0000000086')"

scan 'ecm_ns:T_ECM_ORIGINALMESSAGE', FILTER=>"PrefixFilter('0000000081')"

http://10.1.120.18:18081/ecm/api/v1/report/gains/export?deviceId=8a8080e663b4c43e0163cdb0a58a005d&deviceName=%E8%A5%BF%E5%AD%90%E5%A5%A5%E7%9A%84%E6%96%AF%E7%94%B5%E6%A2%AF&deviceRoomId=8a8080e663b4c43e0163cdafd7eb005c&deviceRoomName=%E8%A5%BF%E5%AD%90%E5%A5%A5%E7%9A%84%E6%96%AF%E7%94%B5%E6%A2%AF&gainTime=2018-06-06+11:46&pageNum=1&pageSize=30&projectName=COCO%E5%9B%BD%E9%99%85%E4%BA%8C%E6%9C%9F



http://smarthome.justbon.com/rfis/v1/untilProject/orgTree

scan 'T_ECM_GAINLOG', FILTER=>"RowFilter(=,'substring:0000069')"



scan 'oms_ns:t_oms_log_app', FILTER=>"RowFilter(=,'substring:1000001916')"




scan 'T_ECM_GAINLOG', FILTER=>"PrefixFilter('0000001188153734')"
scan 'T_ECM_GAINLOG',{LIMIT=10}, FILTER=>"PrefixFilter('0000000029')"


db.receiveMsgOut.find({"analysisItemId":"0000001056"})

tail -f |grep 0000000960


scan 'T_ECM_GAINLOG',{LIMIT=10}, FILTER=>"PrefixFilter('0000000011')"

scan 'ecm_ns:T_ECM_GAINLOG', {LIMIT=>10, STARTROW => '00000011901537342680000',ENDROW=>'00000011901537346339000'} \
00000011911533889687000

scan 'ecm_ns:T_ECM_GAINLOG', {LIMIT=>10, STARTROW => '00000011901537342680000' } 

scan 'ecm_ns:T_ECM_GAINLOG', {LIMIT=>10, STARTROW => '00000010561605516' } 


scan 'ecm_ns:T_ECM_GAINLOG', {LIMIT=>10, STARTROW => '00000010561605517180000' } 

scan 'ecm_ns:T_ECM_ORIGINALMESSAGE', {LIMIT=>10, STARTROW => '00000003081535881298000'}

scan 'ecm_ns:T_ECM_ORIGINALMESSAGE',FILTER=>"PrefixFilter('00000003081535708508772')"

scan 'ecm_ns:T_ECM_GAINLOG', FILTER=>"PrefixFilter('0000001188153734')"


00000011901537342680000 ����row:


scan 'T_ECM_GAINLOG', FILTER=>"PrefixFilter('0000000019152755')"

scan 'ecm_ns:T_ECM_GAINLOG', FILTER=>"PrefixFilter('0000001222')"

"gatherItems[12].analysisRules[7]._id":""

scan 'T_ECM_GAINLOG', FILTER=>"PrefixFilter('131212')"

scan 'T_ECM_GAINLOG',{COLUMN=>'rowkey',LIMIT=>10, STARTROW => '00000000191527012580000'}


 scan 't1', {COLUMNS => ['c1', 'c2'], LIMIT => 10, STARTROW => 'xyz'}


 {COLUMN=>'f1:col1'}
AND SingleColumnValueFilter(��info��,��pubtime��,<=,��binary:2014-11-10 20:20:00��)


scan 'T_ECM_GAINLOG', {FILTER=>"SingleColumnValueFilter('GF','client_timestamp',>=,��binary:1525979480000')"}


scan 'ecm_ns:T_ECM_ORIGINALMESSAGE', {FILTER=>"ValueFilter(=,��binary:t_pub/0000000001/0000000011')"}



 scan 'testByCrq', FILTER=>"RowFilter(<=,'binary:0111486816556')"
1
����������ʾ����ѯ���Ǳ���ΪtestByCrq�����˷�ʽ��ͨ��rowkey���ˣ�ƥ���rowkeyС�ڵ���0111486816556�����ݡ�

> scan 'testByCrq', FILTER=>"(=,'substring:111')"

,{LIMIT=>10}


scan ��tweet0��, {FILTER=>��SingleColumnValueFilter(��info��,��pubtime��,>=,��binary:2014-11-08 19:26:27��) AND SingleColumnValueFilter(��info��,��pubtime��,<=,��binary:2014-11-10 20:20:00��)��}

scan 'T_ECM_GAINLOG' ,{LIMIT=>10}


scan 'ecm_ns:monitor_log' ,{LIMIT=>10}

3609223372035247816767


/home/hadoop/hadoop-2.6.5


localhost.localdomain

/home/hadoop/hadoopdata/hdfs


create 'T_ECM_ORIGINALMESSAGE' , {NAME => 'MF'}

create 'T_ECM_DEVICELOG' , {NAME => 'LF'}

create 'T_ECM_ALARMLOG' , {NAME => 'AF'}


create 'T_ECM_GAINLOG' , {NAME => 'GF'}




��ʼʱ��:00000000191527550980000
2018-05-30 08:58:36.966  INFO 4904 --- [tp1159395201-50] c.j.ecm.manage.hbase.dao.HGainLogDao     : ����ʱ��:00000000191527551280000
2018-05-30 08:58:36.996  INFO 4904 --- [tp1159395201-50] c.j.ecm.manage.hbase.dao.HGainLogDao     : ��ʼʱ��:00000000201527550980000
2018-05-30 08:58:36.996  INFO 4904 --- [tp1159395201-50] c.j.ecm.manage.hbase.dao.HGainLogDao     : ����ʱ��:00000000201527551280000
2018-05-30 08:58:37.008  INFO 4904 --- [tp1159395201-50] c.j.ecm.manage.hbase.dao.HGainLogDao     : ��ʼʱ��:00000000211527550980000
2018-05-30 08:58:37.008  INFO 4904 --- [tp1159395201-50] c.j.ecm.manage.hbase.dao.HGainLogDao     : ����ʱ��:00000000211527551280000
2018-05-30 08:58:37.020  INFO 4904 --- [tp1159395201-50] c.j.ecm.manage.hbase.dao.HGainLogDao     : ��ʼʱ��:00000000221527550980000
2018-05-30 08:58:37.020  INFO 4904 --- [tp1159395201-50] c.j.ecm.manage.hbase.dao.HGainLogDao     : ����ʱ��:00000000221527551280000
2018-05-30 08:58:37.032  INFO 4904 --- [tp1159395201-50] c.j.ecm.manage.hbase.dao.HGainLogDao     : ��ʼʱ��:00000000231527550980000
2018-05-30 08:58:37.032  INFO 4904 --- [tp1159395201-50] c.j.ecm.manage.hbase.dao.HGainLogDao     : ����ʱ��:00000000231527551280000
2018-05-30 08:58:37.046  INFO 4904 --- [tp1159395201-50] c.j.ecm.manage.hbase.dao.HGainLogDao     : ��ʼʱ��:00000000241527550980000
2018-05-30 08:58:37.046  INFO 4904 --- [tp1159395201-50] c.j.ecm.manage.hbase.dao.HGainLogDao     : ����ʱ��:00000000241527551280000
2018-05-30 08:58:37.056  INFO 4904 --- [tp1159395201-50] c.j.ecm.manage.hbase.dao.HGainLogDao     : ��ʼʱ��:00000000251527550980000
2018-05-30 08:58:37.056  INFO 4904 --- [tp1159395201-50] c.j.ecm.manage.hbase.dao.HGainLogDao     : ����ʱ��:00000000251527551280000
2018-05-30 08:58:37.069  INFO 4904 --- [tp1159395201-50] c.j.ecm.manage.hbase.dao.HGainLogDao     : ��ʼʱ��:00000000261527550980000
2018-05-30 08:58:37.069  INFO 4904 --- [tp1159395201-50] c.j.ecm.manage.hbase.dao.HGainLogDao     : ����ʱ��:00000000261527551280000
2018-05-30 08:58:37.082  INFO 4904 --- [tp1159395201-50] c.j.ecm.manage.hbase.dao.HGainLogDao     : ��ʼʱ��:00000000271527550980000
2018-05-30 08:58:37.082  INFO 4904 --- [tp1159395201-50] c.j.ecm.manage.hbase.dao.HGainLogDao     : ����ʱ��:00000000271527551280000
2018-05-30 08:58:37.095  INFO 4904 --- [tp1159395201-50] c.j.ecm.manage.hbase.dao.HGainLogDao     : ��ʼʱ��:00000000281527550980000
2018-05-30 08:58:37.095  INFO 4904 --- [tp1159395201-50] c.j.ecm.manage.hbase.dao.HGainLogDao     : ����ʱ��:00000000281527551280000
2018-05-30 08:58:37.108  INFO 4904 --- [tp1159395201-50] c.j.ecm.manage.hbase.dao.HGainLogDao     : ��ʼʱ��:00000000291527550980000
2018-05-30 08:58:37.108  INFO 4904 --- [tp1159395201-50] c.j.ecm.manage.hbase.dao.HGainLogDao     : ����ʱ��:00000000291527551280000


��truncate ��lmj_test��
����app�˿�����Ա��ͨ���ӼҰ��� app �� ������ǰ���sdk���õ����Լ��������ľ�һ����̬ҳ��
swagger �Ѿ����ɵ��ӼҰ�����web�ˣ����Թ�����

db.pubMongo.find({"devices._id":"ff8080815e700f50015e79a5aed90018"})
	
	Request URL: http://smarthome.justbon.com/smart/v1/device/count
Request Method: POST
Status Code: 200 
Remote Address: 47.97.23.172:80
Referrer Policy: no-referrer-when-downgrade
Connection: keep-alive
Content-Type: application/json;charset=UTF-8
Date: Thu, 24 May 2018 03:37:51 GMT
Server: nginx/1.12.2
Transfer-Encoding: chunked
Accept: application/json, text/plain, */*
Accept-Encoding: gzip, deflate
Accept-Language: zh-CN,zh;q=0.9
Connection: keep-alive
Content-Length: 2094
Content-Type: application/x-www-form-urlencoded;charset=UTF-8
Cookie: token=32e174d480f14ff3bdf29d667459d107
Host: smarthome.justbon.com
Origin: http://smarthome.justbon.com
Referer: http://smarthome.justbon.com/smart_home_manage_web/
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36
43241945,43241944,44717865

static_level

paas
/bin/su - pi -c "/home/pi/iot/iot-gateway/bin/autorestart.sh &"




�⻧��Ϣ��	tb_tenant
����ָ���	
	
	
1��docker �Ĺ�����Ҫʵ�� build ,ship and  run any app ,anywhere��һ�η�װ���������У� 
2�������Ӧ��������ȿ�����һ��webӦ�á�һ�����뻷����Ҳ������һ�����ݿ�ƽ̨����������һ������ϵͳ��Ⱥ
3��docker�״�ΪӦ�õĿ��������кͲ����ṩ��һվʽ��ʵ�ý������
4����ͬ�������໥���룬����֮��Ҳ����ͨ�����绥��ͨ�š�
5�������Ĵ�����ֹͣ��ʮ�ֿ��٣���������������ֹԭ��Ӧ��һ��
6����������Ҫһ�����͵Ĵ����ֲ�ʽӦ�ó���ķ�ʽ�����ٷַ��Ͳ���
7��docker�ṩ��һ�ַ�ʽ��ͨ�����������Ӧ�ã�����Ӧ�ú�����ƽ̨
8��dockerͨ��dockerfile֧�������Զ��������Ͳ������
9��docker���ڲ���ϵͳ���⻯
10��docker ������ĸ������(Image)��������Container�����ֿ⣨Repository��
11���ֿ�ע��������Ǵ�Ųֿ�ĵط�������������Ŷ���ֿ�
12�����Ĺ����ֿ��ǹٷ��ṩ��Docker Hub������ ʱ���ơ�������
13�����ȶ����Ͽ��ǣ���Ҫ�����������к��Ծ���ı�ǩ��Ϣ��ʹ��Ĭ�ϵ�latest��ǵľ���


14��docker pull ubuntu��14.04 �����൱�� docker pull registry.hub.docker.com/ubuntu:14.04 �����൱��
15��docker images ��������г��������������о���Ļ�����Ϣ
16��docker inspect ������Ի�ȡ�þ������ϸ��Ϣ
17��docker search �����������Զ�˲ֿ��й���ľ���
18��docker rmi ����ɾ������
19��docker ps -a ������Կ��������ϴ��ڵ���������
20��docker rm ����ɾ������
21��docker ��������ķ�����Ҫ�����֣��������о�����������������ڱ���ģ�嵼�롢����dockerfile����
22��docker push NAME[:TAG] | [REGISTRY_HOST[:REGISTRY_PORT]/]NAME[:TAG] �����ϴ����񵽲ֿ�

23��docker run �ȼ�����ִ��docker create�����ִ��docker start����
24������bash�նˣ������û����н����� docker run -it ubuntu:14.04 /bin/bash����������
35��docker help ��man docker-run
36���˳�������ctrl+d �������� exit����
37��docker run ���-d ��������docker�����ں�̨���ػ�̬��ʽ����
38��docker logs ��ȡ�����������Ϣ
39��docker ����������ʹ�ùٷ���attach �� exec ���� ���Լ��������� nsenter ����
40��attach ������������ͬʱ��attach��������ͬһ������ʱ�����д��ڶ���ͬ����ʾ
41��ͨ��ָ��-it ���������ֱ�׼����򿪣����ҷ���һ��α�նˣ�ͨ��execʱ������ִ�в�����Ϊ�Ƽ��ķ�ʽ
42��docker export  ��������
43��docker load ����뾵��洢�ļ������ؾ���⣬docker import ����������һ���������յ����� �������������������ļ����������е���ʷ��¼��Ԫ������Ϣ


44����װdocker�󣬿���ͨ���ٷ��ṩ��registry�����������˽�вֿ⻷��
45��docker�汾�԰�ȫ��Ҫ��ϸߣ���Ҫ��ֿ�֧��SSL/TLS֤��
46�����Ҫʹ�ð�ȫ֤�飬�û�Ҳ���Դӽ�֪����CA�����̣��� verisin�����빫����SSL/TLS֤��,����ʹ��openssl���������������
47������������ʹ��docker��������Ҫ���ݳ־û��������й���������Ҫ�����ַ�ʽ��1���ݾ� 2���ݾ�����
48�������ڴ������ݾ����Ұѱ��ص�Ŀ¼���ļ����ص������ڵ����ݾ��У�
49�����ݾ�����������������������������֮�乲�����ݣ���ʵ�����ݵı��ݺͻָ�
50�����ݾ����������֮�乲������ã������䴫�����ݽ���ɸ�Ч����
51������docker run���ʹ��-v��ǿ����������ڴ���һ�����ݾ�-p �ǽ���������¶�Ķ˿ڣ����Զ�ӳ�䵽������������ʱ�˿�
52�����ݾ�����Ŀ����ר�������ṩ���ݾ�������������
53�����Ҫɾ��һ�����ݾ�������ɾ�����һ������������������ʱ��ʽʹ��docker rm-v������ɾ������������


54��������ʣ�һ��ʱ����ӳ��������Ӧ�õķ���˿ڵ�����������������һ��ʱ��������ʵ�ֶ��������ͨ�������������ٷ���
55����ʹ��-P ���ʱ��docker �����ӳ��һ��49000~49900�Ķ˿ڵ��ڲ��������ŵ�����˿�
56��ʹ��-p ����ָ��Ҫӳ��Ķ˿ڣ���һ��ָ���˿���ֻ���԰�һ������
57��ӳ�䵽ָ����ַ��ָ���˿� ��ʹ��IP��HostPort��ContainerPort ��ʽָ��ӳ��ʹ��һ���ض���ַ
58��docker port �������鿴��ǰӳ��Ķ˿�����
59�������Ļ�������Դ�ͽ�������֮�䴴�����ӹ�ϵ��������������ͨ�����������ٷ��ʵ�Դ����
60��docker run ���������--rm ��ǣ�����������ֹ�������ɾ����ע�⣬--rm�� -d ��������ͬʱʹ��
61��ʹ�� --link ���� ����������֮�䰲ȫ�ؽ��н�����--link��ʽ --link name:alias ,����name��Ҫ���ӵ��������ƣ�alias ��������ӵı���
63��ʹ�� env�������鿴web�����Ļ�������

64��Docker�ṩ��docker commit���֧���û��ύ�Լ����ƶ��������޸ģ��������µľ�������docker commit CONTAINER[REPOSITORY[ :TARG]]

65��������Ƶ�tomcat��jetty�ܹ����������ܸ��ţ������������ٶ��ϣ�jettyĿǰ�ڹ����⻥������ҵ�й㷺Ӧ��
66��wordpress�Ƿ���ȫ��Ŀ�Դ���ݹ���ϵͳ
67��Ghost��һ�����ܻ�ӭ�Ŀ�Դ����ƽ̨��ʹ��javascript��д��
68���������ɣ�Continuous Integration ,CI)����������������һ�ֿ���ʵ���������������ŶӶ��ڽ��м�����֤������ͨ���Զ����Ĺ�������ɣ������Զ����롢�����Ͳ��ԣ��Ӷ����췢�ִ���
69�����������ص�������Ӽ�����롢���빹�������в��ԡ������¼������ͳ�Ƶȶ����Զ���ɵģ������˹���Ԥ
70������������Continuous delivery,CD���Ǿ�����������������������Ȼ���죬��ǿ����Ʒ���޸ĺ󵽲������ߵ�����Ҫ���ݻ����Զ���
80��Gitlab��һ��ǳ�ǿ��Ŀ�ԴԴ�����ϵͳ����֧�ֻ���git��Դ�������������issue���٣������wikiҳ�棬�������ɺͲ��Եȹ���
81����ʵ�������У���Ҫע�����ݵĳ־û������ڳ�����롢�������ԴĿ¼����־�����ݿ��ļ�����Ҫʵʱ���µ�����һ��Ҫͨ��-v����ӳ�䵽����������Ŀ¼���������ⷢ�����ݶ�ʧ�ʹ��������½�
82��MongoDB��һ�����չ�������ܵĿ�Դ�ĵ����ݿ⣬������C++������֧�ָ��ӵ��������ͺ�ǿ��Ĳ�ѯ���ԣ��ṩ�˹�ϵ�����ݿ���󲿷ֵĹ���

83��redis��һ����Դ�Ļ����ڴ�����ݽṹ�洢ϵͳ�������������ݿ⡢�������Ϣ�м��
84��Memcached��һ�������ܡ��ֲ�ʽ�Ŀ�Դ�ڴ���󻺴�ϵͳ
85��CouchDB������AP�������Ժͷ������̶ȣ����֮�£�MongoDB������CP��һ���Ժͷ������̶ȣ�
86��Cassandra�ǿ�Դ�ķֲ�ʽ���ݿ⣬֧�ַ�ɢ������ݴ洢������ʵ���ݴ��Լ��޵�����ϵ�
87�������ݷֲ�ʽ���������������������Hadoop��Spark��Storm�Լ���һ�������ݲɼ��ͷ�������ElasticSearch
88��Apache Hadoop��Ҫ����java����ʵ�֣�������������ϵͳ��ɣ�HDFS��YARN��MapReduce��HDFS��һ�׷ֲ�ʽ�ļ�ϵͳ��YARN����Դ����ϵͳ��MapReduce��������YARN�ϵ�Ӧ�ã�����ֲ�ʽ����ϰ����
89��Apache Spark��һ��Χ���ٶȡ������Ժ͸��ӷ��������Ĵ����ݴ����ܣ�����Scala����
90��java�ڴ��ͻ�������Ŀ���ر��ǻ��������ں͵���������Ŀ�зǳ��ܻ�ӭ
91��Go�Ļ�����������ǣ�����Ч�ʡ�����Ч�ʺͿ���Ч��Ҫ���߼�ˣ�Go�ṩ����������Э�̣�֧�ִ��ģ�����ĳ���
92��AWS ��Amazon Web Services
93��ƽ��Ǩ��
94������������Contaner as a Service ,Caas�����԰����ṩ������������Ӧ�÷���CaaS�ṩһ���ܿصġ���ȫ��Ӧ�û������ÿ�����Ա�������ķ�ʽ�����Ͳ���Ӧ��

95����������ά�Ŷ�ͨ��Docker Registry����Э����Registry����ά��һ����ȫ�ľ���ǩ����ӳ��ֿ⣬�����߿���ͨ��Registry����Ӧ�þ�����ȡ�����أ������Լ�����Ը����Ӧ�ã���Ӧ��ͨ�����ɲ��Ժ󣬿����߽�������Registry

96��CasS�����»���Ҫ�أ��������ȡ������֡��������á���ȫ���á����ؾ��⡢���ݳ־û����ݴ���߿���
97��ACS Alicloud Container Service �������������� ��һ�ָ����ܿ������������������֧����һ�鰢�����Ʒ�������ͨ��docker���������л����Ӧ��

98��֧��ͼ�λ������Open API��һվʽ���硢�洢����־����ء����ȡ�·�ɺͳ�����������
99����������û�ʹ�㣬��������Ч�ʵ���������һ����Ʒ�ͼ��������ճɹ��Ĺؼ�
100��ͨ��Docker��ʹ�ã��û����Խ�������ע����������ķ������Ա����ѧϰ�ϣ�����������ϵͳ�����ĸ�������
101������������ռ����ô�����������������ʦʵ�ָ�Ч�������ؾ�
102�����˽���������Եľ���˼·�͹��ߵľ���Ȼ����Ҫ���ʵ���еĸ��ֿӣ��������ʦ���ֺ󣬿��Կ��ٹ滮����Ҫ����Դ���������ʵ�������û��۵�ģ����ϵͳ���Ӷ������������
103������������������㷨�������ڱ�������Ҫ���ҵ�����⣬��������Ҫ��
104���ܿ��������µ�ҵ��������µļ���ջ���Ƕ�һ�����㼼����Ա������Ҫ��
105����ͳģʽ�У������Ŷ��ڿ���������������������������ɵ�Ԫ���ԣ�����ͨ��������ύ������汾����⣬�����ŶӴ�����н�һ�����ԣ���ά�ŶӰ�Ӧ�ò��𵽲��Ի����������Ŷӻ�����Ŷ��ٴν��в��ԣ�û���������Ա��������������
106������ģʽ�У�Ӧ��������������ʽ���ڣ����к͸�Ӧ����ص����������������У������ֲ�ǳ�����
107������ģʽ�� ��Ŀ��ʼ���ܹ�ʦ������ĿԤ�ڴ�������Ҫ�Ļ���base����ַ����п�����Ա�����п�����Ա����dockerfile���������������ڲ��ֿ����صľ�����п���
108��������������󣬼ܹ�ʦ����dockerfile����docker����Ȼ��ַ������Բ���
109�����ɻ�����ָ��ҵ��������ҵӦ�õ�it������������ڿ���������Ԥ���������Ͳ��Ի������Ե� 
110��OCI��Ա��ҵҲ����ֿ�������ȫ�����ԵȺ��ļ�ֵ������չ������̬
111��docker�������İ�ȫ�������ò������ƣ���Ӧ�õ����ɻ���֮ǰ������ʹ�õ�������������ǿ�����İ�ȫ����
112��������֮����Ϣ��ҵ����������һ�����ߵĽ׶Σ�������������������ȥ���˺��ĵļ�������
113���κθ߿��õķ����У������뿼�Ƿ������ϵ�����Լ���������޸����Զ��ָ�
114������˵�������ϣ�������������ԡ���ʾ������Ӧ�ú����ϻ�����ȫ���뿪�������������Լ������ļ�Ⱥ����
115�������Ҫ��kubernetes֮���ṩ���߼���ĳ��������֧�ֶ��⻧����������Ϊ��ͬ�����û��Ŷ��ṩ���ʵĸ��뼶�𣬶�����Ҫ����ҵ��õĵ����½��SSO�����ܽ��м��ɣ�����Activie Directory ����ADFS��Okta�Լ�����������SAML�ṩ��
116��������Ա���ڹ��������У�����ĵ�һ��Ҫ����ǳ������ɺͽ���������һ��ǿ���CI/CDͨ�������������ڱ�֤���ݿ�����������Ŀ��ٽ�����������Ҫ������


--nacos.addr=10.0.9.105:8848 --spring.profiles.active=dev --nacos.config.prefix=ecm



server:
  port: 8200

spring:
  autoconfigure:
    exclude: com.justbon.smart.cloud.core.boot.config.MybatisPlusConfiguration,com.alibaba.druid.spring.boot.autoconfigure.DruidDataSourceAutoConfigure,com.baomidou.mybatisplus.autoconfigure.MybatisPlusAutoConfiguration,org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration,com.justbon.smart.cloud.core.secure.config.SecureConfiguration,org.springframework.boot.autoconfigure.mongo.MongoAutoConfiguration,com.justbon.smart.cloud.core.mdb.SaveMongoEventListener

proxy:
  intercept:
    local: false
    kafka: true
    rocket: false

kafka:
  producer:
    servers: 10.121.200.129:19092

mqtt-server:
  config-path: D:\moquette-0.12.1\broker


/PUSH/X1XXX02010280018/DPUT/alarm

/PULL/X1XXX02010280018/DPUC/config

/PUSH/X1XXX02010280018/DPUT/alarm

/PUSH/X1XXX02010280027/DPUT/upload

/PUSH/X1XXX02010280018/DPUT/alarm


/PUSH/X1XXX02010280018/DPUT/upload

X1XXX02010280013

http://localhost:8080/justbon-ecm/ecm-server-view/device/report/spaceDeviceRun?id=778586311438106624

{"code":200,"success":true,"data":{"deviceHierarchy":{"groupCode":"ZZJSY","groupName":"����α�����","projectCode":"GG1881","projectName":"���ɶ������⡤����1881","spaceCode":"13060559-690615-4869212","spaceName":"1#��ѹ��緿","deviceCode":"","deviceName":""},"deviceGeneralSituation":{"deviceRunTime":48,"historyWanrTotal":1825,"warnCurrent":3,"warnOverTime":193,"workOrder":4,"deviceFailureRate":0},"gatherVo":{"spaceHealthRatio":0,"moduleCount":3,"warnPoint":0,"abnormalPoint":0,"deviceStateCount":{"total":3,"warn":1,"normal":2,"normalRatio":66.67},"pointOnlineCount":{"total":11,"onlineCount":11,"offOnlineCount":0,"onLineRatio":100.00},"gatewayOnlineCount":{"total":1,"onlineCount":1,"offOnlineCount":0,"onLineRatio":100.00}},"latestWarnList":[{"warningType":"����","warningLocation":"C���ѹ","warningDescription":"��ѹ��C���ѹ����","code":"GG1881-13060559-690615-4869212-778586358892462080-20210107171851","warningLevel":5,"warningTime":"2021-01-07 17:18:51"},{"warningType":"����","warningLocation":"B���ѹ","warningDescription":"��ѹ��B���ѹ����","code":"GG1881-13060559-690615-4869212-778586358917627904-20210107171851","warningLevel":5,"warningTime":"2021-01-07 17:18:51"},{"warningType":"����","warningLocation":"A���ѹ","warningDescription":"��ѹ��A���ѹ����","code":"GG1881-13060559-690615-4869212-778586358858907648-20210104090422","warningLevel":5,"warningTime":"2021-01-04 09:04:22"}],"spaceInfo":{"monitorId":"778586311438106624","projectId":"3103","typeName":"","name":"1#��ѹ��緿","status":1,"isolationStatus":0,"attributeList":[{"id":"778586311471661056","name":"ʪ��","status":1,"symbol":"H","unit":"RH%","value":"29.70","pointOnline":1,"runStatus":0,"warningCount":0,"dataType":0,"valueChoice":"","remarkName":"�豸��"},{"id":"778586311501021184","name":"�¶�","status":1,"symbol":"T","unit":"��","value":"20.60","pointOnline":1,"runStatus":0,"warningCount":0,"dataType":0,"valueChoice":"","remarkName":"�豸��"}]},"spaceAndDeviceInfoGroupList":[{"typeName":"��ѹ��","list":[{"monitorId":"778586358795993088","projectId":"3103","typeName":"��ѹ��","name":"��ѹ��1#","status":1,"isolationStatus":0,"attributeList":[{"id":"778586358858907648","name":"A���ѹ","status":1,"symbol":"Ua","unit":"V","value":"","pointOnline":2,"runStatus":2,"warningCount":1,"dataType":0,"valueChoice":"","remarkName":""},{"id":"778586358892462080","name":"C���ѹ","status":1,"symbol":"Uc","unit":"V","value":"234.00","pointOnline":1,"runStatus":2,"warningCount":1,"dataType":0,"valueChoice":"","remarkName":""},{"id":"778586358917627904","name":"B���ѹ","status":1,"symbol":"Ub","unit":"V","value":"233.38","pointOnline":1,"runStatus":2,"warningCount":1,"dataType":0,"valueChoice":",","remarkName":""},{"id":"778586358942793728","name":"A�����","status":1,"symbol":"Ia","unit":"A","value":"0.00","pointOnline":1,"runStatus":0,"warningCount":0,"dataType":0,"valueChoice":"","remarkName":""},{"id":"778586358963765248","name":"C�����","status":1,"symbol":"Ic","unit":"A","value":"0.00","pointOnline":1,"runStatus":0,"warningCount":0,"dataType":0,"valueChoice":"","remarkName":""},{"id":"778586358988931072","name":"B�����","status":1,"symbol":"Ib","unit":"A","value":"0.00","pointOnline":1,"runStatus":0,"warningCount":0,"dataType":0,"valueChoice":",","remarkName":""}]}]},{"typeName":"��ѹ���߹�","list":[{"monitorId":"778586342111051776","projectId":"3103","typeName":"��ѹ���߹�","name":"��ѹ���߹�2#","status":1,"isolationStatus":0,"attributeList":[{"id":"790638009002229760","name":"����4","status":1,"symbol":"ON4","unit":"","value":"��1234","pointOnline":1,"runStatus":0,"warningCount":0,"dataType":1,"valueChoice":"��1234,��","remarkName":""},{"id":"790638009002229761","name":"����3","status":1,"symbol":"ON3","unit":"","value":"��","pointOnline":1,"runStatus":0,"warningCount":0,"dataType":1,"valueChoice":"��,��","remarkName":""},{"id":"790638009002229762","name":"����2","status":1,"symbol":"ON2","unit":"","value":"��","pointOnline":1,"runStatus":0,"warningCount":0,"dataType":1,"valueChoice":"��,��","remarkName":""},{"id":"790638009002229763","name":"����1","status":1,"symbol":"ON1","unit":"","value":"��","pointOnline":1,"runStatus":0,"warningCount":0,"dataType":1,"valueChoice":"��,��","remarkName":""}]}]},{"typeName":"���ܱÿ��ƹ�","list":[{"monitorId":"778586574567768064","projectId":"3103","typeName":"���ܱÿ��ƹ�","name":"���ܱñÿ��ƹ�","status":1,"isolationStatus":0,"attributeList":[{"id":"778586574626488320","name":"����","status":1,"symbol":"FT","unit":"","value":"","pointOnline":2,"runStatus":1,"warningCount":0,"dataType":1,"valueChoice":"����,����","remarkName":""},{"id":"778586574647459840","name":"�Զ�״̬","status":1,"symbol":"AM","unit":"","value":"","pointOnline":2,"runStatus":1,"warningCount":0,"dataType":1,"valueChoice":"�Զ���,�Զ���","remarkName":""},{"id":"778586574664237056","name":"�ֶ�״̬","status":1,"symbol":"HM","unit":"","value":"","pointOnline":2,"runStatus":1,"warningCount":0,"dataType":1,"valueChoice":"�ֶ���,�ֶ���","remarkName":""},{"id":"790579224690819072","name":"����1","status":1,"symbol":"ON1","unit":"","value":"","pointOnline":2,"runStatus":1,"warningCount":0,"dataType":1,"valueChoice":"��,��","remarkName":"����1"},{"id":"790579233716961280","name":"����2","status":1,"symbol":"ON2","unit":"","value":"","pointOnline":2,"runStatus":1,"warningCount":0,"dataType":1,"valueChoice":"��,��","remarkName":"����2"},{"id":"790579242302701568","name":"����3","status":1,"symbol":"ON3","unit":"","value":"","pointOnline":2,"runStatus":1,"warningCount":0,"dataType":1,"valueChoice":"��,��","remarkName":"����1"},{"id":"790579265316847616","name":"����4","status":1,"symbol":"ON4","unit":"","value":"","pointOnline":2,"runStatus":1,"warningCount":0,"dataType":1,"valueChoice":"��1234,��","remarkName":"����2"}]}]}]},"msg":"�����ɹ�"}


devicesRealtimeInfoData



spaceDevicesGroupData


this.spaceDevicesGroupData=res.data;
          for (var key in this.spaceDevicesGroupData) {  
                for(let device in this.spaceDevicesGroupData[key]){
                     this.onLoadDeviceRealInfo(this.spaceDevicesGroupData[key][device].id);
                }     
          }  
		  
	this.devicesRealtimeInfoData[monitorId]=res.data;	  
		  
	getSpaceAllDevicesGroup	  



basicInfoData


http://localhost:8080/justbon-ecm/ecm-server-view/device/run/spaceDeviceAttrList

{"code":200,"success":true,"data":[{"typeName":"��ѹ��","list":[{"monitorId":"778586358795993088","projectId":"3103","typeName":"��ѹ��","name":"��ѹ��1#","status":1,"isolationStatus":0,"attributeList":[{"id":"778586358858907648","name":"A���ѹ","status":1,"symbol":"Ua","unit":"V","value":"","pointOnline":2,"runStatus":2,"warningCount":1,"dataType":0,"valueChoice":"","remarkName":""},{"id":"778586358892462080","name":"C���ѹ","status":1,"symbol":"Uc","unit":"V","value":"234.26","pointOnline":1,"runStatus":2,"warningCount":1,"dataType":0,"valueChoice":"","remarkName":""},{"id":"778586358917627904","name":"B���ѹ","status":1,"symbol":"Ub","unit":"V","value":"233.64","pointOnline":1,"runStatus":2,"warningCount":1,"dataType":0,"valueChoice":",","remarkName":""},{"id":"778586358942793728","name":"A�����","status":1,"symbol":"Ia","unit":"A","value":"0.00","pointOnline":1,"runStatus":0,"warningCount":0,"dataType":0,"valueChoice":"","remarkName":""},{"id":"778586358963765248","name":"C�����","status":1,"symbol":"Ic","unit":"A","value":"0.00","pointOnline":1,"runStatus":0,"warningCount":0,"dataType":0,"valueChoice":"","remarkName":""},{"id":"778586358988931072","name":"B�����","status":1,"symbol":"Ib","unit":"A","value":"0.00","pointOnline":1,"runStatus":0,"warningCount":0,"dataType":0,"valueChoice":",","remarkName":""}]}]},{"typeName":"��ѹ���߹�","list":[{"monitorId":"778586342111051776","projectId":"3103","typeName":"��ѹ���߹�","name":"��ѹ���߹�2#","status":1,"isolationStatus":0,"attributeList":[{"id":"790638009002229760","name":"����4","status":1,"symbol":"ON4","unit":"","value":"��1234","pointOnline":1,"runStatus":0,"warningCount":0,"dataType":1,"valueChoice":"��1234,��","remarkName":""},{"id":"790638009002229761","name":"����3","status":1,"symbol":"ON3","unit":"","value":"��","pointOnline":1,"runStatus":0,"warningCount":0,"dataType":1,"valueChoice":"��,��","remarkName":""},{"id":"790638009002229762","name":"����2","status":1,"symbol":"ON2","unit":"","value":"��","pointOnline":1,"runStatus":0,"warningCount":0,"dataType":1,"valueChoice":"��,��","remarkName":""},{"id":"790638009002229763","name":"����1","status":1,"symbol":"ON1","unit":"","value":"��","pointOnline":1,"runStatus":0,"warningCount":0,"dataType":1,"valueChoice":"��,��","remarkName":""}]}]},{"typeName":"���ܱÿ��ƹ�","list":[{"monitorId":"778586574567768064","projectId":"3103","typeName":"���ܱÿ��ƹ�","name":"���ܱñÿ��ƹ�","status":1,"isolationStatus":0,"attributeList":[{"id":"778586574626488320","name":"����","status":1,"symbol":"FT","unit":"","value":"","pointOnline":2,"runStatus":1,"warningCount":0,"dataType":1,"valueChoice":"����,����","remarkName":""},{"id":"778586574647459840","name":"�Զ�״̬","status":1,"symbol":"AM","unit":"","value":"","pointOnline":2,"runStatus":1,"warningCount":0,"dataType":1,"valueChoice":"�Զ���,�Զ���","remarkName":""},{"id":"778586574664237056","name":"�ֶ�״̬","status":1,"symbol":"HM","unit":"","value":"","pointOnline":2,"runStatus":1,"warningCount":0,"dataType":1,"valueChoice":"�ֶ���,�ֶ���","remarkName":""},{"id":"790579224690819072","name":"����1","status":1,"symbol":"ON1","unit":"","value":"","pointOnline":2,"runStatus":1,"warningCount":0,"dataType":1,"valueChoice":"��,��","remarkName":"����1"},{"id":"790579233716961280","name":"����2","status":1,"symbol":"ON2","unit":"","value":"","pointOnline":2,"runStatus":1,"warningCount":0,"dataType":1,"valueChoice":"��,��","remarkName":"����2"},{"id":"790579242302701568","name":"����3","status":1,"symbol":"ON3","unit":"","value":"","pointOnline":2,"runStatus":1,"warningCount":0,"dataType":1,"valueChoice":"��,��","remarkName":"����1"},{"id":"790579265316847616","name":"����4","status":1,"symbol":"ON4","unit":"","value":"","pointOnline":2,"runStatus":1,"warningCount":0,"dataType":1,"valueChoice":"��1234,��","remarkName":"����2"}]}]}],"msg":"�����ɹ�"}

getSpaceBasicInfo(spaceId)


disable 'ecm_ns:monitor_log'
alter 'ecm_ns:monitor_log' , {NAME=>'sensorInfo',TTL=>'604800'}  
enable 'ecm_ns:monitor_log'

��ʱ������ɺ�˽ӿڿ�����ͬʱ����pc�˺��ƶ����߼�һ��

�����߼����ӿ�ϸ����ͨ���ӿ��Ż���֧��ҵ��Ĳ�������

�ճ������ͷ��湤���У�


������

Ѳ��ҵ������ʹ����ع�������Ч�ʸ��ߣ�ͬʱ���ӹ�����չ�ԣ���֧��ʵʱ�鿴����


ecm �漰Ȩ�޵Ľӿڶ�admin�˻��������⴦������ϵͳά����������ecm֧��100����Ŀ����Դ�������漰�����ⷿ�йؽӿڵĵ����Ż�


DNMXF-HKQR2-CRJ7F-BFHHK-C7J3Y
nohup python3 job.py >> ./my.log 2>&1 &

https://sockboom.lol/user/checkin
POST


https://i.justbon.com/mexp/home/?token=e2e46d2c-687d-49c0-890b-6561be9c3b77

https://i.justbon.com/mexp/home;jsessionid=62A6E0408CA32B708FF15B0D01586E3A

2e54560d-7069-4af4-a30e-b8f7d289351f


easy_install pip
pip install paho-mqtt


1431

Firing channel inactive event. MqttClientId = X1XXX02010280018

docker exec -i -t  mysql5.6-2 /bin/bash
docker exec -i -t  hbase1.3 /bin/bash
ecm_ns:monitor_log
docker exec -i -t  kafka /bin/bash
docker exec -i -t  nginx /bin/bash
docker exec -i -t  zookeeper /bin/bash
�޸�hbase/conf/hbase-env.sh�����export HBASE_MANAGES_ZK=false��
SecureUtil.getUser().getGroupId()

{"cloud":{"cProtocol":"mqtt","client_id":"X1XXXL2007060016","description":"justbon server","host":"10.0.9.188","keepalive":60,"port":61613,"qos":1,"reconnect_time":100,"report":{"cycle":30,"mode":1,"payloadsize":100},"sn_id":"X1XXXL2007060016","topic":{"pubtopic":"PUSH","subtopic":"PULL"},"username":"rjchang","userpassword":"rj123689"},"description":"justbon format","interface":{"RS485":{"description":"COM2","dev":{"1308684731142922242":{"collect":"enable","cycle":1000,"daddress":"5","data":{"1308684731340054530":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":250.0},"calc":{"base":0.0,"mode":1,"mult":0.026},"description":"","node":{"func":"4","reg_addr":"0","sub_addr":"0"},"radix_point":2,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"uint16"},"1308684731327471617":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":10000.0},"calc":{"base":0.0,"mode":1,"mult":5.0E-4},"description":"","node":{"func":"4","reg_addr":"10","sub_addr":"0"},"radix_point":2,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"uint16"},"1308684731302305793":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":10000.0},"calc":{"base":0.0,"mode":1,"mult":5.0E-4},"description":"","node":{"func":"4","reg_addr":"8","sub_addr":"0"},"radix_point":2,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"uint16"},"1308684731432329217":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":260.0},"calc":{"base":0.0,"mode":1,"mult":0.026},"description":"","node":{"func":"4","reg_addr":"1","sub_addr":"0"},"radix_point":2,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"uint16"},"1308684731352637441":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":260.0},"calc":{"base":0.0,"mode":2,"mult":0.026},"description":"","node":{"func":"4","reg_addr":"2","sub_addr":"0"},"radix_point":2,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"uint16"},"1308684731314888706":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":10000.0},"calc":{"base":0.0,"mode":1,"mult":5.0E-4},"description":"","node":{"func":"4","reg_addr":"9","sub_addr":"0"},"radix_point":2,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"uint16"}},"description":"","gParam":{"options":"9600,8N1"},"protocol":"modbusRTU","sParam":{"byteorder_float":"ABCD","byteorder_int":"ABCD","byteorder_short":"AB"},"spacing":300,"timeout":5000},"1303595915147239425":{"collect":"enable","cycle":1000,"daddress":"2","data":{"1303595915264679938":{"alarm":{"equal":0.0,"lowlimit":7.0,"mode":3,"uplimit":90.0},"calc":{"base":0.0,"mode":1,"mult":0.1},"description":"","node":{"func":"3","reg_addr":"0","sub_addr":"0"},"radix_point":2,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"uint16"},"1303595915285651457":{"alarm":{"equal":0.0,"lowlimit":15.0,"mode":3,"uplimit":88.0},"calc":{"base":0.0,"mode":1,"mult":0.1},"description":"","node":{"func":"3","reg_addr":"1","sub_addr":"0"},"radix_point":2,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"uint16"}},"description":"","gParam":{"options":"9600,8N1"},"protocol":"modbusRTU","sParam":{"byteorder_float":"ABCD","byteorder_int":"ABCD","byteorder_short":"AB"},"spacing":300,"timeout":5000},"1308240160269295617":{"collect":"enable","cycle":1000,"daddress":"3","data":{"1308240164132249601":{"alarm":{"equal":0.0,"lowlimit":1000.0,"mode":3,"uplimit":10010.0},"calc":{"base":0.0,"mode":0,"mult":1.0},"description":"","node":{"func":"4","reg_addr":"4","sub_addr":"0"},"radix_point":2,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"uint16"},"1308240164153221121":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":100.0},"calc":{"base":0.0,"mode":2,"mult":0.002},"description":"","node":{"func":"4","reg_addr":"3","sub_addr":"0"},"radix_point":2,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"uint16"},"1308240164115472386":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":100.0},"calc":{"base":0.0,"mode":2,"mult":0.002},"description":"","node":{"func":"4","reg_addr":"2","sub_addr":"0"},"radix_point":2,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"uint16"},"1308240164098695170":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":100.0},"calc":{"base":0.0,"mode":2,"mult":0.002},"description":"","node":{"func":"4","reg_addr":"1","sub_addr":"0"},"radix_point":2,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"uint16"},"1308240164081917954":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":100.0},"calc":{"base":0.0,"mode":2,"mult":0.002},"description":"","node":{"func":"4","reg_addr":"0","sub_addr":"0"},"radix_point":2,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"uint16"}},"description":"","gParam":{"options":"9600,8N1"},"protocol":"modbusRTU","sParam":{"byteorder_float":"ABCD","byteorder_int":"ABCD","byteorder_short":"AB"},"spacing":300,"timeout":5000},"1307959909844803585":{"collect":"enable","cycle":1000,"daddress":"4","data":{"1307959914861191169":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":1.0},"calc":{"base":0.0,"mode":0,"mult":0.0},"description":"","node":{"func":"2","reg_addr":"1","sub_addr":"0"},"radix_point":0,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"bit"},"1307959914823442433":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":1.0},"calc":{"base":0.0,"mode":0,"mult":0.0},"description":"","node":{"func":"2","reg_addr":"2","sub_addr":"0"},"radix_point":0,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"bit"},"1307959914873774082":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":1.0},"calc":{"base":0.0,"mode":0,"mult":0.0},"description":"","node":{"func":"2","reg_addr":"3","sub_addr":"0"},"radix_point":0,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"bit"},"1307959914802470914":{"alarm":{"equal":0.0,"lowlimit":0.0,"mode":3,"uplimit":1.0},"calc":{"base":0.0,"mode":0,"mult":0.0},"description":"","node":{"func":"2","reg_addr":"0","sub_addr":"0"},"radix_point":0,"rwproperty":"rw","save":{"mode":1,"period":6,"strategy":2},"type":"bit"}},"description":"","gParam":{"options":"9600,8N1"},"protocol":"modbusRTU","sParam":{"byteorder_float":"ABCD","byteorder_int":"ABCD","byteorder_short":"AB"},"spacing":300,"timeout":5000}},"model":"COM2","param":{"options":"9600,8N1"}}},"msg_id":27}

����

firewall-cmd --zone=public --add-port=80/tcp
 /opt/zbox/zbox  -ap  8080  //�޸�Apache�������Ķ˿ں�Ϊ8080

/opt/zbox/zbox  restart 
export HBASE_PID_DIR=/xxx/xxx/�������Լ���·����
PASSWD=Nexus123


http://10.0.0.201/

WnGwuAkgXLZTG1qJLhoH
${MY_LOGS_DIR}/error.log
${MY_LOGS_DIR}/error.%d{yyyy-MM-dd}.%i.log

�޸�bug ���桢�޸�bug
${MY_LOGS_DIR}/info.log
${MY_LOGS_DIR}/info.%d{yyyy-MM-dd}.%i.log

INTERNAL://10.121.200.129:9092/,EXTERNAL://116.63.39.205:9092

nohup bin/kafka-server-start.sh config/server.properties &

{"sync":[{"data":[{"flag":1,"code":"ZSSDGC","province_area_name":"�Ĵ�ʡ","lng":"105.425886","administrative_area":"A510504","city_area":"A510500","administrative_area_name":"����̶��","city_area_name":"������","province_area":"A510000","project_id":7084083042,"org_id":"6091247EA5444C80B07C4CF1A6589C5C","name":"��ʵ��ʱ���㳡","lat":"28.913091","status":1}],"table":"oa_pm_project"}]}
{"sync":[{"data":[{"flag":1,"code":"YBSJMY","province_area_name":"�Ĵ�ʡ","lng":"104.8267","floor_space":75362.64,"administrative_area":"A511502","city_area":"A511500","land_area":75362.64,"administrative_area_name":"����>��","city_area_name":"�˱���","province_area":"A510000","project_id":17359317096,"org_id":"52A3F196569D40008C53D5B3A5D5A3B5","name":"�˱�������Է","lat":"28.7693","status":1}],"table":"oa_pm_project"}]}

{"code":"CJHY","remark":"1","full_id":"/B0C0D3B549A84CA98B08974F5DC26F9C.ogn/1F1CB4BDC26644589E46D736C1E71B71.ogn/244FFF9FD2C0406DA3EA74C01103EFDE.ogn/37B05B3CC55F43E6814799869A360AEA.dpt/C974F79C45BA42E29A983996AF1D3A8E.dpt","long_name":"��������","sequence":"015","org_kind_id":"dpt","parent_id":"37B05B3CC55F43E6814799869A360AEA","type_sign":"9","name":"���ɶ����ɶ���������","id":"C974F79C45BA42E29A983996AF1D3A8E","modify_date":1612457327000,"status":1,"tenancy_id":"1"}
,{"code":"YLSHGC","remark":"1","full_id":"/B0C0D3B549A84CA98B08974F5DC26F9C.ogn/1F1CB4BDC26644589E46D736C1E71B71.ogn/244FFF9FD2C0406DA3EA74C01103EFDE.ogn/37B05B3CC55F43E6814799869A360AEA.dpt/C5416B4439514202BEE684B646A26CF8.dpt","long_name":"��������㳡","sequence":"018","org_kind_id":"dpt","parent_id":"37B05B3CC55F43E6814799869A360AEA","type_sign":"9","name":"���ɶ����ɶ���������㳡","id":"C5416B4439514202BEE684B646A26CF8","modify_date":1612457327000,"status":1,"tenancy_id":"1"}
,{"code":"LSJLB","remark":"1","full_id":"/B0C0D3B549A84CA98B08974F5DC26F9C.ogn/1F1CB4BDC26644589E46D736C1E71B71.ogn/244FFF9FD2C0406DA3EA74C01103EFDE.ogn/37B05B3CC55F43E6814799869A360AEA.dpt/CA0316D3A1C746BFA7399489351B37DE.dpt","long_name":"��ɫ���ձ�","sequence":"020","org_kind_id":"dpt","parent_id":"37B05B3CC55F43E6814799869A360AEA","type_sign":"9","name":"���ɶ����ɶ���ɫ���ձ�","id":"CA0316D3A1C746BFA7399489351B37DE","modify_date":1612457327000,"status":1,"tenancy_id":"1"},
{"code":"HHYY","remark":"1","full_id":"/B0C0D3B549A84CA98B08974F5DC26F9C.ogn/1F1CB4BDC26644589E46D736C1E71B71.ogn/244FFF9FD2C0406DA3EA74C01103EFDE.ogn/AC7C53AD6A55404CA0BF7C4DD81931D7.dpt/AF5DC483809F4B5796FB1AF124D5574C.dpt","long_name":"������Բ","sequence":"010","org_kind_id":"dpt","parent_id":"AC7C53AD6A55404CA0BF7C4DD81931D7","type_sign":"9","name":"���ɶ����ɶ�������Բ","id":"AF5DC483809F4B5796FB1AF124D5574C","modify_date":1612457327000,"status":1,"tenancy_id":"1"},
{"code":"XWY","remark":"1","full_id":"/B0C0D3B549A84CA98B08974F5DC26F9C.ogn/1F1CB4BDC26644589E46D736C1E71B71.ogn/244FFF9FD2C0406DA3EA74C01103EFDE.ogn/AC7C53AD6A55404CA0BF7C4DD81931D7.dpt/663B16D56CB941D6BF9E5F14EF6CACD0.dpt","long_name":"��ɫ������","sequence":"012","org_kind_id":"dpt","parent_id":"AC7C53AD6A55404CA0BF7C4DD81931D7","type_sign":"9","name":"���ɶ����ɶ�������","id":"663B16D56CB941D6BF9E5F14EF6CACD0","modify_date":1612457327000,"status":1,"tenancy_id":"1"},
{"code":"DHGJ","remark":"1","full_id":"/B0C0D3B549A84CA98B08974F5DC26F9C.ogn/1F1CB4BDC26644589E46D736C1E71B71.ogn/244FFF9FD2C0406DA3EA74C01103EFDE.ogn/4C090A9EE87148EE93611D8EF09C8641.dpt/763497C050994C60AFCB4696FD7C3690.dpt","long_name":"�������","sequence":"014","org_kind_id":"dpt","parent_id":"4C090A9EE87148EE93611D8EF09C8641","type_sign":"9","name":"���ɶ����ɶ��������","id":"763497C050994C60AFCB4696FD7C3690","modify_date":1612457327000,"status":1,"tenancy_id":"1"},
{"code":"DFSDSC","remark":"1","full_id":"/B0C0D3B549A84CA98B08974F5DC26F9C.ogn/1F1CB4BDC26644589E46D736C1E71B71.ogn/244FFF9FD2C0406DA3EA74C01103EFDE.ogn/4C090A9EE87148EE93611D8EF09C8641.dpt/5023448AEE1F4467AA3E39DCCBE8B5B3.dpt","long_name":"����ʱ���̳�","sequence":"017","org_kind_id":"dpt","parent_id":"4C090A9EE87148EE93611D8EF09C8641","type_sign":"9","name":"���ɶ����ɶ�����ʱ���̳�","id":"5023448AEE1F4467AA3E39DCCBE8B5B3","modify_date":1612457327000,"status":1,"tenancy_id":"1"},
{"code":"XBGC","remark":"1","full_id":"/B0C0D3B549A84CA98B08974F5DC26F9C.ogn/1F1CB4BDC26644589E46D736C1E71B71.ogn/244FFF9FD2C0406DA3EA74C01103EFDE.ogn/4C090A9EE87148EE93611D8EF09C8641.dpt/BA3867954C7C419F802C79DC819E015E.dpt","long_name":"���Ĺ㳡","sequence":"019","org_kind_id":"dpt","parent_id":"4C090A9EE87148EE93611D8EF09C8641","type_sign":"9","name":"���ɶ����ɶ����Ĺ㳡","id":"BA3867954C7C419F802C79DC819E015E","modify_date":1612457327000,"status":1,"tenancy_id":"1"},
{"code":"LGDS","remark":"1","full_id":"/B0C0D3B549A84CA98B08974F5DC26F9C.ogn/1F1CB4BDC26644589E46D736C1E71B71.ogn/244FFF9FD2C0406DA3EA74C01103EFDE.ogn/15308FC48D5B41CEA779FD5B1D5693A3.dpt/5FB226B70370488D8FC934D103E688F6.dpt","long_name":"�������","sequence":"021","org_kind_id":"dpt","parent_id":"15308FC48D5B41CEA779FD5B1D5
{"code":"LGDS","remark":"1","full_id":"/B0C0D3B549A84CA98B08974F5DC26F9C.ogn/1F1CB4BDC26644589E46D736C1E71B71.ogn/244FFF9FD2C0406DA3EA74C01103EFDE.ogn/15308FC48D5B41CEA779FD5B1D5693A3.dpt/5FB226B70370488D8FC934D103E688F6.dpt","long_name":"�������","sequence":"021","org_kind_id":"dpt","parent_id":"15308FC48D5B41CEA779FD5B1D5693A3","type_sign":"9","name":"���ɶ����ɶ��������","id":"5FB226B70370488D8FC934D103E688F6","modify_date":1612457327000,"status":1,"tenancy_id":"1"},

{"sync":[{"table":"bmm_sys_oporg","data":[{"code":"nimeijuan","position_name":"��������","remark":"1","full_id":"/B0C0D3B549A84CA98B08974F5DC26F9C.ogn/1F1CB4BDC26644589E46D736C1E71B71.ogn/09C3FE1DE0594C969545B8A66DB5A35F.ogn/EC0F5C5C3A264EA9BF99904988010327.dpt/7CF55BA74EA94957A57B52DD3D68F8B5.pos/80CD59699D785F34E0530611000ABE8C@7CF55BA74EA94957A57B52DD3D68F8B5.psm","long_name":"������","sequence":"005","org_kind_id":"psm","parent_id":"7CF55BA74EA94957A57B52DD3D68F8B5","name":"������","id":"80CD59699D785F34E0530611000ABE8C@7CF55BA74EA94957A57B52DD3D68F8B5","modify_date":1612491410000,"status":0,"position_id":"7CF55BA74EA94957A57B52DD3D68F8B5","tenancy_id":"1"},{"code":"xiejiaoli","create_time":1558281600000,"position_name":"���","remark":"1","full_id":"/B0C0D3B549A84CA98B08974F5DC26F9C.ogn/1F1CB4BDC26644589E46D736C1E71B71.ogn/09C3FE1DE0594C969545B8A66DB5A35F.ogn/EC0F5C5C3A264EA9BF99904988010327.dpt/9F8B3C3BE4D54F5E880109DA0B6AA1A2.pos/C527A959597A41119337E9A4FBB844FB@9F8B3C3BE4D54F5E880109DA0B6AA1A2.psm","long_name":"л����","sequence":"002","org_kind_id":"psm","parent_id":"9F8B3C3BE4D54F5E880109DA0B6AA1A2","name":"л����","id":"C527A959597A41119337E9A4FBB844FB@9F8B3C3BE4D54F5E880109DA0B6AA1A2","modify_date":1612491410000,"status":0,"position_id":"9F8B3C3BE4D54F5E880109DA0B6AA1A2","tenancy_id":"1"},{"code":"tubinbin","create_time":1558022400000,"position_name":"������>��","remark":"1","full_id":"/B0C0D3B549A84CA98B08974F5DC26F9C.ogn/1F1CB4BDC26644589E46D736C1E71B71.ogn/09C3FE1DE0594C969545B8A66DB5A35F.ogn/EC0F5C5C3A264EA9BF99904988010327.dpt/CEB254CA9D254D999425FE86666C238F.pos/5BFE49E500E1F35FE0530100007FD60B@CEB254CA9D254D999425FE86666C238F.psm","long_name":"�����","sequence":"001","org_kind_id":"psm","parent_id":"CEB254CA9D254D999425FE86666C238F","name":"�����","id":"5BFE49E500E1F35FE0530100007FD60B@CEB254CA9D254D999425FE86666C238F","modify_date":1612491410000,"status":0,"position_id":"CEB254CA9D254D999425FE86666C238F","tenancy_id":"1"},{"code":"lixiujun","create_time":1558627200000,"position_name":"�ʽ����רԱ","remark":"1","full_id":"/B0C0D3B549A84CA98B08974F5DC26F9C.ogn/1F1CB4BDC26644589E46D736C1E71B71.ogn/09C3FE1DE0594C969545B8A66DB5A35F.ogn/EC0F5C5C3A264EA9BF99904988010327.dpt/00EA99C97877449D99611A4B436B5B96.pos/5BFE49E500F4F35FE0530100007FD60B@00EA99C97877449D99611A4B436B5B96.psm","long_name":"��>���","sequence":"001","org_kind_id":"psm","parent_id":"00EA99C97877449D99611A4B436B5B96","name":"�����","id":"5BFE49E500F4F35FE0530100007FD60B@00EA99C97877449D99611A4B436B5B96","modify_date":1612491410000,"status":0,"position_id":"00EA99C97877449D99611A4B436B5B96","tenancy_id":"1"},{"code":"zhanglulu","create_time":1558886400000,"position_name":"��������","remark":"1","full_id":"/B0C0D3B549A84CA98B08974F5DC26F9C.ogn/1F1CB4BDC26644589E46D736C1E71B71.ogn/09C3FE1DE0594C969545B8A66DB5A35F.ogn/EC0F5C5C3A264EA9BF99904988010327.dpt/7CF55BA74EA94957A57B52DD3D68F8B5.pos/EE5EE6B07F104A91BFFB1BF68BEDB717@7CF55BA74EA94957A57B52DD3D68F8B5.psm","long_name":"��¶¶","sequence":"008","org_kind_id":"psm","parent_id":"7CF55BA74EA94957A57B52DD3D68F8B5","name":"��¶¶","id":



{"sync":[{"table":"bmm_sys_oporg","data":[{"code":"LGDS","remark":"1","full_id":"/B0C0D3B549A84CA98B08974F5DC26F9C.ogn/1F1CB4BDC26644589E46D736C1E71B71.ogn/244FFF9FD2C0406DA3EA74C01103EFDE.ogn/15308FC48D5B41CEA779FD5B1D5693A3.dpt/5FB226B70370488D8FC934D103E688F6.dpt","long_name":"�������","sequence":"021","org_kind_id":"dpt","parent_id":"15308FC48D5B41CEA779FD5B1D5693A3","type_sign":"9","name":"���ɶ����ɶ��������","id":"5FB226B70370488D8FC934D103E688F6","modify_date":1612457327000,"status":1,"tenancy_id":"1"}]}

org_kind_id=dpt, parent_id=4C090A9EE87148EE93611D8EF09C8641, type_sign=9, name=���ɶ����ɶ����Ĺ㳡, id=BA3867954C7C419F802C79DC819E015E, modify_date=1612457327000, status=1, tenancy_id=1}, {code=LGDS, remark=1, full_id=/B0C0D3B549A84CA98B08974F5DC26F9C.ogn/1F1CB4BDC26644589E46D736C1E71B71.ogn/244FFF9FD2C0406DA3EA74C01103EFDE.ogn/15308FC48D5B41CEA779FD5B1D5693A3.dpt/5FB226B70370488D8FC934D103E688F6.dpt, long_name=�������, sequence=021, org_kind_id=dpt, parent_id=15308FC48D5B41CEA779FD5B1D5693A3, type_sign=9, name=��
�ɶ����ɶ��������, id=5FB226B70370488D8FC934D103E688F6, modify_date=1612457327000, status=1, tenancy_id=1}, 


SyncDTO(sync=[SyncDataDTO(table=bmm_sys_oporg, data=[{code=dengmingsong, position_name=Ʒ�ʹ����鳤, remark=1, full_id=/B0C0D3B549A84CA98B08974F5DC26F9C.ogn/1F1CB4BDC26644589E46D736C1E71B71.ogn/244FFF9FD2C0406DA3EA74C01103EFDE.ogn/AC7C53AD6A55404CA0BF7C4DD81931D7.dpt/AF5DC483809F4B5796FB1AF124D5574C.dpt/E5F1E7A3AA324FFD984374D90E2FACC4.dpt/00527EB4FA414E53B8DA0BF046E2D851.pos/03B46A228E83150AE053DF03000AF419@00527EB4FA414E53B8DA0BF046E2D851.psm, long_name=������, sequence=002, org_kind_id=psm, parent_id=00527EB4FA414E53B8DA0BF046E2D851, name=������, id=03B46A228E83150AE053DF03000AF419@00527EB4FA414E53B8DA0BF046E2D851, modify_date=1612457336000, status=0, position_id=00527EB4FA414E53B8DA0BF046E2D851, tenancy_id=1}, {code=zhouchangkui, position_name=Ʒ�ʹ���Ա, remark=1, full_id=/B0C0D3B549A84CA98B08974F5DC26F9C.ogn/1F1CB4BDC26644589E46D736C1E71B71.ogn/244FFF9FD2C0406DA3EA74C01103EFDE.ogn/AC7C53AD6A55404CA0BF7C4DD81931D7.dpt/AF5DC483809F4B5796FB1AF124D5574C.dpt/E5F1E7A3AA324FFD984374D90E2FACC4.dpt/82BDDE207D0A444396ADAED76219ECD0.pos/03B46A228E84150AE053DF03000AF419@82BDDE207D0A444396ADAED76219ECD0.psm, long_name=�ܲ���, sequence=001, 



bin/kafka-server-start.sh -daemon ./config/server.properties


CREATE TABLE `ecm_inspection_details` (
  `id` varchar(50) NOT NULL,
  `inspection_id` varchar(50) DEFAULT NULL COMMENT 'Ѳ������ID',
  `group_id` int(11) NOT NULL COMMENT '������ҵID',
  `space_id` varchar(50) NOT NULL COMMENT '�豸��ID',
  `project_id` int(11) NOT NULL COMMENT '��ĿID',
  `device_id` varchar(50) NOT NULL COMMENT '�豸ID',
  `attribute_id` varchar(50) NOT NULL COMMENT '����ID',
  `attribute_type` int(11) NOT NULL COMMENT '��λ���� 0���������� 1���豸����',
  `attribute_name` varchar(128) DEFAULT NULL COMMENT '��������',
  `device_name` varchar(128) DEFAULT NULL COMMENT '�豸����',
  `value_choice` varchar(128) DEFAULT NULL COMMENT '�ο�ֵ',
  `value` varchar(128) DEFAULT NULL COMMENT 'ʵ��ֵ',
  `deviant` int(11) DEFAULT NULL COMMENT '�쳣 0 -���� 1- �� 2 - ��',
  `is_deleted` int(1) DEFAULT '0' COMMENT '�Ƿ�ɾ�� 0:���� 1��ɾ��',
  `status` int(11) DEFAULT NULL COMMENT '״̬����ʱû�õ�',
  `user_name` varchar(128) DEFAULT NULL COMMENT 'Ѳ����',
  `inspection_date` varchar(128) NOT NULL COMMENT 'Ѳ�����ڣ��磺2020-08-12',
  `create_user_id` int(11) DEFAULT NULL COMMENT '������',
  `update_user_id` int(11) DEFAULT NULL COMMENT '������',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '����ʱ��',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_1` (`inspection_id`,`attribute_id`) USING BTREE,
  KEY `index_project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

 

 java -classpath lib/slf4j-log4j12-1.7.25.jar:dist-maven/zookeeper-3.4.12.jar org.apache.zookeeper.server.LogFormatter /home/justbon/tmp/zookeeper/log/version-2

<property>
    <name>zookeeper.znode.parent</name>
	<value>/hbase</value>
</property>


<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>
<configuration>
  <property>
    <name>hbase.cluster.distributed</name>
    <value>true</value>
  </property>
  <property>
    <name>hbase.rootdir</name>
    <value>/hbase-data</value>
  </property>
  <property>
    <name>hbase.zookeeper.quorum</name>
    <value>10.121.200.129:2181</value>
  </property>
  <property>
        <name>hbase.master.info.port</name>
        <value>60010</value>
  </property>
  <property>
    <name>zookeeper.znode.parent</name>
        <value>/hbase</value>
  </property>
</configuration>



zkCli.cmd -server 116.63.39.205:2181

http://116.63.39.205:16010/master-status


http://116.63.39.205:60010/master-status


/var/lib/docker/containers/380ec9ba731dec562c5391468452beb423ebe7dcf3cb9c0959710b303c491745/config.v2.json
	

HTTP
https://apache.website-solution.net/phoenix/apache-phoenix-4.14.3-HBase-1.3/bin/apache-phoenix-4.14.3-HBase-1.3-bin.tar.gz

https://mirror-hk.koddos.net/apache/phoenix/apache-phoenix-4.14.3-HBase-1.3/bin/apache-phoenix-4.14.3-HBase-1.3-bin.tar.gz


BACKUP SITES
Please only use the backup mirrors to download KEYS, PGP signatures and hashes (SHA* etc) -- or if no other mirrors are working.

https://downloads.apache.org/phoenix/apache-phoenix-4.14.3-HBase-1.3/bin/apache-phoenix-4.14.3-HBase-1.3-bin.tar.gz
	
	
	docker run -d -h myhbase -p 2181:2181 -p 8080:8080 -p 8085:8085 -p 9090:9090 -p 9095:9095 -p 16000:16000 -p 16010:16010 -p 16201:16201 -p 16301:16301 --name hbase1.3 harisekhon/hbase:1.3

	
	tb_production_line
	
	
	tb_message_type


���λ�û�ע�⣬���Ƿ������ǵ��������� sockboom.club �Ѿ���ǽ�����Ѹ���Ϊ sockboom.mobi �����λ�ǵø����Լ����������ӡ�ͬʱ���ǵĽڵ��������޸��У����û����赣�ģ����������Ĳ���������б�Ǹ��

�������ڵ���վ��
https://sockboom.art
	
	ͬһ����������������ͬʱ��ͬһ�����ͬһ���������޸�
	
	
service          plans                                  description
elasticsearch5   elasticsearch-m, elasticsearch-xs      Dedicated Elasticsearch 5.x service instances and clusters powered by the anynines Service Framework
logme            logme-cluster-big, logme-m, logme-xs   Dedicated ELK stacks to monitor applications and service instances powered by the anynines Service Framework
redis32          redis-m, redis-xs                      Dedicated Redis service instances and clusters powered by the anynines Service Framework
redis40          redis-m, redis-xs                      Dedicated Redis service instances and clusters powered by the anynines Service Framework
rabbitmq36       rabbitmq-m, rabbitmq-xs                Dedicated RabbitMQ service instances powered by the anynines Service Framework
mongodb32        mongodb-m, mongodb-xs                  Dedicated MongoDB 3.2 service instances and clusters powered by the anynines Service Framework
mongodb34        mongodb-m, mongodb-xs                  Dedicated MongoDB 3.4 service instances and clusters powered by the anynines Service Framework
postgresql10     postgresql-m, postgresql-xs            This is a service creating and managing dedicated PostgreSQL service instances and clusters, powered by the anynines Service Framework
postgresql94     postgresql-m, postgresql-xs            Dedicated PostgreSQL service instances and clusters powered by the anynines Service Framework
	
 
	
	
	
	
	
	
	@Value(RabbitConstant.QUEUE_MACB_PROVIDER_GROUP+"#{appBean.appInstances}")
    private String appInstances;
	
	
	
	
	
package com.siemens.csde.macb.provider.service.impl;

import static com.siemens.csde.macb.common.constant.TimeSeriesConstant.ASPECT_DELIMETER;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.gson.Gson;
import com.siemens.csde.macb.common.constant.KPIConstant;
import com.siemens.csde.macb.common.constant.RabbitConstant;
import com.siemens.csde.macb.common.enums.KpiEnum;
import com.siemens.csde.macb.common.model.bean.AppBean;
import com.siemens.csde.macb.common.model.dto.TimeSeriesDto;
import com.siemens.csde.macb.common.model.stream.IotTimeSeriesItem;
import com.siemens.csde.macb.common.reactor.event.EventBus;
import com.siemens.csde.macb.common.reactor.event.service.AsyncEventService;
import com.siemens.csde.macb.common.util.DateUtil;
import com.siemens.csde.macb.jpa.component.NativeQueryManager;
import com.siemens.csde.macb.jpa.constant.DBConstant;
import com.siemens.csde.macb.jpa.entity.DataAssetEntity;
import com.siemens.csde.macb.jpa.entity.ProductionLineEntity;
import com.siemens.csde.macb.jpa.entity.TenantEntity;
import com.siemens.csde.macb.jpa.repository.DataAssetRepository;
import com.siemens.csde.macb.jpa.repository.ProductionLineRepository;
import com.siemens.csde.macb.jpa.repository.TenantRepository;
import com.siemens.csde.macb.mdsp.api.component.TimeSeriesBroker;
import com.siemens.csde.macb.provider.data.OneBatchTimeSeries;
import com.siemens.csde.macb.provider.event.bean.EventParamMeta;
import com.siemens.csde.macb.provider.service.DataDictService;
import com.siemens.csde.macb.provider.service.IngestionService;
import com.siemens.csde.macb.provider.service.IotAccessorService;
import com.siemens.csde.macb.provider.service.TechTokenService;
import feign.FeignException;
import java.time.Instant;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.concurrent.ConcurrentMap;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

/**
 * IngestionServiceImpl ���ݲɼ�����ӿ�ʵ����
 * @author z004267r
 * @version 1.0-SNAPSHOT
 * @date 8/26/2019 11:14 AM
 **/
@SuppressWarnings("unused")
@Service
@Slf4j
public class IngestionServiceImpl implements IngestionService {

    private static final Gson gson = new Gson();

    @Autowired
    private DataAssetRepository dataAssetRepository;

    @Autowired
    private NativeQueryManager nativeQueryManager;

    @Autowired
    private TenantRepository tenantRepository;

    @Autowired
    private IotAccessorService iotAccessorService;

    @Autowired
    private RabbitTemplate rabbitTemplate;

    @Autowired
    private TechTokenService techTokenService;

    @Autowired
    private DataDictService dataDictService;

    @Autowired
    private ProductionLineRepository productionLineRepository;

    @Autowired
    private TimeSeriesBroker timeSeriesBroker;

    @Autowired
    private AppBean appBean;

    private EventBus eventBus;

    private AsyncEventService asyncEventService;

    private static ConcurrentMap<String, Instant> aspectLastMap= Maps.newConcurrentMap();
    private static final int MAX_MESSAGE_IOTSIZE = 5;

    private static final long PERMIT_DELAY_SECONDS = 24 * 60 * 60L;
    /**
     * ��ʼ���¼����ߡ��¼���������
     * @author z004267r
     * @return void
     * @date 8/26/2019 11:15 AM
     */



    @Override
    public void ingestData() {

        Map<String, Object> params = new HashMap<>();
        Instant endTime = Instant.now();
        List<TenantEntity> tenantEntities=tenantRepository.findByStatus(DBConstant.DB_STATUS_VALID);
        Map<String,Map<String,String>> tenantProductIdNameMap= Maps.newHashMap();
        Map<String, String> productIdNameMap;
        String tenantId;
        for(TenantEntity tenantEntity: CollectionUtils.emptyIfNull(tenantEntities)){
            tenantId=tenantEntity.getId();
            productIdNameMap = dataDictService.getProductIdNameMap(tenantId);
            tenantProductIdNameMap.put(tenantId,productIdNameMap);
        }
        List<DataAssetEntity> dataAssetEntities = nativeQueryManager
                .queryByConditionNQ(DataAssetEntity.class, DataAssetRepository.NSQL_VALIDDATAASSETS, params);

        Optional.ofNullable(dataAssetEntities).orElseGet(Collections::emptyList).parallelStream()
                .filter(dataAssetEntity -> {
                      //����
                     Integer createIndex=dataAssetEntity.getCreateIndex();
                     if(Objects.isNull(createIndex)){
                         createIndex=1;
                     }

                     return createIndex.intValue() % appBean.getAppInstances()== appBean.getInstanceIndex();
                }).forEachOrdered(dataAssetEntity -> {




            EventParamMeta meta = EventParamMeta.builder().build();
            String aspectName=dataAssetEntity.getAspectName();
            meta.setDataAssetId(dataAssetEntity.getId());

            String messageType = StringUtils.substringBefore(aspectName, ASPECT_DELIMETER);
            KpiEnum kpiEnum = KpiEnum.fromMessageTypeName(messageType);
            String lineId=dataAssetEntity.getLineId();
            String lineName=dataAssetEntity.getLineName();
            String kpiUnit=KPIConstant.getKPIUnit(kpiEnum.value());
            String from = dataAssetEntity.getLastProcessTime().toString();
            String to = endTime.toString();

            TenantEntity tenantEntity = tenantRepository.findOne(dataAssetEntity.getTenantId());
            OneBatchTimeSeries oneBatchTimeSeries;

            do {
                oneBatchTimeSeries = getTimeSeriesWithRetry(dataAssetEntity.getTenantId(), dataAssetEntity.getAssetId(),
                        dataAssetEntity.getAspectName(), null, from, to, tenantEntity.getToken(), 2);

                List<IotTimeSeriesItem> iotTimeSeriesItems = oneBatchTimeSeries
                        .getIotTimeSeriesItems();
                if (iotTimeSeriesItems != null
                        && iotTimeSeriesItems.isEmpty()
                        && DateUtil.getIntervalSeconds(from, to) > PERMIT_DELAY_SECONDS) {
                    dataAssetEntity.setLastProcessTime(Instant.parse(to).minusSeconds(PERMIT_DELAY_SECONDS));
                    dataAssetRepository.saveAndFlush(dataAssetEntity);
                }

                if (CollectionUtils.isNotEmpty(iotTimeSeriesItems)) {
                    iotTimeSeriesItems.stream().filter(iotTimeSeriesItem -> Objects.isNull(iotTimeSeriesItem.getOrderId()))
                            .forEach(iotTimeSeriesItem -> iotTimeSeriesItem.put(IotTimeSeriesItem.ORDER_ID, IotTimeSeriesItem.DEFAULT_ORDER_ID));

                    iotTimeSeriesItems.stream().filter(iotTimeSeriesItem -> Objects.isNull(iotTimeSeriesItem.getProductId()))
                            .forEach(iotTimeSeriesItem -> iotTimeSeriesItem
                                    .put(IotTimeSeriesItem.PRODUCT_ID, IotTimeSeriesItem.DEFAULT_PRODUCT_ID));
                    iotTimeSeriesItems.stream().forEach(iotTimeSeriesItem -> {
                        String productId=iotTimeSeriesItem.getProductId();
                        //String productName=tenantProductIdNameMap.get(meta.getTenantId()).getOrDefault(productId, DefaultValueConstant.NO_PRODUCT_NAME);
                        iotTimeSeriesItem.put(IotTimeSeriesItem.PRODUCT_NAME,"");
                    });

                    aspectName=lineId+dataAssetEntity.getAspectName();

                    Instant  instant;



                     List<List<IotTimeSeriesItem>> iotTimeSeriesItemsGroup = Lists.partition(iotTimeSeriesItems, MAX_MESSAGE_IOTSIZE);

              /* Optional.ofNullable(iotTimeSeriesItemsGroup)
                        .orElseGet(Collections::emptyList)
                        .forEach(subIotTimeSeriesItems -> {
                            TimeSeriesDto timeSeriesDto = TimeSeriesDto.builder()
                                    .assetId(dataAssetEntity.getAssetId())
                                    .lineId(lineId)
                                    .lineName(lineName)
                                    .aspectName(dataAssetEntity.getAspectName())
                                    .kpiUnit(kpiUnit)
                                    .tenant(paramMeta.getTenantId())
                                    .iotTimeSeriesItems(subIotTimeSeriesItems).build();


                            rabbitTemplate.convertAndSend(RabbitConstant.EXCHANGE_DIRECT_MACB_PROVIDER,
                                    RabbitConstant.ROUTINGKEY_MACB_PROVIDER_GROUP+appBean.getInstanceIndex(),
                                    gson.toJson(timeSeriesDto));

                         });*/


                    for(List<IotTimeSeriesItem> subIotTimeSeriesItems:iotTimeSeriesItemsGroup ){
                        for(IotTimeSeriesItem iotTimeSeriesItem:subIotTimeSeriesItems){
                            instant=iotTimeSeriesItem.getInstant();
                            if(!aspectLastMap.containsKey(aspectName)){
                                aspectLastMap.put(aspectName,instant);
                            }
                            if(instant.isBefore(aspectLastMap.get(aspectName))){
                                log.error("aspectName:{} iotTimeSeriesItem �쳣 :{}��һ��ʱ���Ϊ��{}",aspectName,gson.toJson(iotTimeSeriesItem),aspectLastMap.get(aspectName));
                            }
                            aspectLastMap.put(aspectName,instant);
                        }

                        TimeSeriesDto timeSeriesDto = TimeSeriesDto.builder()
                                .assetId(dataAssetEntity.getAssetId())
                                .lineId(lineId)
                                .lineName(lineName)
                                .aspectName(dataAssetEntity.getAspectName())
                                .kpiUnit(kpiUnit)
                                .tenant(dataAssetEntity.getTenantId())
                                .iotTimeSeriesItems(subIotTimeSeriesItems).build();


                        rabbitTemplate.convertAndSend(RabbitConstant.EXCHANGE_DIRECT_MACB_PROVIDER,
                                RabbitConstant.ROUTINGKEY_MACB_PROVIDER_GROUP+appBean.getInstanceIndex(),
                                gson.toJson(timeSeriesDto));
                    }

                    dataAssetEntity.setLastProcessTime(oneBatchTimeSeries.getLastEndTime());
                    dataAssetRepository.saveAndFlush(dataAssetEntity);
                }
                from = oneBatchTimeSeries.getNextFrom();

            } while (oneBatchTimeSeries.hasNext());


        });


    }

    private OneBatchTimeSeries getTimeSeriesWithRetry(
            String tenant,
            String entity,
            String propertySetName,
            String select,
            String from,
            String to,
            String token,
            Integer retryTimes) {
        OneBatchTimeSeries oneBatchTimeSeries = null;

        if (retryTimes == null) {
            retryTimes = 1;
        }

        if (retryTimes == null) {
            retryTimes = 1;
        }

        do {
            try {
                oneBatchTimeSeries = iotAccessorService
                        .getOneBatchTimeSeries(entity, propertySetName, null, from, to, token);
                retryTimes = 0;
            } catch (FeignException e) {
                if (e.status() == HttpStatus.UNAUTHORIZED.value() || e.status() == HttpStatus.FORBIDDEN.value()) {
                    token = techTokenService.flushTechToken(tenant);
                }
                retryTimes--;
                log.error("get timeseries failed  from: {}, to :{}", from, to, e);
            }
        } while (retryTimes > 0);
        return oneBatchTimeSeries;
    }

    @Override
    public List<IotTimeSeriesItem> ingestTimeSeries(
            String lineId,
            String aspectName,
            String from,
            String to) {
        ProductionLineEntity lineEntity = productionLineRepository.findOne(lineId);
        String assetId = lineEntity.getAssetId();
        String tenant = lineEntity.getTenantId();
        String token = tenantRepository.findById(tenant).map(TenantEntity::getToken).orElse(null);
        return timeSeriesBroker.getAllTimeSeries(assetId, aspectName, from, to, token);

    }


}



{
    "_embedded": {
        "aspects": [
            {
                "name": "FPY_0626aaadc58f459f90297aabf3502b04",
                "holderAssetId": "898a8c4b36794262b66fa6f6f2db194c",
                "aspectTypeId": "dicsdev.FPY",
                "aspectTypeName": "FPY",
                "category": "dynamic",
                "description": "FPY",
                "variables": [
                    {
                        "name": "ChangeOver",
                        "dataType": "BOOLEAN",
                        "unit": "one",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "false"
                    },
                    {
                        "name": "Defect",
                        "dataType": "INT",
                        "unit": "one",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "0"
                    },
                    {
                        "name": "FPY",
                        "dataType": "DOUBLE",
                        "unit": "%",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "0"
                    },
                    {
                        "name": "ProductID",
                        "dataType": "STRING",
                        "unit": "one",
                        "searchable": true,
                        "length": 64,
                        "qualityCode": true,
                        "defaultValue": ""
                    },
                    {
                        "name": "Total",
                        "dataType": "INT",
                        "unit": "one",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "0"
                    }
                ]
            },
            {
                "name": "FPY_35ed8eee716a43d0b047bc2b021d6bef",
                "holderAssetId": "898a8c4b36794262b66fa6f6f2db194c",
                "aspectTypeId": "dicsdev.FPY",
                "aspectTypeName": "FPY",
                "category": "dynamic",
                "description": "FPY",
                "variables": [
                    {
                        "name": "ChangeOver",
                        "dataType": "BOOLEAN",
                        "unit": "one",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "false"
                    },
                    {
                        "name": "Defect",
                        "dataType": "INT",
                        "unit": "one",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "0"
                    },
                    {
                        "name": "FPY",
                        "dataType": "DOUBLE",
                        "unit": "%",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "0"
                    },
                    {
                        "name": "ProductID",
                        "dataType": "STRING",
                        "unit": "one",
                        "searchable": true,
                        "length": 64,
                        "qualityCode": true,
                        "defaultValue": ""
                    },
                    {
                        "name": "Total",
                        "dataType": "INT",
                        "unit": "one",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "0"
                    }
                ]
            },
            {
                "name": "FPY_efca09ec449a458ebd938380d1fea39e",
                "holderAssetId": "898a8c4b36794262b66fa6f6f2db194c",
                "aspectTypeId": "dicsdev.FPY",
                "aspectTypeName": "FPY",
                "category": "dynamic",
                "description": "FPY",
                "variables": [
                    {
                        "name": "ChangeOver",
                        "dataType": "BOOLEAN",
                        "unit": "one",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "false"
                    },
                    {
                        "name": "Defect",
                        "dataType": "INT",
                        "unit": "one",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "0"
                    },
                    {
                        "name": "FPY",
                        "dataType": "DOUBLE",
                        "unit": "%",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "0"
                    },
                    {
                        "name": "ProductID",
                        "dataType": "STRING",
                        "unit": "one",
                        "searchable": true,
                        "length": 64,
                        "qualityCode": true,
                        "defaultValue": ""
                    },
                    {
                        "name": "Total",
                        "dataType": "INT",
                        "unit": "one",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "0"
                    }
                ]
            },
            {
                "name": "FPY_fd5fac2deda747cebd2f483aaf4074a5",
                "holderAssetId": "898a8c4b36794262b66fa6f6f2db194c",
                "aspectTypeId": "dicsdev.FPY",
                "aspectTypeName": "FPY",
                "category": "dynamic",
                "description": "FPY",
                "variables": [
                    {
                        "name": "ChangeOver",
                        "dataType": "BOOLEAN",
                        "unit": "one",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "false"
                    },
                    {
                        "name": "Defect",
                        "dataType": "INT",
                        "unit": "one",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "0"
                    },
                    {
                        "name": "FPY",
                        "dataType": "DOUBLE",
                        "unit": "%",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "0"
                    },
                    {
                        "name": "ProductID",
                        "dataType": "STRING",
                        "unit": "one",
                        "searchable": true,
                        "length": 64,
                        "qualityCode": true,
                        "defaultValue": ""
                    },
                    {
                        "name": "Total",
                        "dataType": "INT",
                        "unit": "one",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "0"
                    }
                ]
            },
            {
                "name": "FPY_LINE",
                "holderAssetId": "898a8c4b36794262b66fa6f6f2db194c",
                "aspectTypeId": "dicsdev.FPY",
                "aspectTypeName": "FPY",
                "category": "dynamic",
                "description": "FPY",
                "variables": [
                    {
                        "name": "ChangeOver",
                        "dataType": "BOOLEAN",
                        "unit": "one",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "false"
                    },
                    {
                        "name": "Defect",
                        "dataType": "INT",
                        "unit": "one",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "0"
                    },
                    {
                        "name": "FPY",
                        "dataType": "DOUBLE",
                        "unit": "%",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "0"
                    },
                    {
                        "name": "ProductID",
                        "dataType": "STRING",
                        "unit": "one",
                        "searchable": true,
                        "length": 64,
                        "qualityCode": true,
                        "defaultValue": ""
                    },
                    {
                        "name": "Total",
                        "dataType": "INT",
                        "unit": "one",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "0"
                    }
                ]
            },
            {
                "name": "NGReason_LINE",
                "holderAssetId": "898a8c4b36794262b66fa6f6f2db194c",
                "aspectTypeId": "dicsdev.NGReason",
                "aspectTypeName": "NGReason",
                "category": "dynamic",
                "description": "NGReason",
                "variables": [
                    {
                        "name": "ChangeOver",
                        "dataType": "BOOLEAN",
                        "unit": "one",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "false"
                    },
                    {
                        "name": "NGReason",
                        "dataType": "STRING",
                        "unit": "one",
                        "searchable": true,
                        "length": 64,
                        "qualityCode": true,
                        "defaultValue": ""
                    },
                    {
                        "name": "ProductID",
                        "dataType": "STRING",
                        "unit": "one",
                        "searchable": true,
                        "length": 64,
                        "qualityCode": true,
                        "defaultValue": ""
                    }
                ]
            },
            {
                "name": "Output_0626aaadc58f459f90297aabf3502b04",
                "holderAssetId": "898a8c4b36794262b66fa6f6f2db194c",
                "aspectTypeId": "dicsdev.Output",
                "aspectTypeName": "Output",
                "category": "dynamic",
                "description": "Output",
                "variables": [
                    {
                        "name": "ChangeOver",
                        "dataType": "BOOLEAN",
                        "unit": "one",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "false"
                    },
                    {
                        "name": "Output",
                        "dataType": "INT",
                        "unit": "one",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "0"
                    },
                    {
                        "name": "ProductID",
                        "dataType": "STRING",
                        "unit": "one",
                        "searchable": true,
                        "length": 64,
                        "qualityCode": true,
                        "defaultValue": ""
                    }
                ]
            },
            {
                "name": "Output_ecb768fd124c4519ad7d1fd85bc24a2b",
                "holderAssetId": "898a8c4b36794262b66fa6f6f2db194c",
                "aspectTypeId": "dicsdev.Output",
                "aspectTypeName": "Output",
                "category": "dynamic",
                "description": "Output",
                "variables": [
                    {
                        "name": "ChangeOver",
                        "dataType": "BOOLEAN",
                        "unit": "one",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "false"
                    },
                    {
                        "name": "Output",
                        "dataType": "INT",
                        "unit": "one",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "0"
                    },
                    {
                        "name": "ProductID",
                        "dataType": "STRING",
                        "unit": "one",
                        "searchable": true,
                        "length": 64,
                        "qualityCode": true,
                        "defaultValue": ""
                    }
                ]
            },
            {
                "name": "Output_LINE",
                "holderAssetId": "898a8c4b36794262b66fa6f6f2db194c",
                "aspectTypeId": "dicsdev.Output",
                "aspectTypeName": "Output",
                "category": "dynamic",
                "description": "Output",
                "variables": [
                    {
                        "name": "ChangeOver",
                        "dataType": "BOOLEAN",
                        "unit": "one",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "false"
                    },
                    {
                        "name": "Output",
                        "dataType": "INT",
                        "unit": "one",
                        "searchable": true,
                        "length": null,
                        "qualityCode": true,
                        "defaultValue": "0"
                    },
                    {
                        "name": "ProductID",
                        "dataType": "STRING",
                        "unit": "one",
                        "searchable": true,
                        "length": 64,
                        "qualityCode": true,
                        "defaultValue": ""
                    }
                ]
            },
            {
                "name": "Status_0626aaadc58f459f90297aabf3502b04",
                "holderAssetId": "898a8c4b36794262b66fa6f6f2db194c",
                "aspectTypeId": "dicsdev.Status",
                "aspectTypeName": "Status",
                "category": "dynamic",
                "description": "Status",
                "variables": [
                    {
                        "name": "Status",
                        "dataType": "STRING",
                        "unit": "one",
                        "searchable": true,
                        "length": 64,
                        "qualityCode": true,
                        "defaultValue": ""
                    }
                ]
            }
        ]
    },
    "_links": {
        "first": {
            "href": "https://gateway.cn1.mindsphere-in.cn/api/assetmanagement/v3/assets/898a8c4b36794262b66fa6f6f2db194c/aspects?page=0&size=10&sort=name,asc"
        },
        "self": {
            "href": "https://gateway.cn1.mindsphere-in.cn/api/assetmanagement/v3/assets/898a8c4b36794262b66fa6f6f2db194c/aspects?page=0&size=10&sort=name,asc"
        },
        "next": {
            "href": "https://gateway.cn1.mindsphere-in.cn/api/assetmanagement/v3/assets/898a8c4b36794262b66fa6f6f2db194c/aspects?page=1&size=10&sort=name,asc"
        },
        "last": {
            "href": "https://gateway.cn1.mindsphere-in.cn/api/assetmanagement/v3/assets/898a8c4b36794262b66fa6f6f2db194c/aspects?page=4&size=10&sort=name,asc"
        }
    },
    "page": {
        "size": 10,
        "totalElements": 41,
        "totalPages": 5,
        "number": 0
    }
}
	
	
	
	
	Exception in thread "consumer_async_event_handler-thread-19" java.lang.Error: org.springframework.amqp.AmqpIOException: java.net.SocketException: Connection reset by peer: socket write error
	at com.siemens.csde.macb.common.reactor.event.service.SingleEventWork.run(SingleEventWork.java:32)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
	at java.lang.Thread.run(Thread.java:748)
Caused by: org.springframework.amqp.AmqpIOException: java.net.SocketException: Connection reset by peer: socket write error
	at org.springframework.amqp.rabbit.support.RabbitExceptionTranslator.convertRabbitAccessException(RabbitExceptionTranslator.java:71)
	at org.springframework.amqp.rabbit.connection.RabbitAccessor.convertRabbitAccessException(RabbitAccessor.java:113)
	at org.springframework.amqp.rabbit.core.RabbitTemplate.doExecute(RabbitTemplate.java:1461)
	at org.springframework.amqp.rabbit.core.RabbitTemplate.execute(RabbitTemplate.java:1411)
	at org.springframework.amqp.rabbit.core.RabbitTemplate.send(RabbitTemplate.java:712)
	at org.springframework.amqp.rabbit.core.RabbitTemplate.convertAndSend(RabbitTemplate.java:780)
	at org.springframework.amqp.rabbit.core.RabbitTemplate.convertAndSend(RabbitTemplate.java:776)
	at com.siemens.csde.macb.consumer.config.rabbitmq.ConcurrentRabbitTemplate.convertAndSend(ConcurrentRabbitTemplate.java:35)
	at com.siemens.csde.macb.consumer.service.line.calc.impl.FPYCalcLineServiceImpl.calculate(FPYCalcLineServiceImpl.java:61)
	at com.siemens.csde.macb.consumer.service.line.calc.impl.FPYCalcLineServiceImpl$$FastClassBySpringCGLIB$$f15727e8.invoke(<generated>)
	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:738)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)
	at org.springframework.transaction.interceptor.TransactionInterceptor$1.proceedWithInvocation(TransactionInterceptor.java:99)
	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:282)
	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:96)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)
	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:673)
	at com.siemens.csde.macb.consumer.service.line.calc.impl.FPYCalcLineServiceImpl$$EnhancerBySpringCGLIB$$9b6aec00.calculate(<generated>)
	at com.siemens.csde.macb.consumer.event.ConsumerEvent.call(ConsumerEvent.java:68)
	at com.siemens.csde.macb.common.reactor.event.impl.AbstractEventListener.fireEvent(AbstractEventListener.java:42)
	at com.siemens.csde.macb.consumer.event.ConsumerEventListener.fireEvent(ConsumerEventListener.java:23)
	at com.siemens.csde.macb.common.reactor.event.EventBus.handleSingleEvent(EventBus.java:130)
	at com.siemens.csde.macb.common.reactor.event.service.SingleEventWork.run(SingleEventWork.java:29)
	... 3 more
Caused by: java.net.SocketException: Connection reset by peer: socket write error
	at java.net.SocketOutputStream.socketWrite0(Native Method)
	at java.net.SocketOutputStream.socketWrite(SocketOutputStream.java:111)
	at java.net.SocketOutputStream.write(SocketOutputStream.java:155)
	at java.io.BufferedOutputStream.flushBuffer(BufferedOutputStream.java:82)
	at java.io.BufferedOutputStream.write(BufferedOutputStream.java:126)
	at java.io.DataOutputStream.write(DataOutputStream.java:107)
	at java.io.ByteArrayOutputStream.writeTo(ByteArrayOutputStream.java:167)
	at com.rabbitmq.client.impl.Frame.writeTo(Frame.java:189)
	at com.rabbitmq.client.impl.SocketFrameHandler.writeFrame(SocketFrameHandler.java:171)
	at com.rabbitmq.client.impl.AMQConnection.writeFrame(AMQConnection.java:542)
	at com.rabbitmq.client.impl.AMQCommand.transmit(AMQCommand.java:104)
	at com.rabbitmq.client.impl.AMQChannel.quiescingTransmit(AMQChannel.java:337)
	at com.rabbitmq.client.impl.AMQChannel.transmit(AMQChannel.java:313)
	at com.rabbitmq.client.impl.ChannelN.basicPublish(ChannelN.java:686)
	at com.rabbitmq.client.impl.ChannelN.basicPublish(ChannelN.java:668)
	at org.springframework.amqp.rabbit.support.PublisherCallbackChannelImpl.basicPublish(PublisherCallbackChannelImpl.java:221)
	at sun.reflect.GeneratedMethodAccessor161.invoke(Unknown Source)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at org.springframework.amqp.rabbit.connection.CachingConnectionFactory$CachedChannelInvocationHandler.invoke(CachingConnectionFactory.java:955)
	at com.sun.proxy.$Proxy204.basicPublish(Unknown Source)
	at org.springframework.amqp.rabbit.core.RabbitTemplate.doSend(RabbitTemplate.java:1532)
	at org.springframework.amqp.rabbit.core.RabbitTemplate$3.doInRabbit(RabbitTemplate.java:716)
	at org.springframework.amqp.rabbit.core.RabbitTemplate.doExecute(RabbitTemplate.java:1455)
	... 24 more
Exception in thread "consumer_async_event_handler-thread-23" java.lang.Error: org.springframework.amqp.AmqpIOException: java.net.SocketException: Connection reset by peer: socket write error
	at com.siemens.csde.macb.common.reactor.event.service.SingleEventWork.run(SingleEventWork.java:32)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
	at java.lang.Thread.run(Thread.java:748)
Caused by: org.springframework.amqp.AmqpIOException: java.net.SocketException: Connection reset by peer: socket write error
	at org.springframework.amqp.rabbit.support.RabbitExceptionTranslator.convertRabbitAccessException(RabbitExceptionTranslator.java:71)
	at org.springframework.amqp.rabbit.connection.RabbitAccessor.convertRabbitAccessException(RabbitAccessor.java:113)
	at org.springframework.amqp.rabbit.core.RabbitTemplate.doExecute(RabbitTemplate.java:1461)
	at org.springframework.amqp.rabbit.core.RabbitTemplate.execute(RabbitTemplate.java:1411)
	at org.springframework.amqp.rabbit.core.RabbitTemplate.send(RabbitTemplate.java:712)
	at org.springframework.amqp.rabbit.core.RabbitTemplate.convertAndSend(RabbitTemplate.java:780)
	at org.springframework.amqp.rabbit.core.RabbitTemplate.convertAndSend(RabbitTemplate.java:776)
	at com.siemens.csde.macb.consumer.config.rabbitmq.ConcurrentRabbitTemplate.convertAndSend(ConcurrentRabbitTemplate.java:35)
	at com.siemens.csde.macb.consumer.service.station.calc.impl.AbstractCalcStationServiceImpl.publishQueueMessage(AbstractCalcStationServiceImpl.java:49)
	at com.siemens.csde.macb.consumer.service.station.calc.impl.StatusCalcStationServiceImpl.calculate(StatusCalcStationServiceImpl.java:118)
	at com.siemens.csde.macb.consumer.service.station.calc.impl.StatusCalcStationServiceImpl$$FastClassBySpringCGLIB$$44c58b7b.invoke(<generated>)
	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)
	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:738)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)
	at org.springframework.transaction.interceptor.TransactionInterceptor$1.proceedWithInvocation(TransactionInterceptor.java:99)
	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:282)
	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:96)
	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)
	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:673)
	at com.siemens.csde.macb.consumer.service.station.calc.impl.StatusCalcStationServiceImpl$$EnhancerBySpringCGLIB$$929b6a99.calculate(<generated>)
	at com.siemens.csde.macb.consumer.event.ConsumerEvent.call(ConsumerEvent.java:81)
	at com.siemens.csde.macb.common.reactor.event.impl.AbstractEventListener.fireEvent(AbstractEventListener.java:42)
	at com.siemens.csde.macb.consumer.event.ConsumerEventListener.fireEvent(ConsumerEventListener.java:23)
	at com.siemens.csde.macb.common.reactor.event.EventBus.handleSingleEvent(EventBus.java:130)
	at com.siemens.csde.macb.common.reactor.event.service.SingleEventWork.run(SingleEventWork.java:29)
	... 3 more
Caused by: java.net.SocketException: Connection reset by peer: socket write error
	at java.net.SocketOutputStream.socketWrite0(Native Method)
	at java.net.SocketOutputStream.socketWrite(SocketOutputStream.java:111)
	at java.net.SocketOutputStream.write(SocketOutputStream.java:155)
	at java.io.BufferedOutputStream.flushBuffer(BufferedOutputStream.java:82)
	at java.io.BufferedOutputStream.write(BufferedOutputStream.java:126)
	at java.io.DataOutputStream.write(DataOutputStream.java:107)
	at java.io.ByteArrayOutputStream.writeTo(ByteArrayOutputStream.java:167)
	at com.rabbitmq.client.impl.Frame.writeTo(Frame.java:189)
	at com.rabbitmq.client.impl.SocketFrameHandler.writeFrame(SocketFrameHandler.java:171)
	at com.rabbitmq.client.impl.AMQConnection.writeFrame(AMQConnection.java:542)
	at com.rabbitmq.client.impl.AMQCommand.transmit(AMQCommand.java:104)
	at com.rabbitmq.client.impl.AMQChannel.quiescingTransmit(AMQChannel.java:337)
	at com.rabbitmq.client.impl.AMQChannel.transmit(AMQChannel.java:313)
	at com.rabbitmq.client.impl.ChannelN.basicPublish(ChannelN.java:686)
	at com.rabbitmq.client.impl.ChannelN.basicPublish(ChannelN.java:668)
	at org.springframework.amqp.rabbit.support.PublisherCallbackChannelImpl.basicPublish(PublisherCallbackChannelImpl.java:221)
	at sun.reflect.GeneratedMethodAccessor161.invoke(Unknown Source)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at org.springframework.amqp.rabbit.connection.CachingConnectionFactory$CachedChannelInvocationHandler.invoke(CachingConnectionFactory.java:955)
	at com.sun.proxy.$Proxy204.basicPublish(Unknown Source)
	at org.springframework.amqp.rabbit.core.RabbitTemplate.doSend(RabbitTemplate.java:1532)
	at org.springframework.amqp.rabbit.core.RabbitTemplate$3.doInRabbit(RabbitTemplate.java:716)
	at org.springframework.amqp.rabbit.core.RabbitTemplate.doExecute(RabbitTemplate.java:1455)
	... 25 more
	
	

2020-01-15 16:01:54.963  WARN 23728 --- [92.168.2.2:5672] c.r.c.impl.ForgivingExceptionHandler     : An unexpected connection driver error occured (Exception message: Connection reset)
Caused by: java.net.SocketException: Connection reset by peer: socket write error
	at java.net.SocketOutputStream.socketWrite0(Native Method)
	at java.net.SocketOutputStream.socketWrite(SocketOutputStream.java:111)
	at java.net.SocketOutputStream.write(SocketOutputStream.java:155)
	at java.io.BufferedOutputStream.flushBuffer(BufferedOutputStream.java:82)
	at java.io.BufferedOutputStream.write(BufferedOutputStream.java:95)
	at java.io.DataOutputStream.writeByte(DataOutputStream.java:153)
	at com.rabbitmq.client.impl.Frame.writeTo(Frame.java:185)
	at com.rabbitmq.client.impl.SocketFrameHandler.writeFrame(SocketFrameHandler.java:171)
	at com.rabbitmq.client.impl.AMQConnection.writeFrame(AMQConnection.java:542)
	at com.rabbitmq.client.impl.AMQCommand.transmit(AMQCommand.java:104)
	at com.rabbitmq.client.impl.AMQChannel.quiescingTransmit(AMQChannel.java:337)
	at com.rabbitmq.client.impl.AMQChannel.transmit(AMQChannel.java:313)
	at com.rabbitmq.client.impl.ChannelN.basicPublish(ChannelN.java:686)
	at com.rabbitmq.client.impl.ChannelN.basicPublish(ChannelN.java:668)
	at org.springframework.amqp.rabbit.support.PublisherCallbackChannelImpl.basicPublish(PublisherCallbackChannelImpl.java:221)
	at sun.reflect.GeneratedMethodAccessor156.invoke(Unknown Source)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at org.springframework.amqp.rabbit.connection.CachingConnectionFactory$CachedChannelInvocationHandler.invoke(CachingConnectionFactory.java:955)
	at com.sun.proxy.$Proxy204.basicPublish(Unknown Source)
	at org.springframework.amqp.rabbit.core.RabbitTemplate.doSend(RabbitTemplate.java:1532)
	at org.springframework.amqp.rabbit.core.RabbitTemplate$3.doInRabbit(RabbitTemplate.java:716)
	at org.springframework.amqp.rabbit.core.RabbitTemplate.doExecute(RabbitTemplate.java:1455)
	... 35 more
<video controls="" controlslist="nodownload" class="video-player" ref="video" playsinline="" webkit-playsinline="true" x-webkit-airplay="allow" preload="none" oncontextmenu="return false;" src="https://dy-frontend.video.ums.uc.cn/video/wemedia/52738ea9e37f4f04b20f3cf28e8e5aec/897fa99bcbee8f15556e3cc8dcdb9345-2278106087-2-0-3.mp4?auth_key=1580968979-7ea205c86e7547dea7ae88329ee9a49a-0-22fc29f8ca872446adba35ec7237a97f" poster="http://image.uc.cn/s/wemedia/s/upload/2019/46af612659470c510bef5989e990d3b1.jpg"></video>


private void updateRanges(String variableId,List<Range> ranges){

        Calendar calendar=Calendar.getInstance();
        CfgKpiVariableRangeEntity cfgKpiVariableRangeEntity=Optional.of(cfgKpiVariableRangeRepository.findByVariableIdAndStatus(variableId,DBConstant.DB_STATUS_VALID)).orElseGet(Collections::emptyList).stream().findAny().orElse(null);

        if(CollectionUtils.isEmpty(ranges)){
             if(cfgKpiVariableRangeEntity!= null){
                 cfgKpiVariableRangeEntity.setUpdateTime(calendar.getTime());
                 cfgKpiVariableRangeEntity.setStatus(DBConstant.DB_STATUS_INVALID);
                 cfgKpiVariableRangeRepository.save(cfgKpiVariableRangeEntity);
                 return;
             }
        }
        if(cfgKpiVariableRangeEntity!= null){
            cfgKpiVariableRangeEntity.setType(ranges.get(0).getType());
            cfgKpiVariableRangeEntity.setValue(ranges.get(0).getValue());

        }else {
            cfgKpiVariableRangeEntity = new CfgKpiVariableRangeEntity();
            cfgKpiVariableRangeEntity.setId(UUIDUtil.getUUID());
            cfgKpiVariableRangeEntity.setType(ranges.get(0).getType());
            cfgKpiVariableRangeEntity.setValue(ranges.get(0).getValue());
            cfgKpiVariableRangeEntity.setVariableId(variableId);
            cfgKpiVariableRangeEntity.setStatus(DBConstant.DB_STATUS_VALID);
            cfgKpiVariableRangeEntity.setCreateTime(calendar.getTime());
        }
        cfgKpiVariableRangeRepository.save(cfgKpiVariableRangeEntity); 
    }
	
	
	{
    "version": "2018-08-24 15:14:27",
    "basic": {
        "productionLineName": "App@3RW51_Test",
        "description": "",
        "productionLineId": "3b1c0a00a76c11e8b7856f1df029bd20",
        "assetId": "2c9083b063007b44016426d2a8c0001e"
    },
    "workSpaceModel": {
        "class": "go.GraphLinksModel",
        "nodeDataArray": [
            {
                "disText": "���ϻ�����",
                "isGroup": true,
                "category": "OfGroups",
                "containing": [],
                "key": "6a4c29e1269b44e09d2bc72488d875ee",
                "loc": "-872.1228536018236 343.7474619499338"
            },
            {
                "disText": "�˹���λ",
                "isGroup": true,
                "category": "OfGroups",
                "containing": [],
                "key": "06bcf5c4f63e45a1a50bd96386f6ad42",
                "loc": "-690.116597498308 317.7662150016911"
            },
            {
                "disText": "�Զ�����λ",
                "isGroup": true,
                "category": "OfGroups",
                "containing": [],
                "key": "1c3681f1d3434d828f33a0b498919acd",
                "loc": "-452.1228536018235 352.7474619499338"
            },
            {
                "disText": "���ʹ�",
                "isGroup": true,
                "category": "OfGroups",
                "containing": [],
                "key": "e69a2b494a574ff395bf19ad3dc6624b",
                "loc": "-249.12285360182358 355.7474619499338"
            },
            {
                "isGroup": true,
                "category": "coMsgGroups",
                "containing": [],
                "key": "15f89c6dde9b4a76b0fb0ee54ed9ee54",
                "loc": "-912 106.82411906165396"
            },
            {
                "isGroup": true,
                "category": "lineMtGroup",
                "containing": [],
                "key": "090828f714d34aeeb8fe56bd25ddb1d8",
                "loc": "-681.3614298526696 80.57158101158821"
            },
            {
                "text": "productID",
                "isGroup": true,
                "category": "InputGroups",
                "containing": [],
                "key": "-8",
                "group": "090828f714d34aeeb8fe56bd25ddb1d8",
                "loc": "-672.6000061035156 114.57499694824219"
            },
            {
                "isGroup": true,
                "category": "lineMtGroup",
                "containing": [],
                "key": "81a2c4229e8f421b8912d83201f0ca76",
                "loc": "-531.0000000000001 37.824119061653946"
            },
            {
                "text": "fpy_BadItem",
                "isGroup": true,
                "category": "NgInputGroups",
                "containing": [],
                "key": "-10",
                "group": "81a2c4229e8f421b8912d83201f0ca76",
                "loc": "-522.2385762508461 71.82753499830793"
            },
            {
                "text": "fpy_TotalItem",
                "isGroup": true,
                "category": "InputGroups",
                "containing": [],
                "key": "-11",
                "group": "81a2c4229e8f421b8912d83201f0ca76",
                "loc": "-522.2385762508461 146.82753499830793"
            },
            {
                "isGroup": true,
                "category": "lineMtGroup",
                "containing": [],
                "key": "16dcfe9af15e438a86c95540ed55a8e5",
                "loc": "-370.35517374915395 86.23857218665397"
            },
            {
                "text": "outputItem",
                "isGroup": true,
                "category": "InputGroups",
                "containing": [],
                "key": "-13",
                "group": "16dcfe9af15e438a86c95540ed55a8e5",
                "loc": "-361.59375 120.24198812330795"
            },
            {
                "isGroup": true,
                "category": "lineMtGroup",
                "containing": [],
                "key": "01ab625f177d4712bc32c934748decb4",
                "loc": "-225.35517374915398 78.23857218665397"
            },
            {
                "text": "lineStatus",
                "isGroup": true,
                "category": "InputGroups",
                "containing": [],
                "key": "-15",
                "group": "01ab625f177d4712bc32c934748decb4",
                "loc": "-216.59375 112.24198812330795"
            },
            {
                "isGroup": true,
                "category": "lineMtGroup",
                "containing": [],
                "key": "452ae14a70c74cbc843c79d07f2ae1aa",
                "loc": "-92.3614298526696 77.39570007324218"
            },
            {
                "text": "stopCode",
                "isGroup": true,
                "category": "InputGroups",
                "containing": [],
                "key": "-17",
                "group": "452ae14a70c74cbc843c79d07f2ae1aa",
                "loc": "-83.60000610351562 111.39911600989616"
            },
            {
                "isGroup": true,
                "category": "lineMtGroup",
                "containing": [],
                "key": "dfb2216267f6490893d74535d0e055d2",
                "loc": "70.64482625084602 82.23857218665397"
            },
            {
                "text": "ngReason",
                "isGroup": true,
                "category": "NgInputGroups",
                "containing": [],
                "key": "-19",
                "group": "dfb2216267f6490893d74535d0e055d2",
                "loc": "79.40625 116.24198812330795"
            },
            {
                "isGroup": true,
                "category": "MsgGroups",
                "containing": [],
                "key": "3ef8608688634221bfb342dacf035a9d",
                "group": "06bcf5c4f63e45a1a50bd96386f6ad42",
                "loc": "-681.355173749154 360.59033406334504"
            },
            {
                "text": "lineStatus",
                "isGroup": true,
                "category": "InputGroups",
                "containing": [],
                "key": "-21",
                "group": "3ef8608688634221bfb342dacf035a9d",
                "loc": "-672.59375 394.59374999999903"
            },
            {
                "text": "NG",
                "id": "b3231ef98a794da5b46205b290d80ac7",
                "category": "PlcDeviceInstance",
                "key": "b3231ef98a794da5b46205b290d80ac7",
                "group": "-10",
                "loc": "-517.2385762508461 76.82753499830793"
            },
            {
                "text": "NG",
                "id": "b3231ef98a794da5b46205b290d80ac7",
                "category": "PlcDeviceInstance",
                "key": "b3231ef98a794da5b46205b290d80ac72",
                "group": "-19",
                "loc": "84.40625 121.24198812330795"
            },
            {
                "text": "Output",
                "id": "38621be660b34a4fa473b462d398ad8c",
                "category": "PlcDeviceInstance",
                "key": "38621be660b34a4fa473b462d398ad8c",
                "group": "-11",
                "loc": "-517.2385762508461 151.82753499830793"
            },
            {
                "text": "Output",
                "id": "38621be660b34a4fa473b462d398ad8c",
                "category": "PlcDeviceInstance",
                "key": "38621be660b34a4fa473b462d398ad8c2",
                "group": "-13",
                "loc": "-356.59375 125.24198812330795"
            },
            {
                "text": "Status",
                "id": "2a7a66ea591640349b6c0ce65048aa29",
                "category": "PlcDeviceInstance",
                "key": "2a7a66ea591640349b6c0ce65048aa29",
                "group": "-21",
                "loc": "-667.59375 399.593749999999"
            },
            {
                "text": "Status",
                "id": "2a7a66ea591640349b6c0ce65048aa29",
                "category": "PlcDeviceInstance",
                "key": "2a7a66ea591640349b6c0ce65048aa292",
                "group": "-15",
                "loc": "-211.59375 117.24198812330795"
            },
            {
                "isGroup": true,
                "category": "MsgGroups",
                "containing": [],
                "key": "5446cf850cd54722998a88c4a18ab99d",
                "group": "6a4c29e1269b44e09d2bc72488d875ee",
                "loc": "-863.3614298526696 386.57158101158774"
            },
            {
                "text": "lineStatus",
                "isGroup": true,
                "category": "InputGroups",
                "containing": [],
                "key": "-31",
                "group": "5446cf850cd54722998a88c4a18ab99d",
                "loc": "-854.6000061035156 420.57499694824173"
            },
            {
                "isGroup": true,
                "category": "MsgGroups",
                "containing": [],
                "key": "2f90c02537f341eb9feb766e951471c0",
                "group": "1c3681f1d3434d828f33a0b498919acd",
                "loc": "-443.3614298526696 395.57158101158774"
            },
            {
                "text": "lineStatus",
                "isGroup": true,
                "category": "InputGroups",
                "containing": [],
                "key": "-33",
                "group": "2f90c02537f341eb9feb766e951471c0",
                "loc": "-434.6000061035156 429.57499694824173"
            },
            {
                "isGroup": true,
                "category": "MsgGroups",
                "containing": [],
                "key": "2eb24c76eb6f4a9d91ccf1cb05eda0b2",
                "group": "e69a2b494a574ff395bf19ad3dc6624b",
                "loc": "-240.3614298526696 398.57158101158774"
            },
            {
                "text": "lineStatus",
                "isGroup": true,
                "category": "InputGroups",
                "containing": [],
                "key": "-35",
                "group": "2eb24c76eb6f4a9d91ccf1cb05eda0b2",
                "loc": "-231.60000610351562 432.57499694824173"
            },
            {
                "text": "Status",
                "id": "2a7a66ea591640349b6c0ce65048aa29",
                "category": "PlcDeviceInstance",
                "key": "2a7a66ea591640349b6c0ce65048aa293",
                "group": "-31",
                "loc": "-849.6000061035156 425.5749969482417"
            },
            {
                "text": "Status",
                "id": "2a7a66ea591640349b6c0ce65048aa29",
                "category": "PlcDeviceInstance",
                "key": "2a7a66ea591640349b6c0ce65048aa294",
                "group": "-33",
                "loc": "-429.6000061035156 434.5749969482417"
            },
            {
                "text": "Status",
                "id": "2a7a66ea591640349b6c0ce65048aa29",
                "category": "PlcDeviceInstance",
                "key": "2a7a66ea591640349b6c0ce65048aa295",
                "group": "-35",
                "loc": "-226.60000610351562 437.5749969482417"
            },
            {
                "text": "Stopcode",
                "id": "7dc1c7cbe0a140ebbd53ea6fd7f47823",
                "category": "PlcDeviceInstance",
                "key": "7dc1c7cbe0a140ebbd53ea6fd7f47823",
                "group": "-17",
                "loc": "-78.60000610351562 116.39911600989616"
            },
            {
                "text": "SC",
                "id": "fe9accd6fdc14194b465185983dc6e2e",
                "category": "ScannerInstance",
                "key": "fe9accd6fdc14194b465185983dc6e2e",
                "group": "-8",
                "loc": "-667.6000061035156 119.57499694824219"
            }
        ],
        "linkDataArray": [
            {
                "from": "6a4c29e1269b44e09d2bc72488d875ee",
                "to": "06bcf5c4f63e45a1a50bd96386f6ad42"
            },
            {
                "from": "06bcf5c4f63e45a1a50bd96386f6ad42",
                "to": "1c3681f1d3434d828f33a0b498919acd"
            },
            {
                "from": "1c3681f1d3434d828f33a0b498919acd",
                "to": "e69a2b494a574ff395bf19ad3dc6624b"
            }
        ]
    },
    "messageTypes": [
        {
            "name": "StopCode",
            "displayName": "StopCode",
            "description": "description",
            "station": "LINE",
            "options": {}
        },
        {
            "name": "Output",
            "displayName": "Output",
            "description": "Station",
            "station": "6a4c29e1269b44e09d2bc72488d875ee",
            "options": {}
        },
        {
            "name": "FPY",
            "displayName": "FPY",
            "description": "description",
            "station": "LINE",
            "options": {}
        },
        {
            "name": "Status",
            "displayName": "Status",
            "description": "Station",
            "station": "6a4c29e1269b44e09d2bc72488d875ee",
            "options": {}
        },
        {
            "name": "FPY",
            "displayName": "FPY",
            "description": "Station",
            "station": "6a4c29e1269b44e09d2bc72488d875ee",
            "options": {}
        },
        {
            "name": "Output",
            "displayName": "Output",
            "description": "description",
            "station": "LINE",
            "options": {}
        },
        {
            "name": "Status",
            "displayName": "Status",
            "description": "description",
            "station": "LINE",
            "options": {}
        },
        {
            "name": "Output",
            "displayName": "Output",
            "description": "Station",
            "station": "06bcf5c4f63e45a1a50bd96386f6ad42",
            "options": {}
        },
        {
            "name": "FPY",
            "displayName": "FPY",
            "description": "Station",
            "station": "e69a2b494a574ff395bf19ad3dc6624b",
            "options": {}
        },
        {
            "name": "Status",
            "displayName": "Status",
            "description": "Station",
            "station": "1c3681f1d3434d828f33a0b498919acd",
            "options": {}
        },
        {
            "name": "StopCode",
            "displayName": "StopCode",
            "description": "Station",
            "station": "1c3681f1d3434d828f33a0b498919acd",
            "options": {}
        },
        {
            "name": "WIP",
            "displayName": "WIP",
            "description": "Station",
            "station": "6a4c29e1269b44e09d2bc72488d875ee",
            "options": {}
        }
    ]
}



AC-NA-Z0040M9S-Sprint7-AnalyzeMerge01

AC-NA-Z0040M9S-Sprint7-StationOptionItem


20

 {
    "timestamp": "2020-04-16T09:14:33.100Z",
    "message": "success",
    "code": 1,
    "_embedded": [
        {
            "stationId": "06bcf5c4f63e45a1a50bd96386f6ad42",
            "stationName": "�˹���λ"
        },
        {
            "stationId": "e69a2b494a574ff395bf19ad3dc6624b",
            "stationName": "���ʹ�"
        },
        {
            "stationId": "6a4c29e1269b44e09d2bc72488d875ee",
            "stationName": "���ϻ�����"
        },
        {
            "stationId": "1c3681f1d3434d828f33a0b498919acd",
            "stationName": "�Զ�����λ"
        }
    ]
}
		
		21

 {
    "timestamp": "2020-04-16T09:14:10.074Z",
    "message": "success",
    "code": 1,
    "_embedded": [
        {
            "stationId": "123346",
            "stationName": "AutoWorkplace"
        },
        {
            "stationId": "123345",
            "stationName": "ManualWorkplace"
        },
        {
            "stationId": "123344",
            "stationName": "Material Buffer"
        }
    ]
}

rabbitmq:3.7.3-management
postgres:9.4
redis:4.0 
docker.elastic.co/logstash/logstash:6.5.4
docker.elastic.co/kibana/kibana:6.5.4
docker.elastic.co/elasticsearch/elasticsearch:6.5.4

2020.08.03-2020.08.07
���ܹ�������ܽ�ͷ�˼
1���������ģ����ء��ɼ�ģ�顢�ɼ���λ���豸�����ӿڿ��� 100%��
2��ҵ�����ģ����ء��ɼ�ģ�顢�ɼ���λ���豸�����ӿڿ��� 100%��
3���������ģ����ء��ɼ�ģ�飩���ǰ������ 100%��
4��ҵ�����Ŀ����ӿڵ��Բ⹤�� 20%

���ܹ�������
1������ҵ�����Ŀ����ӿڵ��Բ⹤�� ��
2����������Ŀ��������ں�����أ���
3�����ǰ�˽��������ӿڣ�


] [subscribe] iot-dev.yaml+DEFAULT_GROUP
18:58:42.022 [main] INFO  c.a.n.client.config.impl.CacheData - [fixed-10.0.0.133_8848] [add-listener] ok, tenant=, dataId=iot-dev.yaml, group=DEFAULT_GROUP, cnt=1
18:58:42.022 [main] INFO  c.a.n.c.config.impl.ClientWorker - [fixed-10.0.0.133_8848] [subscribe] iot.yaml+DEFAULT_GROUP
18:58:42.022 [main] INFO  c.a.n.client.config.impl.CacheData - [fixed-10.0.0.133_8848] [add-listener] ok, tenant=, dataId=iot.yaml, 



spring.profiles.active=dev

10.0.0.133:8848

--spring.profiles.active=prod 


{
  "code": 200,
  "success": true,
  "data": {
    "accessToken": "eyJ0eXAiOiJKc29uV2ViVG9rZW4iLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJpc3N1c2VyIiwiYXVkIjoiYXVkaWVuY2UiLCJ0ZW5hbnRfaWQiOiIiLCJyb2xlX25hbWUiOiIiLCJkZXB0X3BhdGgiOiItMSIsInVzZXJfaWQiOiIxIiwicm9sZV9pZCI6IjIiLCJncm91cF9pZCI6Ii0xIiwidXNlcl9uYW1lIjoiYWRtaW4iLCJkYXRhX2dyb3VwX2lkIjoiMyIsInRva2VuX3R5cGUiOiJhY2Nlc3NfdG9rZW4iLCJkZXB0X2lkIjoiLTEiLCJhY2NvdW50IjoiYWRtaW4iLCJjbGllbnRfaWQiOiJzYWJlciIsImV4cCI6MTU5NjA3OTk2OCwibmJmIjoxNTk1OTkzNTY4fQ._TTzSwD0tjAHsG8V0pcF2kDBlDADEyfMWumkbwkP44o",
    "tokenType": "bearer",
    "refreshToken": "eyJ0eXAiOiJKc29uV2ViVG9rZW4iLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJpc3N1c2VyIiwiYXVkIjoiYXVkaWVuY2UiLCJ1c2VyX2lkIjoiMSIsInRva2VuX3R5cGUiOiJyZWZyZXNoX3Rva2VuIiwiY2xpZW50X2lkIjoic2FiZXIiLCJleHAiOjE1OTY1OTgzNjgsIm5iZiI6MTU5NTk5MzU2OH0.z_Hv01j86tvFh6lDJGWVIr4p9TS1b-TWhNsscjlSRAM",
    "avatar": "https://gw.alipayobjects.com/zos/rmsportal/BiazfanxmamNRoxxVxka.png",
    "authority": "",
    "userName": "admin",
    "account": "admin",
    "expiresIn": 86400,
    "license": "powered by blade"
  },
  "msg": "�����ɹ�"
}

��������ģ�壺
{
	"brandId": 7,
	"code": "xxl",
	"communications": "WIFI,4G,NB-IOT",
	"modelId": 8
}

�޸�����ģ��
{
	"brandId": 9,
	"code": "TG001",
	"communications": "WIFI,4G,NB-IOT",
	"id": 1,
	"modelId": 10
}


�������ض˿�ģ�壺
{
	"baudRate":9600,
	"checkBit": "8N1",
	"gatewayTemplateId": 1,
	"name": "COM1",
	"portAddr": "WG-QT",
	"portProtocol": "RS485",
	"portType": 0
}
�޸�����ģ�壺
{ 
	"baudRate":9600,
	"checkBit": "8N1",
	"gatewayTemplateId": 1,
	"name": "COM1",
	"portAddr": "com1",
	"portProtocol": "RS485",
	"portType": 1
}

�����豸��ģ��
{
	"name": "��緿"
	
}

�����豸��ģ��Ĳ���

{
	"paramGroupName": "��������",
	"paramId": 3,
	"spaceTemplateId": 1
}

�����ɼ�ģ��ģ��
{
	"acquisitionPeriod": 30,
	"acquisitionProtocol": "RS485",
	"baudRate": 9600,
	"brandId": 11,
	"code": "tx005",
	"modelId": 12,
	"name": "�¶Ȳɼ�ģ��",
	"registerCount": 4
}

�޸Ĳɼ�ģ��ģ��
{
	"acquisitionPeriod": 20,
	"acquisitionProtocol": "RS485",
	"baudRate": 9600,
	"brandId": 11,
	"code": "tx005",
	"modelId": 12,
	"name": "�¶Ȳɼ�ģ��",
	"registerCount": 4
}

�����ɼ�ģ��ģ��ĵ�λ
{
	"dataType": 2,
	"decimalPlace": 2,
	"express": "0.1*X",
	"mileageDown": 10,
	"mileageUp": 60,
	"paramId": 6,
	"registerAddr": 0,
	"registerType": 3,
	"slaveStationAddr": 2
	
}
�޸Ĳɼ�ģ��ģ��ĵ�λ
{
	"dataType": 2,
	"decimalPlace": 2,
	"express": "0.12*X",
	"mileageDown": 10,
	"mileageUp": 60,
	"paramId": 6,
	"registerAddr": 0,
	"registerType": 3,
	"slaveStationAddr": 2
	
}


��������
{
	"brandId": "11",
	"code": "xl005",
	"communications": "WIFI,4G",
	"gatewayTemplateCode": "x009",
	"gatewayTemplateId": "1",
	"groupId": 2,
	"macAddr": "110:2123",
	"modelId": "18",
	"name": "����005",
	"projectId": 1,
	"remark": "��ʼ",
	"sn": "sn",
	"softwareVersion": "1.2.3",
	"spaceId": "1",
	"spaceIds": [3,1],
	"status": 1
}

�޸�����



�����ɼ�ģ��
{
	"acquisitionModuleTemplateCode": "ads",
	"acquisitionModuleTemplateId": "1295607770370764801",
	"acquisitionPeriod": 20,
	"acquisitionProtocol": "mqtt",
	"baudRate": 21,
	"brandId": "11",
	"gatewayId": "1296015079496400898",
	"gatewayPortId": "1296015080960212994",
	"groupId": -1,
	"installDeviceId": "2131",
	"modelId": "18",
	"name": "��ʪ�Ȳɼ�ģ��",
	"projectId": 3223,
	"registerCount": 3,
	"remark": "��ע",
	"sn": "testsn",
	"spaceId": "2132",
	"status": 1
}


���ر��=10+9λ������
�ɼ�ģ��=20+10λ������
�ɼ���λ=21+11λ������


SecureRegistry
http://10.0.0.201/tech/spc-web.git

name":"����Ƭ��","code":"SXPQ","status":1,"orgType":2,"path":"-1,2,7,479,1524,3244,","projectVO":null,"configurationVO":null,"children":[{"id":6043,"relatedId":6043,"parentId":3244,"name":"�����ˣ������³�","code":"SYYGXC","status":1,"orgType":3,"path":"-1,2,7,479,1524,3244,6043,","projectVO":null,"configurationVO":null},{"id":6083,"relatedId":6083,"parentId":3244,"name":"�����ˣ�¹����Է","code":"SZLMHY","status":1,"orgType":3,"path":"-1,2,7,479,1524,3244,6083,","projectVO":null,"configurationVO":null},{"id":6486,"relatedId":6486,"parentId":3244,"name":"�����ˣ�������ɽ����","code":"SYLSWF","status":1,"orgType":3,"path":"-1,2,7,479,1524,3244,6486,","projectVO":null,"configurationVO":null},{"id":6521,"relatedId":6521,"parentId":3244,"name":"�����ˣ�ѧ���³ǣ�δ������","code":"SXXFXC","status":1,"orgType":3,"path":"-1,2,7,479,1524,3244,6521,","projectVO":null,"configurationVO":null},{"id":7127,"relatedId":7127,"parentId":3244,"name":"�����ˣ�����������԰","code":"SYWLTXNY","status":1,"orgType":3,"path":"-1,2,7,479,1524,3244,7127,","projectVO":null,"configurationVO":null},{"id":7149,"relatedId":7149,"parentId":3244,"name":"�����ˣ����á���ɫ��԰","code":"SYYXJSJY","status":1,"orgType":3,"path":"-1,2,7,479,1524,3244,7149,","projectVO":null,"configurationVO":null},{"id":7378,"relatedId":7378,"parentId":3244,"name":"�����ˣ����á��������","code":"SYYXZYJR","status":1,"orgType":3,"path":"-1,2,7,479,1524,3244,7378,","projectVO":null,"configurationVO":null},{"id":7396,"relatedId":7396,"parentId":3244,"name":"�����ˣ���ͨ��Է","code":"SYDTJY","status":1,"orgType":3,"path":"-1,2,7,479,1524,3244,7396,","projectVO":null,"configurationVO":null},{"id":8025,"relatedId":8025,"parentId":3244,"name":"�����ˣ��ǳ��׸�","code":"SYXCSF","status":1,"orgType":3,"path":"-1,2,7,479,1524,3244,8025,","projectVO":null,"configurationVO":null},{"id":8085,"relatedId":8085,"parentId":3244,"name":"�����ˣ�����ɽׯ","code":"SXJHSZ","status":1,"orgType":3,"path":"-1,2,7,479,1524,3244,8085,","projectVO":null,"configurationVO":null},{"id":8090,"relatedId":8090,"parentId":3244,"name":"�����ˣ�ʱ�����������","code":"SYSDXGLL","status":1,"orgType":3,"path":"-1,2,7,479,1524,3244,8090,","projectVO":null,"configurationVO":null},{"id":8215,"relatedId":8215,"parentId":3244,"name":"�����ˣ������","code":"SXJHW","status":1,"orgType":3,"path":"-1,2,7,479,1524,3244,8215,","projectVO":null,"configurationVO":null},{"id":8641,"relatedId":8641,"parentId":3244,"name":"�����ˣ������ͥ","code":"SXRHMT","status":1,"orgType":3,"path":"-1,2,7,479,1524,3244,8641,","projectVO":null,"configurationVO":null},{"id":9068,"relatedId":9068,"parentId":3244,"name":"�����ˣ���������������С��","code":"SZMLYGXQ","status":1,"orgType":3,"path":"-1,2,7,479,1524,3244,9068,","projectVO":null,"configurationVO":null},{"id":9335,"relatedId":9335,"parentId":3244,"name":"�����ˣ�˫�͡�����ɽׯ","code":"SXSHLMSZ","status":1,"orgType":3,"path":"-1,2,7,479,1524,3244,9335,","projectVO":null,"configurationVO":null},{"id":9705,"relatedId":9705,"parentId":3244,"name":"�����ˣ��϶���԰","code":"SYNDHY","status":1,"orgType":3,"path":"-1,2,7,479,1524,3244,9705,","projectVO":null,"configurationVO":null},{"id":10665,"relatedId":10665,"parentId":3244,"name":"�����ˣ�˴�ͭZ԰","code":"SXSHJY","status":1,"orgType":3,"path":"-1,2,7,479,1524,3244,10665,","projectVO":null,"configurationVO":null},{"id":11475,"relatedId":11475,"parentId":3244,"name":"����Ƭ���쵼","code":"SXPQLD","status":1,"orgType":3,"path":"-1,2,7,479,1524,3244,11475,","projectVO":null,"configurationVO":null},{"id":12450,"relatedId":12450,"parentId":3244,"name":"�����ˣ����á��������","code":"SYYXYGJR","status":1,"orgType":3,"path":"-1,2,7,479,1524,3244,12450,","projectVO":null,"configurationVO":null},{"id":12516,"relatedId":12516,"parentId":3244,"name":"�����ˣ���Ԫ���Ļ�԰","code":"SYZYXBHY","status":1,"orgType":3,"path":"-1,2,7,479,1524,3244,12516,","projectVO":null,"configurationVO":null},{"id":12552,"relatedId":12552,"parentId":3244,"name":"�����ˣ����á����Է","code":"SYYXFHY","status":1,"orgType":3,"path":"-1,2,7,479,1524,3244,12552,","projectVO":null,"configurationVO":null},{"id":12916,"relatedId":12916,"parentId":3244,"name":"�����ˣ�����ʥ��������ͥ","code":"SZSDDFHT","status":1,"orgType":3,"path":"-1,2,7,479,1524,3244,12916,","projectVO":null,"configurationVO":null},{"id":13158,"relatedId":13158,"parentId":3244,"name":"�����ˣ����չ㳡","code":"HPGC","status":1,"orgType":3,"path":"-1,2,7,479,1524,3244,13158,","projectVO":null,"configurationVO":null},{"id":13267,"relatedId":13267,"parentId":3244,"name":"�����ˣ�������","code":"SYYHW","status":1,"orgType":3,"path":"-1,2,7,479,1524,3244,13267,","projectVO":null,"configurationVO":null},{"id":13822,"relatedId":13822,"parentId":3244,"name":"�����ˣ���Դ��","code":"SYSYF","status":1,"orgType":3,"path":"-1,2,7,479,1524,3244,13822,","projectVO":null,"configurationVO":null},{"id":13865,"relatedId":13865,"parentId":3244,"name":"�����ˣ���ͨ����������","code":"SYDTDFMD","status":1,"orgType":3,"path":"-1,2,7,479,1524,3244,13865,","projectVO":null,"configurationVO":null}]},

start
15:27:49.549 [http-nio-8200-exec-6] DEBUG c.j.e.s.p.moquette.broker.PostOffice - Sending PUBLISH message to active subscriber CId: X1XXXL2007060016, topicFilter: /PULL/X1XXXL2007060016/DPUC/config, qos: AT_MOST_ONCE
15:27:49.549 [http-nio-8200-exec-6] DEBUG c.j.e.s.p.m.broker.MQTTConnection - Sending PUBLISH(AT_MOST_ONCE) message. MessageId=0, CId=X1XXXL2007060016, topic=/PULL/X1XXXL2007060016/DPUC/config
15:27:49.549 [http-nio-8200-exec-6] DEBUG c.j.e.s.p.m.broker.MQTTConnection - OUT PUBLISH on channel [id: 0x5828a7fd, L:/10.1.202.204:61613 - R:/10.1.175.42:46544]
15:27:49.549 [http-nio-8200-exec-6] INFO  c.j.e.s.p.m.broker.MQPublishHandler - end


start
15:32:12.603 [http-nio-8200-exec-1] DEBUG c.j.e.s.p.moquette.broker.PostOffice - Sending PUBLISH message to active subscriber CId: X1XXXL2007060016, topicFilter: /PULL/X1XXXL2007060016/DPUC/config, qos: AT_MOST_ONCE
15:32:12.605 [http-nio-8200-exec-1] DEBUG c.j.e.s.p.m.broker.MQTTConnection - Sending PUBLISH(AT_MOST_ONCE) message. MessageId=0, CId=X1XXXL2007060016, topic=/PULL/X1XXXL2007060016/DPUC/config
15:32:12.605 [http-nio-8200-exec-1] DEBUG c.j.e.s.p.m.broker.MQTTConnection - OUT PUBLISH on channel [id: 0xe69a255f, L:/10.1.202.204:61613 - R:/10.1.175.42:46554]
15:32:12.607 [http-nio-8200-exec-1] INFO  c.j.e.s.p.m.broker.MQPublishHandler - end

{
                "clientId": "publisher12",
                "messageBody": "{\"description\":\"the format for customer\",\"interface\":{\"RS485\":{\"description\":\"modbudRTU collect interface\",\"param\":{\"options\":\"9600,8N1\"},\"model\":\"COM2\",\"dev\":{\"10000000001\":{\"description\":\"WSDCGQ\",\"collect\":\"enable\",\"protocol\":\"modbusRTU\",\"daddress\":\"2\",\"cycle\":5,\"spacing\":300,\"timeout\":5000,\"gParam\":{\"options\":\"9600,8N1\"},\"sParam\":{\"byteorder_short\":\"AB\",\"byteorder_float\":\"ABCD\",\"byteorder_int\":\"ABCD\"},\"data\":{\"1001\":{\"description\":\"wendu\",\"type\":\"uint16\",\"rwproperty\":\"rw\",\"radix_point\":2,\"node\":{\"func\":\"3\",\"sub_addr\":\"0\",\"reg_addr\":\"1\"},\"calc\":{\"mode\":1,\"base\":0,\"mult\":0.1},\"alarm\":{\"mode\":1,\"uplimit\":200,\"lowlimit\":0,\"equal\":0},\"save\":{\"mode\":0,\"strategy\":2,\"period\":6}},\"100001021012122\":{\"description\":\"shidu\",\"type\":\"uint16\",\"rwproperty\":\"rw\",\"radix_point\":2,\"node\":{\"func\":\"3\",\"sub_addr\":\"0\",\"reg_addr\":\"0\"},\"calc\":{\"mode\":1,\"base\":0,\"mult\":0.1},\"alarm\":{\"mode\":1,\"uplimit\":200,\"lowlimit\":0,\"equal\":0},\"save\":{\"mode\":0,\"strategy\":2,\"period\":6}}}}}}},\"cloud\":{\"description\":\"customer server\",\"cProtocol\":\"mqtt\",\"host\":\"10.1.202.204\",\"port\":61613,\"username\":\"rjchang\",\"userpassword\":\"rj123\",\"client_id\":\"X1XXXL2007060016\",\"sn_id\":\"X1XXXL2007060016\",\"keepalive\":60,\"qos\":1,\"reconnect_time\":100,\"topic\":{\"pubtopic\":\"tp/test\",\"subtopic\":\"PULL\"},\"report\":{\"mode\":1,\"cycle\":2,\"payloadsize\":100}},\"msg_id\":36}",
                "retain": false,
                "topic": "/PULL/X1XXXL2007060016/DPUC/config",
                "userName": "admin"
}


com.fasterxml.jackson.core.json.UTF8StreamJsonParser


_finishAndReturnString
_loadMoreGuaranteed


_loadMore

AbstractMessageConverterMethodArgumentResolver
EmptyBodyCheckingHttpInputMessage

XssHttpServletRequestWrapper

EmptyBodyCheckingHttpInputMessage

���ش�����
1�����������·����ɹ���case
2������������澯��Ϣ�ϱ�
3�����ض��ڿ������ĸ澯�ж�




�Խ���������������
1�� �����в�ûȷ��������Ҫ�Խӵĳ������ص����ݽṹ��ȷ��
2�� �����������ݽṹ����Ҳ���ϵĵ���������������� ����3���汾�� 
3�� �����·�������ܣ�������Ӧ����Ҫ����ʱ������ ���漰���ȴ����ҵĿ�����ɺ������������ǿ������Ȳ����ܴ�ķ���
4�� ���������·�ż���Բ��ɹ�

����취��
1��ֻ�Խӷ�������Ҫ��ĳ�������-��ડ���磬������쵼��ͨ���ص�ԽӺ��
2�����ݽṹ�ĵ����� ����ƹ滮��ʱ�� ����ʱ�Ϳ��ǵ���Ҫ�ԽӶ����ͬ�ĳ��̵����أ��ڱ������������ݽṹת��Ϊͳһ��ģ�ͣ�
3���쵼���湵ͨȷ��ʱ��㣬�ںͳ��̹�ͨ���ܵ��ʱ�� Ҳ��ȷ�����ȼ���ͬʱҲ���ƶ˺ͱ�Ե�� ����Э����
4���ͳ��̵�λ���⣬ȷ���������������������޸�

�����أ��ڿ����������Ӧ�ÿ��ǵ�����ԡ�ͨ���ԡ�������ϣ����ⲿ�Խӣ���Ԥ��Щʱ�䣬���ڲ�ȷ���ԣ�����Ҫ��ʱ�ϱ������ÿ�Դ����Ŀ��ʵ�ֿ��ٿ���


���س�������ƶ˻������������� �����Ӳ��� hbase �� kafka ���������ⶨλ���� hbase ����Ϊ�˿ڵ����� ���汾���� ����Ϊ����hbase1.3
kafka ����Ϊ ��Ҫ���� ������������������ ������ 2��3��ʱ��
���� �����ܲ��ܰ� ���Ի�����ͳһ�滮�� ���ر�����kafka hbase nacos ������������








