<span id="musicControl">
        <a id="mc_play" class="stop" onclick="play_music();">
            <audio id="musicfx" loop="loop" >
                <source src="http://link.hhtjim.com/163/399925764.mp3" type="audio/mpeg">
            </audio>
        </a>
 </span>
 
 <style>
    @-webkit-keyframes reverseRotataZ{
        0%{-webkit-transform: rotateZ(0deg);}
        100%{-webkit-transform: rotateZ(-360deg);}
    }
    @-webkit-keyframes rotataZ{
        0%{-webkit-transform: rotateZ(0deg);}
        100%{-webkit-transform: rotateZ(360deg);}
    }
    #musicControl { position:fixed;right:10px;top:20px;margin-top:0;display:inline-block;z-index:99999999}
    #musicControl a { display:inline-block;width:25px;height:25px;overflow:hidden;background:url('https://raw.githubusercontent.com/lzhr/pictures/gh-pages/src/mcbg.png') no-repeat;background-size:100%;}
    #musicControl a audio{width:100%;height:56px;}
    #musicControl a.stop { background-position:left bottom;}
    #musicControl a.on { background-position:0px 1px;-webkit-animation: reverseRotataZ 1.2s linear infinite;}
    #music_play_filter{width:100%;height:100%;overflow:hidden;position:fixed;top:0;left:0;z-index:99999998;}
</style>
<script type="text/javascript">
function play_music(){
        if ($('#mc_play').hasClass('on')){
            $('#mc_play audio').get(0).pause();
            $('#mc_play').attr('class','stop');
        }else{
            $('#mc_play audio').get(0).play();
            $('#mc_play').attr('class','on');
        }
        $('#music_play_filter').hide();
        event.stopPropagation(); //×èÖ¹Ã°ÅÝ 
    }
    function just_play(id){
        $('#mc_play audio').get(0).play();
        $('#mc_play').attr('class','on');
        if (typeof(id)!='undefined'){
            $('#music_play_filter').hide();
        }
        event.stopPropagation(); //×èÖ¹Ã°ÅÝ 
    } 
    function is_weixn(){
        return false;
        var ua = navigator.userAgent.toLowerCase();
        if(ua.match(/MicroMessenger/i)=="micromessenger") {
            return true;
        } else {
            return false;
        }
    }
    var play_filter=document.getElementById('music_play_filter');
    play_filter.addEventListener('click', function(){
        just_play(1);
    });
    play_filter.addEventListener('touchstart', function(){
        just_play(1);
    });
    play_filter.addEventListener('touchend', function(){
        just_play(1);
    });
    play_filter.addEventListener('touchmove', function(){
        just_play(1);
    });
    play_filter.addEventListener('mousedown', function(){
        just_play(1);
    });
    play_filter.addEventListener('mouseup', function(){
        just_play(1);
    });
    play_filter.addEventListener('mousemove',function(){
        just_play(1);
    });
    window.onload=function(){
        if (!is_weixn()){
            just_play();
        }
    } 
</script>
