int fact(int f) { 
   if (f == 1) {         
      // termination case 
      return 1; 
   } else if (f == 0){ 
      return 0;
   } else {
    return (f * fact(f - 1));    
      // function invokes itself 
   }
   
}   