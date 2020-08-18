<!DOCTYPE html> 
<html>
 <head>
  <meta charset="utf-8">
   <title>Google Map</title>
    </head>
    <style>
    /* ---------------------------------------------- */
/* menu*/
/* --------------------------------------------- */
input[type=checkbox] {
   position: absolute;
   opacity: 0;
}
label {
   position: fixed;
   top: 20px;
   left: 10px;
   z-index: 1;
   display: block;
   font-size:2em;
   color: #444;
   cursor: pointer;
   transform: translate3d(0, 0, 0);
   transition: transform .4s;
}
input[type=checkbox]:checked ~ label {
   transform: translate3d(250px, 0, 0) rotate(90deg);
}
.check-menu {
   width:100%;
   padding: 40px;
   background: #f2f2f2;
   transform: translate3d(0, 0, 0);
   transition: transform .4s;
}
input[type=checkbox]:checked ~ .content {
   transform: translate3d(250px, 0, 0);
}
input[type=checkbox]:checked ~ .slide-menu {
   transform: translate3d(0, 0, 0);
}
input[type=checkbox]:checked ~ .slide-menu .menu li {
   width: 100%;
}
.slide-menu {
   background-color: #f9f9f9;
   box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
   transform: translate3d(-250px, 0, 0);
   position: absolute;
   width: 250px;
   color: #ddd;
   left: 0;
   height: 100%;
   transition: all .4s;
  z-index:100;
}
.slide-menu ul li{
  margin-top:10px;
}
.slide-menu h1 {
 font:0.8em daum;
 color:#999;
  margin: 10px;
 }
.menu {
   list-style: none;
   padding: 0;
   margin: 0;
}
.menu a {
   display: block;
   text-decoration: none;
   color: #fff;
   font-size: 0.9em;
   padding: 15px;
}



label {
   right: 40px;
}
input[type=checkbox]:checked ~ label {
   transform: translate3d(250px, 0, 0) rotate(90deg);
}
input[type=checkbox]:checked ~ .content {
   transform: translate3d(250px, 0, 0);
}
.slide-menu {
   transform: translate3d(-250px, 0, 0);
   right: 0;
}



/* ------------------------------------------------- */
/* 카테고리 */
/* ------------------------------------------------- */
#category ul {
  font : 0.9em daum, malgun gothic, verdana;
 font-weight:bold;
  padding:6px 10px;
}
#category li {padding:3px 0px;
 margin-left:5px;
  list-style:none;
}
#category li:before {
    content: "•"; /* Insert content that looks like bullets */
    padding-right: 5px;
    color: #999; /* Or a color you prefer */
}

#category a:hover { color:#027878; text-decoration:none;}
/*2depth*/
#category ul li ul li  { padding:3px 10px;
 list-style:none;
}

#category ul li ul li a {
 list-style:square;}

/*3depth*/
#category ul li ul li ul li { padding:3px 10px;
 font-weight:normal;
 border-bottom:1px dotted #ddd;
 list-style:none;
}
#category ul li ul li ul li a {
 list-style:square;}




    </style>
     <body>
		    <div id=check-menu>
     <input id="toggle" type="checkbox"><label for="toggle">&equiv;</label>
      <div class="slide-menu">
         <nav id="category">
         [##_category_list_##]    
           </nav>
        </div> 
      </div>

				
     </body>
</html>

