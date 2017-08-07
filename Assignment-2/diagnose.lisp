(defun ask ()
    (defparameter *flu* 0)
    (defparameter *hiv* 0)
    (defparameter *hep* 0)
    (defparameter *prge* 0)
    (defparameter *gender* 0)
    (princ "
    
    Welcome to Disease finder, Please select your gender:
    1 - Male
    2 - Female
    ")
)
(defun ask-number ()
    (let ((val (read)))
        (setf *gender* val)
        (if (eql *gender* 1)
            (princ "
            1 - Fever
            2 - Cough
            3 - Sore Throat
            4 - Stuffy Nose
            5 - Body Aches
            6 - Headaches
            7 - Fatigue
            8 - Chills
            9 - Rash
            10 - Night Sweats
            11 - Swollen lymph nodes
            12 - Mouth Ulcer
            13 - Rapid Weight Loss
            14 - Poor Apetite
            
            0 - End
            ")
            (princ "
            1 - Fever
            2 - Cough
            3 - Sore Throat
            4 - Stuffy Nose
            5 - Body Aches
            6 - Headaches
            7 - Fatigue
            8 - Chills
            9 - Rash
            10 - Night Sweats
            11 - Swollen lymph nodes
            12 - Mouth Ulcer
            13 - Rapid Weight Loss
            14 - Poor Apetite
            15 - Missing Periods
            16 - Increased Heart Rate
            17 - Change in Breasts size
            18 - Frequent Urination
            19 - Constipation
            20 - Vomitting
            21 - Change in Breasts size
            
            0 - End
            "))))

(defun choose()
    (let ((val (read)))
        (if (eql val 0)
            (if (eql *gender* 1) (format nil "You are diagnosed with FLU:~,2F% HIV:~,2F% Hepatitis:~,2F%" (/ *flu* 0.07) (/ *hiv* 0.10) (/ *hep* 0.03))
                            (format nil "You are diagnosed with FLU:~,2F% HIV:~,2F% Hepatitis:~,2F% Pregnancy:~,2F%" (/ *flu* 0.07) (/ *hiv* 0.10) (/ *hep* 0.03) (/ *prge* 0.07)))
            (cond ((eql val 1) (setf *flu* (+ *flu* 1)) (setf *hiv* (+ *hiv* 1)) (setf *hep* (+ *hep* 1)) (choose))
                ((eql val 2) (setf *flu* (+ *flu* 1)) (choose))
                ((eql val 3) (setf *flu* (+ *flu* 1)) (setf *hiv* (+ *hiv* 1)) (choose))
                ((eql val 4) (setf *flu* (+ *flu* 1)) (choose))
                ((eql val 5) (setf *flu* (+ *flu* 1)) (setf *hiv* (+ *hiv* 1)) (choose))
                ((eql val 6) (setf *flu* (+ *flu* 1)) (choose))
                ((eql val 7) (setf *flu* (+ *flu* 1)) (setf *hiv* (+ *hiv* 1)) (setf *hep* (+ *hep* 1)) (choose))
                ((eql val 8) (setf *hiv* (+ *hiv* 1))(choose))
                ((eql val 9) (setf *hiv* (+ *hiv* 1))(choose))
                ((eql val 10) (setf *hiv* (+ *hiv* 1))(choose))
                ((eql val 11) (setf *hiv* (+ *hiv* 1))(choose))
                ((eql val 12) (setf *hiv* (+ *hiv* 1))(choose))
                ((eql val 13) (setf *hiv* (+ *hiv* 1))(choose))
                ((eql val 14) (setf *hep* (+ *hep* 1))(choose))
                ((eql val 15) (setf *prge* (+ *prge* 1))(choose))
                ((eql val 16) (setf *prge* (+ *prge* 1))(choose))
                ((eql val 17) (setf *prge* (+ *prge* 1))(choose))
                ((eql val 18) (setf *prge* (+ *prge* 1))(choose))
                ((eql val 19) (setf *prge* (+ *prge* 1))(choose))
                ((eql val 20) (setf *prge* (+ *prge* 1))(choose))
                ((eql val 21) (setf *prge* (+ *prge* 1))(choose))
                (t (princ "input a valid number")(choose))
            )
        )
    )
)

(defun diagnose()
    (ask)
    (ask-number)
    (choose)
)