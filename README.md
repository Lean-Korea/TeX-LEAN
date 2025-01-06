# Tex-LEAN

## Requirements

- Git
- [Lean4](https://github.com/leanprover/lean4)
- TeX

## How to contribute

0. Run `lake build`.
1. Make a new branch.

    ```
    git checkout -b new_branch_name
    ```

2. Write a lean file that formalizes a statement of an exercise. Each file has a name of the form `DF_{Chapter}_{Subchapter}_{Number}.lean`, which goes into the directory `Formal/DF_{Chapter}`. All the proofs will be `sorry` at the moment. **One exercise for one lean file**. If there's no directory for the chapter, make one for it.

    If it is your first time to do this, it may take some time to process.

3. Import the lean file to `Formal/DF.lean`

    ```lean
    import Formal.DF_{Chapter}.DF_{Chapter}_{Subchapter}_{Number}.lean
    ```

3. Add a corresponding statement (in a natural language) as `Informal/DF_{Chapter}/DF_{Chapter}_{Subchapter}_{number}.tex`. Make sure that the number appears in `Informal/DF.pdf` (after compilation) matches - feel free to make dummy tex files for the missing exercises.

    ```latex
    \begin{prob}
        Statement of the exercise.
    \end{prob}
    ```

4. Add and commit.

    ```sh
    git add .
    git commit -m "your own commit message"
    ```

4. Push to the remote (this GitHub repository)

    ```sh
    git push --set-upstream origin new_branch_name
    ```

5. Make Pull Request, then you'll see that CI is running (build lean and tex files).

6. After all CI pass and getting at least two approvements, squash merge your PR.

## Tips

- Do NOT import whole `Mathlib`, which would take a lot of time to import. Instead, search (e.g. use [documentation](https://leanprover-community.github.io/mathlib4_docs/index.html)) and import specific files needed. Or you can write `#min_imports` at the bottom of the file and see the minimal imports that you need.

## Participants

jcpaik

seewoo5

ByungHakHwang

automorphy

ychpark-ks

chlee-0

Ilkyoo

## Meeting on Dec 26

homework: upload latex-LEAN pair

## Meeting on Jan 3, 10:00 (KST)

check github functionality 
