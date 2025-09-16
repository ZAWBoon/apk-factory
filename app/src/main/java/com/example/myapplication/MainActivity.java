```java
import android.content.Context;
import android.os.Environment;
import android.util.Log;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.charset.StandardCharsets;

public class MyActivity extends AppCompatActivity {

    private static final String TAG = "MyActivity";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Example usage
        try {
            String filePath = Environment.getExternalStorageDirectory().getAbsolutePath() + "/myFile.txt";
            File file = new File(filePath);

            // Check if the file exists.
            if (file.exists()) {
                String fileContent = readFile(file);
                Log.d(TAG, "File content: " + fileContent);
            } else {
                Log.e(TAG, "File does not exist: " + filePath);
            }

        } catch (IOException e) {
            Log.e(TAG, "Error reading file: " + e.getMessage(), e);
        }
    }

    private String readFile(File file) throws IOException {
        try (InputStream input = Files.newInputStream(file.toPath())) { // Use Files.newInputStream
            return new String(input.readAllBytes(), StandardCharsets.UTF_8); // Use readAllBytes
        }
    }
}
```
