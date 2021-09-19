package io.github.mawuku.memberdashboard.memberdashboard.model;

public enum Gender {
    MALE {
        @Override
        public String toString() {
            return "MALE";
        }
    },
    FEMALE {
        @Override
        public String toString() {
            return "FEMALE";
        }
    },
    OTHER {
        @Override
        public String toString() {
            return "OTHER";
        }
    };

    public boolean isMale(User user) {
        if (!(user.getGender() == Gender.MALE.toString()))
            return false;
        return true;
    }

    public boolean isFemale(User user) {
        if (!(user.getGender() == Gender.FEMALE.toString()))
            return false;
        return true;
    }

    public boolean isOther(User user) {
        if (!((user.getGender().equals(Gender.FEMALE.toString())) && (user.getGender().equals(Gender.MALE.toString()))))
            return true;
        return false;
    }

}
