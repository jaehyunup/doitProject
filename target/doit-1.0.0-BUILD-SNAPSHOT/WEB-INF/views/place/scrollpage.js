var page = 1;  //페이징과 같은 방식이라고 생각하면 된다. 
 
$(function(){  //페이지가 로드되면 데이터를 가져오고 page를 증가시킨다.
     getList(page);
     page++;
}); 
 
$(window).scroll(function(){   //스크롤이 최하단 으로 내려가면 리스트를 조회하고 page를 증가시킨다.
     if($(window).scrollTop() >= $(document).height() - $(window).height()){
          getList(page);
           page++;   
     } 
});
 
function getList(page){
 
    $.ajax({
        type : 'POST',  
        dataType : 'json', 
        data : {"page" : page},
        url : '주소',
        success : function(returnData) {
            var data = returnData.rows;
            var html = "";
            if (page==1){ //페이지가 1일경우에만 id가 list인 html을 비운다.
                  $("#list").html(""); 
            }
            if (returnData.startNum<=returnData.totCnt){
                if(data.length>0){
                // for문을 돌면서 행을 그린다.
                }else{
                //데이터가 없을경우
                }
            }
            html = html.replace(/%20/gi, " ");
            if (page==1){  //페이지가 1이 아닐경우 데이터를 붙힌다.
                $("#list").html(html); 
            }else{
                $("#busStopList").append(html);
            }
       },error:function(e){
           if(e.status==300){
               alert("데이터를 가져오는데 실패하였습니다.");
           };
       }
    }); 
}
