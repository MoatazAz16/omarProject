<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="schudule.aspx.cs" Inherits="schudule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="site-section" id="schedule-section">
      <div class="container">
        <div class="row justify-content-center text-center mb-5">
          <div class="col-md-8  section-heading">
            <span class="subheading">Fitness Sched</span>
            <h2 class="heading mb-3">Schedule</h2>
            <p>Discover a diverse range of expert-led classes designed to fit your busy lifestyle. 
                Plan your workouts with ease and achieve your fitness goals on your schedule.</p>
          </div>
        </div>

        
        <div class="row">
          <div class="col-12">
            <ul class="nav days d-flex" role="tablist">
              <li class="nav-item">
                <a class="nav-link active" id="sunday-tab" data-toggle="tab" href="#nav-sunday" role="tab" aria-controls="sunday"
                  aria-selected="true">S</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="monday-tab" data-toggle="tab" href="#nav-monday" role="tab" aria-controls="monday"
                  aria-selected="false">M</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="tuesday-tab" data-toggle="tab" href="#nav-tuesday" role="tab" aria-controls="tuesday"
                  aria-selected="false">T</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="wednesday-tab" data-toggle="tab" href="#nav-wednesday" role="tab" aria-controls="wednesday"
                  aria-selected="false">W</a>
              </li>

              <li class="nav-item">
                <a class="nav-link" id="thursday-tab" data-toggle="tab" href="#nav-thursday" role="tab" aria-controls="thursday"
                  aria-selected="false">T</a>
              </li><li class="nav-item">
                <a class="nav-link" id="friday-tab" data-toggle="tab" href="#nav-friday" role="tab" aria-controls="friday"
                  aria-selected="false">F</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="saturday-tab" data-toggle="tab" href="#nav-saturday" role="tab" aria-controls="saturday"
                  aria-selected="false">S</a>
              </li>
            </ul>
          </div>
        </div>

        <div class="tab-content">
          <div class="tab-pane fade show active" id="nav-sunday" role="tabpanel" aria-labelledby="nav-sunday-tab">
            <div class="row">
              <div class="col-lg-6">
                <div class="class-item d-flex align-items-center">
                  <a href="single.html" class="class-item-thumbnail">
                    <img src="images/img_1.jpg" alt="Image">
                    </a>
                  <div class="class-item-text">
                    <span>Sunday 7:30am - 8:00am</span>
                    <h2><a href="single.html">Zumba</a></h2>
                    <span>By Megan Scott</span>,
                    <span>30 minutes</span>
                  </div>
                </div>
            
                <div class="class-item d-flex align-items-center">
                  <a href="single.html" class="class-item-thumbnail">
                    <img src="images/Cbum1.png" alt="Image">
                  </a>
                  <div class="class-item-text">
                    <span>Sunday 8:10am - 9:40am</span>
                    <h2><a href="single.html">High-Intensity Interval Training</a></h2>
                    <span>By Chris Bumstead</span>,
                    <span>90 minutes</span>
                  </div>
                </div>
            
                <div class="class-item d-flex align-items-center">
                  <a href="single.html" class="class-item-thumbnail">
                    <img src="images/MikeTyson1.png" alt="Image">
                  </a>
                  <div class="class-item-text">
                    <span>Sunday 9:50am - 10:35am</span>
                    <h2><a href="single.html">Boxing</a></h2>
                    <span>By Mike Tyson</span>,
                    <span>45 minutes</span>
                  </div>
                </div>
            
                <div class="class-item d-flex align-items-center">
                  <a href="single.html" class="class-item-thumbnail">
                    <img src="images/StrengthTraning.png" alt="Image">
                  </a>
                  <div class="class-item-text">
                    <span>Sunday 10:45am - 11:45am</span>
                    <h2><a href="single.html">Strength Training</a></h2>
                    <span>By Anas Salfety</span>,
                    <span>60 minutes</span>
                  </div>
                </div>
            
                <div class="class-item d-flex align-items-center">
                  <a href="single.html" class="class-item-thumbnail">
                    <img src="images/Pilates.png" alt="Image">
                  </a>
                  <div class="class-item-text">
                    <span>Sunday 11:55am - 12:15pm</span>
                    <h2><a href="single.html">Pilates</a></h2>
                    <span>By Justin Daniel</span>,
                    <span>20 minutes</span>
                  </div>
                </div>
            
            
              </div>
              <div class="col-lg-6">
                <div class="class-item d-flex align-items-center">
                  <a href="single.html" class="class-item-thumbnail">
                    <img src="images/Cardio.png" alt="Image">
                  </a>
                  <div class="class-item-text">
                    <span>Sunday 12:25pm - 12:50pm</span>
                    <h2><a href="single.html">Cardio Blast</a></h2>
                    <span>By Jonson Brown</span>,
                    <span>25 minutes</span>
                  </div>
                </div>
            
                <div class="class-item d-flex align-items-center">
                  <a href="single.html" class="class-item-thumbnail">
                    <img src="images/img_2.jpg" alt="Image">
                  </a>
                  <div class="class-item-text">
                    <span>Sunday 1:00pm - 1:45pm</span>
                    <h2><a href="single.html">Cycling</a></h2>
                    <span>By John Miller</span>,
                    <span>45 minutes</span>
                  </div>
                </div>
            
                <div class="class-item d-flex align-items-center">
                  <a href="single.html" class="class-item-thumbnail">
                    <img src="images/img_3.jpg" alt="Image">
                  </a>
                  <div class="class-item-text">
                    <span>Sunday 1:55pm - 2:55pm</span>
                    <h2><a href="single.html">Bootcamp</a></h2>
                    <span>By Ryan Davis</span>,
                    <span>60 minutes</span>
                  </div>
                </div>
            
                <div class="class-item d-flex align-items-center">
                  <a href="single.html" class="class-item-thumbnail">
                    <img src="images/img_4.jpg" alt="Image">
                  </a>
                  <div class="class-item-text">
                    <span>Sunday 3:05pm - 3:35pm</span>
                    <h2><a href="single.html">Barre</a></h2>
                    <span>By Salah Lee</span>,
                    <span>30 minutes</span>
                  </div>
                </div>
            
                <div class="class-item d-flex align-items-center">
                  <a href="single.html" class="class-item-thumbnail">
                    <img src="images/calisthenics.png" alt="Image">
                  </a>
                  <div class="class-item-text">
                    <span>Sunday 3:45pm - 5:25pm</span>
                    <h2><a href="single.html">Calisthenics</a></h2>
                    <span>By Robert Manson</span>,
                    <span>100 minutes</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="tab-pane fade" id="nav-monday" role="tabpanel" aria-labelledby="nav-monday-tab">
            <div class="row">
              <div class="col-lg-6">
                <div class="class-item d-flex align-items-center">
                  <a href="single.html" class="class-item-thumbnail">
                    <img src="images/img_4.jpg" alt="Image">
                    </a>
          <div class="class-item-text">
            <span>Monday 7:30am - 8:00am</span>
            <h2><a href="single.html">Barre</a></h2>
            <span>By Salah Lee</span>,
            <span>30 minutes</span>
          </div>
        </div>

        <div class="class-item d-flex align-items-center">
          <a href="single.html" class="class-item-thumbnail">
            <img src="images/Cbum1.png" alt="Image">
          </a>
          <div class="class-item-text">
            <span>Monday 8:10am - 9:40am</span>
            <h2><a href="single.html">High-Intensity Interval Training</a></h2>
            <span>By Chris Bumstead</span>,
            <span>90 minutes</span>
          </div>
        </div>

        <div class="class-item d-flex align-items-center">
          <a href="single.html" class="class-item-thumbnail">
            <img src="images/MikeTyson1.png" alt="Image">
          </a>
          <div class="class-item-text">
            <span>Monday 9:50am - 10:35am</span>
            <h2><a href="single.html">Boxing</a></h2>
            <span>By Mike Tyson</span>,
            <span>45 minutes</span>
          </div>
        </div>

        <div class="class-item d-flex align-items-center">
          <a href="single.html" class="class-item-thumbnail">
            <img src="images/StrengthTraning.png" alt="Image">
          </a>
          <div class="class-item-text">
            <span>Monday 10:45am - 11:45am</span>
            <h2><a href="single.html">Strength Training</a></h2>
            <span>By Anas Salfety</span>,
            <span>60 minutes</span>
          </div>
        </div>

        <div class="class-item d-flex align-items-center">
          <a href="single.html" class="class-item-thumbnail">
            <img src="images/Pilates.png" alt="Image">
          </a>
          <div class="class-item-text">
            <span>Monday 11:55am - 12:15pm</span>
            <h2><a href="single.html">Pilates</a></h2>
            <span>By Justin Daniel</span>,
            <span>20 minutes</span>
          </div>
        </div>
      </div>
      <div class="col-lg-6">
        <div class="class-item d-flex align-items-center">
          <a href="single.html" class="class-item-thumbnail">
            <img src="images/Cardio.png" alt="Image">
          </a>
          <div class="class-item-text">
            <span>Monday 12:25pm - 12:50pm</span>
            <h2><a href="single.html">Cardio Blast</a></h2>
            <span>By Jonson Brown</span>,
            <span>25 minutes</span>
          </div>
        </div>

        <div class="class-item d-flex align-items-center">
          <a href="single.html" class="class-item-thumbnail">
            <img src="images/img_2.jpg" alt="Image">
          </a>
          <div class="class-item-text">
            <span>Monday 1:00pm - 1:45pm</span>
            <h2><a href="single.html">Cycling</a></h2>
            <span>By John Miller</span>,
            <span>45 minutes</span>
          </div>
        </div>

        <div class="class-item d-flex align-items-center">
          <a href="single.html" class="class-item-thumbnail">
            <img src="images/img_3.jpg" alt="Image">
          </a>
          <div class="class-item-text">
            <span>Monday 1:55pm - 2:55pm</span>
            <h2><a href="single.html">Bootcamp</a></h2>
            <span>By Ryan Davis</span>,
            <span>60 minutes</span>
          </div>
        </div>

        <div class="class-item d-flex align-items-center">
          <a href="single.html" class="class-item-thumbnail">
            <img src="images/img_4.jpg" alt="Image">
          </a>
          <div class="class-item-text">
            <span>Monday 3:05pm - 3:35pm</span>
            <h2><a href="single.html">Zumba</a></h2>
            <span>By Megan Scott</span>,
            <span>30 minutes</span>
          </div>
        </div>

        <div class="class-item d-flex align-items-center">
          <a href="single.html" class="class-item-thumbnail">
            <img src="images/calisthenics.png" alt="Image">
          </a>
          <div class="class-item-text">
            <span>Monday 3:45pm - 5:25pm</span>
            <h2><a href="single.html">Calisthenics</a></h2>
            <span>By Robert Manson</span>,
            <span>100 minutes</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="tab-pane fade" id="nav-tuesday" role="tabpanel" aria-labelledby="nav-tuesday-tab">
            <div class="row">
              <div class="col-lg-6">
                <div class="class-item d-flex align-items-center">
                  <a href="single.html" class="class-item-thumbnail">
                    <img src="images/img_1.jpg" alt="Image">
                     </a>
                 <div class="class-item-text">
              <span>Tuesday 7:30am - 8:00am</span>
              <h2><a href="single.html">Zumba</a></h2>
              <span>By Megan Scott</span>,
              <span>30 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/Cbum1.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Tuesday 8:10am - 9:40am</span>
              <h2><a href="single.html">High-Intensity Interval Training</a></h2>
              <span>By Chris Bumstead</span>,
              <span>90 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/img_2.jpg" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Tuesday 9:50am - 10:35am</span>
              <h2><a href="single.html">Cycling</a></h2>
              <span>By John Miller</span>,
              <span>45 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/StrengthTraning.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Tuesday 10:45am - 11:45am</span>
              <h2><a href="single.html">Strength Training</a></h2>
              <span>By Anas Salfety</span>,
              <span>60 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/Pilates.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Tuesday 11:55am - 12:15pm</span>
              <h2><a href="single.html">Pilates</a></h2>
              <span>By Justin Daniel</span>,
              <span>20 minutes</span>
            </div>
          </div>
      
      
        </div>
        <div class="col-lg-6">
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/Cardio.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Tuesday 12:25pm - 12:50pm</span>
              <h2><a href="single.html">Cardio Blast</a></h2>
              <span>By Jonson Brown</span>,
              <span>25 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src= "images/MikeTyson1.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Tuesday 1:00pm - 1:45pm</span>
              <h2><a href="single.html">Boxing</a></h2>
              <span>By Mike Tyson</span>,
              <span>45 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/img_3.jpg" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Tuesday 1:55pm - 2:55pm</span>
              <h2><a href="single.html">Bootcamp</a></h2>
              <span>By Ryan Davis</span>,
              <span>60 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/img_4.jpg" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Tuesday 3:05pm - 3:35pm</span>
              <h2><a href="single.html">Barre</a></h2>
              <span>By Salah Lee</span>,
              <span>30 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/calisthenics.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Tuesday 3:45pm - 5:25pm</span>
              <h2><a href="single.html">Calisthenics</a></h2>
              <span>By Robert Manson</span>,
              <span>100 minutes</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="tab-pane fade" id="nav-wednesday" role="tabpanel" aria-labelledby="nav-wednesday-tab">
            <div class="row">
              <div class="col-lg-6">
                <div class="class-item d-flex align-items-center">
                  <a href="single.html" class="class-item-thumbnail">
                    <img src="images/img_1.jpg" alt="Image">
                 </a>
            <div class="class-item-text">
              <span>Wednesday 7:30am - 8:00am</span>
              <h2><a href="single.html">Zumba</a></h2>
              <span>By Megan Scott</span>,
              <span>30 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/Cbum1.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Wednesday 8:10am - 9:40am</span>
              <h2><a href="single.html">High-Intensity Interval Training</a></h2>
              <span>By Chris Bumstead</span>,
              <span>90 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/MikeTyson1.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Wednesday 9:50am - 10:35am</span>
              <h2><a href="single.html">Boxing</a></h2>
              <span>By Mike Tyson</span>,
              <span>45 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/StrengthTraning.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Wednesday 10:45am - 11:45am</span>
              <h2><a href="single.html">Strength Training</a></h2>
              <span>By Anas Salfety</span>,
              <span>60 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/Pilates.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Wednesday 11:55am - 12:15pm</span>
              <h2><a href="single.html">Pilates</a></h2>
              <span>By Justin Daniel</span>,
              <span>20 minutes</span>
            </div>
          </div>
      
      
        </div>
        <div class="col-lg-6">
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/Cardio.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Wednesday 12:25pm - 12:50pm</span>
              <h2><a href="single.html">Cardio Blast</a></h2>
              <span>By Jonson Brown</span>,
              <span>25 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/img_2.jpg" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Wednesday 1:00pm - 1:45pm</span>
              <h2><a href="single.html">Cycling</a></h2>
              <span>By John Miller</span>,
              <span>45 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/img_3.jpg" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Wednesday 1:55pm - 2:55pm</span>
              <h2><a href="single.html">Bootcamp</a></h2>
              <span>By Ryan Davis</span>,
              <span>60 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/img_4.jpg" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Wednesday 3:05pm - 3:35pm</span>
              <h2><a href="single.html">Barre</a></h2>
              <span>By Salah Lee</span>,
              <span>30 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/calisthenics.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Wednesday 3:45pm - 5:25pm</span>
              <h2><a href="single.html">Calisthenics</a></h2>
              <span>By Robert Manson</span>,
              <span>100 minutes</span>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="tab-pane fade" id="nav-thursday" role="tabpanel" aria-labelledby="nav-thursday-tab">
            <div class="row">
              <div class="col-lg-6">
                <div class="class-item d-flex align-items-center">
                  <a href="single.html" class="class-item-thumbnail">
                    <img src="images/img_4.jpg" alt="Image">
                  </a>
            <div class="class-item-text">
              <span>Thursday 7:30am - 8:00am</span>
              <h2><a href="single.html">Barre</a></h2>
              <span>By Salah Lee</span>,
              <span>30 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/Cbum1.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Thursday 8:10am - 9:40am</span>
              <h2><a href="single.html">High-Intensity Interval Training</a></h2>
              <span>By Chris Bumstead</span>,
              <span>90 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/img_2.jpg" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Thursday 9:50am - 10:35am</span>
              <h2><a href="single.html">Cycling</a></h2>
              <span>By John Miller</span>,
              <span>45 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/StrengthTraning.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Thursday 10:45am - 11:45am</span>
              <h2><a href="single.html">Strength Training</a></h2>
              <span>By Anas Salfety</span>,
              <span>60 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/Pilates.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Thursday 11:55am - 12:15pm</span>
              <h2><a href="single.html">Pilates</a></h2>
              <span>By Justin Daniel</span>,
              <span>20 minutes</span>
            </div>
          </div>
      
      
        </div>
        <div class="col-lg-6">
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/Cardio.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Thursday 12:25pm - 12:50pm</span>
              <h2><a href="single.html">Cardio Blast</a></h2>
              <span>By Jonson Brown</span>,
              <span>25 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src= "images/MikeTyson1.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Thursday 1:00pm - 1:45pm</span>
              <h2><a href="single.html">Boxing</a></h2>
              <span>By Mike Tyson</span>,
              <span>45 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/img_3.jpg" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Thursday 1:55pm - 2:55pm</span>
              <h2><a href="single.html">Bootcamp</a></h2>
              <span>By Ryan Davis</span>,
              <span>60 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/img_1.jpg" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Thursday 3:05pm - 3:35pm</span>
              <h2><a href="single.html">Zumba</a></h2>
              <span>By Megan Scott</span>,
              <span>30 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/calisthenics.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Thursday 3:45pm - 5:25pm</span>
              <h2><a href="single.html">Calisthenics</a></h2>
              <span>By Robert Manson</span>,
              <span>100 minutes</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="tab-pane fade" id="nav-friday" role="tabpanel" aria-labelledby="nav-friday-tab">
            <div class="row">
              <div class="col-lg-6">
                <div class="class-item d-flex align-items-center">
                  <a href="single.html" class="class-item-thumbnail">
                    <img src="images/img_1.jpg" alt="Image">
                  </a>
            <div class="class-item-text">
              <span>Friday 7:30am - 8:00am</span>
              <h2><a href="single.html">Zumba</a></h2>
              <span>By Megan Scott</span>,
              <span>30 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/Cbum1.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Friday 8:10am - 9:40am</span>
              <h2><a href="single.html">High-Intensity Interval Training</a></h2>
              <span>By Chris Bumstead</span>,
              <span>90 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/MikeTyson1.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Friday 9:50am - 10:35am</span>
              <h2><a href="single.html">Boxing</a></h2>
              <span>By Mike Tyson</span>,
              <span>45 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/img_3.jpg" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Friday 10:45am - 11:45am</span>
              <h2><a href="single.html">Bootcamp</a></h2>
              <span>By Ryan Davis</span>,
              <span>60 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/Pilates.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Friday 11:55am - 12:15pm</span>
              <h2><a href="single.html">Pilates</a></h2>
              <span>By Justin Daniel</span>,
              <span>20 minutes</span>
            </div>
          </div>
      
      
        </div>
        <div class="col-lg-6">
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/Cardio.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Friday 12:25pm - 12:50pm</span>
              <h2><a href="single.html">Cardio Blast</a></h2>
              <span>By Jonson Brown</span>,
              <span>25 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/img_2.jpg" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Friday 1:00pm - 1:45pm</span>
              <h2><a href="single.html">Cycling</a></h2>
              <span>By John Miller</span>,
              <span>45 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/StrengthTraning.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Friday 1:55pm - 2:55pm</span>
              <h2><a href="single.html">Strength Training</a></h2>
              <span>By Anas Salfety</span>,
              <span>60 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/img_4.jpg" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Friday 3:05pm - 3:35pm</span>
              <h2><a href="single.html">Barre</a></h2>
              <span>By Salah Lee</span>,
              <span>30 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/calisthenics.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Friday 3:45pm - 5:25pm</span>
              <h2><a href="single.html">Calisthenics</a></h2>
              <span>By Robert Manson</span>,
              <span>100 minutes</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="tab-pane fade" id="nav-saturday" role="tabpanel" aria-labelledby="nav-saturday-tab">
            <div class="row">
              <div class="col-lg-6">
                <div class="class-item d-flex align-items-center">
                  <a href="single.html" class="class-item-thumbnail">
                    <img src="images/img_4.jpg" alt="Image">
                  </a>
            <div class="class-item-text">
              <span>Saturday 7:30am - 8:00am</span>
              <h2><a href="single.html">Barre</a></h2>
              <span>By Salah Lee</span>,
              <span>30 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/Cbum1.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Saturday 8:10am - 9:40am</span>
              <h2><a href="single.html">High-Intensity Interval Training</a></h2>
              <span>By Chris Bumstead</span>,
              <span>90 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/MikeTyson1.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Saturday 9:50am - 10:35am</span>
              <h2><a href="single.html">Boxing</a></h2>
              <span>By Mike Tyson</span>,
              <span>45 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/img_3.jpg" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Saturday 10:45am - 11:45am</span>
              <h2><a href="single.html">Bootcamp</a></h2>
              <span>By Ryan Davis</span>,
              <span>60 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/Pilates.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Saturday 11:55am - 12:15pm</span>
              <h2><a href="single.html">Pilates</a></h2>
              <span>By Justin Daniel</span>,
              <span>20 minutes</span>
            </div>
          </div>
      
      
        </div>
        <div class="col-lg-6">
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/Cardio.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Saturday 12:25pm - 12:50pm</span>
              <h2><a href="single.html">Cardio Blast</a></h2>
              <span>By Jonson Brown</span>,
              <span>25 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/img_2.jpg" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Saturday 1:00pm - 1:45pm</span>
              <h2><a href="single.html">Cycling</a></h2>
              <span>By John Miller</span>,
              <span>45 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/StrengthTraning.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Saturday 1:55pm - 2:55pm</span>
              <h2><a href="single.html">Strength Training</a></h2>
              <span>By Anas Salfety</span>,
              <span>60 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/img_1.jpg" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Saturday 3:05pm - 3:35pm</span>
              <h2><a href="single.html">Zumba</a></h2>
              <span>By Megan Scott</span>,
              <span>30 minutes</span>
            </div>
          </div>
      
          <div class="class-item d-flex align-items-center">
            <a href="single.html" class="class-item-thumbnail">
              <img src="images/calisthenics.png" alt="Image">
            </a>
            <div class="class-item-text">
              <span>Saturday 3:45pm - 5:25pm</span>
              <h2><a href="single.html">Calisthenics</a></h2>
              <span>By Robert Manson</span>,
              <span>100 minutes</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        
      </div>
    </div>

</asp:Content>

