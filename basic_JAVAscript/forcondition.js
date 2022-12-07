function Golfscore(Stroke)
{ var answer;
    switch(Stroke)
    { case 1:
            answer="alpha";
            break;
      case 2:
            answer="beta";
            break;
      case 3:
            answer="teta";
            break;
        default:
            answer=Stroke;


    }return answer;

}

console.log(Golfscore(5))