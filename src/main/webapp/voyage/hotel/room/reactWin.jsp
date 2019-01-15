<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

</head>
<body>

<!-- Trigger the modal with a button -->
<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
      <div class="modal-body">
        <p>Some text in the modal.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>


<form action="index.html" method="get" class="tm-search-form tm-section-pad-2">
                                <div class="form-row tm-search-form-row">                                
                                    <div class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
                                        <label for="inputCity">Choose Your Destination</label>
                                        <input name="destination" type="text" class="form-control" id="inputCity" placeholder="Type your destination...">
                                    </div>
                                    <div class="form-group tm-form-group tm-form-group-1">                                    
                                        <div class="form-group tm-form-group tm-form-group-pad tm-form-group-2">
                                            <label for="inputRoom">How many rooms?</label>
                                            <select name="room" class="form-control tm-select" id="inputRoom">
                                                <option value="1" selected="">1 Room</option>
                                                <option value="2">2 Rooms</option>
                                                <option value="3">3 Rooms</option>
                                                <option value="4">4 Rooms</option>
                                                <option value="5">5 Rooms</option>
                                                <option value="6">6 Rooms</option>
                                                <option value="7">7 Rooms</option>
                                                <option value="8">8 Rooms</option>
                                                <option value="9">9 Rooms</option>
                                                <option value="10">10 Rooms</option>
                                            </select>                                        
                                        </div>
                                        <div class="form-group tm-form-group tm-form-group-pad tm-form-group-3">                                       
                                            <label for="inputAdult">Adult</label>     
                                            <select name="adult" class="form-control tm-select" id="inputAdult">
                                                <option value="1" selected="">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                                <option value="10">10</option>
                                            </select>                                        
                                        </div>
                                        <div class="form-group tm-form-group tm-form-group-pad tm-form-group-3">

                                            <label for="inputChildren">Children</label>                                            
                                            <select name="children" class="form-control tm-select" id="inputChildren">
                                            	<option value="0" selected="">0</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                            </select>                                        
                                        </div>
                                    </div>
                                </div> <!-- form-row -->
                                <div class="form-row tm-search-form-row">

                                    <div class="form-group tm-form-group tm-form-group-pad tm-form-group-3" style="position: relative;">
                                        <label for="inputCheckIn">Check In Date</label>
                                        <input name="check-in" type="text" class="form-control" id="inputCheckIn" placeholder="Check In">
                                    <div class="qs-datepicker qs-hidden" style="
      top:70.0000114440918px;
      left:8px;
    ">
      <div class="qs-controls">
        <div class="qs-arrow qs-left"></div>
        <div class="qs-month-year">
          <span class="qs-month">January</span>
          <span class="qs-year">2019</span>
        </div>
        <div class="qs-arrow qs-right"></div>
      </div>
    <div class="qs-squares"><div class="qs-square qs-day">Sun</div><div class="qs-square qs-day">Mon</div><div class="qs-square qs-day">Tue</div><div class="qs-square qs-day">Wed</div><div class="qs-square qs-day">Thu</div><div class="qs-square qs-day">Fri</div><div class="qs-square qs-day">Sat</div><div class="qs-square qs-num Sun qs-empty"></div><div class="qs-square qs-num Mon qs-empty"></div><div class="qs-square qs-num Tue "><span class="qs-num">1</span></div><div class="qs-square qs-num Wed "><span class="qs-num">2</span></div><div class="qs-square qs-num Thu "><span class="qs-num">3</span></div><div class="qs-square qs-num Fri "><span class="qs-num">4</span></div><div class="qs-square qs-num Sat "><span class="qs-num">5</span></div><div class="qs-square qs-num Sun "><span class="qs-num">6</span></div><div class="qs-square qs-num Mon "><span class="qs-num">7</span></div><div class="qs-square qs-num Tue "><span class="qs-num">8</span></div><div class="qs-square qs-num Wed "><span class="qs-num">9</span></div><div class="qs-square qs-num Thu "><span class="qs-num">10</span></div><div class="qs-square qs-num Fri "><span class="qs-num">11</span></div><div class="qs-square qs-num Sat "><span class="qs-num">12</span></div><div class="qs-square qs-num Sun "><span class="qs-num">13</span></div><div class="qs-square qs-num Mon "><span class="qs-num">14</span></div><div class="qs-square qs-num Tue qs-current"><span class="qs-num">15</span></div><div class="qs-square qs-num Wed "><span class="qs-num">16</span></div><div class="qs-square qs-num Thu "><span class="qs-num">17</span></div><div class="qs-square qs-num Fri "><span class="qs-num">18</span></div><div class="qs-square qs-num Sat "><span class="qs-num">19</span></div><div class="qs-square qs-num Sun "><span class="qs-num">20</span></div><div class="qs-square qs-num Mon "><span class="qs-num">21</span></div><div class="qs-square qs-num Tue "><span class="qs-num">22</span></div><div class="qs-square qs-num Wed "><span class="qs-num">23</span></div><div class="qs-square qs-num Thu "><span class="qs-num">24</span></div><div class="qs-square qs-num Fri "><span class="qs-num">25</span></div><div class="qs-square qs-num Sat "><span class="qs-num">26</span></div><div class="qs-square qs-num Sun "><span class="qs-num">27</span></div><div class="qs-square qs-num Mon "><span class="qs-num">28</span></div><div class="qs-square qs-num Tue "><span class="qs-num">29</span></div><div class="qs-square qs-num Wed "><span class="qs-num">30</span></div><div class="qs-square qs-num Thu "><span class="qs-num">31</span></div><div class="qs-square qs-num Fri qs-empty"></div><div class="qs-square qs-num Sat qs-empty"></div></div>
      <div class="qs-overlay qs-hidden">
        <div class="qs-close">✕</div>
        <input type="number" class="qs-overlay-year" placeholder="4-digit year">
        <div class="qs-submit qs-disabled">Submit</div>
      </div>
    </div></div>
                                    <div class="form-group tm-form-group tm-form-group-pad tm-form-group-3" style="position: relative;">
                                        <label for="inputCheckOut">Check Out Date</label>
                                        <input name="check-out" type="text" class="form-control" id="inputCheckOut" placeholder="Check Out">
                                    <div class="qs-datepicker qs-hidden" style="
      top:70.0000114440918px;
      left:8px;
    ">
      <div class="qs-controls">
        <div class="qs-arrow qs-left"></div>
        <div class="qs-month-year">
          <span class="qs-month">January</span>
          <span class="qs-year">2019</span>
        </div>
        <div class="qs-arrow qs-right"></div>
      </div>
    <div class="qs-squares"><div class="qs-square qs-day">Sun</div><div class="qs-square qs-day">Mon</div><div class="qs-square qs-day">Tue</div><div class="qs-square qs-day">Wed</div><div class="qs-square qs-day">Thu</div><div class="qs-square qs-day">Fri</div><div class="qs-square qs-day">Sat</div><div class="qs-square qs-num Sun qs-empty"></div><div class="qs-square qs-num Mon qs-empty"></div><div class="qs-square qs-num Tue "><span class="qs-num">1</span></div><div class="qs-square qs-num Wed "><span class="qs-num">2</span></div><div class="qs-square qs-num Thu "><span class="qs-num">3</span></div><div class="qs-square qs-num Fri "><span class="qs-num">4</span></div><div class="qs-square qs-num Sat "><span class="qs-num">5</span></div><div class="qs-square qs-num Sun "><span class="qs-num">6</span></div><div class="qs-square qs-num Mon "><span class="qs-num">7</span></div><div class="qs-square qs-num Tue "><span class="qs-num">8</span></div><div class="qs-square qs-num Wed "><span class="qs-num">9</span></div><div class="qs-square qs-num Thu "><span class="qs-num">10</span></div><div class="qs-square qs-num Fri "><span class="qs-num">11</span></div><div class="qs-square qs-num Sat "><span class="qs-num">12</span></div><div class="qs-square qs-num Sun "><span class="qs-num">13</span></div><div class="qs-square qs-num Mon "><span class="qs-num">14</span></div><div class="qs-square qs-num Tue qs-current"><span class="qs-num">15</span></div><div class="qs-square qs-num Wed "><span class="qs-num">16</span></div><div class="qs-square qs-num Thu "><span class="qs-num">17</span></div><div class="qs-square qs-num Fri "><span class="qs-num">18</span></div><div class="qs-square qs-num Sat "><span class="qs-num">19</span></div><div class="qs-square qs-num Sun "><span class="qs-num">20</span></div><div class="qs-square qs-num Mon "><span class="qs-num">21</span></div><div class="qs-square qs-num Tue "><span class="qs-num">22</span></div><div class="qs-square qs-num Wed "><span class="qs-num">23</span></div><div class="qs-square qs-num Thu "><span class="qs-num">24</span></div><div class="qs-square qs-num Fri "><span class="qs-num">25</span></div><div class="qs-square qs-num Sat "><span class="qs-num">26</span></div><div class="qs-square qs-num Sun "><span class="qs-num">27</span></div><div class="qs-square qs-num Mon "><span class="qs-num">28</span></div><div class="qs-square qs-num Tue "><span class="qs-num">29</span></div><div class="qs-square qs-num Wed "><span class="qs-num">30</span></div><div class="qs-square qs-num Thu "><span class="qs-num">31</span></div><div class="qs-square qs-num Fri qs-empty"></div><div class="qs-square qs-num Sat qs-empty"></div></div>
      <div class="qs-overlay qs-hidden">
        <div class="qs-close">✕</div>
        <input type="number" class="qs-overlay-year" placeholder="4-digit year">
        <div class="qs-submit qs-disabled">Submit</div>
      </div>
    </div></div>
                                    <div class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
                                        <label for="btnSubmit">&nbsp;</label>
                                        <button type="submit" class="btn btn-primary tm-btn tm-btn-search text-uppercase" id="btnSubmit">Check Availability</button>
                                    </div>
                                </div>                              
                            </form>

</body>
</html>