<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>Swiper 쉬운 예제 모음 : Swiper 네비게이션 (Navigation) 적용 ( &lt;, &gt; 버튼 )</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>

<div style="text-align:center; margin:0 0 100px 0; background:#555; line-height:80px;">
	<a style="color:#fff; font-weight:bold; font-family:tahoma; font-size:20pt;" href="https://ktsmemo.cafe24.com/s/SwiperJS/353" target="_blank">https://ktsmemo.cafe24.com/s/SwiperJS/353</a>
</div>


<!-- 예제 시작 -->

<!-- 이 예제에서는 필요한 js, css 를 링크걸어 사용 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>

<style type="text/css">

.swiper-container {
	width:640px;
	height:380px;
	border:5px solid silver;
	border-radius:7px;
	box-shadow:0 0 20px #ccc inset;
}
.swiper-slide {
	text-align:center;
	display:flex; /* 내용을 중앙정렬 하기위해 flex 사용 */
	align-items:center; /* 위아래 기준 중앙정렬 */
	justify-content:center; /* 좌우 기준 중앙정렬 */
}
.swiper-slide img {
	box-shadow:0 0 5px #555;
}

</style>

<!-- 클래스명은 변경하면 안 됨 -->
<div class="swiper-container">
	<div class="swiper-wrapper">
		<div class="swiper-slide"><img src="http://oldmidi.cdn3.cafe24.com/p/0243.jpg"></div>
		<div class="swiper-slide"><img src="http://oldmidi.cdn3.cafe24.com/p/0171.jpg"></div>
		<div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0583.jpg"></div>
		<div class="swiper-slide"><img src="https://ktsmemo.cafe24.com/p/0516.jpg"></div>
		<div class="swiper-slide"><img src="https://ktsmemo.cafe24.com/p/0486.jpg"></div>
		<div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0468.jpg"></div>
		<div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0436.jpg"></div>
		<div class="swiper-slide"><img src="https://ktsmemo.cafe24.com/p/0380.jpg"></div>
		<div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0683.jpg"></div>
		<div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0690.jpg"></div>
		<div class="swiper-slide"><img src="http://oldmidi.cdn3.cafe24.com/p/0047.jpg"></div>
		<div class="swiper-slide"><img src="https://ktsmemo.cafe24.com/p/0288.jpg"></div>
		<div class="swiper-slide"><img src="https://ktsmemo.cafe24.com/p/0800.jpg"></div>
		<div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0421.jpg"></div>
		<div class="swiper-slide"><img src="http://ktsmemo.cdn3.cafe24.com/p/0172.jpg"></div>
		<div class="swiper-slide" style="font-size:50pt;">- 끝 -</div>
	</div>

	<!-- 네비게이션 지정 -->
	<div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
	<div class="swiper-button-prev"></div><!-- 이전 버튼 -->
</div>
<div style="text-align:center; margin-top:5px;">랜덤사진 갤러리</div>

<script>

new Swiper('.swiper-container', {
	navigation : {
		nextEl : '.swiper-button-next', // 다음 버튼 클래스명
		prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
	},
});

</script>

<!-- 예제 종료 -->


</body>
</html>