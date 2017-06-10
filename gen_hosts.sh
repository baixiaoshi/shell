#!/bin/bash
HOST_PATH=/etc/hosts
main() {
    echo > $HOST_PATH
    case $1 in
        1 )
        gen_dev
        gen_common
        echo -e "\033[31m\n************生成本地开发环境hosts成功!***********\n\033[0m"
            ;;
        2 )
        gen_dev
        gen_common
        gen_localhost_dev
        echo -e "\033[31m\n************将app定位到host环境**************\n\033[0m"
            ;;
        3 )
        gen_dev
        gen_common
        gen_pre_release
        echo -e "\033[31m\n*************生成预发布host成功,请添加相应的cookie**************\n\033[0m"
            ;;
        * )
        usage
            ;;
    esac
}
gen_dev() {
cat<<EOT>>$HOST_PATH
#贝贝网开发环境
192.168.33.10 dev.beibei.com
192.168.33.10 d-dev.beibei.com
192.168.33.10 hx-dev.beibei.com
192.168.33.10 i-dev.beibei.com
192.168.33.10 m-dev.beibei.com
192.168.33.10 sapi-dev.beibei.com
192.168.33.10 api-dev.beibei.com
192.168.33.10 seller-dev.beibei.com
192.168.33.10 st-dev.beibei.com
192.168.33.10 t-dev.beibei.com
192.168.33.10 trade-dev.beibei.com
192.168.33.10 you-dev.beibei.com
192.168.33.10 login-dev.beibei.com
192.168.33.10 global-dev.beibei.com
192.168.33.10 daren-dev.beibei.com
192.168.33.10 api-dev.open.beibei.com
172.16.254.13 my-dev.beibei.com
172.16.254.13 login-dev.beibei.com
172.16.3.223 hmp-pre3.fi.beibei.com
EOT
}

gen_localhost_dev() {
cat<<EOT>>$HOST_PATH
#本地测试环境
192.168.33.10 d.beibei.com
192.168.33.10 www.beibei.com
192.168.33.10 hx.beibei.com
192.168.33.10 st.beibei.com
192.168.33.10 seller.beibei.com
192.168.33.10 you.beibei.com
192.168.33.10 sapi.beibei.com
192.168.33.10 dsapi.beibei.com
192.168.33.10 api.beibei.com
192.168.33.10 sentry.beibei.com
192.168.33.10 daren-dev.beibei.com
192.168.33.10 api-dev.open.beibei.com
172.16.3.223 hmp-pre3.fi.beibei.com
EOT
}

gen_pre_release() {
cat<<EOT>>$HOST_PATH
#yufa development
183.136.239.168 d.beibei.com
183.136.239.168 www.beibei.com
183.136.239.168 hx.beibei.com
183.136.239.168 st.beibei.com
183.136.239.168 seller.beibei.com
183.136.239.168 you.beibei.com
183.136.239.168 sapi.beibei.com
183.136.239.168 dsapi.beibei.com
183.136.239.168 api.beibei.com
183.136.239.168 sentry.beibei.com
183.136.239.168 daren.beibei.com
183.136.239.168 api.open.beibei.com
172.16.3.223 hmp-pre3.fi.beibei.com
EOT
}

gen_common() {
cat<<EOT>>$HOST_PATH
# common host
192.168.121.205 repos.beibei.com
183.136.239.166 es16.tool.husor.com.cn
183.136.239.166 es11.tool.husor.com.cn
127.0.0.1	www.es.cc
127.0.0.1	www.servlet.cc
172.16.173.165	localhost_es
183.136.239.166 dashboard.open-falcon.tool.husor.com.cn
#183.136.239.166 es07.tool.husor.com.cn
192.168.33.10 www.guoguovpn.cc
192.168.33.10 www.typecho.cc
183.136.239.166 elk.tool.husor.com.cn
192.168.33.10 www.test.cc
172.16.3.223 hmp-pre3.fi.beibei.com
EOT
}

usage() {
cat<<EOT
 ******************manual start*******************
 option : id

 id : 1 #生成本地开发环境的hosts
    #贝贝网开发环境
    192.168.33.10 d-dev.beibei.com
    192.168.33.10 hx-dev.beibei.com
    192.168.33.10 i-dev.beibei.com
    192.168.33.10 m-dev.beibei.com
    192.168.33.10 sapi-dev.beibei.com
    192.168.33.10 seller-dev.beibei.com
    192.168.33.10 st-dev.beibei.com
    192.168.33.10 t-dev.beibei.com
    192.168.33.10 trade-dev.beibei.com
    192.168.33.10 you-dev.beibei.com
    192.168.33.10 login-dev.beibei.com
    192.168.33.10 global-dev.beibei.com
    172.16.254.13 my-dev.beibei.com
    172.16.254.13 login-dev.beibei.com

 id : 2 #将app定位到开发环境
    #本地测试环境
    192.168.33.10 d.beibei.com
    192.168.33.10 www.beibei.com
    192.168.33.10 hx.beibei.com
    192.168.33.10 st.beibei.com
    192.168.33.10 seller.beibei.com
    192.168.33.10 you.beibei.com
    192.168.33.10 dsapi.beibei.com
    192.168.33.10 sapi.beibei.com
    192.168.33.10 api.beibei.com
    192.168.33.10 sentry.beibei.com

 id : 3 #生成预发布的hosts
    #yufa development
    183.136.239.168 d.beibei.com
    183.136.239.168 www.beibei.com
    183.136.239.168 hx.beibei.com
    183.136.239.168 st.beibei.com
    183.136.239.168 seller.beibei.com
    183.136.239.168 you.beibei.com
    183.136.239.168 dsapi.beibei.com
    183.136.239.168 sapi.beibei.com
    183.136.239.168 api.beibei.com
    183.136.239.168 sentry.beibei.com

******************manual end*******************

EOT
}
main $1
