<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 홈페이지</title>
</head>
<style>
*, *:before, *:after {
  box-sizing: border-box;
}

html, body {
  height: 100%;
  overflow: hidden;
  background: #000;
}

.split {
  width: 750px;
  height: 468px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  perspective: 400px;
  cursor: pointer;
}
  &:before {
    content: 'CLICK';
    color: #777;
    letter-spacing: 1px;
    font-size: 10px;
    position: absolute;
    bottom: -30px;
    left: 50%;
    transform: translate(-50%);
  
  }

  img {
    height: auto;
    width: 100%;
    opacity: 0;
  }

  div {
    position: absolute;
    z-index: 1;
    background-repeat: no-repeat;
    transform: rotateY(-50deg) scale(0.5);
    opacity: 0;
    transform-origin: bottom;
    transition: all .6s cubic-bezier(.71, .05, .09, .91);
  }

  &.active {
    div {
      opacity: 1;
      transform: rotate(0deg) translateY(0);
    }
  }
}

</style>
<script>
var Split = function () {
	  this.$t = $(".split");
	  this.gridX = 6;
	  this.gridY = 4;
	  this.w = this.$t.width();
	  this.h = this.$t.height();
	  this.img = $("img", this.$t).attr("src");
	  this.delay = 0.05;

	  this.create = function () {
	    $("div", this.$t).remove();

	    for (x = 0; x < this.gridX; x++) {
	      for (y = 0; y < this.gridY; y++) {
	        var width = ((this.w / this.gridX) * 101) / this.w + "%",
	          height = ((this.h / this.gridY) * 101) / this.h + "%",
	          top = ((this.h / this.gridY) * y * 100) / this.h + "%",
	          left = ((this.w / this.gridX) * x * 100) / this.w + "%",
	          bgPosX = -((this.w / this.gridX) * x) + "px",
	          bgPosY = -((this.h / this.gridY) * y) + "px";

	        $("<div />")
	          .css({
	            top: top,
	            left: left,
	            width: width,
	            height: height,
	            backgroundImage: "url(" + this.img + ")",
	            backgroundPosition: bgPosX + " " + bgPosY,
	            backgroundSize: this.w + "px",
	            transitionDelay: x * this.delay + y * this.delay + "s",
	          })
	          .appendTo(this.$t);
	      }
	    }
	  };

	  this.create();

	  this.$t
	    .on("click", function () {
	      $(this).toggleClass("active");
	    })
	    .click();
	};

	window.onload = function () {
	  var split = new Split();
	  var gui = (function datgui() {
	    var gui = new dat.GUI();
	    gui
	      .add(split, "gridX", 1, 20)
	      .step(1)
	      .onChange(function (newValue) {
	        split.create();
	      });
	    gui
	      .add(split, "gridY", 1, 20)
	      .step(1)
	      .onChange(function (newValue) {
	        split.create();
	      });
	    gui
	      .add(split, "delay", 0, 0.3)
	      .step(0.01)
	      .onChange(function (newValue) {
	        split.create();
	      });
	    return gui;
	  })();
	};

</script>

<body>
<!--

Follow me on
Twitter: https://twitter.com/supahfunk
Dribbble: https://dribbble.com/supahfunk

Sai chi ti saluta tantissimo?

-->

<div class="split">
  <img src="https://github.com/supahfunk/supah-codepen/blob/master/stcz-1.png?raw=true" />
</div>
</body>
</html>