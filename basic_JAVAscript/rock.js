console.log("hello");
function randomnum() {
    const rndInt = Math.floor(Math.random() * 6) + 1;
    return(rndInt);
}
function rockPaperScissor(e) {
    let c = randomnum();
    if (c ==e ) {
        console.log('same');}
       else if (e==2 & c==1){console.log('you win');}
       else if(e==2 & c==3){console.log('you lose');}
     else   if(e==1 & c==2){console.log('you lose');}
      else  if(e==1 & c==3){console.log('you win');}
      else  if(e==3 & c==1){console.log('you lose');}
      else  if(e==3 & c==2){console.log('you win');}
}
