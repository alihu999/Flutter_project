(function(g){var window=this;'use strict';var Gpb=function(a,b){g.U.call(this,{I:"button",Ma:["ytp-miniplayer-expand-watch-page-button","ytp-button","ytp-miniplayer-button-top-left"],W:{title:"{{title}}","data-tooltip-target-id":"ytp-miniplayer-expand-watch-page-button","aria-keyshortcuts":"i","data-title-no-tooltip":"{{data-title-no-tooltip}}"},V:[{I:"svg",W:{height:"24px",version:"1.1",viewBox:"0 0 24 24",width:"24px"},V:[{I:"g",W:{fill:"none","fill-rule":"evenodd",stroke:"none","stroke-width":"1"},V:[{I:"g",W:{transform:"translate(12.000000, 12.000000) scale(-1, 1) translate(-12.000000, -12.000000) "},
V:[{I:"path",W:{d:"M19,19 L5,19 L5,5 L12,5 L12,3 L5,3 C3.89,3 3,3.9 3,5 L3,19 C3,20.1 3.89,21 5,21 L19,21 C20.1,21 21,20.1 21,19 L21,12 L19,12 L19,19 Z M14,3 L14,5 L17.59,5 L7.76,14.83 L9.17,16.24 L19,6.41 L19,10 L21,10 L21,3 L14,3 Z",fill:"#fff","fill-rule":"nonzero"}}]}]}]}]});this.J=a;this.Ta("click",this.onClick,this);this.updateValue("title",g.hU(a,"\u062a\u0648\u0633\u064a\u0639","i"));this.update({"data-title-no-tooltip":"\u062a\u0648\u0633\u064a\u0639"});this.addOnDisposeCallback(g.fU(b.qc(),
this.element))},Hpb=function(a){g.U.call(this,{I:"div",
S:"ytp-miniplayer-ui"});this.jg=!1;this.player=a;this.T(a,"minimized",this.uh);this.T(a,"onStateChange",this.UR)},Ipb=function(a){g.xV.call(this,a);
this.B=new g.OK(this);this.j=new Hpb(this.player);this.j.hide();g.sU(this.player,this.j.element,4);a.pg()&&(this.load(),g.Nu(a.getRootNode(),"ytp-player-minimized",!0))};
g.w(Gpb,g.U);Gpb.prototype.onClick=function(){this.J.Qa("onExpandMiniplayer")};g.w(Hpb,g.U);g.k=Hpb.prototype;
g.k.FO=function(){this.tooltip=new g.SX(this.player,this);g.L(this,this.tooltip);g.sU(this.player,this.tooltip.element,4);this.tooltip.scale=.6;this.Uc=new g.dW(this.player);g.L(this,this.Uc);this.vk=new g.U({I:"div",S:"ytp-miniplayer-scrim"});g.L(this,this.vk);this.vk.Ea(this.element);this.T(this.vk.element,"click",this.xJ);var a=new g.U({I:"button",Ma:["ytp-miniplayer-close-button","ytp-button"],W:{"aria-label":"\u0625\u063a\u0644\u0627\u0642"},V:[g.nG()]});g.L(this,a);a.Ea(this.vk.element);this.T(a.element,
"click",this.Op);a=new Gpb(this.player,this);g.L(this,a);a.Ea(this.vk.element);this.uv=new g.U({I:"div",S:"ytp-miniplayer-controls"});g.L(this,this.uv);this.uv.Ea(this.vk.element);this.T(this.uv.element,"click",this.xJ);var b=new g.U({I:"div",S:"ytp-miniplayer-button-container"});g.L(this,b);b.Ea(this.uv.element);a=new g.U({I:"div",S:"ytp-miniplayer-play-button-container"});g.L(this,a);a.Ea(this.uv.element);var c=new g.U({I:"div",S:"ytp-miniplayer-button-container"});g.L(this,c);c.Ea(this.uv.element);
this.CZ=new g.eX(this.player,this,!1);g.L(this,this.CZ);this.CZ.Ea(b.element);b=new g.dX(this.player,this);g.L(this,b);b.Ea(a.element);this.nextButton=new g.eX(this.player,this,!0);g.L(this,this.nextButton);this.nextButton.Ea(c.element);this.Hj=new g.LX(this.player,this);g.L(this,this.Hj);this.Hj.Ea(this.vk.element);this.Qc=new g.jX(this.player,this);g.L(this,this.Qc);g.sU(this.player,this.Qc.element,4);this.gJ=new g.U({I:"div",S:"ytp-miniplayer-buttons"});g.L(this,this.gJ);g.sU(this.player,this.gJ.element,
4);a=new g.U({I:"button",Ma:["ytp-miniplayer-close-button","ytp-button"],W:{"aria-label":"\u0625\u063a\u0644\u0627\u0642"},V:[g.nG()]});g.L(this,a);a.Ea(this.gJ.element);this.T(a.element,"click",this.Op);a=new g.U({I:"button",Ma:["ytp-miniplayer-replay-button","ytp-button"],W:{"aria-label":"\u0625\u063a\u0644\u0627\u0642"},V:[g.Dva()]});g.L(this,a);a.Ea(this.gJ.element);this.T(a.element,"click",this.U9);this.T(this.player,"presentingplayerstatechange",this.Sd);this.T(this.player,"appresize",this.Ib);
this.T(this.player,"fullscreentoggled",this.Ib);this.Ib()};
g.k.show=function(){this.xf=new g.zu(this.Dw,null,this);this.xf.start();this.jg||(this.FO(),this.jg=!0);0!==this.player.getPlayerState()&&g.U.prototype.show.call(this);this.Qc.show();this.player.unloadModule("annotations_module")};
g.k.hide=function(){this.xf&&(this.xf.dispose(),this.xf=void 0);g.U.prototype.hide.call(this);this.player.pg()||(this.jg&&this.Qc.hide(),this.player.loadModule("annotations_module"))};
g.k.ya=function(){this.xf&&(this.xf.dispose(),this.xf=void 0);g.U.prototype.ya.call(this)};
g.k.Op=function(){this.player.stopVideo();this.player.Qa("onCloseMiniplayer")};
g.k.U9=function(){this.player.playVideo()};
g.k.xJ=function(a){if(a.target===this.vk.element||a.target===this.uv.element)g.LL(this.player.Qb())?this.player.pauseVideo():this.player.playVideo()};
g.k.uh=function(){g.Nu(this.player.getRootNode(),"ytp-player-minimized",this.player.pg())};
g.k.Xe=function(){this.Qc.Gc();this.Hj.Gc()};
g.k.Dw=function(){this.Xe();this.xf&&this.xf.start()};
g.k.Sd=function(a){g.PG(a.state,32)&&this.tooltip.hide()};
g.k.Ib=function(){g.vX(this.Qc,0,this.player.kb().getPlayerSize().width,!1);g.kX(this.Qc)};
g.k.UR=function(a){this.player.pg()&&(0===a?this.hide():this.show())};
g.k.qc=function(){return this.tooltip};
g.k.Yf=function(){return!1};
g.k.Kf=function(){return!1};
g.k.Zj=function(){return!1};
g.k.pB=function(){};
g.k.kp=function(){};
g.k.Ns=function(){};
g.k.un=function(){return null};
g.k.KH=function(){return null};
g.k.WN=function(){return new g.ue(0,0)};
g.k.Pk=function(){return new g.Sr(0,0,0,0)};
g.k.handleGlobalKeyDown=function(){return!1};
g.k.handleGlobalKeyUp=function(){return!1};
g.k.Cr=function(a,b,c,d,e){var f=0,h=d=0,l=g.fs(a);if(b){c=g.Iu(b,"ytp-prev-button")||g.Iu(b,"ytp-next-button");var m=g.Iu(b,"ytp-play-button"),n=g.Iu(b,"ytp-miniplayer-expand-watch-page-button");c?f=h=12:m?(b=g.ds(b,this.element),h=b.x,f=b.y-12):n&&(h=g.Iu(b,"ytp-miniplayer-button-top-left"),f=g.ds(b,this.element),b=g.fs(b),h?(h=f.x-l.width+b.width,f=f.y+40):(h=f.x-l.width+b.width,f=f.y-20))}else h=c-l.width/2,d=25+(e||0);b=this.player.kb().getPlayerSize().width;e=f+(e||0);l=g.me(h,0,b-l.width);
e?(a.style.top=e+"px",a.style.bottom=""):(a.style.top="",a.style.bottom=d+"px");a.style.left=l+"px"};
g.k.showControls=function(){};
g.k.gq=function(){};
g.k.Sj=function(){return!1};
g.k.fu=function(){};
g.k.Kr=function(){};
g.k.zm=function(){};
g.k.ym=function(){};
g.k.wq=function(){};
g.k.qp=function(){};
g.k.Zw=function(){};
g.k.LH=function(){return null};g.w(Ipb,g.xV);g.k=Ipb.prototype;g.k.onVideoDataChange=function(){if(this.player.getVideoData()){var a=this.player.getVideoAspectRatio(),b=16/9;a=a>b+.1||a<b-.1;g.Nu(this.player.getRootNode(),"ytp-rounded-miniplayer-not-regular-wide-video",a)}};
g.k.create=function(){g.xV.prototype.create.call(this);this.B.T(this.player,"videodatachange",this.onVideoDataChange);this.onVideoDataChange()};
g.k.Al=function(){return!1};
g.k.load=function(){this.player.hideControls();this.j.show()};
g.k.unload=function(){this.player.showControls();this.j.hide()};g.wV("miniplayer",Ipb);})(_yt_player);
