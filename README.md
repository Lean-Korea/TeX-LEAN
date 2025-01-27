# TeX-LEAN

## Requirements

- Git
- [Lean4](https://github.com/leanprover/lean4)
- TeX

## How to contribute

0. Run `lake exe cache get`.
1. Make a new branch.

    ```
    git checkout -b new_branch_name
    ```

2. Write a lean file that formalizes a statement of an exercise. Name of each file must be of the form `DF_{Chapter}_{Subchapter}_{Number}.lean`, which goes into the directory `Formal/DF_{Chapter}`. All proofs will be `sorry` at the moment. **One exercise for one lean file**. If there's no directory for the chapter, then make one for it.

    If it is your first time doing this, then it may take some time to process. Ask questions on [Lean in Korea Zulip](https://lean-in-korea.zulipchat.com/). 

4. Import the lean file to `Formal/DF.lean`

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

## Admins

박예찬 (ychpark-ks)

백진언 (jcpaik)

이규환 (automorphy)

이시우 (seewoo5)

이철희 (chlee-0)

최일규 (Ilkyoo)

황병학 (ByungHakHwang)
