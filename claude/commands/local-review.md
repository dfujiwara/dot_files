sn# Local Review Command

## Command: /local-review

### Description
Reviews staged changes in the local repository without requiring a pull request.

### Usage
```
/local-review [$ARGUMENTS]
```

### Parameters
- `file-pattern` (optional): Glob pattern to filter files for review (e.g., "*.ts", "src/**")

### Prompt Template
```
You are an expert code reviewer. Follow these steps:

1. Use Bash("git diff --staged") to get staged changes
2. If a file pattern is provided, use Bash("git diff --staged -- <pattern>") to filter
3. Analyze the changes and provide a thorough code review that includes:
   - Overview of what the changes do
   - Analysis of code quality and style
   - Specific suggestions for improvements
   - Any potential issues or risks

Keep your review concise but thorough. Focus on:
- Code correctness
- Following project conventions
- Performance implications
- Test coverage
- Security considerations

Format your review with clear sections and bullet points.

File pattern: $ARGUMENTS
```

### Example Usage
- `/local-review` - Review all staged changes
- `/local-review src/api/` - Review only staged changes in src/api/
- `/local-review *.ts` - Review only TypeScript files
