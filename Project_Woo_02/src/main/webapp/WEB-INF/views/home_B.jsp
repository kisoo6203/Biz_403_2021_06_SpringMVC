<%@ page
	language="java"
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib
	uri="http://java.sun.com/jsp/jstl/core"
	prefix="c"%>
<c:set
	var="rootPath"
	value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 홈페이지</title>
<script>

document.addEventListener("DOMContentLoaded", ()=>{
	document.querySelector("div.log_join").addEventListener("click", (e)=> {
		let tagName = e.target.tagName;
		//alert(tagName)
		
		if(tagName === "BUTTON") {
			let menuText = e.target.textContent;
			if (menuText === "Login") {
				document.location.href="${rootPath}/login";
			} else if (menuText === "Join") {
				document.location.href="${rootPath}/join"
			}  else if (menuText === "logout") {
				document.location.href="${rootPath}/logout"
			}
		}
	})
	
	/*
	document.querySelector("li#li_log").addEventListener("click",(e)=>{
		document.location.href="${rootPath}/login"
	})
	document.querySelector("li#li_join").addEventListener("click",(e)=>{
		document.location.href="${rootPath}/join"
	})
	document.querySelector("li#li_logout").addEventListener("click",(e)=>{
		document.location.href="${rootPath}/logout"
	})
	*/
})
</script>
</head>

<link
	href="${rootPath}/static/css/home_B.css?ver=2021-07-16-004"
	rel="stylesheet" />
<body>

	<div>
		<div class="container">
			<div class="item-1">

				<div class="log_join">
					<button class="lg">Login</button>
					<button class="jo">Join</button>
				</div>
				<div class="header">
					<h1>W O O</h1>
					<h4>WEATHER & OOTD</h4>

				</div>
			</div>
			<div class="item-2">
				<div
					class="w_1">

					<c:forEach
						items="${TODAY}"
						var="TD">

						<c:choose>
							<c:when
								test="${TD.category == '하늘상태' && TD.fcstValue =='맑음' && TD.fcstTime == TIME}">
								<div>
									<img
										src="${rootPath}/static/images/맑음.png"
										width="100px">
								</div>
							</c:when>
							<c:when
								test="${TD.category == '하늘상태' && TD.fcstValue =='구름많음'&&TD.fcstTime == TIME }">
								<div>
									<img
										src="${rootPath}/static/images/구름많음.png"
										width="100px">
								</div>
							</c:when>
							<c:when
								test="${TD.category == '하늘상태' && TD.fcstValue =='흐림' &&TD.fcstTime == TIME}">
								<div>
									<img
										src="${rootPath}/static/images/흐림.png"
										width="100px">
								</div>
							</c:when>
							<c:otherwise>
							</c:otherwise>
						</c:choose>
					</c:forEach>

				</div>
				<div
					class="w_2">

					<c:forEach
						items="${TODAY}"
						var="TD">
						<c:if test="${TD.category == '아침 최저기온'}">
							${TD.fcstValue} / 
						</c:if>
						<c:if test="${TD.category == '낮 최고기온'}">
							${TD.fcstValue}
						</c:if>
					</c:forEach>

				</div>
				<div class="w_3">
					<div class="w_3_a">
						<div>기온</div>
						<div>
							<c:forEach
								items="${TODAY}"
								var="TD">
								<c:if test="${TD.fcstTime == TIME && TD.category == '3시간 기온'}">
									<div>${TD.fcstValue}</div>
								</c:if>
							</c:forEach>
						</div>
						<div>
							<img src="${rootPath}/static/images/온도계.png" />
						</div>
					</div>
					<div class="w_3_a">
						<div>습도</div>
						<div>
							<c:forEach
								items="${TODAY}"
								var="TD">
								<c:if test="${TD.fcstTime == TIME && TD.category == '3시간 기온'}">
									<div>${TD.fcstValue}</div>
								</c:if>
							</c:forEach>
						</div>
						<div>
							<img src="${rootPath}/static/images/humidity.png" />
						</div>
					</div>
					<div class="w_3_a">
						<div>강수</div>
						<div>
							<c:forEach
								items="${TODAY}"
								var="TD">
								<c:if test="${TD.fcstTime == TIME && TD.category == '강수확률'}">
									<div>${TD.fcstValue}</div>
								</c:if>
							</c:forEach>
						</div>
						<div>
							<img src="${rootPath}/static/images/강수확률.png" />
						</div>
					</div>
					<div class="w_3_a">
						<div>풍향</div>
						<c:forEach
							items="${TODAY}"
							var="TD">
							<c:if test="${TD.fcstTime == TIME && TD.category == '풍향'}">
								<div>${TD.fcstValue}</div>
								<div>
									<img src="${rootPath}/static/images/${TD.fcstValue}.png" />
								</div>
							</c:if>
						</c:forEach>
					</div>
				</div>
				<div class="w_4">
					<c:forEach
						items="${TODAY}"
						var="TD">
						<c:if test="${TD.category == '3시간 기온'}">
							<div class="w_4_a">
								<div>${TD.fcstTime}</div>
								<div>${TD.fcstValue}</div>
							</div>
						</c:if>

					</c:forEach>
				</div>




				<div class="w_5">
					<c:forEach
						items="${TOMORROW}"
						var="TM">
						<c:if test="${TM.category == '3시간 기온'}">
							<div class="w_5_a">
								<div>${TM.fcstTime}</div>
								<div>${TM.fcstValue}</div>
							</div>
						</c:if>

					</c:forEach>

				</div>


			</div>
			<div class="item-3">
				<figure class="snip1200">
					<div>
						<img
							class="clothes"
							src="${rootPath}/static/images/clothes.png"
							alt="clothes"
							style="padding-top: 3%" />
						<p style="margin: 10px; font-size: 20px">OOTD 추천을 원하시면 화면에 커서를
							올려주세요</p>
					</div>
					<figcaption class="o">
						<div class="w_data_o">
							<div class="w_data_o_text">
								OOTD 추천을 원하시면<br> 로그인을 해주세요
							</div>
						</div>
					</figcaption>
				</figure>
			</div>
		</div>
	</div>

<canvas id="sky"></canvas>


<script type="text/javascript">
// Setup ///////////////////////////////////////////////////////////
var canvas = document.getElementById('sky');
var sky = canvas.getContext('2d');

var window_width = window.innerWidth * 1.5;
var window_height = window.innerHeight * 1.5;

var fall_speed = 0.7;
var wind_speed = 5;

var rain_weight = 0.11;
var rain_color = '255,255,255';

var drop_count;
var drops = [];

// Helpers /////////////////////////////////////////////////////////
window.requestAnimFrame = (function(){
  return  window.requestAnimationFrame       ||
          window.webkitRequestAnimationFrame ||
          window.mozRequestAnimationFrame    ||
          window.msRequestAnimationFrame     ||
          window.oRequestAnimationFrame      ||
          function( callback ){
            window.setTimeout(callback, 1000 / 60);
          };
})();

function randomFrom(min, max) {
  return (Math.random() * (max - min) + min);
}

function resizer() {
  window_width = window.innerWidth * 1.5;
  window_height = window.innerHeight * 1.5;
  drop_count = window_width * rain_weight;
  
  canvas.setAttribute('width', window_width);
  canvas.setAttribute('height', window_height);
}

window.addEventListener('resize', resizer, false);

// Drawing /////////////////////////////////////////////////////////
function paintSky() {
  for (var i = 0; i < drop_count; i++) {
    drops[i] = new drop();
    drops[i].reset();
  }
  
  rain();
}

function rain() {
  sky.clearRect(0, 0, window_width, window_height);

  var drops_length = drops.length;

  for (var i = 0; i < drops_length; i++) {
    var drop = drops[i];
    drop.fall();
    drop.draw();
  }

  window.requestAnimFrame(rain);
}

function drop() {
  this.reset = function() {
    this.r = randomFrom(0.8, 1.6);
    this.l = (this.r * 250);
    this.x = randomFrom((window_width * -0.25), (window_width * 1.125));
    this.y = randomFrom((window_height * -0.25), (window_height * -1));
    this.dx = randomFrom((wind_speed - 3), (wind_speed + 3));
    this.dy = (this.r * (100 * fall_speed));
    this.offset = (this.l * (this.dx / this.dy));
    this.opacity = (this.r * randomFrom(0.2, 0.6));
    this.drip = this.render();
  };
  
  this.render = function() {
    var canv = document.createElement('canvas');
    var ctx = canv.getContext('2d');
    canv.setAttribute('width', Math.abs(this.offset) + this.r);
    canv.setAttribute('height', this.l);
    
    ctx.beginPath();
    
    var drip = ctx.createLinearGradient(0, 0, 0, this.l);
    drip.addColorStop(0, 'rgba(' + rain_color + ', 0)');
    drip.addColorStop(1, 'rgba(' + rain_color + ', ' + this.opacity + ')');
    ctx.fillStyle = drip;
        
    //sky.rect(this.x, this.y, this.r, this.l);
    var startX = (this.offset >= 0) ? 0 : Math.abs(this.offset);
    ctx.moveTo(startX, 0);
    ctx.lineTo(startX + this.r, 0);
    ctx.lineTo(startX + this.r + this.offset, this.l);
    ctx.lineTo(startX + this.offset, this.l);

    ctx.closePath();
    ctx.fill();
    
    return canv;
  };
  
  this.draw = function() {
    sky.drawImage(this.drip, this.x, this.y);
  };
  
  this.fall = function() {
    this.x += this.dx;
    this.y += this.dy;
    
    if (this.y > (window_height * 1.25)) {
      this.reset();
    }
  };
}

resizer();
paintSky();
</script>
</body>
<script>
	/*
	 let logout = document.querySelector("button.logout")
	 let mypage = document.querySelector("button.mypage")

	 if(logout){
	 logout.addEventListener("click", (e) =>{
	 location.href = "${rootPath}"
	 })
	 }
	 */
</script>
</html>