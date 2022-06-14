<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!----======== CSS ======== -->
    <!-- <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="kritesh2nd.github.io/portfoliojava1/css/style.css"> -->

    <style>
        /* ===== Google Font Import - Poppins ===== */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600&display=swap');
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}
body{
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    background: #4070f4;
}
.container{
    position: relative;
    max-width: 900px;
    width: 100%;
    border-radius: 6px;
    padding: 30px;
    margin: 0 15px;
    background-color: #fff;
    box-shadow: 0 5px 10px rgba(0,0,0,0.1);
}
.container header{
    position: relative;
    font-size: 20px;
    font-weight: 600;
    color: #333;
}
.container header::before{
    content: "";
    position: absolute;
    left: 0;
    bottom: -2px;
    height: 3px;
    width: 27px;
    border-radius: 8px;
    background-color: #4070f4;
}
.container form{
    position: relative;
    margin-top: 16px;
    min-height: 490px;
    background-color: #fff;
    overflow: hidden;
}
.container form .form{
    position: absolute;
    background-color: #fff;
    transition: 0.3s ease;
}
.container form .form.second{
    opacity: 0;
    pointer-events: none;
    transform: translateX(100%);
}
form.secActive .form.second{
    opacity: 1;
    pointer-events: auto;
    transform: translateX(0);
}

form.secActive .form.second{
    opacity: 1;
    pointer-events: auto;
    transform: translateX(0);
}

/* Third form */

.container form .form.third{
    opacity: 0;
    pointer-events: none;
    transform: translateX(100%);
}
form.secActive .form.third{
    opacity: 1;
    pointer-events: auto;
    transform: translateX(0);
}

form.secActive .form.third{
    opacity: 1;
    pointer-events: auto;
    transform: translateX(0);
}
/* Ends here */

form.secActive .form.first{
    opacity: 0;
    pointer-events: none;
    transform: translateX(-100%);
}
.container form .title{
    display: block;
    margin-bottom: 8px;
    font-size: 16px;
    font-weight: 500;
    margin: 6px 0;
    color: #333;
}
.container form .fields{
    display: flex;
    align-items: center;
    justify-content: space-between;
    flex-wrap: wrap;
}
form .fields .input-field{
    display: flex;
    width: calc(100% / 3 - 15px);
    flex-direction: column;
    margin: 4px 0;
}
.input-field label{
    font-size: 12px;
    font-weight: 500;
    color: #2e2e2e;
}
.input-field input, select{
    outline: none;
    font-size: 14px;
    font-weight: 400;
    color: #333;
    border-radius: 5px;
    border: 1px solid #aaa;
    padding: 0 15px;
    height: 42px;
    margin: 8px 0;
}
.input-field input :focus,
.input-field select:focus{
    box-shadow: 0 3px 6px rgba(0,0,0,0.13);
}
.input-field select,
.input-field input[type="date"]{
    color: #707070;
}
.input-field input[type="date"]:valid{
    color: #333;
}
.container form button, .backBtn{
    display: flex;
    align-items: center;
    justify-content: center;
    height: 45px;
    max-width: 200px;
    width: 100%;
    border: none;
    outline: none;
    color: #fff;
    border-radius: 5px;
    margin: 25px 0;
    background-color: #4070f4;
    transition: all 0.3s linear;
    cursor: pointer;
}
.container form .btnText{
    font-size: 14px;
    font-weight: 400;
}
form button:hover{
    background-color: #265df2;
}
form button i,
form .backBtn i{
    margin: 0 6px;
}
form .backBtn i{
    transform: rotate(180deg);
}
form .buttons{
    display: flex;
    align-items: center;
}
form .buttons button , .backBtn{
    margin-right: 14px;
}

@media (max-width: 750px) {
    .container form{
        overflow-y: scroll;
    }
    .container form::-webkit-scrollbar{
       display: none;
    }
    form .fields .input-field{
        width: calc(100% / 2 - 15px);
    }
}

@media (max-width: 550px) {
    form .fields .input-field{
        width: 100%;
    }
}

/* field box */

form .Major Damage1 .Plan1 .Period1 .gender-title{
    font-size: 20px;
    font-weight: 500;
   }

   form .category{
    display: flex;
    width: 80%;
    margin: 14px 0 ;
    justify-content: space-between;
  }

  form .category label{
    display: flex;
    align-items: center;
    cursor: pointer;
  }

  form .category label .dot{
    height: 18px;
    width: 18px;
    border-radius: 50%;
    margin-right: 10px;
    background: #d9d9d9;
    border: 5px solid transparent;
    transition: all 0.3s ease;
  }
  #dot-1:checked ~ .category label .one,
  #dot-2:checked ~ .category label .two,
  #dot-3:checked ~ .category label .three,
  #dot-4:checked ~ .category label .four{
    background: #9b59b6;
    border-color: #d9d9d9;
  }


  form .a{
    display: flex;
    width: 80%;
    margin: 14px 0 ;
    justify-content: space-between;
  }
  form .a label{
    display: flex;
    align-items: center;
    cursor: pointer;
  }
  form .a label .dot{
   height: 18px;
   width: 18px;
   border-radius: 50%;
   margin-right: 10px;
   background: #d9d9d9;
   border: 5px solid transparent;
   transition: all 0.3s ease;
 }
  #dot-1:checked ~ .a label .one,
  #dot-2:checked ~ .a label .two,
  #dot-3:checked ~ .a label .three
  #dot-4:checked ~ .a label .four{
    background: #9b59b6;
    border-color: #d9d9d9;
  }

  form .b{
    display: flex;
    width: 80%;
    margin: 14px 0 ;
    justify-content: space-between;
  }
  form .b label{
    display: flex;
    align-items: center;
    cursor: pointer;
  }
  form .b label .dot{
   height: 18px;
   width: 18px;
   border-radius: 50%;
   margin-right: 10px;
   background: #d9d9d9;
   border: 5px solid transparent;
   transition: all 0.3s ease;
 }
  #dot-1:checked ~ .b label .one,
  #dot-2:checked ~ .b label .two,
  #dot-3:checked ~ .b label .three{
    background: #9b59b6;
    border-color: #d9d9d9;
  }



  form input[type="radio"]{
    display: none;
  }


    </style>
     
    <!----===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

    <title>Policy Plan </title> 
</head>
<body>
    <div class="container">
        <header>Policy Plan</header>

        <form action="#">
            <div class="form first borderr">
                <div class="details personal">
                    <span class="title">Personal Details</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>Full Name</label>
                            <input type="text" placeholder="Enter your name" required>
                        </div>

                        <div class="input-field">
                            <label>Date of Birth</label>
                            <input type="date" placeholder="Enter birth date" required>
                        </div>

                        <div class="input-field">
                            <label>Email</label>
                            <input type="text" placeholder="Enter your email" required>
                        </div>

                        <div class="input-field">
                            <label>Mobile Number</label>
                            <input type="number" placeholder="Enter mobile number" required>
                        </div>

                        <div class="input-field">
                            <label>Gender</label>
                            <select required>
                                <option disabled selected>Select gender</option>
                                <option>Male</option>
                                <option>Female</option>
                                <option>Others</option>
                            </select>
                        </div>

                        <div class="input-field">
                            <label>Occupation</label>
                            <input type="text" placeholder="Enter your ccupation" required>
                        </div>
                    </div>
                </div>

                <div class="details ID">
                    <span class="title">Identity Details</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>ID Type</label>
                            <input type="text" placeholder="Enter ID type" required>
                        </div>

                        <div class="input-field">
                            <label>ID Number</label>
                            <input type="number" placeholder="Enter ID number" required>
                        </div>

                        <div class="input-field">
                            <label>Issued Authority</label>
                            <input type="text" placeholder="Enter issued authority" required>
                        </div>

                        <div class="input-field">
                            <label>Issued State</label>
                            <input type="text" placeholder="Enter issued state" required>
                        </div>

                        <div class="input-field">
                            <label>Issued Date</label>
                            <input type="date" placeholder="Enter your issued date" required>
                        </div>
                    </div>

                    <button class="nextBtn">
                        <span class="btnText">Next</span>
                        <i class="uil uil-navigator"></i>
                    </button>
                </div> 
            </div>






            <div class="form second">
                <div class="details address">
                    <span class="title">Vehicle</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>Plate Number</label>
                            <input type="text" placeholder="Ba 16 ****" required>
                        </div>

                        <div class="input-field">
                            <label>Manu facturer</label>
                            <input type="text" placeholder="Enter the name of manufaturer" required>
                        </div>

                        <div class="input-field">
                            <label>Estimated value</label>
                            <input type="text" placeholder="Enter the price of Vehicle" required>
                        </div>

                        <!-- <div class="input-field">
                            <label>District</label>
                            <input type="text" placeholder="Enter your district" required>
                        </div>

                        <div class="input-field">
                            <label>Ward Number</label>
                            <input type="number" placeholder="Enter ward number" required>
                        </div> -->
                    </div>
                </div>

                <div class="details family">
                    <span class="title">Details</span>

                    <div class="fields">

                        <div class="input-field">
                            <label>Motor dmg</label>
                            <select required>
                                <option disabled selected>Select one</option>
                                <option>Motor</option>
                                <option>Wheels</option>
                                <option>Body</option>
                                <option>None</option>
                            </select>
                        </div>

                        <div class="input-field">
                            <label>Plan</label>
                            <select required>
                                <option disabled selected>Select your plan</option>
                                <option>Obligatory</option>
                                <option>All Risk</option>
                                <option>Vehicle Dmg</option>
                                <option>Assistance</option>
                            </select>
                        </div>

                        <div class="input-field">
                            <label>Validity Period</label>
                            <select required>
                                <option disabled selected>Select years</option>
                                <option>1 year</option>
                                <option>2 years</option>
                                <option>3 years</option>
                            </select>
                        </div>
                        <!-- <div class="input-field">
                            <label>Father Name</label>
                            <input type="text" placeholder="Enter father name" required>
                        </div>

                        <div class="input-field">
                            <label>Mother Name</label>
                            <input type="text" placeholder="Enter mother name" required>
                        </div>

                        <div class="input-field">
                            <label>Grandfather</label>
                            <input type="text" placeholder="Enter grandfther name" required>
                        </div>

                        <div class="input-field">
                            <label>Spouse Name</label>
                            <input type="text" placeholder="Enter spouse name" required>
                        </div>

                        <div class="input-field">
                            <label>Father in Law</label>
                            <input type="text" placeholder="Father in law name" required>
                        </div>

                        <div class="input-field">
                            <label>Mother in Law</label>
                            <input type="text" placeholder="Mother in law name" required>
                        </div> -->
                    <!-- </div> -->

                    <div class="buttons">
                        <div class="backBtn">
                            <i class="uil uil-navigator"></i>
                            <span class="btnText">Back</span>
                        </div>

                        <button class="nextBtn">
                            <span class="btnText">Next</span>
                            <i class="uil uil-navigator"></i>
                        </button>
                        
                    </div>
                </div> 
            </div>



                    <!-- <div class="form Third border">
                        <div class="details vehicle">
                            <span class="title">Vehicle</span>
        
                            <div class="fields">
                                <div class="input-field">
                                    <label>Plate Number</label>
                                    <input type="text" placeholder="Ba 16 ****" required>
                                </div>
        
                                <div class="input-field">
                                    <label>Model Year</label>
                                    <input type="text" placeholder="Enter model number" required>
                                </div>
        
                                <div class="input-field">
                                    <label>Manu facturer</label>
                                    <input type="text" placeholder="Enter the name of manufaturer" required>
                                </div>
        
                                <div class="input-field">
                                    <label>Estimated value</label>
                                    <input type="text" placeholder="Enter the price of Vehicle" required>
                                </div>
        
                            </div>
                        </div>
        
         
        
                            <div class="Major Damage1">
                                <input type="radio" name="dmg" id="dot-1">
                                <input type="radio" name="dmg" id="dot-2">
                                <input type="radio" name="dmg" id="dot-3">
                                <input type="radio" name="dmg" id="dot-4">
                                <span class="gender-title">Major Damage</span>
                                <div class="category">
                                  <label for="dot-1">
                                  <span class="dot one"></span>
                                  <span class="dmg">Motor</span>
                                </label>
                                <label for="dot-2">
                                  <span class="dot two"></span>
                                  <span class="dmg">Wheel</span>
                                </label>
                                <label for="dot-3">
                                  <span class="dot three"></span>
                                  <span class="dmg">Body</span>
                                  </label>
                                  <label for="dot-4">
                                    <span class="dot four"></span>
                                    <span class="dmg">None</span>
                                    </label>
                                </div>
                              </div>  
                              
                              <div class="Plan1">
                                <input type="radio" name="risk" id="dot-1">
                                <input type="radio" name="risk" id="dot-2">
                                <input type="radio" name="risk" id="dot-3">
                                <input type="radio" name="risk" id="dot-4">
                                <span class="gender-title">Plan</span>
                                <div class="a">
                                  <label for="dot-1">
                                  <span class="dot one"></span>
                                  <span class="risk">Obligatory</span>
                                </label>
                                <label for="dot-2">
                                  <span class="dot two"></span>
                                  <span class="risk">All Risk</span>
                                </label>
                                <label for="dot-3">
                                  <span class="dot three"></span>
                                  <span class="risk">Vehicle dmg</span>
                                  </label>
                                  <label for="dot-4">
                                    <span class="dot four"></span>
                                    <span class="risk">Driver dmg</span>
                                    </label>
                                </div>
                              </div>  
                          

                              <div class="Period1">
                                <input type="radio" name="time" id="dot-1">
                                <input type="radio" name="time" id="dot-2">
                                <input type="radio" name="time" id="dot-3">
      
                                <span class="gender-title">Validity Period</span>
                                <div class="b">
                                  <label for="dot-1">
                                  <span class="dot one"></span>
                                  <span class="time">1 year</span>
                                </label>
                                <label for="dot-2">
                                  <span class="dot two"></span>
                                  <span class="time">2 years</span>
                                </label>
                                <label for="dot-3">
                                  <span class="dot three"></span>
                                  <span class="time">3 years</span>
                                  </label>
                                 
                                </div>
                              </div>  

                    <div class="buttons">
                        <div class="backBtn">
                            <i class="uil uil-navigator"></i>
                            <span class="btnText">Back</span>
                        </div> -->

                        <!-- <button class="nextBtn">
                            <span class="btnText">Next</span>
                            <i class="uil uil-navigator"></i>
                        </button> -->
                        
                        <!-- <button class="sumbit">
                            <span class="btnText">Submit</span>
                            <i class="uil uil-navigator"></i>
                        </button>
                    </div>
                </div> 
            </div> -->
        </form>
    </div>

    <!-- <script src="script.js"></script> -->

    <script>
        const form = document.querySelector("form"),
        nextBtn = form.querySelector(".nextBtn"),
        backBtn = form.querySelector(".backBtn"),
        allInput = form.querySelectorAll(".first input");


nextBtn.addEventListener("click", ()=> {
    allInput.forEach(input => {
        if(input.value != ""){
            form.classList.add('secActive');
        }else{
            form.classList.remove('secActive');
        }
    })
})

backBtn.addEventListener("click", () => form.classList.remove('secActive'));
    </script>
</body>
</html>