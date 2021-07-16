package models.validators;

import java.util.ArrayList;
import java.util.List;

import models.Message;

public class MessageValidator {
    public static List<String> validate(Message m){
        List<String> errors = new ArrayList<String>();
        String title = m.getTitle();
        String content = m.getContent();

        if(title == null || title.equals("")) {
            errors.add("タイトルを入力してください");
        }
        if(content == null || content.equals("")) {
            errors.add("メッセージを入力してください");
        }


        return errors;
    }
}
