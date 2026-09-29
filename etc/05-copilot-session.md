# Copilot CLI Session

> [!NOTE]
> - **Session ID:** `29191d84-337d-4cd3-a107-f687dae2d415`  
> - **Started:** 2026-09-27, 8:54:50 p.m.  
> - **Duration:** 3m 5s  
> - **Exported:** 2026-09-27, 8:57:55 p.m.  

---

<sub>0s</sub>

### Info

Tip: /diff

---

<sub>0s</sub>

### Info

No copilot-instructions.md found. Run /init to generate.

---

<sub>12s</sub>

### User

Find the part of this codebase responsible for naming audio tracks after importing via drag-and-drop

---

<sub>15s</sub>

### Copilot

I’ll trace the drag-and-drop import path to where the imported track title is assigned.

---

<sub>17s</sub>

### `rg`

**drag.?and.?drop|DragAndDrop|OnDrop|dropEvent**

"drag.?and.?drop|DragAndDrop|OnDrop|dropEvent" in *.{cpp,h,hpp,mm}

<details>
<summary>9 matches</summary>

```
/home/ccurtis/Documents/projects/audacity/au3/libraries/au3-module-manager/PluginManager.cpp
/home/ccurtis/Documents/projects/audacity/au3/libraries/au3-vst/VSTEffectsModule.cpp
/home/ccurtis/Documents/projects/audacity/src/projectscene/tests/trackitemsmovecontroller_tests.cpp
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.h
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp
/home/ccurtis/Documents/projects/audacity/au3/src/DropTarget.cpp
/home/ccurtis/Documents/projects/audacity/au3/src/MovableControl.h
/home/ccurtis/Documents/projects/audacity/au3/src/prefs/ExtImportPrefs.h
/home/ccurtis/Documents/projects/audacity/au3/src/prefs/ExtImportPrefs.cpp
```

</details>


---

<sub>17s</sub>

### `rg`

**SetName\(|SetTrackName\(|TrackName|SetTitle\(**

"SetName\(|SetTrackName\(|TrackName|SetTitle\(" in *.{cpp,h,hpp}

<details>
<summary>7 matches</summary>

```
Output too large to read at once (65.4 KB). Saved to: /tmp/copilot-tool-output-1790564107168-1.txt
Consider using tools like rg (for searching), head/tail (for viewing start/end), view with view_range (for specific sections), or jq (for JSON) to examine portions of the output.

Preview (first 500 chars):
/home/ccurtis/Documents/projects/audacity/au3/libraries/au3-label-track/LabelTrack.cpp:    track->SetName(name);
/home/ccurtis/Documents/projects/audacity/au3/libraries/au3-label-track/LabelTrack.cpp:    return Create(trackList, trackList.MakeUniqueTrackName(GetDefaultName()));
/home/ccurtis/Documents/projects/audacity/au3/libraries/au3-label-track/LabelTrack.cpp:    track->SetName(trackList.MakeUniqueTrackName(GetDefaultName()));
/home/ccurtis/Documents/projects/audacity/au3/modules/track-ui/mo
```

</details>


---

<sub>17s</sub>

### `rg`

**Import.*File|ImportFiles|ImportAudio**

"Import.*File|ImportFiles|ImportAudio" in *.{cpp,h,hpp}

<details>
<summary>46 matches</summary>

```
/home/ccurtis/Documents/projects/audacity/au3/src/BatchProcessDialog.cpp
/home/ccurtis/Documents/projects/audacity/au3/libraries/au3-label-track/LabelTrack.h
/home/ccurtis/Documents/projects/audacity/au3/libraries/au3-label-track/LabelTrack.cpp
/home/ccurtis/Documents/projects/audacity/au3/libraries/au3-import-export/ImportProgressListener.h
/home/ccurtis/Documents/projects/audacity/au3/libraries/au3-import-export/ImportPlugin.h
/home/ccurtis/Documents/projects/audacity/au3/libraries/au3-import-export/ImportPlugin.cpp
/home/ccurtis/Documents/projects/audacity/au3/libraries/au3-import-export/Import.cpp
/home/ccurtis/Documents/projects/audacity/au3/src/ProjectFileManager.h
/home/ccurtis/Documents/projects/audacity/au3/src/ProjectFileManager.cpp
/home/ccurtis/Documents/projects/audacity/au3/modules/track-ui/mod-midi-import-export/ImportMIDI.cpp
/home/ccurtis/Documents/projects/audacity/src/importexport/labels/internal/au3/au3labelsimporter.cpp
/home/ccurtis/Documents/projects/audacity/src/importexport/import/tests/legacyaupimporter_tests.cpp
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/legacyaupimporter.cpp
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp
/home/ccurtis/Documents/projects/audacity/au3/src/import/ImportRaw.cpp
/home/ccurtis/Documents/projects/audacity/au3/src/import/ImportStreamDialog.h
/home/ccurtis/Documents/projects/audacity/au3/src/import/ImportStreamDialog.cpp
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.h
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp
/home/ccurtis/Documents/projects/audacity/au3/modules/import-export/mod-wavpack/ImportWavPack.h
/home/ccurtis/Documents/projects/audacity/au3/modules/import-export/mod-flac/ImportFLAC.h
/home/ccurtis/Documents/projects/audacity/au3/modules/import-export/mod-wavpack/ImportWavPack.cpp
/home/ccurtis/Documents/projects/audacity/au3/modules/import-export/mod-flac/ImportFLAC.cpp
/home/ccurtis/Documents/projects/audacity/au3/modules/import-export/mod-pcm/ImportPCM.h
/home/ccurtis/Documents/projects/audacity/au3/modules/import-export/mod-pcm/ImportPCM.cpp
/home/ccurtis/Documents/projects/audacity/au3/modules/import-export/mod-opus/ImportOpus.h
/home/ccurtis/Documents/projects/audacity/au3/modules/import-export/mod-opus/ImportOpus.cpp
/home/ccurtis/Documents/projects/audacity/au3/modules/import-export/mod-ogg/ImportOGG.h
/home/ccurtis/Documents/projects/audacity/au3/modules/import-export/mod-ogg/ImportOGG.cpp
/home/ccurtis/Documents/projects/audacity/au3/modules/import-export/mod-mpg123/ImportMP3_MPG123.h
/home/ccurtis/Documents/projects/audacity/au3/modules/import-export/mod-mpg123/ImportMP3_MPG123.cpp
/home/ccurtis/Documents/projects/audacity/au3/src/prefs/ExtImportPrefs.cpp
/home/ccurtis/Documents/projects/audacity/au3/src/prefs/ImportExportPrefs.cpp
/home/ccurtis/Documents/projects/audacity/au3/modules/import-export/mod-lof/ImportLOF.cpp
/home/ccurtis/Documents/projects/audacity/au3/src/commands/ImportExportCommands.cpp
/home/ccurtis/Documents/projects/audacity/au3/src/menus/FileMenus.cpp
/home/ccurtis/Documents/projects/audacity/au3/modules/import-export/mod-ffmpeg/ImportFFmpeg.h
/home/ccurtis/Documents/projects/audacity/au3/src/menus/EditMenus.cpp
/home/ccurtis/Documents/projects/audacity/au3/modules/import-export/mod-ffmpeg/ImportFFmpeg.cpp
/home/ccurtis/Documents/projects/audacity/au3/modules/import-export/mod-aup/ImportAUP.cpp
/home/ccurtis/Documents/projects/audacity/au3/libraries/au3-project/Project.h
/home/ccurtis/Documents/projects/audacity/au3/libraries/au3-project/Project.cpp
/home/ccurtis/Documents/projects/audacity/au3/libraries/au3-module-manager/PluginDescriptor.h
/home/ccurtis/Documents/projects/audacity/au3/libraries/au3-module-manager/PluginDescriptor.cpp
/home/ccurtis/Documents/projects/audacity/src/app/guiapp.cpp
/home/ccurtis/Documents/projects/audacity/src/effects/effects_base/internal/effectpresetsscenario.cpp
```

</details>


---

<sub>20s</sub>

### `view`

**view the file at /home/ccurtis/Documents/projects/audacity/au3/src/DropTarget.cpp.**

/home/ccurtis/Documents/projects/audacity/au3/src/DropTarget.cpp

<details>
<summary>178 lines</summary>

```
1. /**********************************************************************
2. 
3.   Audacity: A Digital Audio Editor
4. 
5.   @file DropTarget.cpp
6.   @brief Inject drag-and-drop importation of files
7. 
8.   Paul Licameli split from ProjectManager.cpp
9. 
10. **********************************************************************/
11. 
12. #include <wx/dataobj.h>
13. #include <wx/dnd.h>
14. 
15. #include "AudacityException.h"
16. #include "FileNames.h"
17. #include "Project.h"
18. #include "ProjectFileManager.h"
19. #include "TrackPanel.h"
20. 
21. #if wxUSE_DRAG_AND_DROP
22. class FileObject final : public wxFileDataObject
23. {
24. public:
25.     FileObject()
26.     {
27.     }
28. 
29.     bool IsSupportedFormat(const wxDataFormat& format, Direction WXUNUSED(dir = Get)) const
30.     // PRL:  This function does NOT override any inherited virtual!  What does it do?
31.     {
32.         if (format.GetType() == wxDF_FILENAME) {
33.             return true;
34.         }
35. 
36. #if defined(__WXMAC__)
37. #if !wxCHECK_VERSION(3, 0, 0)
38.         if (format.GetFormatId() == kDragPromisedFlavorFindFile) {
39.             return true;
40.         }
41. #endif
42. #endif
43. 
44.         return false;
45.     }
46. };
47. 
48. class DropTarget final : public wxFileDropTarget
49. {
50. public:
51.     DropTarget(AudacityProject* proj)
52.     {
53.         mProject = proj;
54. 
55.         // SetDataObject takes ownership
56.         SetDataObject(safenew FileObject());
57.     }
58. 
59.     ~DropTarget()
60.     {
61.     }
62. 
63. #if defined(__WXMAC__)
64. #if !wxCHECK_VERSION(3, 0, 0)
65.     bool GetData() override
66.     {
67.         bool foundSupported = false;
68.         bool firstFileAdded = false;
69.         OSErr result;
70. 
71.         UInt16 items = 0;
72.         CountDragItems((DragReference)m_currentDrag, &items);
73. 
74.         for (UInt16 index = 1; index <= items; index++) {
75.             DragItemRef theItem = 0;
76.             GetDragItemReferenceNumber((DragReference)m_currentDrag, index, &theItem);
77. 
78.             UInt16 flavors = 0;
79.             CountDragItemFlavors((DragReference)m_currentDrag, theItem, &flavors);
80. 
81.             for (UInt16 flavor = 1; flavor <= flavors; flavor++) {
82.                 FlavorType theType = 0;
83.                 result = GetFlavorType((DragReference)m_currentDrag, theItem, flavor, &theType);
84.                 if (theType != kDragPromisedFlavorFindFile && theType != kDragFlavorTypeHFS) {
85.                     continue;
86.                 }
87.                 foundSupported = true;
88. 
89.                 Size dataSize = 0;
90.                 GetFlavorDataSize((DragReference)m_currentDrag, theItem, theType, &dataSize);
91. 
92.                 ArrayOf<char> theData{ dataSize };
93.                 GetFlavorData((DragReference)m_currentDrag, theItem, theType, (void*)theData.get(), &dataSize, 0L);
94. 
95.                 wxString name;
96.                 if (theType == kDragPromisedFlavorFindFile) {
97.                     name = wxMacFSSpec2MacFilename((FSSpec*)theData.get());
98.                 } else if (theType == kDragFlavorTypeHFS) {
99.                     name = wxMacFSSpec2MacFilename(&((HFSFlavor*)theData.get())->fileSpec);
100.                 }
101. 
102.                 if (!firstFileAdded) {
103.                     // reset file list
104.                     ((wxFileDataObject*)GetDataObject())->SetData(0, "");
105.                     firstFileAdded = true;
106.                 }
107. 
108.                 ((wxFileDataObject*)GetDataObject())->AddFile(name);
109. 
110.                 // We only want to process one flavor
111.                 break;
112.             }
113.         }
114.         return foundSupported;
115.     }
116. 
117. #endif
118. 
119.     bool OnDrop(wxCoord x, wxCoord y) override
120.     {
121.         // bool foundSupported = false;
122. #if !wxCHECK_VERSION(3, 0, 0)
123.         bool firstFileAdded = false;
124.         OSErr result;
125. 
126.         UInt16 items = 0;
127.         CountDragItems((DragReference)m_currentDrag, &items);
128. 
129.         for (UInt16 index = 1; index <= items; index++) {
130.             DragItemRef theItem = 0;
131.             GetDragItemReferenceNumber((DragReference)m_currentDrag, index, &theItem);
132. 
133.             UInt16 flavors = 0;
134.             CountDragItemFlavors((DragReference)m_currentDrag, theItem, &flavors);
135. 
136.             for (UInt16 flavor = 1; flavor <= flavors; flavor++) {
137.                 FlavorType theType = 0;
138.                 result = GetFlavorType((DragReference)m_currentDrag, theItem, flavor, &theType);
139.                 if (theType != kDragPromisedFlavorFindFile && theType != kDragFlavorTypeHFS) {
140.                     continue;
141.                 }
142.                 return true;
143.             }
144.         }
145. #endif
146.         return CurrentDragHasSupportedFormat();
147.     }
148. 
149. #endif
150. 
151.     bool OnDropFiles(wxCoord WXUNUSED(x), wxCoord WXUNUSED(y), const wxArrayString& filenames) override
152.     {
153.         // Experiment shows that this function can be reached while there is no
154.         // catch block above in wxWidgets.  So stop all exceptions here.
155.         return GuardedCall<bool>(
156.             [&] { return ProjectFileManager::Get(*mProject).Import(filenames); });
157.     }
158. 
159. private:
160.     AudacityProject* mProject;
161. };
162. 
163. // Hook the construction of projects
164. static const AudacityProject::AttachedObjects::RegisteredFactory key{
165.     [](AudacityProject& project) {
166.         // We can import now, so become a drag target
167.         //   SetDropTarget(safenew AudacityDropTarget(this));
168.         //   mTrackPanel->SetDropTarget(safenew AudacityDropTarget(this));
169. 
170.         TrackPanel::Get(project)
171.         .SetDropTarget(
172.             // SetDropTarget takes ownership
173.             safenew DropTarget(&project));
174.         return nullptr;
175.     }
176. };
177. #endif
178.
```

</details>


---

<sub>20s</sub>

### `rg`

**SetName\(**

"SetName\(" (au3/libraries/au3-import-export/Import.cpp)

```
No matches found.
```


---

<sub>20s</sub>

### `rg`

**SetName\(|track.*[Nn]ame|[Nn]ame.*track**

"SetName\(|track.*[Nn]ame|[Nn]ame.*track" (src/importexport/import/internal/au3/au3importer.cpp)

<details>
<summary>50 matches</summary>

```
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-    for (auto& holder : tmpTracks) {
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-        if (auto* wt = dynamic_cast<WaveTrack*>(holder.get())) {
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-            importedWaveTracks.push_back(wt);
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-            for (const auto& interval : wt->Intervals()) {
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp:                interval->SetName(baseName);
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-            }
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-        }
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-        holder->ShiftBy(startTime);
--
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-    wxFileName fn(wxFromPath(fileName));
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-    double newRate = 0;
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp:    wxString trackNameBase = fn.GetName();
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-    int i = -1;
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-    // Fix the bug 2109.
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-    // In case the project had soloed tracks before importing,
--
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-    newTracks.clear();
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-    // Now name them
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp:    // Add numbers to track names only if there is more than one (mono or stereo)
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-    // track (not necessarily, more than one channel)
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-    const bool useSuffix = results.size() > 1;
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-    for (const auto& newTrack : results) {
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-        ++i;
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-        newTrack->SetSelected(true);
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-        if (useSuffix) {
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp:            //: Name default name assigned to a clip on track import
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp:            newTrack->SetName(wxFromString(::TranslatableString("import-export", "%1 %2", "clip name template")
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp:                                           .arg(trackNameBase).arg(i + 1).translated()));
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-        } else {
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp:            newTrack->SetName(trackNameBase);
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-        }
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-        newTrack->TypeSwitch([&](WaveTrack& wt) {
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-            if (newRate == 0) {
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-                newRate = wt.GetRate();
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-            }
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp:            const auto trackName = wt.GetName();
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-            for (const auto& interval : wt.Intervals()) {
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp:                interval->SetName(trackName);
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-            }
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-        });
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-    }
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-
```

</details>


---

<sub>20s</sub>

### `rg`

**drop|Drop|import**

"drop|Drop|import" (src/project/internal/projectactionscontroller.cpp)

<details>
<summary>117 matches</summary>

```
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-const muse::actions::ActionCodeList& prohibitedWhileRecording()
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-{
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    static const muse::actions::ActionCodeList codes {
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        "file-close",
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp:        "project-import",
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        "file-save",
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        "file-save-to-cloud",
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        "file-save-as",
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        "export-audio",
--
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    static const std::unordered_set<muse::actions::ActionCode> codes {
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        "file-new",
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        "file-open",
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        "file-open-recent",
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp:        "project-import-startup-media",
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        "cloud-file-open",
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        "continue-last-session",
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        "clear-recent",
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        "audacity://cloud/open-audio-file",
--
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    dispatcher()->reg(this, "file-open", this, &ProjectActionsController::open);
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    dispatcher()->reg(this, "file-open-recent", this, &ProjectActionsController::open);
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    dispatcher()->reg(this, "cloud-file-open", this, &ProjectActionsController::openCloudProject);
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    dispatcher()->reg(this, "clear-recent", this, &ProjectActionsController::clearRecentProjects);
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp:    dispatcher()->reg(this, "project-import", this, &ProjectActionsController::importFiles);
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp:    dispatcher()->reg(this, "project-import-startup-media", this, &ProjectActionsController::importStartupMedia);
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    dispatcher()->reg(this, "file-save", [this]() { saveProject(SaveMode::Save); });
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    dispatcher()->reg(this, "file-save-to-cloud", [this]() { saveProject(SaveMode::Save, SaveLocationType::Cloud); });
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    //! TODO AU4: decide whether to implement these functions from scratch in AU4 or
--
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        openPageIfNeed(HOME_PAGE_URI);
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    }
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-}
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp:void ProjectActionsController::importFiles(const muse::actions::ActionData& args)
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-{
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    const IAudacityProjectPtr project = globalContext()->currentProject();
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    if (!project) {
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        return;
--
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    if (filePaths.empty()) {
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        return;
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    }
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp:    project->import(filePaths);
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-}
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp:void ProjectActionsController::importStartupMedia(const muse::actions::ActionData& args)
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-{
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    const QStringList files = !args.empty() ? args.arg<QStringList>(0) : QStringList();
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    const bool removeAfterImport = args.count() >= 2 ? args.arg<bool>(1) : false;
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-
--
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    if (globalContext()->currentProject()) {
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        QStringList args;
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        args << "--session-type" << "start-with-new";
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        for (const auto& actualPath : actualPaths) {
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp:            args << "--import-media-file" << actualPath.toQString();
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        }
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        multiwindowsProvider()->openNewWindow(args);
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        return make_ret(Ret::Code::Ok);
--
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    if (!ret) {
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        return ret;
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    }
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp:    return project->import(actualPaths);
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-}
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-bool ProjectActionsController::isUrlSupported(const QUrl& url) const
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-{
--
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    if (ext.empty()) {
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        return false;
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    }
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp:    const auto supportedExtensions = importer()->supportedExtensions();
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    return std::find(supportedExtensions.cbegin(), supportedExtensions.cend(), ext) != supportedExtensions.cend();
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-}
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-bool ProjectActionsController::closeOpenedProject(const bool quitApp)
--
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-}
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-muse::io::paths_t ProjectActionsController::selectOpeningFiles()
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-{
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp:    std::vector<std::string> supportedExtensions = importer()->supportedExtensions();
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    std::string mediaExt;
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    for (const std::string& ext : supportedExtensions) {
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        if (ext.empty()) {
--
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        const auto project = globalContext()->currentProject();
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        if (project) {
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-            QStringList args;
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-            args << "--session-type" << "start-with-new";
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp:            args << "--import-media-file" << localPath;
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp:            args << "--remove-media-after-import";
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-            multiwindowsProvider()->openNewWindow(args);
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-            return;
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        }
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-
--
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        if (!newproject) {
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-            return;
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        }
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp:        const auto importRet = newproject->import(muse::io::paths_t { localPath });
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        fileSystem()->remove(localPath);
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp:        if (!importRet) {
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp:            LOGE() << importRet.toString();
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-            return;
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        }
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        openPageIfNeed(PROJECT_PAGE_URI);
```

</details>


---

<sub>25s</sub>

### `view`

**view the file at /home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp.**

/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp (lines 210-355)

<details>
<summary>146 lines</summary>

```
210.             return false;
211.         }
212. 
213.         if (!track.title.empty()) {
214.             tracksInteraction()->changeTrackTitle(trackId, muse::String::fromUtf8(track.title));
215.         }
216. 
217.         for (const LegacyAupImporter::Clip& clip : track.clips) {
218.             if (!importIntoTrackInternal(clip.filePath, trackId, clip.startTime, false, false)) {
219.                 return false;
220.             }
221.         }
222.     }
223. 
224.     Au3Project* project = reinterpret_cast<Au3Project*>(globalContext()->currentProject()->au3ProjectPtr());
225.     auto& tracks = Au3TrackList::Get(*project);
226.     const auto trackeditProject = globalContext()->currentTrackeditProject();
227. 
228.     for (const LegacyAupImporter::LabelTrack& track : legacyProject.labelTracks) {
229.         Au3LabelTrack* labelTrack = !track.title.empty()
230.                                     ? ::LabelTrack::Create(tracks, wxFromString(muse::String::fromUtf8(track.title)))
231.                                     : ::LabelTrack::Create(tracks);
232. 
233.         for (const LegacyAupImporter::Label& label : track.labels) {
234.             labelTrack->AddLabel(SelectedRegion(label.startTime, label.endTime),
235.                                  wxFromString(muse::String::fromUtf8(label.title)));
236.         }
237. 
238.         if (trackeditProject) {
239.             trackeditProject->notifyAboutTrackAdded(DomConverter::labelTrack(labelTrack));
240. 
241.             const auto& labels = labelTrack->GetLabels();
242.             for (size_t i = 0; i < labels.size(); ++i) {
243.                 trackeditProject->notifyAboutLabelAdded(DomConverter::label(labelTrack, &labels[i]));
244.             }
245.         }
246.     }
247. 
248.     applyImportedProjectTitleIfNeeded(filePath);
249.     return true;
250. }
251. 
252. bool au::importexport::Au3Importer::importIntoTrack(const muse::io::path_t& filePath,
253.                                                     trackedit::TrackId dstTrackId,
254.                                                     muse::secs_t startTime)
255. {
256.     return importIntoTrackInternal(filePath, dstTrackId, startTime, true, true);
257. }
258. 
259. bool au::importexport::Au3Importer::importIntoTrackInternal(const muse::io::path_t& filePath,
260.                                                             trackedit::TrackId dstTrackId,
261.                                                             muse::secs_t startTime,
262.                                                             bool applyProjectTitle,
263.                                                             bool runTempoDetection)
264. {
265.     const bool projectWasEmpty = isProjectEmpty();
266. 
267.     Au3Project* project = reinterpret_cast<Au3Project*>(globalContext()->currentProject()->au3ProjectPtr());
268. 
269.     TrackHolders tmpTracks;
270.     auto oldTags = Tags::Get(*project).shared_from_this();
271.     bool committed = false;
272.     auto cleanup = finally([&]{
273.         if (!committed) {
274.             Tags::Set(*project, oldTags);
275.         }
276.     });
277.     auto newTags = oldTags->Duplicate();
278.     Tags::Set(*project, newTags);
279.     std::optional<LibFileFormats::AcidizerTags> acidTags;
280.     TranslatableString errorMessage;
281. 
282.     {
283.         ImportProgress importProgressListener(*project);
284.         const wxString wxPath = wxFromPath(filePath);
285.         const bool ok = Importer::Get().Import(
286.             *project,
287.             wxPath,
288.             &importProgressListener,
289.             &WaveTrackFactory::Get(*project),
290.             tmpTracks,
291.             newTags.get(),
292.             acidTags,
293.             errorMessage
294.             );
295. 
296.         if (!ok || tmpTracks.empty()) {
297.             return false;
298.         }
299.     } // ImportProgress (and its dialog) destroyed here, before tempo detection
300. 
301.     wxString baseName = wxFromPath(muse::io::filename(filePath, false));
302.     std::vector<ITrackDataPtr> importedData;
303.     std::vector<WaveTrack*> importedWaveTracks;
304.     for (auto& holder : tmpTracks) {
305.         if (auto* wt = dynamic_cast<WaveTrack*>(holder.get())) {
306.             importedWaveTracks.push_back(wt);
307.             for (const auto& interval : wt->Intervals()) {
308.                 interval->SetName(baseName);
309.             }
310.         }
311. 
312.         holder->ShiftBy(startTime);
313.         importedData.push_back(std::make_shared<Au3TrackData>(holder));
314.     }
315. 
316.     bool modifiedState = false;
317.     selectionController()->setSelectedTracks({ dstTrackId }, true);
318.     muse::Ret pasteRet = tracksInteraction()->paste(importedData, 0.0, false /* moveClips */, false /* moveAllTracks */,
319.                                                     true /* isMultiSelectionCopy */, modifiedState);
320.     if (!pasteRet) {
321.         return false;
322.     }
323. 
324.     if (applyProjectTitle) {
325.         applyImportedProjectTitleIfNeeded(filePath);
326.     }
327. 
328.     std::vector<trackedit::TrackId> dstTrackIds(importedWaveTracks.size(), dstTrackId);
329.     if (runTempoDetection) {
330.         m_tempoDetection->onFilesImported({ filePath }, importedWaveTracks, dstTrackIds, acidTags, projectWasEmpty);
331.     }
332. 
333.     return true;
334. }
335. 
336. bool au::importexport::Au3Importer::importFromSystemClipboard(
337.     const std::vector<muse::io::path_t>& filePaths, muse::secs_t startTime)
338. {
339.     // this is basically the same as drag&drop import so utilizing DropController to do the job
340.     projectscene::DropController dc;
341.     dc.setContext(iocContext());
342. 
343.     trackedit::TrackId startingTrack = -1;
344.     auto selectedTracks = selectionController()->selectedTracks();
345.     if (!selectedTracks.empty()) {
346.         startingTrack = selectedTracks.front();
347.     }
348. 
349.     QStringList files;
350.     for (const auto& path : filePaths) {
351.         files.append(path.toQString());
352.     }
353. 
354.     dc.startImportSession();
355.     dc.probeAudioFiles(files);
```

</details>


---

<sub>25s</sub>

### `view`

**view the file at /home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp.**

/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp

<details>
<summary>55 lines</summary>

```
1. /*
2.  * SPDX-License-Identifier: GPL-3.0-only
3.  * MuseScore-CLA-applies
4.  *
5.  * MuseScore
6.  * Music Composition & Notation
7.  *
8.  * Copyright (C) 2021 MuseScore BVBA and others
9.  *
10.  * This program is free software: you can redistribute it and/or modify
11.  * it under the terms of the GNU General Public License version 3 as
12.  * published by the Free Software Foundation.
13.  *
14.  * This program is distributed in the hope that it will be useful,
15.  * but WITHOUT ANY WARRANTY; without even the implied warranty of
16.  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
17.  * GNU General Public License for more details.
18.  *
19.  * You should have received a copy of the GNU General Public License
20.  * along with this program.  If not, see <https://www.gnu.org/licenses/>.
21.  */
22. 
23. #include "windowdroparea.h"
24. 
25. #include "log.h"
26. 
27. using namespace au::appshell;
28. 
29. WindowDropArea::WindowDropArea(QQuickItem* parent)
30.     : QQuickItem(parent), muse::Contextable(muse::iocCtxForQmlObject(this))
31. {
32.     setFlag(ItemAcceptsDrops, true);
33. }
34. 
35. void WindowDropArea::dragEnterEvent(QDragEnterEvent* event)
36. {
37.     if (applicationActionController()) {
38.         applicationActionController()->onDragEnterEvent(event);
39.     }
40. }
41. 
42. void WindowDropArea::dragMoveEvent(QDragMoveEvent* event)
43. {
44.     if (applicationActionController()) {
45.         applicationActionController()->onDragMoveEvent(event);
46.     }
47. }
48. 
49. void WindowDropArea::dropEvent(QDropEvent* event)
50. {
51.     if (applicationActionController()) {
52.         applicationActionController()->onDropEvent(event);
53.     }
54. }
55.
```

</details>


---

<sub>25s</sub>

### `view`

**view the file at /home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp.**

/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp (lines 80-175)

<details>
<summary>96 lines</summary>

```
80. 
81.     void OnImportResult(ImportResult result) override
82.     {
83.         //! TODO: AU4
84.         UNUSED(result);
85.     }
86. 
87. private:
88. 
89.     ImportFileHandle* mImportFileHandle { nullptr };
90.     std::unique_ptr<BasicUI::ProgressDialog> mProgressDialog;
91. };
92. 
93. au::importexport::Au3Importer::Au3Importer(const muse::modularity::ContextPtr& ctx)
94.     : muse::Contextable(ctx)
95.     , m_tempoDetection(std::make_unique<TempoDetection>(ctx))
96. {
97. }
98. 
99. au::importexport::Au3Importer::~Au3Importer() = default;
100. 
101. au::importexport::FileInfo au::importexport::Au3Importer::fileInfo(const muse::io::path_t& filePath)
102. {
103.     if (LegacyAupImporter::isLegacyAupFile(filePath)) {
104.         FileInfo fileInfo;
105.         fileInfo.path = filePath;
106.         fileInfo.trackCount = 1;
107.         return fileInfo;
108.     }
109. 
110.     Au3Project* project = reinterpret_cast<Au3Project*>(globalContext()->currentProject()->au3ProjectPtr());
111.     auto importPlugins = Importer::sImportPluginList();
112. 
113.     FileInfo fileInfo;
114.     for (const auto plugin : importPlugins) {
115.         if (!plugin->SupportsExtension(suffix(filePath))) {
116.             continue;
117.         }
118. 
119.         auto inFile = plugin->Open(wxFromPath(filePath), project);
120.         if ((inFile != NULL) && (inFile->GetStreamCount() > 0)) {
121.             fileInfo.path = filePath;
122.             fileInfo.duration = inFile->GetDuration();
123.             fileInfo.trackCount = inFile->GetRequiredTrackCount();
124. 
125.             return fileInfo;
126.         }
127.     }
128. 
129.     return FileInfo{};
130. }
131. 
132. bool au::importexport::Au3Importer::import(const muse::io::path_t& filePath)
133. {
134.     const std::string ext = suffix(filePath);
135.     for (const std::string& labelExt : labelsImporter()->supportedExtensions()) {
136.         if (labelExt == ext) {
137.             return labelsImporter()->importData(filePath).success();
138.         }
139.     }
140. 
141.     if (LegacyAupImporter::isLegacyAupFile(filePath)) {
142.         return importLegacyAup(filePath);
143.     }
144. 
145.     const bool projectWasEmpty = isProjectEmpty();
146. 
147.     Au3Project* project = reinterpret_cast<Au3Project*>(globalContext()->currentProject()->au3ProjectPtr());
148. 
149.     auto oldTags = Tags::Get(*project).shared_from_this();
150.     bool committed = false;
151.     auto cleanup = finally([&]{
152.         if (!committed) {
153.             Tags::Set(*project, oldTags);
154.         }
155.     });
156.     auto newTags = oldTags->Duplicate();
157.     Tags::Set(*project, newTags);
158. 
159.     TrackHolders newTracks;
160.     TranslatableString errorMessage;
161.     std::optional<LibFileFormats::AcidizerTags> acidTags;
162.     {
163.         ImportProgress importProgress(*project);
164.         bool success = Importer::Get().Import(
165.             *project, wxFromPath(filePath), &importProgress, &WaveTrackFactory::Get(*project),
166.             newTracks, newTags.get(), acidTags, errorMessage);
167. 
168.         if (!success) {
169.             return false;
170.         }
171.     } // ImportProgress (and its dialog) destroyed here, before tempo detection
172. 
173.     const auto projectTempo = ProjectTimeSignature::Get(*project).GetTempo();
174.     for (auto track : newTracks) {
175.         DoProjectTempoChange(*track, projectTempo);
```

</details>


---

<sub>25s</sub>

### `rg`

**WindowDropArea|windowdroparea|project-import**

"WindowDropArea|windowdroparea|project-import" in *.{cpp,h,qml} (src)

<details>
<summary>120 matches</summary>

```
/home/ccurtis/Documents/projects/audacity/src/app/guiapp.cpp-        for (const auto& file : parsed->startup.mediaFiles) {
/home/ccurtis/Documents/projects/audacity/src/app/guiapp.cpp-            files << file.toQString();
/home/ccurtis/Documents/projects/audacity/src/app/guiapp.cpp-        }
/home/ccurtis/Documents/projects/audacity/src/app/guiapp.cpp:        dispatcher->dispatch("project-import-startup-media",
/home/ccurtis/Documents/projects/audacity/src/app/guiapp.cpp-                             muse::actions::ActionData::make_arg2<QStringList, bool>(
/home/ccurtis/Documents/projects/audacity/src/app/guiapp.cpp-                                 files, parsed->startup.removeMediaFilesAfterImport));
/home/ccurtis/Documents/projects/audacity/src/app/guiapp.cpp-    }
--
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.h-#include "iapplicationactioncontroller.h"
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.h-
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.h-namespace au::appshell {
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.h:class WindowDropArea : public QQuickItem, public muse::Contextable
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.h-{
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.h-    Q_OBJECT
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.h-    QML_ELEMENT
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.h-    muse::ContextInject<IApplicationActionController> applicationActionController { this };
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.h-public:
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.h:    explicit WindowDropArea(QQuickItem* parent = nullptr);
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.h-
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.h-protected:
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.h-    void dragEnterEvent(QDragEnterEvent* event) override;
--
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectuiactions.cpp-             //: Action description: shown as a tooltip; can be a full sentence
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectuiactions.cpp-             TranslatableString("action_description", "Clear recent files")
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectuiactions.cpp-             ),
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectuiactions.cpp:    UiAction("project-import",
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectuiactions.cpp-             au::context::UiCtxAny,
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectuiactions.cpp-             au::context::CTX_ANY,
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectuiactions.cpp-             //: Action title: shown as a menu item or a button label; keep it short
--
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp- * along with this program.  If not, see <https://www.gnu.org/licenses/>.
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp- */
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp-
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp:#include "windowdroparea.h"
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp-
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp-#include "log.h"
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp-
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp-using namespace au::appshell;
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp-
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp:WindowDropArea::WindowDropArea(QQuickItem* parent)
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp-    : QQuickItem(parent), muse::Contextable(muse::iocCtxForQmlObject(this))
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp-{
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp-    setFlag(ItemAcceptsDrops, true);
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp-}
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp-
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp:void WindowDropArea::dragEnterEvent(QDragEnterEvent* event)
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp-{
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp-    if (applicationActionController()) {
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp-        applicationActionController()->onDragEnterEvent(event);
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp-    }
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp-}
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp-
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp:void WindowDropArea::dragMoveEvent(QDragMoveEvent* event)
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp-{
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp-    if (applicationActionController()) {
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp-        applicationActionController()->onDragMoveEvent(event);
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp-    }
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp-}
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp-
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp:void WindowDropArea::dropEvent(QDropEvent* event)
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp-{
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp-    if (applicationActionController()) {
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/windowdroparea.cpp-        applicationActionController()->onDropEvent(event);
--
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-{
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    static const muse::actions::ActionCodeList codes {
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        "file-close",
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp:        "project-import",
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        "file-save",
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        "file-save-to-cloud",
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        "file-save-as",
--
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        "file-new",
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        "file-open",
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        "file-open-recent",
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp:        "project-import-startup-media",
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        "cloud-file-open",
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        "continue-last-session",
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-        "clear-recent",
--
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    dispatcher()->reg(this, "file-open-recent", this, &ProjectActionsController::open);
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    dispatcher()->reg(this, "cloud-file-open", this, &ProjectActionsController::openCloudProject);
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    dispatcher()->reg(this, "clear-recent", this, &ProjectActionsController::clearRecentProjects);
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp:    dispatcher()->reg(this, "project-import", this, &ProjectActionsController::importFiles);
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp:    dispatcher()->reg(this, "project-import-startup-media", this, &ProjectActionsController::importStartupMedia);
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    dispatcher()->reg(this, "file-save", [this]() { saveProject(SaveMode::Save); });
/home/ccurtis/Documents/projects/audacity/src/project/internal/projectactionscontroller.cpp-    dispatcher()->reg(this, "file-save-to-cloud", [this]() { saveProject(SaveMode::Save, SaveLocationType::Cloud); });
--
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-    if (!mediaFiles.isEmpty()) {
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-        muse::async::Async::call(this, [this, mediaFiles]() {
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp:            dispatcher()->dispatch("project-import-startup-media",
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-                                   ActionData::make_arg2<QStringList, bool>(mediaFiles, false));
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-        });
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-    }
--
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/appmenumodel.cpp-
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/appmenumodel.cpp-        makeSeparator(),
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/appmenumodel.cpp-
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/appmenumodel.cpp:        makeMenuItem("project-import"),
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/appmenumodel.cpp-
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/appmenumodel.cpp-        makeSeparator(),
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/appmenumodel.cpp-
--
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/startupscenario.cpp-            files << file.toQString();
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/startupscenario.cpp-        }
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/startupscenario.cpp-
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/startupscenario.cpp:        dispatcher()->dispatch("project-import-startup-media",
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/startupscenario.cpp-                               ActionData::make_arg2<QStringList, bool>(files, m_removeMediaFilesAfterImport));
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/startupscenario.cpp-        return;
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/startupscenario.cpp-    }
--
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/AppWindow.qml-        anchors.fill: parent
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/AppWindow.qml-    }
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/AppWindow.qml-
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/AppWindow.qml:    WindowDropArea {
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/AppWindow.qml-        anchors.fill: parent
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/AppWindow.qml-    }
/home/ccurtis/Documents/projects/audacity/src/appshell/qml/Audacity/AppShell/AppWindow.qml-
```

</details>


---

<sub>29s</sub>

### `view`

**view the file at /home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp.**

/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp (lines 170-210)

<details>
<summary>41 lines</summary>

```
170.         }
171.     } // ImportProgress (and its dialog) destroyed here, before tempo detection
172. 
173.     const auto projectTempo = ProjectTimeSignature::Get(*project).GetTempo();
174.     for (auto track : newTracks) {
175.         DoProjectTempoChange(*track, projectTempo);
176.     }
177. 
178.     // no more errors, commit
179.     committed = true;
180. 
181.     std::vector<WaveTrack*> importedWaveTracks;
182.     addImportedTracks(filePath, std::move(newTracks), &importedWaveTracks);
183. 
184.     std::vector<trackedit::TrackId> dstTrackIds;
185.     for (const auto* wt : importedWaveTracks) {
186.         dstTrackIds.push_back(static_cast<trackedit::TrackId>(wt->GetId()));
187.     }
188. 
189.     m_tempoDetection->onFilesImported({ filePath }, importedWaveTracks, dstTrackIds, acidTags, projectWasEmpty);
190. 
191.     return true;
192. }
193. 
194. bool au::importexport::Au3Importer::importLegacyAup(const muse::io::path_t& filePath)
195. {
196.     LegacyAupImporter legacyImporter;
197.     LegacyAupImporter::Result legacyProject = legacyImporter.resolve(filePath);
198.     if (!legacyProject.success) {
199.         LOGE() << "Failed to import legacy .aup project: " << filePath << ", error: " << legacyProject.error;
200.         return false;
201.     }
202. 
203.     for (const std::string& warning : legacyProject.warnings) {
204.         LOGW() << "Legacy .aup import warning: " << warning;
205.     }
206. 
207.     for (const LegacyAupImporter::Track& track : legacyProject.tracks) {
208.         const trackedit::TrackId trackId = tracksInteraction()->addWaveTrack(track.channels);
209.         if (trackId < 0) {
210.             return false;
```

</details>


---

<sub>29s</sub>

### `view`

**view the file at /home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp.**

/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp (lines 355-470)

<details>
<summary>116 lines</summary>

```
355.     dc.probeAudioFiles(files);
356.     int requiredTracksCount = dc.requiredTracksCount();
357.     dc.prepareConditionalTracks(startingTrack, requiredTracksCount);
358.     auto trackIds = dc.draggedTracksIds(startingTrack, requiredTracksCount);
359.     std::vector<trackedit::TrackId> dstTrackIds;
360.     for (const QVariant& v : trackIds) {
361.         dstTrackIds.push_back(v.toInt());
362.     }
363. 
364.     dc.handleDroppedFiles(dstTrackIds, startTime);
365.     dc.endImportSession();
366. 
367.     return true;
368. }
369. 
370. std::vector<std::string> au::importexport::Au3Importer::supportedExtensions() const
371. {
372.     static const std::vector<std::string> audioExtensions = [] {
373.         std::unordered_set<std::string> uniq;
374. 
375.         const auto fileTypes = Importer::Get().GetFileTypes(FileNames::FileType {});
376. 
377.         if (fileTypes.size() > 1) {
378.             const auto& exts = fileTypes[1].extensions;
379.             for (const auto& wxExt : exts) {
380.                 std::string ext = wxExt.ToStdString();
381. 
382.                 if (ext.empty() || ext == "*") {
383.                     continue;
384.                 }
385. 
386.                 if (!ext.empty() && ext.front() == '.') {
387.                     ext.erase(ext.begin());
388.                 }
389. 
390.                 uniq.emplace(ext);
391.             }
392.         }
393. 
394.         std::vector<std::string> out;
395.         out.reserve(uniq.size());
396.         for (auto& e : uniq) {
397.             out.push_back(e);
398.         }
399. 
400.         return out;
401.     }();
402. 
403.     // Audio formats (from au3) plus whatever the labels importer handles.
404.     std::vector<std::string> out = audioExtensions;
405.     out.push_back("aup");
406.     const std::vector<std::string> labelExtensions = labelsImporter()->supportedExtensions();
407.     out.insert(out.end(), labelExtensions.cbegin(), labelExtensions.cend());
408.     return out;
409. }
410. 
411. void au::importexport::Au3Importer::applyImportedProjectTitleIfNeeded(const muse::io::path_t& filePath)
412. {
413.     Au3Project* project = reinterpret_cast<Au3Project*>(globalContext()->currentProject()->au3ProjectPtr());
414.     auto& projectFileIO = ProjectFileIO::Get(*project);
415. 
416.     if (!projectFileIO.IsTemporary() || !project->GetProjectName().empty()) {
417.         return;
418.     }
419. 
420.     project->SetProjectName(wxFromPath(muse::io::filename(filePath, false)));
421.     project->SetInitialImportPath(wxFromPath(muse::io::dirpath(filePath)));
422.     projectFileIO.SetProjectTitle();
423. }
424. 
425. bool au::importexport::Au3Importer::isProjectEmpty() const
426. {
427.     auto trackeditProject = globalContext()->currentTrackeditProject();
428.     if (!trackeditProject) {
429.         return true;
430.     }
431. 
432.     return !trackeditProject->hasAudioContent().val;
433. }
434. 
435. void au::importexport::Au3Importer::addImportedTracks(const muse::io::path_t& fileName, TrackHolders&& newTracks,
436.                                                       std::vector<WaveTrack*>* outWaveTracks)
437. {
438.     Au3Project* project = reinterpret_cast<Au3Project*>(globalContext()->currentProject()->au3ProjectPtr());
439.     auto& tracks = TrackList::Get(*project);
440.     auto& projectFileIO = ProjectFileIO::Get(*project);
441. 
442.     std::vector<Track*> results;
443. 
444.     wxFileName fn(wxFromPath(fileName));
445. 
446.     double newRate = 0;
447.     wxString trackNameBase = fn.GetName();
448.     int i = -1;
449. 
450.     // Fix the bug 2109.
451.     // In case the project had soloed tracks before importing,
452.     // all newly imported tracks are muted.
453.     const bool projectHasSolo
454.         =!(tracks.Any<PlayableTrack>() + &PlayableTrack::GetSolo).empty();
455.     if (projectHasSolo) {
456.         for (auto& group : newTracks) {
457.             if (auto pTrack = dynamic_cast<PlayableTrack*>(group.get())) {
458.                 pTrack->SetMute(true);
459.             }
460.         }
461.     }
462. 
463.     for (auto& group : newTracks) {
464.         if (auto pTrack = dynamic_cast<WaveTrack*>(group.get())) {
465.             results.push_back(pTrack);
466.             if (outWaveTracks) {
467.                 outWaveTracks->push_back(pTrack);
468.             }
469.         }
470.         tracks.Add(group);
```

</details>


---

<sub>29s</sub>

### `view`

**view the file at /home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp.**

/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp (lines 400-500)

<details>
<summary>101 lines</summary>

```
400.     platformInteractive()->openUrl(askForHelpUrl);
401. }
402. 
403. void ApplicationActionController::openPreferencesDialog()
404. {
405.     //! TODO AU4
406.     // if (multiwindowsProvider()->isPreferencesAlreadyOpened()) {
407.     //     multiwindowsProvider()->activateWindowWithOpenedPreferences();
408.     //     return;
409.     // }
410. 
411.     interactive()->open("audacity://preferences");
412. }
413. 
414. void ApplicationActionController::openAudioSettingsDialog()
415. {
416.     muse::UriQuery preferencesUri("audacity://preferences");
417.     preferencesUri.addParam("currentPageId", muse::Val("audio-settings"));
418. 
419.     interactive()->open(preferencesUri);
420. }
421. 
422. void ApplicationActionController::openShortcutsPreferencesDialog()
423. {
424.     muse::UriQuery preferencesUri("audacity://preferences");
425.     preferencesUri.addParam("currentPageId", muse::Val("shortcuts"));
426. 
427.     interactive()->open(preferencesUri);
428. }
429. 
430. void ApplicationActionController::openEditingPreferencesDialog()
431. {
432.     muse::UriQuery preferencesUri("audacity://preferences");
433.     preferencesUri.addParam("currentPageId", muse::Val("editing"));
434. 
435.     interactive()->open(preferencesUri);
436. }
437. 
438. void ApplicationActionController::openSpectrogramPreferencesDialog()
439. {
440.     muse::UriQuery preferencesUri("audacity://preferences");
441.     preferencesUri.addParam("currentPageId", muse::Val("spectrogram"));
442. 
443.     interactive()->open(preferencesUri);
444. }
445. 
446. void ApplicationActionController::revertToFactorySettings()
447. {
448.     std::string title = muse::trc("appshell", "Are you sure you want to revert to factory settings?");
449.     std::string question = muse::trc("appshell",
450.                                      "This action will reset all your app preferences and custom UI configurations. "
451.                                      "It also deletes your custom workspaces and shortcuts. "
452.                                      "You will also need to scan all third party plugins again.\n\n"
453.                                      "This action will not delete any of your projects.");
454. 
455.     muse::IInteractive::ButtonData cancelBtn = interactive()->buttonData(muse::IInteractive::Button::Cancel);
456.     cancelBtn.accent = true;
457. 
458.     int revertBtn = int(muse::IInteractive::Button::Apply);
459.     auto promise = interactive()->warning(title, question,
460.                                           { cancelBtn,
461.                                             muse::IInteractive::ButtonData(revertBtn, muse::trc("appshell", "Revert")) },
462.                                           cancelBtn.btn, { muse::IInteractive::Option::WithIcon },
463.                                           muse::trc("appshell", "Revert to factory settings"));
464. 
465.     promise.onResolve(this, [this](const muse::IInteractive::Result& res) {
466.         if (res.isButton(muse::IInteractive::Button::Cancel)) {
467.             return;
468.         }
469. 
470.         static constexpr bool KEEP_DEFAULT_SETTINGS = false;
471.         static constexpr bool NOTIFY_ABOUT_CHANGES = false;
472.         static constexpr bool NOTIFY_OTHER_INSTANCES = false;
473.         configuration()->revertToFactorySettings(KEEP_DEFAULT_SETTINGS, NOTIFY_ABOUT_CHANGES, NOTIFY_OTHER_INSTANCES);
474. 
475.         std::string title = muse::trc("appshell", "Would you like to restart Audacity now?");
476.         std::string question = muse::trc("appshell", "Audacity needs to be restarted for these changes to take effect.");
477. 
478.         int restartBtn = int(muse::IInteractive::Button::Apply);
479.         auto promise = interactive()->question(title, question,
480.                                                { interactive()->buttonData(muse::IInteractive::Button::Cancel),
481.                                                  muse::IInteractive::ButtonData(restartBtn,
482.                                                                                 muse::trc("appshell", "Restart"), true) },
483.                                                restartBtn, {},
484.                                                muse::trc("appshell", "Restart Audacity"));
485. 
486.         promise.onResolve(this, [this](const muse::IInteractive::Result& res) {
487.             if (!res.isButton(muse::IInteractive::Button::Cancel)) {
488.                 restart();
489.             }
490.         });
491.     });
492. }
493. 
494. bool ApplicationActionController::isProjectOpened() const
495. {
496.     bool hasProject = globalContext()->currentProject() != nullptr;
497.     bool isOpened = uiContextResolver()->matchWithCurrent(context::UiCtxProjectOpened);
498.     return hasProject && isOpened;
499. }
500.
```

</details>


---

<sub>29s</sub>

### `rg`

**onDropEvent**

"onDropEvent" (src/appshell/internal/applicationactioncontroller.cpp)

<details>
<summary>41 matches</summary>

```
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-            event->acceptProposedAction();
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-            return;
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-        }
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-    }
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-    if (isProjectOpened()) {
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-        event->ignore();
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-        return;
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-    }
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-    for (const QUrl& url : urls) {
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-        if (projectFilesController()->isUrlSupported(url)) {
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-            event->acceptProposedAction();
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-            return;
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-        }
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-    }
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-    event->ignore();
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-}
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp:void ApplicationActionController::onDropEvent(QDropEvent* event)
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-{
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-    const QMimeData* mime = event->mimeData();
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-    const QList<QUrl> urls = mime->urls();
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-    if (urls.isEmpty()) {
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-        return;
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-    }
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-    const QUrl& url = urls.front();
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-    if (url.isLocalFile() && extensionInstaller()->isFileSupported(url.toLocalFile())) {
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-        event->accept();
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-        const muse::io::path_t filePath = url.toLocalFile();
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-        muse::async::Async::call(this, [this, filePath]() {
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-            extensionInstaller()->installExtension(filePath);
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-        });
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-        return;
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-    }
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-    if (isProjectOpened()) {
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-        event->ignore();
/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp-        return;
```

</details>


---

<sub>36s</sub>

### `view`

**view the file at /home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp.**

/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp (lines 470-535)

<details>
<summary>47 lines</summary>

```
470.         tracks.Add(group);
471.     }
472.     newTracks.clear();
473. 
474.     // Now name them
475. 
476.     // Add numbers to track names only if there is more than one (mono or stereo)
477.     // track (not necessarily, more than one channel)
478.     const bool useSuffix = results.size() > 1;
479. 
480.     for (const auto& newTrack : results) {
481.         ++i;
482.         newTrack->SetSelected(true);
483.         if (useSuffix) {
484.             //: Name default name assigned to a clip on track import
485.             newTrack->SetName(wxFromString(::TranslatableString("import-export", "%1 %2", "clip name template")
486.                                            .arg(trackNameBase).arg(i + 1).translated()));
487.         } else {
488.             newTrack->SetName(trackNameBase);
489.         }
490. 
491.         newTrack->TypeSwitch([&](WaveTrack& wt) {
492.             if (newRate == 0) {
493.                 newRate = wt.GetRate();
494.             }
495.             const auto trackName = wt.GetName();
496.             for (const auto& interval : wt.Intervals()) {
497.                 interval->SetName(trackName);
498.             }
499.         });
500.     }
501. 
502.     applyImportedProjectTitleIfNeeded(fileName);
503. 
504.     auto prj = globalContext()->currentTrackeditProject();
505.     if (!prj) {
506.         return;
507.     }
508. 
509.     for (const auto& newTrack : results) {
510.         prj->notifyAboutTrackAdded(DomConverter::track(newTrack));
511.         for (const auto& clip : prj->clipList(newTrack->GetId())) {
512.             prj->notifyAboutClipAdded(clip);
513.         }
514.     }
515. }
516.
```

</details>


---

<sub>36s</sub>

### `view`

**view the file at /home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp.**

/home/ccurtis/Documents/projects/audacity/src/appshell/internal/applicationactioncontroller.cpp (lines 180-285)

<details>
<summary>106 lines</summary>

```
180.             projectUrls << url;
181.         } else {
182.             mediaFiles << url.toLocalFile();
183.         }
184.     }
185. 
186.     if (projectUrls.isEmpty() && mediaFiles.isEmpty()) {
187.         event->ignore();
188.         return;
189.     }
190. 
191.     event->accept();
192. 
193.     if (!projectUrls.isEmpty()) {
194.         muse::async::Async::call(this, [this, projectUrls]() {
195.             for (const QUrl& url : projectUrls) {
196.                 dispatcher()->dispatch("file-open", ActionData::make_arg1<QUrl>(url));
197.             }
198.         });
199.     }
200. 
201.     if (!mediaFiles.isEmpty()) {
202.         muse::async::Async::call(this, [this, mediaFiles]() {
203.             dispatcher()->dispatch("project-import-startup-media",
204.                                    ActionData::make_arg2<QStringList, bool>(mediaFiles, false));
205.         });
206.     }
207. }
208. 
209. bool ApplicationActionController::canReceiveAction(const ActionCode& code) const
210. {
211.     if (recordController()->isRecording()) {
212.         return !muse::contains(prohibitedActionsWhileRecording(), code);
213.     }
214.     return true;
215. }
216. 
217. bool ApplicationActionController::eventFilter(QObject* watched, QEvent* event)
218. {
219.     if (event->type() == QEvent::Close && watched == mainWindow()->qWindow()) {
220.         if (multiwindowsProvider()->windowCount() > 1) {
221.             if (!projectFilesController()->closeOpenedProject()) {
222.                 event->ignore();
223.                 return true;
224.             }
225.             auto provider = multiwindowsProvider();
226.             auto ctx = iocContext();
227.             QMetaObject::invokeMethod(qApp, [provider, ctx]() {
228.                 // during the call the window and the context will be destroyed
229.                 // do not capture or use anything that is context-dependent here
230.                 // i.e. dont use Async::call(this instead of invokeMethod
231.                 provider->quitWindow(ctx);
232.             }, Qt::QueuedConnection);
233.             event->accept();
234.             return true;
235.         }
236. #ifdef Q_OS_MAC
237.         // On macos closing the last window does not exit the app
238.         if (!projectFilesController()->closeOpenedProject()) {
239.             event->ignore();
240.             return true;
241.         }
242.         // Instead we hide the window, it will be shown when needed
243.         mainWindow()->qWindow()->setVisible(false);
244.         event->accept();
245.         return true;
246. #else
247.         const bool accepted = quit();
248.         event->setAccepted(accepted);
249.         return true;
250. #endif
251.     }
252. 
253.     if (event->type() == QEvent::Quit) {
254.         const bool accepted = quit();
255.         event->setAccepted(accepted);
256.         return true;
257.     }
258. 
259.     //! on macOS custom URL opened from browser are also passed as QEvent::FileOpen
260.     if (event->type() == QEvent::FileOpen && watched == qApp) {
261.         handleFileOpenEvent(static_cast<const QFileOpenEvent*>(event));
262.         return true;
263.     }
264. 
265.     return QObject::eventFilter(watched, event);
266. }
267. 
268. void ApplicationActionController::processPendingEvents()
269. {
270.     for (const std::unique_ptr<QEvent>& event : applicationEventController()->takePendingEvents()) {
271.         if (event->type() == QEvent::FileOpen) {
272.             handleFileOpenEvent(static_cast<const QFileOpenEvent*>(event.get()));
273.         }
274.     }
275. }
276. 
277. void ApplicationActionController::handleFileOpenEvent(const QFileOpenEvent* event)
278. {
279.     const QUrl url = event->url();
280. 
281.     // TODO: isUrlSupported - is misleading, as it does not handle audio.com urls
282.     if (projectFilesController()->isUrlSupported(url)) {
283.         if (startupScenario()->startupCompleted()) {
284.             // On macos the main window may be hidden, show and raise it
285.             // before loading the project
```

</details>


---

<sub>36s</sub>

### `rg`

**handleDroppedFiles|startImportSession|probeAudioFiles**

"handleDroppedFiles|startImportSession|probeAudioFiles" in *.{cpp,h} (src)

<details>
<summary>68 matches</summary>

```
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-    for (const auto& path : filePaths) {
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-        files.append(path.toQString());
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-    }
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp:    dc.startImportSession();
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp:    dc.probeAudioFiles(files);
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-    int requiredTracksCount = dc.requiredTracksCount();
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-    dc.prepareConditionalTracks(startingTrack, requiredTracksCount);
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-    auto trackIds = dc.draggedTracksIds(startingTrack, requiredTracksCount);
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-    std::vector<trackedit::TrackId> dstTrackIds;
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-    for (const QVariant& v : trackIds) {
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-        dstTrackIds.push_back(v.toInt());
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-    }
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp:    dc.handleDroppedFiles(dstTrackIds, startTime);
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-    dc.endImportSession();
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-    return true;
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-}
--
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp-DropController::DropController(QObject* parent)
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp-    : QObject(parent), muse::Contextable(muse::iocCtxForQmlObject(this))
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp-{}
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp-
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp:void DropController::probeAudioFiles(const QStringList& fileUrls)
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp-{
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp-    m_lastDraggedUrls.clear();
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp-    m_lastDraggedFilesInfo.clear();
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp-
--
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp-
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp-    return out;
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp-}
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp-
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp:void DropController::startImportSession()
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp-{
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp-    if (m_trackCountBeforeImport != -1) {
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp-        return;
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp-    }
--
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp-    // remove only extra empty tracks beyond neededTracksCount
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp-    tracksInteraction()->removeDragAddedTracks(neededTracksCount, true /* emptyOnly */);
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp-}
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp-
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp:void DropController::handleDroppedFiles(const std::vector<trackedit::TrackId>& trackIds, double startTime)
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp-{
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp-    std::vector<muse::io::path_t> localPaths;
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp-
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp-    // NOTE: importer only needs the first trackId (out of many) for multichannel files
--
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.h-
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.h-public:
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.h-    explicit DropController(QObject* parent = nullptr);
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.h-
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.h:    Q_INVOKABLE void probeAudioFiles(const QStringList& fileUrls);
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.h-    Q_INVOKABLE QVariantList lastProbedDurations() const;
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.h-    Q_INVOKABLE QVariantList lastProbedFileNames() const;
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.h:    Q_INVOKABLE void startImportSession();
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.h-    Q_INVOKABLE void endImportSession();
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.h-    Q_INVOKABLE int requiredTracksCount() const;
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.h-    Q_INVOKABLE void prepareConditionalTracks(int currentTrackId, int draggedFileCount);
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.h-    Q_INVOKABLE QVariantList draggedTracksIds(int currentTrackId, int draggedFilesCount);
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.h-    Q_INVOKABLE void removeDragAddedTracks(int currentTrackId, int draggedFilesCount);
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.h:    Q_INVOKABLE void handleDroppedFiles(const std::vector<trackedit::TrackId>& trackIds, double startTime);
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.h-
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.h-private:
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.h-    std::vector<au::importexport::FileInfo> m_lastDraggedFilesInfo;
/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.h-    QStringList m_lastDraggedUrls;
```

</details>


---

<sub>39s</sub>

### `view`

**view the file at /home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp.**

/home/ccurtis/Documents/projects/audacity/src/projectscene/view/tracksitemsview/dropcontroller.cpp (lines 145-220)

<details>
<summary>76 lines</summary>

```
145.     int availableAudioTracks = 0;
146.     for (int i = startIndex; i < totalTracks; ++i) {
147.         if (isAudioTrack(trackList[i].type)) {
148.             ++availableAudioTracks;
149.         }
150.     }
151. 
152.     int missingTracks = draggedFilesCount - availableAudioTracks;
153.     if (missingTracks <= 0) {
154.         return;
155.     }
156. 
157.     const int maxNewAllowed = draggedFilesCount - tracksCreated;
158.     if (maxNewAllowed <= 0) {
159.         return;
160.     }
161. 
162.     const int toCreate = std::min(missingTracks, maxNewAllowed);
163. 
164.     for (int i = 0; i < toCreate; ++i) {
165.         tracksInteraction()->addWaveTrack(1);
166.     }
167. }
168. 
169. QVariantList DropController::draggedTracksIds(int currentTrackId, int draggedFilesCount)
170. {
171.     au::trackedit::ITrackeditProjectPtr prj = globalContext()->currentTrackeditProject();
172.     if (!prj) {
173.         return {};
174.     }
175. 
176.     std::vector<trackedit::Track> trackList = prj->trackList();
177. 
178.     QVariantList trackIds;
179.     if (draggedFilesCount <= 0 || trackList.empty()) {
180.         return trackIds;
181.     }
182. 
183.     const int total = static_cast<int>(trackList.size());
184. 
185.     // collect indices of all audio tracks
186.     std::vector<int> audioIndices;
187.     audioIndices.reserve(total);
188.     for (int i = 0; i < total; ++i) {
189.         if (isAudioTrack(trackList[i].type)) {
190.             audioIndices.push_back(i);
191.         }
192.     }
193. 
194.     if (audioIndices.empty()) {
195.         return trackIds;
196.     }
197. 
198.     int currentRow = -1;
199.     if (currentTrackId >= 0) {
200.         for (int i = 0; i < total; ++i) {
201.             if (trackList[i].id == currentTrackId) {
202.                 currentRow = i;
203.                 break;
204.             }
205.         }
206.     }
207. 
208.     int thresholdRow;
209.     if (currentRow >= 0) {
210.         // cursor is over a track, start from that track
211.         thresholdRow = currentRow;
212.     } else {
213.         // cursor is below tracks, start from newly created track
214.         thresholdRow = std::max(0, m_trackCountBeforeImport);
215.     }
216. 
217.     int startAudioPos = 0;
218.     while (startAudioPos < static_cast<int>(audioIndices.size())
219.            && audioIndices[startAudioPos] < thresholdRow) {
220.         ++startAudioPos;
```

</details>


---

<sub>39s</sub>

### `rg`

**DropController**

"DropController" in *.qml (src/projectscene)

<details>
<summary>7 matches</summary>

```
/home/ccurtis/Documents/projects/audacity/src/projectscene/qml/Audacity/ProjectScene/tracksitemsview/ImportDropArea.qml-        property var lastProbedUrls: null
/home/ccurtis/Documents/projects/audacity/src/projectscene/qml/Audacity/ProjectScene/tracksitemsview/ImportDropArea.qml-    }
/home/ccurtis/Documents/projects/audacity/src/projectscene/qml/Audacity/ProjectScene/tracksitemsview/ImportDropArea.qml-
/home/ccurtis/Documents/projects/audacity/src/projectscene/qml/Audacity/ProjectScene/tracksitemsview/ImportDropArea.qml:    DropController {
/home/ccurtis/Documents/projects/audacity/src/projectscene/qml/Audacity/ProjectScene/tracksitemsview/ImportDropArea.qml-        id: dropController
/home/ccurtis/Documents/projects/audacity/src/projectscene/qml/Audacity/ProjectScene/tracksitemsview/ImportDropArea.qml-    }
/home/ccurtis/Documents/projects/audacity/src/projectscene/qml/Audacity/ProjectScene/tracksitemsview/ImportDropArea.qml-
```

</details>


---

<sub>39s</sub>

### `rg`

**importIntoTrack\(**

"importIntoTrack\(" in *.{cpp,h} (src)

<details>
<summary>55 matches</summary>

```
/home/ccurtis/Documents/projects/audacity/src/project/internal/audacityproject.cpp-    return ret;
/home/ccurtis/Documents/projects/audacity/src/project/internal/audacityproject.cpp-}
/home/ccurtis/Documents/projects/audacity/src/project/internal/audacityproject.cpp-
/home/ccurtis/Documents/projects/audacity/src/project/internal/audacityproject.cpp:Ret Audacity4Project::importIntoTrack(const muse::io::path_t& filePath,
/home/ccurtis/Documents/projects/audacity/src/project/internal/audacityproject.cpp-                                      trackedit::TrackId dstTrackId,
/home/ccurtis/Documents/projects/audacity/src/project/internal/audacityproject.cpp-                                      muse::secs_t startTime)
/home/ccurtis/Documents/projects/audacity/src/project/internal/audacityproject.cpp-{
--
/home/ccurtis/Documents/projects/audacity/src/project/internal/audacityproject.cpp-        return muse::make_ret(muse::Ret::Code::InternalError);
/home/ccurtis/Documents/projects/audacity/src/project/internal/audacityproject.cpp-    }
/home/ccurtis/Documents/projects/audacity/src/project/internal/audacityproject.cpp-
/home/ccurtis/Documents/projects/audacity/src/project/internal/audacityproject.cpp:    const bool ok = importer()->importIntoTrack(path, dstTrackId, startTime);
/home/ccurtis/Documents/projects/audacity/src/project/internal/audacityproject.cpp-    m_trackeditProject->reload();
/home/ccurtis/Documents/projects/audacity/src/project/internal/audacityproject.cpp-
/home/ccurtis/Documents/projects/audacity/src/project/internal/audacityproject.cpp-    return ok ? muse::make_ret(Ret::Code::Ok) : muse::make_ret(Ret::Code::InternalError);
--
/home/ccurtis/Documents/projects/audacity/src/project/iaudacityproject.h-    virtual muse::Ret load(const muse::io::path_t& path, bool forceMode = false, const std::string& format = "") = 0;
/home/ccurtis/Documents/projects/audacity/src/project/iaudacityproject.h-    virtual muse::Ret import(const muse::io::path_t& path, bool forceMode = false) = 0;
/home/ccurtis/Documents/projects/audacity/src/project/iaudacityproject.h-    virtual muse::Ret import(const std::vector<muse::io::path_t>& paths, bool forceMode = false) = 0;
/home/ccurtis/Documents/projects/audacity/src/project/iaudacityproject.h:    virtual muse::Ret importIntoTrack(const muse::io::path_t& filePath, trackedit::TrackId dstTrackId, muse::secs_t startTime) = 0;
/home/ccurtis/Documents/projects/audacity/src/project/iaudacityproject.h-    virtual muse::Ret importIntoTracks(const std::vector<muse::io::path_t>& filePaths, const std::vector<trackedit::TrackId>& dstTrackIds,
/home/ccurtis/Documents/projects/audacity/src/project/iaudacityproject.h-                                       muse::secs_t startTime) = 0;
/home/ccurtis/Documents/projects/audacity/src/project/iaudacityproject.h-
--
/home/ccurtis/Documents/projects/audacity/src/project/internal/audacityproject.h-    muse::Ret load(const muse::io::path_t& path, bool forceMode = false, const std::string& format = "") override;
/home/ccurtis/Documents/projects/audacity/src/project/internal/audacityproject.h-    muse::Ret import(const muse::io::path_t& path, bool forceMode = false) override;
/home/ccurtis/Documents/projects/audacity/src/project/internal/audacityproject.h-    muse::Ret import(const std::vector<muse::io::path_t>& paths, bool forceMode) override;
/home/ccurtis/Documents/projects/audacity/src/project/internal/audacityproject.h:    muse::Ret importIntoTrack(const muse::io::path_t& filePath, trackedit::TrackId dstTrackId, muse::secs_t startTime) override;
/home/ccurtis/Documents/projects/audacity/src/project/internal/audacityproject.h-    muse::Ret importIntoTracks(const std::vector<muse::io::path_t>& filePaths, const std::vector<trackedit::TrackId>& dstTrackIds,
/home/ccurtis/Documents/projects/audacity/src/project/internal/audacityproject.h-                               muse::secs_t startTime) override;
/home/ccurtis/Documents/projects/audacity/src/project/internal/audacityproject.h-    void close() override;
--
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.h-    FileInfo fileInfo(const muse::io::path_t& filePath) override;
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.h-
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.h-    bool import(const muse::io::path_t& filePath) override;
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.h:    bool importIntoTrack(const muse::io::path_t& filePath, trackedit::TrackId dstTrackId, muse::secs_t startTime) override;
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.h-    bool importFromSystemClipboard(const std::vector<muse::io::path_t>& filePaths, muse::secs_t startTime) override;
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.h-    std::vector<std::string> supportedExtensions() const override;
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.h-
--
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-    return true;
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-}
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp:bool au::importexport::Au3Importer::importIntoTrack(const muse::io::path_t& filePath,
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-                                                    trackedit::TrackId dstTrackId,
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-                                                    muse::secs_t startTime)
/home/ccurtis/Documents/projects/audacity/src/importexport/import/internal/au3/au3importer.cpp-{
--
/home/ccurtis/Documents/projects/audacity/src/importexport/import/iimporter.h-
/home/ccurtis/Documents/projects/audacity/src/importexport/import/iimporter.h-    virtual FileInfo fileInfo(const muse::io::path_t& filePath) = 0;
/home/ccurtis/Documents/projects/audacity/src/importexport/import/iimporter.h-    virtual bool import(const muse::io::path_t& filePath) = 0;
/home/ccurtis/Documents/projects/audacity/src/importexport/import/iimporter.h:    virtual bool importIntoTrack(const muse::io::path_t& filePath, trackedit::TrackId dstTrackId, trackedit::secs_t startTime) = 0;
/home/ccurtis/Documents/projects/audacity/src/importexport/import/iimporter.h-    virtual bool importFromSystemClipboard(const std::vector<muse::io::path_t>& filePaths, trackedit::secs_t startTime) = 0;
/home/ccurtis/Documents/projects/audacity/src/importexport/import/iimporter.h-    virtual std::vector<std::string> supportedExtensions() const = 0;
/home/ccurtis/Documents/projects/audacity/src/importexport/import/iimporter.h-};
```

</details>


---

<sub>41s</sub>

### Copilot

The track naming is in **`src/importexport/import/internal/au3/au3importer.cpp`**, in `Au3Importer::addImportedTracks()`:

- **Lines 444–448:** derives `trackNameBase` from the imported file’s basename, without its extension.
- **Lines 480–489:** assigns that name via `newTrack->SetName(...)`.
  - Single imported track: `filename`
  - Multiple channels/tracks: `filename 1`, `filename 2`, etc.
- **Lines 495–498:** also applies the resulting track name to each imported clip/interval.

For drag-and-drop routing, project-canvas drops begin at `src/projectscene/qml/Audacity/ProjectScene/tracksitemsview/ImportDropArea.qml`, use `DropController`, and ultimately invoke the importer. Dropping into an existing track uses `Au3Importer::importIntoTrackInternal()` instead, which names the **clip** from the filename at lines **301–309**, without renaming the destination track.

---

<sub>2m 49s</sub>

**Credits used: 15.6 AIC** on GPT-5.6 Terra
