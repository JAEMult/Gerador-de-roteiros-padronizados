// COMO USAR:
// 1. Copie este arquivo e renomeie a cópia para exatamente "config.local.js" (mesma pasta do app).
// 2. Preencha os valores abaixo com suas chaves reais.
// 3. Pronto — na próxima vez que abrir o app neste computador, essas chaves já vêm preenchidas
//    (só se ainda não houver nada salvo; nunca sobrescreve o que você já configurou na tela).
//
// IMPORTANTE:
// - "config.local.js" (sem o ".example") é ignorado pelo git e NUNCA é enviado pelo botão
//   "Salvar Backup no GitHub" (esse repositório é público — nunca coloque chaves reais nele).
// - Se você usa o app em mais de um computador, é só copiar esse ARQUIVO manualmente entre eles
//   (por pen drive, e-mail só pra você mesmo, etc.) — nunca pelo GitHub.
// - Deixe em branco ("") qualquer chave que você não usa.

window.ROTEIRO_LOCAL_CONFIG = {
  geminiKey: "",     // sua chave do Gemini (aistudio.google.com/apikey)
  groqKey: "",       // sua chave do Groq (console.groq.com/keys)
  githubToken: ""    // token do GitHub, só se for usar o botão "Salvar Backup no GitHub"
};
