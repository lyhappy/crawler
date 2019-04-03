#!/bin/bash

sq=1554217921618
function crawl {
    pn=$(( $1 * 50 ))
    echo $pn
    sq=$(( $sq + 1 ))
    `curl "https://sp0.baidu.com/8aQDcjqpAAV3otqbppnN2DJv/api.php?resource_id=6899&query=%E5%A4%B1%E4%BF%A1&pn=${pn}&rn=100&ie=utf-8&oe=utf-8&format=json&t=1554217941085&cb=&_=${sq}" -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:66.0) Gecko/20100101 Firefox/66.0' -H 'Accept: */*' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: https://www.baidu.com/s?ie=utf-8&f=3&rsv_bp=1&rsv_idx=1&tn=baidu&wd=%E5%A4%B1%E4%BF%A1&rsv_pq=c2bc565400095912&rsv_t=d7fbRXRVkhwrGO0ipdi8PXIDkXMDn6s4iL1NIfY1La4goKMX9UWSKNpVjy0&rqlang=cn&rsv_enter=1&rsv_sug3=6&rsv_sug1=5&rsv_sug7=100&rsv_sug2=0&prefixsug=shixin&rsp=0&inputT=2805&rsv_sug4=2806' -H 'DNT: 1' -H 'Connection: keep-alive' > temp$1.json`
}

for (( i=21; i <= 200; i++ ))
do
    crawl $i
done
