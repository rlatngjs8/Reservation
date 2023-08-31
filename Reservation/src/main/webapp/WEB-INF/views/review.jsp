<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>리뷰 작성</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
        /* 별점 스타일링 */
        .star-rating {
            border: solid 1px #ccc;
            display: flex;
            flex-direction: row-reverse;
            font-size: 1.5em;
            justify-content: space-around;
            padding: 0 .2em;
            text-align: center;
            width: 5em;
        }
        .star-rating input {
            display: none;
        }
        .star-rating label {
            color: #ccc;
            cursor: pointer;
        }
        .star-rating :checked ~ label {
            color: #f90;
        }
        .star-rating label:hover,
        .star-rating label:hover ~ label {
            color: #fc0;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="mb-4">리뷰 작성</h1>
            <div class="rating">
                <div class="star-rating">
                    <input type="radio" id="5-stars" name="rating" value="5" />
                    <label for="5-stars" class="star">&#9733;</label>
                    <input type="radio" id="4-stars" name="rating" value="4" />
                    <label for="4-stars" class="star">&#9733;</label>
                    <input type="radio" id="3-stars" name="rating" value="3" />
                    <label for="3-stars" class="star">&#9733;</label>
                    <input type="radio" id="2-stars" name="rating" value="2" />
                    <label for="2-stars" class="star">&#9733;</label>
                    <input type="radio" id="1-star" name="rating" value="1" />
                    <label for="1-star" class="star">&#9733;</label>
                </div>
            </div>
            <br><br>
            
            <div class="form-group">
                <textarea class="form-control" id="content" name="content" rows="4" required></textarea>
            </div>
    	<button id="btn_insert" class="btn btn-primary" >등록하기</button>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
    $(document).on('click','#btn_insert',function(){
        const rating = document.querySelector('.star-rating input:checked').value;
        const content = document.getElementById('content').value;

        const reviewData = {
            rating: rating,
            review_content: review_content
        };

        $.ajax({
            url: '/review_insert',
            type: 'post',
            data: reviewData,
            success: function(response) {
                // 요청이 성공한 경우 수행할 작업
                console.log('리뷰 등록 성공:', response);
                // 여기에 리뷰 등록 후 작업을 추가할 수 있습니다.
            },
            error: function(error) {
                // 요청이 실패한 경우 수행할 작업
                console.error('리뷰 등록 실패:', error);
                // 실패 시 에러 처리를 수행하거나 사용자에게 알림을 보여줄 수 있습니다.
            }
        });
    });
    
    
    </script>
</body>
</html>
