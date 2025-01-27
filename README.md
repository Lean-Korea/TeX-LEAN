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

    Each file may contain a formalized statement of a problem with `sorry` for proof, which is named via (sub)chapter and the exercise number:

    ```lean
    theorem DF_{Chapter}_{Subchapter}_{Number} : (Statement) := sorry
    ```

4. Add the lean file to `Formal/DF.lean` by importing it:

    ```lean
    import Formal.DF_{Chapter}.DF_{Chapter}_{Subchapter}_{Number}.lean
    ```

    Your lean file won't be checked by CI (Continuous Integration) if you miss this part.

4. Add a corresponding statement (in a natural language) as `Informal/DF_{Chapter}/DF_{Chapter}_{Subchapter}_{number}.tex`. Make sure that the number appears in `Informal/DF.pdf` (after compilation) matches - feel free to make dummy tex files for the missing exercises.

    ```latex
    \begin{prob}
        Statement of the exercise.
    \end{prob}
    ```

    Add the file to the `Informal/DF_{Chapter}/DF_{Chapter}.tex` under the corresponding section using `input`:

    ```latex
    \input{DF_{Chapter}/DF_{Chapter}_{Subchapter}_{Number}.tex}
    ```

5. Add and commit.

    ```sh
    git add .
    git commit -m "your own commit message"
    ```

6. Push to the remote (this GitHub repository)

    ```sh
    git push --set-upstream origin new_branch_name
    ```

7. Make a Pull Request, then you'll find that CI is running (build lean and tex files).

8. After all CI pass and getting at least two approvements, one of the admins would merge your PR.

## Tips

- Do NOT import whole `Mathlib`, which would take a lot of time to import. Instead, search (e.g. use [documentation](https://leanprover-community.github.io/mathlib4_docs/index.html)) and import specific files needed. Or you can write `#min_imports` at the bottom of the file and see the minimal imports that you need.
- If it is your first time doing Lean, then it may take some time. Ask questions on [Lean in Korea Zulip](https://lean-in-korea.zulipchat.com/). 

## Admins

박예찬 (ychpark-ks)

백진언 (jcpaik)

이규환 (automorphy)

이시우 (seewoo5)

이철희 (chlee-0)

최일규 (Ilkyoo)

황병학 (ByungHakHwang)
