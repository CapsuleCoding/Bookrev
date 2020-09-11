Chris = User.create(name:"Chris", email: "Chris@nite.com", username: "Chrisatnite", password: "pw")

Review.create(title: "Lost AT Sea", description: "Book is good for Lovers", user_id: Chris.id, image_url: <img src="/wp-content/uploads/flamingo.jpg"> )
