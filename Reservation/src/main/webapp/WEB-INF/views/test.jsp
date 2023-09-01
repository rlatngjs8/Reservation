<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Star Rating Form | CodingNepal</title>
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <style>
    /* Your custom styles here */

    body {
      font-family: 'Poppins', sans-serif;
      margin: 0;
      padding: 0;
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
      background-color: #000;
    }

    .container {
      width: 400px;
      background-color: #111;
      padding: 20px 30px;
      border: 1px solid #444;
      border-radius: 5px;
      text-align: center;
    }

    .post {
      display: none;
    }

    .text {
      font-size: 25px;
      color: #666;
      font-weight: 500;
    }

    .edit {
      position: absolute;
      right: 10px;
      top: 5px;
      font-size: 16px;
      color: #666;
      font-weight: 500;
      cursor: pointer;
    }

    .edit:hover {
      text-decoration: underline;
    }

    .star-widget input {
      display: none;
      
    }

    .star-widget label {
      font-size: 40px;
      color: #444;
      padding: 10px;
      float: right;
      transition: all 0.2s ease;
    }

    .star-widget input:not(:checked) ~ label:hover,
    .star-widget input:not(:checked) ~ label:hover ~ label {
      color: #fd4;
    }

    .star-widget input:checked ~ label {
      color: #fd4;
    }

    .star-widget input#rate-5:checked ~ label {
      color: #fe7;
      text-shadow: 0 0 20px #952;
    }

    .star-widget input:checked ~ form {
      display: block;
    }

    form header {
      font-size: 25px;
      color: #fe7;
      font-weight: 500;
      margin: 5px 0 20px;
      transition: all 0.2s ease;
    }

    form .textarea textarea {
      height: 150px;
      width: 330px;
      outline: none;
      color: #eee;
      border: 1px solid #333;
      background: #252;
      padding: 10px;
      font-size: 17px;
      resize: none;
    }

    .btn button {
      height: 45px;
      border: 1px solid #444;
      outline: none;
      background: #222;
      color: #999;
      font-size: 17px;
      font-weight: 500;
      text-transform: uppercase;
      cursor: pointer;
      transition: all 0.3s ease;
    }

    .btn button:hover {
      background: #1b1b1b;
    }

    /* Dialog Styles */
    #dialog-form {
      display: none;
    }

    .ui-dialog {
      max-width: 403px;
      background-color: #333; /* Dark background color */
    }

    .ui-dialog-titlebar {
      display: none;
    }

    .ui-dialog-content {
      padding: 0;
      overflow: hidden; /* Disable scrollbar */
    }

    .ui-dialog-buttonpane {
      display: flex;
      justify-content: flex-end;
      padding: 0 20px 20px;
      background-color: transparent;
      border-top: none;
    }

    .ui-dialog-buttonset {
      margin: 0;
    }

    .ui-dialog-buttonset button {
      border: none;
      outline: none;
      background: transparent;
      color: #999;
      font-size: 17px;
      font-weight: 500;
      text-transform: uppercase;
      cursor: pointer;
      transition: all 0.3s ease;
      padding: 0;
      margin-left: 10px;
    }

    .ui-dialog-buttonset button.close-button {
      font-size: 20px;
      margin-left: auto;
    }

    .ui-dialog-buttonset button:hover {
      color: #1b1b1b;
    }

    .ui-dialog-content .star-widget {
      padding: 20px 30px;
    }
    
    .star-widget {
	  width: 386px; /* Adjust the width as desired */
	  height: 100px; /* Adjust the height as desired */
	  padding: 20px 30px;
	  box-sizing: border-box;
	}

    .ui-dialog-content form header {
      margin: 0 0 20px;
    }

    .ui-dialog-content form .textarea {
      height: 150px;
      margin-bottom: 20px;
    }

    .ui-dialog-content .btn {
      margin: 0;
    }
  </style>
</head>
<body>
  <div class="container">
    <div id="dialog-form" title="Write a Review">
      <div class="dialog-content">
        <div class="star-widget">
          <input type="radio" name="rate" id="rate-5">
          <label for="rate-5" class="fas fa-star"></label>
          <input type="radio" name="rate" id="rate-4">
          <label for="rate-4" class="fas fa-star"></label>
          <input type="radio" name="rate" id="rate-3">
          <label for="rate-3" class="fas fa-star"></label>
          <input type="radio" name="rate" id="rate-2">
          <label for="rate-2" class="fas fa-star"></label>
          <input type="radio" name="rate" id="rate-1">
          <label for="rate-1" class="fas fa-star"></label>
        </div>
        <form action="#">
          <div class="textarea">
            <textarea cols="30" placeholder="Describe your experience.."></textarea>
          </div>
        </form>
      </div>
    </div>
    <div class="new-btn">
      <button id="open-dialog-button">Open Dialog</button>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
    const openDialogBtn = document.querySelector("#open-dialog-button");
    const dialogForm = $("#dialog-form");

    openDialogBtn.onclick = () => {
      dialogForm.dialog("open");
    };

    dialogForm.dialog({
      autoOpen: false,
      modal: true,
      width: 1000,
      height: "auto",
      resizable: false, // Disable resizing
      closeText: "",
      buttons: [
        {
          text: "Submit",
          click: function() {
            const dialogRating = $("#dialog-rating").val();
            const dialogReview = $("#dialog-review").val();

            // 여기서 서버에 평가와 리뷰를 전송하거나 처리합니다.
            console.log("Dialog Rating: " + dialogRating);
            console.log("Dialog Review: " + dialogReview);

            $(this).dialog("close");
          }
        }
      ]
    });

    // 별점 선택 위젯 설정
    $("#dialog-rating").selectmenu();

    // 오른쪽 위에 X 버튼을 생성하여 다이얼로그 닫기
    dialogForm.prepend('<button class="close-button">x</button>');
    dialogForm.find(".close-button").on("click", function() {
      dialogForm.dialog("close");
    });
  </script>
</body>
</html>
