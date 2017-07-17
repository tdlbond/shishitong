$(function(){
	// 头部导航鼠标移入移出事件
	$(".navbar-collapse li").mouseover(function(){
		$(this).addClass('mover');
	}).mouseout(function(){
		$(this).removeClass('mover');
	});

	$("#newpic:first").animate({

	});

	// 入住机构鼠标移入效果
	$(".panel-img2").hover(function(){
		$(".panel-img2").find("img").hover(function(){
			$(this).css({
				"border": "4px solid orange",
				"cursor": "pointer",
				"animation": "moveImg 2s linear infinite"
			});
		},function(){
			$(this).css({
				"border": "2px solid #ccc",
				"cursor": "none",
				"animation": "moveImg none"
			});
		});
	});
	$("#showIndexNew2").hover(function(){
		$("#showIndexNew2").find("li").hover(function(){
			$(this).addClass('newover');
		},function(){
			$(this).removeClass('newover');
		})
	});
	// 入住机构显示与隐藏
	$(window).resize(function() {
		var w = document.body.clientWidth;
		if (w < "970") {
			$(".images").find("li:gt(2)").css("display", "none");
			$("#nav").css("display", "none");
			$("#navmore").css("display", "block");
		}else{
			$(".images").find("li:gt(2)").css("display", "block");
			$("#nav").css("display", "block");
			$("#navmore").css("display", "none");
		}
	});

	// 底部动画
	$(".activeLeft").mouseover(function(){
		$(".activeImg1").stop().animate({
			left: "-96%"
		}, "slow");
	}).mouseout(function(){
		$(".activeImg1").stop().animate({
			left: "0"
		}, "slow");
	});
	$(".activeTop").mouseover(function(){
		$(".activeImg2").stop().animate({
			right: "-95%"
		}, "slow");
	}).mouseout(function(){
		$(".activeImg2").stop().animate({
			right: "0"
		}, "slow");
	});
	$("#picBottom1").mouseover(function(){
		$(".activeImg3").stop().animate({
			left: "-40%"
		}, "slow");
	}).mouseout(function(){
		$(".activeImg3").stop().animate({
			left: "3%"
		}, "slow");
	});
	$("#picBottom2").mouseover(function(){
		$(".activeImg4").stop().animate({
			right: "-40%"
		}, "slow");
	}).mouseout(function(){
		$(".activeImg4").stop().animate({
			right: "3%"
		}, "slow");
	});

});

/*window.onresize = function() {
	console.log('aa');
	alert("a")
};*/