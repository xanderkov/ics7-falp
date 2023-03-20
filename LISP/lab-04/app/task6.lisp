(defvar first_player)
(defvar second_player)


(defun bones_throw ()

    (print "Enter first bone: ")
    (setq bone1 (read))
    (print "Enter second bone: ")
    (setq bone2 (read))
    (setq ret (list bone1 bone2))
    ret

)


(defun check-easy-win (lst)
    (
        or ( = (+ (car lst) (cadr lst)) 7)
           ( = (+ (car lst) (cadr lst)) 11)
    )
)

(defun pass_check (lst)
    (
        or
        (   
            and (= (car lst) 1) (= (cadr lst) 1)
        )
        (   
            and (= (car lst) 6) (= (cadr lst) 6)
        )
    )
)


(defun play-game-second-player ()
    (print "Second player throw: ") 
    (setq second_player (bones_throw))
    (print second_player)

    (
        cond 
        (
            (check-easy-win second_player)
            (print "Second player wins") 
        )
        (
            (pass_check second_player)
            (play-game-second-player)
        )
        (
            T
            (
                cond
                (
                    (
                        >
                        (+ (car first_player) (cadr first_player))
                        (+ (car second_player) (cadr second_player))
                    )
                    (print "First player wins") 
                )
                (
                    (
                        <
                        (+ (car first_player) (cadr first_player))
                        (+ (car second_player) (cadr second_player))
                    )
                    (print "Second player wins") 
                )
                (
                    T
                    (print "Draw in the game")
                )
            )
        )
    )
)


(defun play-game-first-player ()

    (print "First player throws: ")
    (setq first_player (bones_throw))
    (print first_player)

    (
        cond
        (
            (check-easy-win first_player)
            (print "First player wins")
        )
        (
            (pass_check first_player)
            (play-game-first-player)
        )
        (
            T
            (play-game-second-player)
        )
    )

)


(play-game-first-player)