# DB Info
	Host: localhost
	Port: 5555
	User: postgres
	Password: postgres
	Database: dvdrental

# Routes

	//Routes for film
	router.HandleFunc("/api/film/{id}", middleware.GetFilm).Methods("GET", "OPTIONS")
	router.HandleFunc("/api/film", middleware.GetAllFilm).Methods("GET", "OPTIONS")
	
	//Film filters
	router.HandleFunc("/api/film/title/{title}", middleware.GetFilmByTitle).Methods("GET", "OPTIONS")
	router.HandleFunc("/api/film/rating/{rating}", middleware.GetFilmByRating).Methods("GET", "OPTIONS")
	router.HandleFunc("/api/film/category/{category}", middleware.GetFilmByCategory).Methods("GET", "OPTIONS")

	//Routes for review
	router.HandleFunc("/api/review", middleware.GetAllReview).Methods("GET", "OPTIONS")
	router.HandleFunc("/api/newreview", middleware.CreateReview).Methods("POST", "OPTIONS")
	
	//Review filters
	router.HandleFunc("/api/film/reviews/{id}", middleware.GetReviewsByFilm).Methods("GET", "OPTIONS")

# Example Create Customer Review for Film by film_id

	URL: http://localhost:8080/api/newreview
	Body:
		{
		    "review_id":"1",
		    "review_text":"Testing New Review Insertion",
		    "rating":"5",
		    "customer_id":"3",
		    "film_id":"8"
		}
