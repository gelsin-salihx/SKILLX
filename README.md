# Master Gem Architect

Gemini Gem veya GPT için `PERSONA.md` üreten, chapter-by-chapter çalışan Codex Skill'i.

## Kurulum

PowerShell:

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\install-master-gem-architect.ps1
```

Windows CMD üzerinden `install-master-gem-architect.bat` dosyasını çift tıklayın.

Varsayılan kurulum konumu:

```text
%USERPROFILE%\.codex\skills\master-gem-architect
```

Kurulumdan sonra Codex'i yeniden başlatın veya Skill listesini yenileyin.

## Kullanım

Skill'i çağırıp persona hedefini verin. Skill şu sırayı uygular:

```text
DRAFT → REVIEW → LOCKED → sonraki chapter
```

Her chapter önceki kilitli kararlarla karşılaştırılır. Çelişki varsa sessizce değişiklik yapılmaz; revision request üretilir. Finalde iç build notları çıkarılarak bağımsız `PERSONA.md` oluşturulur.

## Paket yapısı

```text
master-gem-architect/
├── SKILL.md
├── agents/openai.yaml
├── references/architecture.md
├── references/workflow.md
└── assets/
    ├── chapter-template.md
    └── persona-template.md
```

Skill provider bağımsızdır ve Gemini/GPT persona talimatlarına odaklanır.

