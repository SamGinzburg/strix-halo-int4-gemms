	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 251 0                         ; generate_amdgcn.py:251:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[24:25], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:260:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s24, 63
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:261:17 ]
	s_add_i32 s5, s25, 0x7f
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_lshr_b32 s6, s6, 26
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_lshr_b32 s7, s7, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_add_i32 s4, s4, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_add_i32 s5, s5, s7
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_ashr_i32 s24, s4, 6
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_ashr_i32 s14, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 262 17 is_stmt 1              ; generate_amdgcn.py:262:17
	s_mul_i32 s26, s14, s24
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cmp_ge_i32 s2, s26
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.lr.ph34
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s15, s[0:1], 0x38
	s_load_b64 s[12:13], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 276 36 is_stmt 1              ; generate_amdgcn.py:276:36
	v_and_b32_e32 v2, 0x80, v0
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_and_b32_e32 v3, 0x60, v0
	.loc	1 268 14                        ; generate_amdgcn.py:268:14
	v_lshlrev_b32_e32 v4, 2, v0
	v_bfe_i32 v10, v0, 5, 1
	v_lshlrev_b32_e32 v11, 4, v0
	v_bfe_i32 v12, v0, 3, 1
	.loc	1 263 24                        ; generate_amdgcn.py:263:24
	s_lshl_b32 s1, s14, 2
	.loc	1 283 27                        ; generate_amdgcn.py:283:27
	s_lshl_b32 s22, s3, 4
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_lshrrev_b32_e32 v5, 3, v2
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_lshrrev_b32_e32 v6, 1, v3
	.loc	1 268 14                        ; generate_amdgcn.py:268:14
	v_bfe_i32 v8, v0, 0, 1
	v_and_b32_e32 v13, 0x37c, v4
	v_and_b32_e32 v10, 0x88, v10
	v_and_b32_e32 v14, 0x70, v11
	v_and_b32_e32 v12, 0x88, v12
	v_lshlrev_b32_e32 v15, 1, v2
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s0, s15, 31
	v_lshlrev_b32_e32 v3, 3, v3
	s_add_i32 s0, s15, s0
	.loc	1 268 14                        ; generate_amdgcn.py:268:14
	v_and_b32_e32 v7, 1, v0
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_ashr_i32 s27, s0, 1
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_lshrrev_b32_e32 v38, 2, v0
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:281:36 ]
	s_add_i32 s0, s27, 63
.Ltmp12:
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_and_or_b32 v39, v0, 15, v5
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:281:36 ]
	s_ashr_i32 s16, s0, 31
.Ltmp14:
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_and_or_b32 v40, v1, 1, v6
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:281:36 ]
	s_lshr_b32 s16, s16, 26
.Ltmp16:
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_bfe_i32 v5, v0, 7, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:281:36 ]
	s_add_i32 s0, s0, s16
	s_mov_b32 s16, s4
	s_ashr_i32 s0, s0, 6
	s_cmp_gt_i32 s15, 1
	s_mov_b32 s4, s6
	s_cselect_b32 s15, -1, 0
	s_abs_i32 s41, s1
.Ltmp18:
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_lshrrev_b32_e32 v41, 1, v0
	s_cvt_f32_u32 s6, s41
	v_bfe_i32 v6, v0, 4, 1
	v_and_b32_e32 v1, 0x7f, v0
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_lshrrev_b32_e32 v9, 7, v0
	v_lshlrev_b32_e32 v16, 3, v0
	v_xor_b32_e32 v10, v10, v13
	v_or3_b32 v13, v12, v15, v14
	v_or3_b32 v12, v14, v3, v12
	v_and_b32_e32 v0, 14, v0
	v_and_b32_e32 v8, 0x840, v8
	v_and_or_b32 v3, 0x78, v4, v3
	v_rcp_iflag_f32_e32 v24, s6
	v_and_b32_e32 v15, 0x778, v16
	v_lshlrev_b32_e32 v16, 11, v0
	v_and_b32_e32 v5, 0x840, v5
	v_xor_b32_e32 v3, v3, v8
	v_lshlrev_b32_e32 v8, 6, v7
	v_lshlrev_b32_e32 v0, 2, v0
	v_and_b32_e32 v6, 0x88, v6
	v_xor_b32_e32 v14, 8, v13
	v_or3_b32 v58, v3, v16, v2
	v_and_b32_e32 v2, 0x700, v11
	v_xor_b32_e32 v3, v5, v8
	v_readfirstlane_b32 s6, v24
	v_xor_b32_e32 v6, v6, v15
	v_xor_b32_e32 v15, 8, v12
	v_xor_b32_e32 v5, 8, v58
	v_or3_b32 v59, v2, v0, v3
	v_xor_b32_e32 v2, 40, v58
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_xor_b32_e32 v8, 16, v58
	v_xor_b32_e32 v11, 24, v58
	v_xor_b32_e32 v0, 32, v58
	v_xor_b32_e32 v3, 48, v58
	v_xor_b32_e32 v16, 56, v58
	v_xor_b32_e32 v17, 0x1008, v59
	v_xor_b32_e32 v18, 0x2010, v59
	v_xor_b32_e32 v19, 0x3018, v59
	v_xor_b32_e32 v20, 0x4020, v59
	v_xor_b32_e32 v21, 0x5028, v59
	v_xor_b32_e32 v22, 0x6030, v59
	v_xor_b32_e32 v23, 0x7038, v59
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	v_mad_u64_u32 v[32:33], null, s25, v9, v[1:2]
	s_cvt_u32_f32 s6, s6
	v_cndmask_b32_e64 v1, 0, 1, s15
	s_and_b32 s17, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	s_sub_i32 s7, 0, s41
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_or_b32_e32 v42, 32, v39
	s_mul_i32 s7, s7, s6
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_or_b32_e32 v43, 2, v40
	v_or_b32_e32 v44, 4, v40
	v_or_b32_e32 v45, 6, v40
	v_or_b32_e32 v46, 8, v40
	v_or_b32_e32 v47, 10, v40
	v_or_b32_e32 v48, 12, v40
	v_or_b32_e32 v49, 14, v40
	v_or_b32_e32 v50, 64, v40
	v_or_b32_e32 v51, 0x42, v40
	v_or_b32_e32 v52, 0x44, v40
	v_or_b32_e32 v53, 0x46, v40
	v_or_b32_e32 v54, 0x48, v40
	v_or_b32_e32 v55, 0x4a, v40
	v_or_b32_e32 v56, 0x4c, v40
	v_or_b32_e32 v57, 0x4e, v40
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_max_i32 s60, s0, 1
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	v_lshl_or_b32 v33, v7, 3, s22
	v_and_or_b32 v34, v4, 12, s22
	v_add_nc_u32_e32 v60, 0, v10
	v_add_nc_u32_e32 v61, 0, v13
	v_add_nc_u32_e32 v62, 0, v14
	v_add_nc_u32_e32 v63, 0, v6
	v_add_nc_u32_e32 v64, 0, v12
	v_add_nc_u32_e32 v65, 0, v15
	v_add_nc_u32_e32 v66, 0, v5
	v_add_nc_u32_e32 v67, 0, v8
	v_add_nc_u32_e32 v68, 0, v11
	v_add_nc_u32_e32 v69, 0, v0
	v_add_nc_u32_e32 v70, 0, v2
	v_add_nc_u32_e32 v71, 0, v3
	v_add_nc_u32_e32 v72, 0, v16
	v_add_nc_u32_e32 v73, 0, v17
	v_add_nc_u32_e32 v74, 0, v18
	v_add_nc_u32_e32 v75, 0, v19
	v_add_nc_u32_e32 v76, 0, v20
	v_add_nc_u32_e32 v77, 0, v21
	v_add_nc_u32_e32 v78, 0, v22
	v_add_nc_u32_e32 v79, 0, v23
	v_cmp_ne_u32_e64 s0, 1, v1
	s_mul_hi_u32 s7, s6, s7
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s21, s11, 0xffff
	s_mov_b32 s20, s10
	s_lshl_b32 s3, s25, 1
	s_lshl_b32 s28, s25, 2
	s_mul_i32 s29, s25, 6
	s_lshl_b32 s30, s25, 3
	s_mul_i32 s31, s25, 10
	s_mul_i32 s33, s25, 12
	s_mul_i32 s34, s25, 14
	s_lshl_b32 s35, s25, 4
	s_mul_i32 s36, s25, 18
	s_mul_i32 s37, s25, 20
	s_mul_i32 s38, s25, 22
	s_mul_i32 s39, s25, 24
	s_mul_i32 s40, s25, 26
	s_mul_i32 s42, s25, 28
	s_mul_i32 s43, s25, 30
	s_lshl_b32 s44, s25, 5
	s_mul_i32 s45, s25, 34
	s_mul_i32 s46, s25, 36
	s_mul_i32 s47, s25, 38
	s_mul_i32 s48, s25, 40
	s_mul_i32 s49, s25, 42
	s_mul_i32 s50, s25, 44
	s_mul_i32 s51, s25, 46
	s_mul_i32 s52, s25, 48
	s_mul_i32 s53, s25, 50
	s_mul_i32 s54, s25, 52
	s_mul_i32 s55, s25, 54
	s_mul_i32 s56, s25, 56
	s_mul_i32 s57, s25, 58
	s_mul_i32 s58, s25, 60
	s_mul_i32 s59, s25, 62
	s_and_b32 s13, s13, 0xffff
	s_bfe_i32 s61, s14, 0x1001d
	s_add_i32 s62, s6, s7
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 18                        ; generate_amdgcn.py:277:18
	s_lshl_b32 s6, s10, 7
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	s_mov_b32 s22, s18
	.loc	1 298 26 is_stmt 0              ; generate_amdgcn.py:298:26
	v_or_b32_e32 v26, s6, v50
	v_or_b32_e32 v27, s6, v51
	v_or_b32_e32 v28, s6, v52
	v_or_b32_e32 v29, s6, v53
	v_or_b32_e32 v30, s6, v54
	v_or_b32_e32 v31, s6, v55
	v_or_b32_e32 v93, s6, v56
	v_or_b32_e32 v94, s6, v57
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	v_lshlrev_b32_e32 v26, 1, v26
	v_lshlrev_b32_e32 v27, 1, v27
	v_lshlrev_b32_e32 v28, 1, v28
	s_mov_b32 s23, s19
	v_lshlrev_b32_e32 v29, 1, v29
	v_lshlrev_b32_e32 v30, 1, v30
	v_lshlrev_b32_e32 v31, 1, v31
	v_lshlrev_b32_e32 v93, 1, v93
	v_lshlrev_b32_e32 v94, 1, v94
	s_clause 0x7
	buffer_load_u16 v26, v26, s[20:23], 0 offen
	buffer_load_u16 v27, v27, s[20:23], 0 offen
	buffer_load_u16 v28, v28, s[20:23], 0 offen
	buffer_load_u16 v29, v29, s[20:23], 0 offen
	buffer_load_u16 v30, v30, s[20:23], 0 offen
	buffer_load_u16 v31, v31, s[20:23], 0 offen
	buffer_load_u16 v93, v93, s[20:23], 0 offen
	buffer_load_u16 v94, v94, s[20:23], 0 offen
	.loc	1 298 26                        ; generate_amdgcn.py:298:26
	v_or_b32_e32 v18, s6, v40
	v_or_b32_e32 v19, s6, v43
	v_or_b32_e32 v20, s6, v44
	v_or_b32_e32 v21, s6, v45
	v_or_b32_e32 v22, s6, v46
	v_or_b32_e32 v23, s6, v47
	v_or_b32_e32 v24, s6, v48
	v_or_b32_e32 v25, s6, v49
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	v_lshlrev_b32_e32 v18, 1, v18
	v_lshlrev_b32_e32 v19, 1, v19
	v_lshlrev_b32_e32 v20, 1, v20
	v_lshlrev_b32_e32 v21, 1, v21
	v_lshlrev_b32_e32 v22, 1, v22
	v_lshlrev_b32_e32 v23, 1, v23
	v_lshlrev_b32_e32 v24, 1, v24
	.loc	1 297 26 is_stmt 1              ; generate_amdgcn.py:297:26
	v_or_b32_e32 v16, s14, v39
	v_or_b32_e32 v17, s14, v42
	.loc	1 297 18 is_stmt 0              ; generate_amdgcn.py:297:18
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	.loc	1 334 27 is_stmt 1              ; generate_amdgcn.py:334:27
	s_mul_i32 s14, s14, s25
	.loc	1 334 13 is_stmt 0              ; generate_amdgcn.py:334:13
	s_mov_b32 s15, s19
	v_add3_u32 v95, s14, s6, v32
	s_mov_b32 s14, s18
	.loc	1 270 5 is_stmt 1               ; generate_amdgcn.py:270:5
	s_add_i32 s2, s2, 20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_cmp_lt_i32 s2, s26
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v99, v95, s3, 2
	v_add_lshl_u32 v100, v95, s28, 2
	v_add_lshl_u32 v101, v95, s29, 2
	v_add_lshl_u32 v102, v95, s30, 2
	v_add_lshl_u32 v103, v95, s31, 2
	v_add_lshl_u32 v104, v95, s33, 2
	v_add_lshl_u32 v105, v95, s34, 2
	v_add_lshl_u32 v106, v95, s35, 2
	v_add_lshl_u32 v107, v95, s36, 2
	v_add_lshl_u32 v108, v95, s37, 2
	v_add_lshl_u32 v109, v95, s38, 2
	v_add_lshl_u32 v110, v95, s39, 2
	v_add_lshl_u32 v111, v95, s40, 2
	v_add_lshl_u32 v112, v95, s42, 2
	v_add_lshl_u32 v113, v95, s43, 2
	v_add_lshl_u32 v114, v95, s44, 2
	v_add_lshl_u32 v115, v95, s45, 2
	v_add_lshl_u32 v116, v95, s46, 2
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v28, 16, v28
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v30, 16, v30
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v31, 16, v31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v94, 16, v94
	v_lshlrev_b32_e32 v27, 16, v27
	v_lshlrev_b32_e32 v25, 1, v25
	s_clause 0x7
	buffer_load_u16 v18, v18, s[20:23], 0 offen
	buffer_load_u16 v19, v19, s[20:23], 0 offen
	buffer_load_u16 v20, v20, s[20:23], 0 offen
	buffer_load_u16 v21, v21, s[20:23], 0 offen
	buffer_load_u16 v22, v22, s[20:23], 0 offen
	buffer_load_u16 v23, v23, s[20:23], 0 offen
	buffer_load_u16 v24, v24, s[20:23], 0 offen
	buffer_load_u16 v25, v25, s[20:23], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v24, 16, v24
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 297 18                        ; generate_amdgcn.py:297:18
	v_lshlrev_b32_e32 v16, 1, v16
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 297 18                        ; generate_amdgcn.py:297:18
	v_lshlrev_b32_e32 v17, 1, v17
	s_clause 0x1
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 297 18                        ; generate_amdgcn.py:297:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 297 18                        ; generate_amdgcn.py:297:18
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_dual_mul_f32 v137, v17, v23 :: v_dual_lshlrev_b32 v20, 16, v20
	v_dual_mul_f32 v118, v16, v19 :: v_dual_lshlrev_b32 v29, 16, v29
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_dual_mul_f32 v117, v16, v18 :: v_dual_lshlrev_b32 v98, 2, v95
	v_mul_f32_e32 v129, v16, v30
	v_mul_f32_e32 v119, v16, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v121, v16, v22
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	v_lshlrev_b32_e32 v93, 16, v93
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_dual_mul_f32 v122, v16, v23 :: v_dual_lshlrev_b32 v21, 16, v21
	v_mul_f32_e32 v123, v16, v24
	v_mul_f32_e32 v124, v16, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v125, v16, v26
	v_mul_f32_e32 v120, v16, v21
	v_mul_f32_e32 v126, v16, v27
	v_mul_f32_e32 v127, v16, v28
	v_mul_f32_e32 v128, v16, v29
	v_mul_f32_e32 v130, v16, v31
	v_mul_f32_e32 v131, v16, v93
	v_mul_f32_e32 v132, v16, v94
	.loc	1 299 13 is_stmt 0              ; generate_amdgcn.py:299:13
	v_mul_f32_e32 v16, v117, v92
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_mul_f32_e32 v94, v17, v94
	v_mul_f32_e32 v141, v17, v27
	v_mul_f32_e32 v134, v17, v20
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	v_dual_mul_f32 v20, v119, v90 :: v_dual_mul_f32 v145, v17, v31
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_mul_f32_e32 v138, v17, v24
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	v_mul_f32_e32 v24, v121, v88
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_mul_f32_e32 v93, v17, v93
	v_mul_f32_e32 v140, v17, v26
	v_dual_mul_f32 v135, v17, v21 :: v_dual_add_nc_u32 v96, 0, v58
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	v_dual_mul_f32 v21, v134, v13 :: v_dual_mul_f32 v144, v17, v30
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_mul_f32_e32 v139, v17, v25
	v_mul_f32_e32 v133, v17, v18
	v_mul_f32_e32 v19, v17, v19
	v_mul_f32_e32 v142, v17, v28
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	v_dual_mul_f32 v18, v118, v91 :: v_dual_mul_f32 v143, v17, v29
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_dual_mul_f32 v136, v17, v22 :: v_dual_add_nc_u32 v97, 0, v59
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	v_dual_mul_f32 v30, v124, v85 :: v_dual_mul_f32 v31, v139, v8
	v_dual_mul_f32 v84, v125, v84 :: v_dual_mul_f32 v29, v138, v9
	v_dual_mul_f32 v82, v127, v82 :: v_dual_mul_f32 v85, v140, v7
	v_dual_mul_f32 v17, v133, v15 :: v_dual_mul_f32 v22, v120, v89
	v_dual_mul_f32 v19, v19, v14 :: v_dual_mul_f32 v26, v122, v87
	v_mul_f32_e32 v27, v137, v10
	v_dual_mul_f32 v28, v123, v86 :: v_dual_mul_f32 v25, v136, v11
	v_dual_mul_f32 v86, v126, v83 :: v_dual_mul_f32 v87, v141, v6
	v_dual_mul_f32 v80, v129, v80 :: v_dual_mul_f32 v83, v142, v5
	v_dual_mul_f32 v88, v128, v81 :: v_dual_mul_f32 v89, v143, v4
	v_dual_mul_f32 v23, v135, v12 :: v_dual_mul_f32 v90, v130, v37
	v_dual_mul_f32 v81, v144, v3 :: v_dual_mul_f32 v36, v131, v36
	v_dual_mul_f32 v91, v145, v2 :: v_dual_mul_f32 v92, v132, v35
	v_mul_f32_e32 v37, v93, v1
	v_mul_f32_e32 v93, v94, v0
	ds_store_2addr_stride64_b64 v96, v[16:17], v[84:85] offset1:2
	ds_store_2addr_stride64_b64 v66, v[18:19], v[86:87] offset1:2
	ds_store_2addr_stride64_b64 v67, v[20:21], v[82:83] offset1:2
	ds_store_2addr_stride64_b64 v68, v[22:23], v[88:89] offset1:2
	ds_store_2addr_stride64_b64 v69, v[24:25], v[80:81] offset1:2
	ds_store_2addr_stride64_b64 v70, v[26:27], v[90:91] offset1:2
	ds_store_2addr_stride64_b64 v71, v[28:29], v[36:37] offset1:2
	ds_store_2addr_stride64_b64 v72, v[30:31], v[92:93] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[0:3], v97 offset1:16
	ds_load_2addr_b64 v[4:7], v73 offset1:16
	ds_load_2addr_b64 v[8:11], v74 offset1:16
	ds_load_2addr_b64 v[12:15], v75 offset1:16
	ds_load_2addr_b64 v[16:19], v76 offset1:16
	ds_load_2addr_b64 v[20:23], v77 offset1:16
	ds_load_2addr_b64 v[24:27], v78 offset1:16
	ds_load_2addr_b64 v[28:31], v79 offset1:16
	.loc	1 334 13 is_stmt 1              ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v35, v95, s47, 2
	v_add_lshl_u32 v36, v95, s48, 2
	v_add_lshl_u32 v37, v95, s49, 2
	v_add_lshl_u32 v80, v95, s50, 2
	v_add_lshl_u32 v81, v95, s51, 2
	v_add_lshl_u32 v82, v95, s52, 2
	v_add_lshl_u32 v83, v95, s53, 2
	v_add_lshl_u32 v84, v95, s54, 2
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v0, v98, s[12:15], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v4, v99, s[12:15], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v8, v100, s[12:15], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v12, v101, s[12:15], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v16, v102, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v20, v103, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v24, v104, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x13
	buffer_atomic_add_f32 v28, v105, s[12:15], 0 offen
	buffer_atomic_add_f32 v2, v106, s[12:15], 0 offen
	buffer_atomic_add_f32 v6, v107, s[12:15], 0 offen
	buffer_atomic_add_f32 v10, v108, s[12:15], 0 offen
	buffer_atomic_add_f32 v14, v109, s[12:15], 0 offen
	buffer_atomic_add_f32 v18, v110, s[12:15], 0 offen
	buffer_atomic_add_f32 v22, v111, s[12:15], 0 offen
	buffer_atomic_add_f32 v26, v112, s[12:15], 0 offen
	buffer_atomic_add_f32 v30, v113, s[12:15], 0 offen
	buffer_atomic_add_f32 v1, v114, s[12:15], 0 offen
	buffer_atomic_add_f32 v5, v115, s[12:15], 0 offen
	buffer_atomic_add_f32 v9, v116, s[12:15], 0 offen
	buffer_atomic_add_f32 v13, v35, s[12:15], 0 offen
	buffer_atomic_add_f32 v17, v36, s[12:15], 0 offen
	buffer_atomic_add_f32 v21, v37, s[12:15], 0 offen
	buffer_atomic_add_f32 v25, v80, s[12:15], 0 offen
	buffer_atomic_add_f32 v29, v81, s[12:15], 0 offen
	buffer_atomic_add_f32 v3, v82, s[12:15], 0 offen
	buffer_atomic_add_f32 v7, v83, s[12:15], 0 offen
	buffer_atomic_add_f32 v11, v84, s[12:15], 0 offen
	v_add_lshl_u32 v85, v95, s55, 2
	v_add_lshl_u32 v86, v95, s56, 2
	v_add_lshl_u32 v87, v95, s57, 2
	v_add_lshl_u32 v88, v95, s58, 2
	v_add_lshl_u32 v0, v95, s59, 2
	s_clause 0x4
	buffer_atomic_add_f32 v15, v85, s[12:15], 0 offen
	buffer_atomic_add_f32 v19, v86, s[12:15], 0 offen
	buffer_atomic_add_f32 v23, v87, s[12:15], 0 offen
	buffer_atomic_add_f32 v27, v88, s[12:15], 0 offen
	buffer_atomic_add_f32 v31, v0, s[12:15], 0 offen
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 271 20                        ; generate_amdgcn.py:271:20
	s_abs_i32 s6, s2
	s_ashr_i32 s10, s2, 31
	s_mul_hi_u32 s7, s6, s62
	s_xor_b32 s10, s10, s61
	s_mul_i32 s11, s7, s41
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	s_sub_i32 s6, s6, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s14, s6, s41
	s_cmp_ge_u32 s6, s41
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s6, s14, s6
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s6, s41
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	s_cselect_b32 s6, s11, s7
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	s_xor_b32 s6, s6, s10
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	s_sub_i32 s6, s6, s10
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	.loc	1 272 23                        ; generate_amdgcn.py:272:23
	s_lshl_b32 s11, s6, 2
	.loc	1 274 33                        ; generate_amdgcn.py:274:33
	s_mul_i32 s6, s6, s1
	.loc	1 273 35                        ; generate_amdgcn.py:273:35
	s_sub_i32 s7, s24, s11
	.loc	1 274 33                        ; generate_amdgcn.py:274:33
	s_sub_i32 s22, s2, s6
	.loc	1 273 24                        ; generate_amdgcn.py:273:24
	s_min_i32 s14, s7, 4
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	.loc	1 275 17                        ; generate_amdgcn.py:275:17
	s_abs_i32 s7, s14
	v_mov_b32_e32 v14, 0
	s_cvt_f32_u32 s10, s7
	s_sub_i32 s15, 0, s7
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v15, s10
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s10, v15
	v_mov_b32_e32 v15, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	s_mul_f32 s10, s10, 0x4f7ffffe
	s_cvt_u32_f32 s10, s10
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s15, s15, s10
	s_mul_hi_u32 s6, s10, s15
	s_abs_i32 s15, s22
	s_add_i32 s10, s10, s6
	s_xor_b32 s6, s22, s14
	s_mul_hi_u32 s10, s15, s10
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s23, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s15, s15, s23
	s_add_i32 s23, s10, 1
	s_sub_i32 s63, s15, s7
	s_cmp_ge_u32 s15, s7
	s_cselect_b32 s10, s23, s10
	s_cselect_b32 s15, s63, s15
	s_add_i32 s23, s10, 1
	s_cmp_ge_u32 s15, s7
	s_cselect_b32 s7, s23, s10
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_and_b32 vcc_lo, exec_lo, s0
	.loc	1 275 17                        ; generate_amdgcn.py:275:17
	s_xor_b32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s10, s7, s6
	.loc	1 274 32                        ; generate_amdgcn.py:274:32
	s_mul_i32 s14, s10, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s14, s22, s14
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_add_i32 s14, s14, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 276 18 is_stmt 1              ; generate_amdgcn.py:276:18
	s_lshl_b32 s14, s14, 6
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_or_b32 v1, s7, 7, v41
	s_lshl_b32 s6, s6, 7
	v_mov_b32_e32 v0, 0
	v_add_nc_u32_e32 v2, s14, v38
	s_mov_b32 s11, s60
	v_subrev_nc_u32_e32 v3, s6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v1, v0
	v_mad_u64_u32 v[35:36], null, s27, v2, v[34:35]
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[36:37], null, s27, v3, v[33:34]
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v5, v0
	v_mov_b32_e32 v6, v0
	v_mov_b32_e32 v7, v0
	v_mov_b32_e32 v8, v0
	v_mov_b32_e32 v9, v0
	v_mov_b32_e32 v10, v0
	v_mov_b32_e32 v11, v0
	v_mov_b32_e32 v12, v0
	v_mov_b32_e32 v13, v0
	v_mov_b32_e32 v14, v0
	v_mov_b32_e32 v15, v0
	v_mov_b32_e32 v16, v0
	v_mov_b32_e32 v17, v0
	v_mov_b32_e32 v18, v0
	v_mov_b32_e32 v19, v0
	v_mov_b32_e32 v20, v0
	v_mov_b32_e32 v21, v0
	v_mov_b32_e32 v22, v0
	v_mov_b32_e32 v23, v0
	v_mov_b32_e32 v24, v0
	v_mov_b32_e32 v25, v0
	v_mov_b32_e32 v26, v0
	v_mov_b32_e32 v27, v0
	v_mov_b32_e32 v28, v0
	v_mov_b32_e32 v29, v0
	v_mov_b32_e32 v30, v0
	v_mov_b32_e32 v31, v0
	s_set_inst_prefetch_distance 0x1
	.loc	1 0 13 is_stmt 0                ; :0:13
.Ltmp19:
	.p2align	6
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 292 26 is_stmt 1              ; generate_amdgcn.py:292:26
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	.loc	1 289 26                        ; generate_amdgcn.py:289:26
	buffer_load_b32 v37, v35, s[16:19], 0 offen
	.loc	1 292 26                        ; generate_amdgcn.py:292:26
	buffer_load_b64 v[88:89], v36, s[4:7], 0 offen
	.loc	1 289 26                        ; generate_amdgcn.py:289:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	v_add_nc_u32_e32 v35, 64, v35
	v_add_nc_u32_e32 v36, 64, v36
	s_add_i32 s11, s11, -1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s11, 0
	.loc	1 289 26                        ; generate_amdgcn.py:289:26
	s_waitcnt vmcnt(1)
	ds_store_b32 v60, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[80:83], v61 offset1:1
	ds_load_2addr_stride64_b64 v[84:87], v62 offset1:1
	.loc	1 292 26                        ; generate_amdgcn.py:292:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v63, v[88:89]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[88:91], v64 offset1:2
	ds_load_2addr_stride64_b64 v[92:95], v65 offset1:2
	.loc	1 295 27                        ; generate_amdgcn.py:295:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[88:89], v[80:81], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[90:91], v[80:81], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[88:89], v[82:83], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[90:91], v[82:83], v[24:31] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[92:93], v[84:85], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[94:95], v[84:85], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[92:93], v[86:87], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[94:95], v[86:87], v[24:31] neg_lo:[1,1,0]
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_set_inst_prefetch_distance 0x2
	.loc	1 296 19 is_stmt 1              ; generate_amdgcn.py:296:19
	v_cvt_f32_i32_e32 v92, v0
	v_cvt_f32_i32_e32 v91, v1
	v_cvt_f32_i32_e32 v90, v2
	v_cvt_f32_i32_e32 v89, v3
	v_cvt_f32_i32_e32 v88, v4
	v_cvt_f32_i32_e32 v87, v5
	v_cvt_f32_i32_e32 v86, v6
	v_cvt_f32_i32_e32 v85, v7
	v_cvt_f32_i32_e32 v84, v8
	v_cvt_f32_i32_e32 v83, v9
	v_cvt_f32_i32_e32 v82, v10
	v_cvt_f32_i32_e32 v81, v11
	v_cvt_f32_i32_e32 v80, v12
	v_cvt_f32_i32_e32 v37, v13
	v_cvt_f32_i32_e32 v36, v14
	v_cvt_f32_i32_e32 v35, v15
	v_cvt_f32_i32_e32 v15, v16
	v_cvt_f32_i32_e32 v14, v17
	v_cvt_f32_i32_e32 v13, v18
	v_cvt_f32_i32_e32 v12, v19
	v_cvt_f32_i32_e32 v11, v20
	v_cvt_f32_i32_e32 v10, v21
	v_cvt_f32_i32_e32 v9, v22
	v_cvt_f32_i32_e32 v8, v23
	v_cvt_f32_i32_e32 v7, v24
	v_cvt_f32_i32_e32 v6, v25
	v_cvt_f32_i32_e32 v5, v26
	v_cvt_f32_i32_e32 v4, v27
	v_cvt_f32_i32_e32 v3, v28
	v_cvt_f32_i32_e32 v2, v29
	v_cvt_f32_i32_e32 v1, v30
	v_cvt_f32_i32_e32 v0, v31
	s_branch .LBB0_2
.LBB0_7:                                ; %._crit_edge35
	.loc	1 251 1                         ; generate_amdgcn.py:251:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 241
		.amdhsa_next_free_sgpr 64
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 26
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.num_vgpr, 146
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.numbered_sgpr, 64
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3316
; TotalNumSgprs: 66
; NumVgprs: 146
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 66
; NumVGPRsForWavesPerEU: 241
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5f DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x39 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	260                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	261                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	281                             ; DW_AT_call_line
	.byte	36                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp0-.Lfunc_begin0
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     66
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     146
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
