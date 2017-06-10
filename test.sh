#/bin/bash
#1.生成service,item,query文件
#2.如果存在需要先删除，然后生成，因为shell中好像没有事物
#使用说明
#--service=HotSearch --method=method_name  --rest=/service/search/hot/sale --referce=com.beibei.bigdata.search.hot.service.SearchHotService --query_field=field1,field2,field3 --item_field=field1,field2,field3 
AB_PATH=/Users/lion/husor/beibei/data/trunk/vendor/beibei-platform/shared-search-api/src
SERVICE_PATH="$AB_PATH/api"
MODEL_PATH="$AB_PATH/model"
method=''
service=''

function main() {
    service=$1
    method=$2
    gen_service_file $service
}

gen_service_file() {
    if [[ -z $1 ]]; then
        throw_error 'method not allow empty'
    fi
    #如果文件存在则先删除
    if [[ -e $AB_PATH$SERVICE_PATH$service'Service.php' ]]; then
        rm -rf $AB_PATH$SERVICE_PATH$service'Service.php'
    fi

    cat >$AB_PATH$SERVICE_PATH$service'Service.php' <<eof
namesapce com\beibei\bigdata\search\api;
use com\beibei\bigdata\search\model\${method}Query;
use com\beibei\bigdata\search\model\${$mthod}Result;
/**
 * doc http://doc.husor.com/pages/viewpage.action?pageId=56395793
 *
 * Class ${service}Service
 * @package com\beibei\bigdata\search\api
 * @reference com.beibei.bigdata.search.mapping.service.BCMappingService
 * @author xiaoshi.bai
 */
class ${service}Service extends \Hsf\Service\AbstractService {
    /**
     * 仅用作IDE代码自动完成，切勿修改
     * @return self
     */
    public static function getInstance() {
        return parent::getInstance();
    }

    /**
     * 获取类目列表,用数组形式传入cid
     * @method post
     * @params ${method}Query
     * @rest $rest
     * @return com\beibei\bigdata\search\model\${method}Result
     */
    public function ${method}(${method}Query $${method}Query) {

    }
}
eof

}


get_method_name() {
    if [[ -z $1 ]]; then
        method_name=$1
    fi
}

ucfirst() {
    echo $1 |awk '{for(i=1;i<=NF;i++) {printf "%s%s ", toupper(substr($i,1,1)),substr($i,2)};}'
}
throw_error() {
    echo $1
    exit 1
}

main $@