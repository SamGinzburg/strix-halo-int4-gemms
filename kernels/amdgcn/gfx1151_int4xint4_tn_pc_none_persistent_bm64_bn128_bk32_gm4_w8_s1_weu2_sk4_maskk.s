	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 251 0                         ; generate_amdgcn.py:251:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[24:25], s[0:1], 0x30
.Ltmp0:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
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
	s_ashr_i32 s26, s4, 6
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_ashr_i32 s14, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 262 17 is_stmt 1              ; generate_amdgcn.py:262:17
	s_mul_i32 s27, s14, s26
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cmp_ge_i32 s2, s27
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.lr.ph36
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s15, s[0:1], 0x38
	s_load_b64 s[12:13], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	v_lshlrev_b32_e32 v9, 2, v0
	.loc	1 276 36 is_stmt 1              ; generate_amdgcn.py:276:36
	v_and_b32_e32 v2, 0x80, v0
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_and_b32_e32 v3, 0x60, v0
	v_bfe_i32 v10, v0, 0, 1
	.loc	1 268 14                        ; generate_amdgcn.py:268:14
	v_lshrrev_b32_e32 v4, 4, v0
	v_and_b32_e32 v11, 0x78, v9
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_and_b32_e32 v5, 15, v0
	v_lshrrev_b32_e32 v1, 3, v2
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_lshrrev_b32_e32 v6, 1, v3
	.loc	1 263 24                        ; generate_amdgcn.py:263:24
	s_lshl_b32 s1, s14, 2
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_bfe_i32 v7, v0, 7, 1
	.loc	1 283 27                        ; generate_amdgcn.py:283:27
	s_lshl_b32 s3, s3, 4
	v_and_b32_e32 v12, 14, v0
	v_and_b32_e32 v10, 0x840, v10
	v_lshl_or_b32 v3, v3, 3, v11
	v_and_b32_e32 v13, 1, v0
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_or_b32_e32 v34, v1, v5
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s0, s15, 31
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_and_b32_e32 v1, 0x7f, v0
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_add_i32 s0, s15, s0
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_lshrrev_b32_e32 v8, 7, v0
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_ashr_i32 s0, s0, 1
	v_lshlrev_b32_e32 v14, 11, v12
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:281:36 ]
	s_add_i32 s16, s0, 63
	v_sub_nc_u32_e32 v52, s0, v4
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:281:36 ]
	s_ashr_i32 s17, s16, 31
	v_xor_b32_e32 v3, v3, v10
	s_lshr_b32 s17, s17, 26
	v_lshlrev_b32_e32 v0, 4, v0
	s_add_i32 s16, s16, s17
	v_lshlrev_b32_e32 v10, 6, v13
	s_ashr_i32 s22, s16, 6
	s_cmp_gt_i32 s15, 1
	s_mov_b32 s16, s4
	s_cselect_b32 s0, -1, 0
	s_abs_i32 s42, s1
	s_mov_b32 s4, s6
	v_and_b32_e32 v7, 0x840, v7
	s_cvt_f32_u32 s6, s42
	v_or3_b32 v54, v3, v14, v2
	v_and_b32_e32 v0, 0x700, v0
	v_lshlrev_b32_e32 v2, 2, v12
	v_rcp_iflag_f32_e32 v21, s6
	v_xor_b32_e32 v3, v7, v10
.Ltmp12:
	.loc	1 277 36 is_stmt 1              ; generate_amdgcn.py:277:36
	v_and_or_b32 v35, v4, 1, v6
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	v_or_b32_e32 v4, s3, v4
	v_add_nc_u32_e32 v53, 0, v9
	v_add_nc_u32_e32 v11, 0, v5
	v_or3_b32 v55, v0, v2, v3
	v_xor_b32_e32 v2, 40, v54
	v_xor_b32_e32 v7, 8, v54
	v_xor_b32_e32 v10, 16, v54
	v_readfirstlane_b32 s6, v21
	v_xor_b32_e32 v12, 24, v54
	v_mad_u64_u32 v[32:33], null, s25, v8, v[1:2]
	v_mul_lo_u32 v1, s25, v4
	s_delay_alu instid0(VALU_DEP_4)
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_mul_lo_u32 v4, s24, v4
	v_xor_b32_e32 v0, 32, v54
	v_xor_b32_e32 v3, 48, v54
	v_xor_b32_e32 v13, 56, v54
	v_xor_b32_e32 v14, 0x1008, v55
	v_xor_b32_e32 v15, 0x2010, v55
	v_xor_b32_e32 v16, 0x3018, v55
	v_xor_b32_e32 v17, 0x4020, v55
	v_xor_b32_e32 v18, 0x5028, v55
	v_xor_b32_e32 v19, 0x6030, v55
	v_xor_b32_e32 v20, 0x7038, v55
	s_cvt_u32_f32 s6, s6
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	v_lshl_add_u32 v33, v5, 3, v1
	v_cndmask_b32_e64 v1, 0, 1, s0
	s_and_b32 s17, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	s_sub_i32 s7, 0, s42
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_or_b32_e32 v36, 32, v34
	s_mul_i32 s7, s7, s6
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_or_b32_e32 v37, 2, v35
	v_or_b32_e32 v38, 4, v35
	v_or_b32_e32 v39, 6, v35
	v_or_b32_e32 v40, 8, v35
	v_or_b32_e32 v41, 10, v35
	v_or_b32_e32 v42, 12, v35
	v_or_b32_e32 v43, 14, v35
	v_or_b32_e32 v44, 64, v35
	v_or_b32_e32 v45, 0x42, v35
	v_or_b32_e32 v46, 0x44, v35
	v_or_b32_e32 v47, 0x46, v35
	v_or_b32_e32 v48, 0x48, v35
	v_or_b32_e32 v49, 0x4a, v35
	v_or_b32_e32 v50, 0x4c, v35
	v_or_b32_e32 v51, 0x4e, v35
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	v_lshl_add_u32 v56, v5, 2, v4
	v_add_nc_u32_e32 v57, 0, v34
	v_add_nc_u32_e32 v58, v53, v9
	v_add_nc_u32_e32 v59, v11, v6
	v_add_nc_u32_e32 v60, 0, v7
	v_add_nc_u32_e32 v61, 0, v10
	v_add_nc_u32_e32 v62, 0, v12
	v_add_nc_u32_e32 v63, 0, v0
	v_add_nc_u32_e32 v64, 0, v2
	v_add_nc_u32_e32 v65, 0, v3
	v_add_nc_u32_e32 v66, 0, v13
	v_add_nc_u32_e32 v67, 0, v14
	v_add_nc_u32_e32 v68, 0, v15
	v_add_nc_u32_e32 v69, 0, v16
	v_add_nc_u32_e32 v70, 0, v17
	v_add_nc_u32_e32 v71, 0, v18
	v_add_nc_u32_e32 v72, 0, v19
	v_add_nc_u32_e32 v73, 0, v20
	v_cmp_ne_u32_e64 s0, 1, v1
	s_mul_hi_u32 s7, s6, s7
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s21, s11, 0xffff
	s_mov_b32 s20, s10
	s_lshl_b32 s28, s25, 1
	s_lshl_b32 s29, s25, 2
	s_mul_i32 s30, s25, 6
	s_lshl_b32 s31, s25, 3
	s_mul_i32 s33, s25, 10
	s_mul_i32 s34, s25, 12
	s_mul_i32 s35, s25, 14
	s_lshl_b32 s36, s25, 4
	s_mul_i32 s37, s25, 18
	s_mul_i32 s38, s25, 20
	s_mul_i32 s39, s25, 22
	s_mul_i32 s40, s25, 24
	s_mul_i32 s41, s25, 26
	s_mul_i32 s43, s25, 28
	s_mul_i32 s44, s25, 30
	s_lshl_b32 s45, s25, 5
	s_mul_i32 s46, s25, 34
	s_mul_i32 s47, s25, 36
	s_mul_i32 s48, s25, 38
	s_mul_i32 s49, s25, 40
	s_mul_i32 s50, s25, 42
	s_mul_i32 s51, s25, 44
	s_mul_i32 s52, s25, 46
	s_mul_i32 s53, s25, 48
	s_mul_i32 s54, s25, 50
	s_mul_i32 s55, s25, 52
	s_mul_i32 s56, s25, 54
	s_mul_i32 s57, s25, 56
	s_mul_i32 s58, s25, 58
	s_mul_i32 s59, s25, 60
	s_mul_i32 s60, s25, 62
	s_and_b32 s13, s13, 0xffff
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_max_i32 s61, s22, 1
	s_bfe_i32 s62, s14, 0x1001d
	s_add_i32 s63, s6, s7
	s_lshl_b32 s64, s25, 6
	s_lshl_b32 s24, s24, 6
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 18                        ; generate_amdgcn.py:277:18
	s_lshl_b32 s6, s10, 7
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	s_mov_b32 s22, s18
	.loc	1 298 26 is_stmt 0              ; generate_amdgcn.py:298:26
	v_or_b32_e32 v26, s6, v44
	v_or_b32_e32 v27, s6, v45
	v_or_b32_e32 v28, s6, v46
	v_or_b32_e32 v29, s6, v47
	v_or_b32_e32 v30, s6, v48
	v_or_b32_e32 v31, s6, v49
	v_or_b32_e32 v90, s6, v50
	v_or_b32_e32 v91, s6, v51
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	v_lshlrev_b32_e32 v26, 1, v26
	v_lshlrev_b32_e32 v27, 1, v27
	v_lshlrev_b32_e32 v28, 1, v28
	s_mov_b32 s23, s19
	v_lshlrev_b32_e32 v29, 1, v29
	v_lshlrev_b32_e32 v30, 1, v30
	v_lshlrev_b32_e32 v31, 1, v31
	v_lshlrev_b32_e32 v90, 1, v90
	v_lshlrev_b32_e32 v91, 1, v91
	s_clause 0x7
	buffer_load_u16 v26, v26, s[20:23], 0 offen
	buffer_load_u16 v27, v27, s[20:23], 0 offen
	buffer_load_u16 v28, v28, s[20:23], 0 offen
	buffer_load_u16 v29, v29, s[20:23], 0 offen
	buffer_load_u16 v30, v30, s[20:23], 0 offen
	buffer_load_u16 v31, v31, s[20:23], 0 offen
	buffer_load_u16 v90, v90, s[20:23], 0 offen
	buffer_load_u16 v91, v91, s[20:23], 0 offen
	.loc	1 298 26                        ; generate_amdgcn.py:298:26
	v_or_b32_e32 v18, s6, v35
	v_or_b32_e32 v19, s6, v37
	v_or_b32_e32 v20, s6, v38
	v_or_b32_e32 v21, s6, v39
	v_or_b32_e32 v22, s6, v40
	v_or_b32_e32 v23, s6, v41
	v_or_b32_e32 v24, s6, v42
	v_or_b32_e32 v25, s6, v43
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	v_lshlrev_b32_e32 v18, 1, v18
	v_lshlrev_b32_e32 v19, 1, v19
	v_lshlrev_b32_e32 v20, 1, v20
	v_lshlrev_b32_e32 v21, 1, v21
	v_lshlrev_b32_e32 v22, 1, v22
	v_lshlrev_b32_e32 v23, 1, v23
	v_lshlrev_b32_e32 v24, 1, v24
	.loc	1 297 26 is_stmt 1              ; generate_amdgcn.py:297:26
	v_or_b32_e32 v16, s14, v34
	v_or_b32_e32 v17, s14, v36
	.loc	1 297 18 is_stmt 0              ; generate_amdgcn.py:297:18
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	.loc	1 334 27 is_stmt 1              ; generate_amdgcn.py:334:27
	s_mul_i32 s14, s14, s25
	.loc	1 334 13 is_stmt 0              ; generate_amdgcn.py:334:13
	s_mov_b32 s15, s19
	v_add3_u32 v92, s14, s6, v32
	s_mov_b32 s14, s18
	.loc	1 270 5 is_stmt 1               ; generate_amdgcn.py:270:5
	s_add_i32 s2, s2, 20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_cmp_lt_i32 s2, s27
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v96, v92, s28, 2
	v_add_lshl_u32 v97, v92, s29, 2
	v_add_lshl_u32 v98, v92, s30, 2
	v_add_lshl_u32 v99, v92, s31, 2
	v_add_lshl_u32 v100, v92, s33, 2
	v_add_lshl_u32 v101, v92, s34, 2
	v_add_lshl_u32 v102, v92, s35, 2
	v_add_lshl_u32 v103, v92, s36, 2
	v_add_lshl_u32 v104, v92, s37, 2
	v_add_lshl_u32 v105, v92, s38, 2
	v_add_lshl_u32 v106, v92, s39, 2
	v_add_lshl_u32 v107, v92, s40, 2
	v_add_lshl_u32 v108, v92, s41, 2
	v_add_lshl_u32 v109, v92, s43, 2
	v_add_lshl_u32 v110, v92, s44, 2
	v_add_lshl_u32 v111, v92, s45, 2
	v_add_lshl_u32 v112, v92, s46, 2
	v_add_lshl_u32 v113, v92, s47, 2
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v28, 16, v28
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v30, 16, v30
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v31, 16, v31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v91, 16, v91
	v_lshlrev_b32_e32 v26, 16, v26
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
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 297 18                        ; generate_amdgcn.py:297:18
	v_lshlrev_b32_e32 v16, 1, v16
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	v_lshlrev_b32_e32 v18, 16, v18
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
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 297 18                        ; generate_amdgcn.py:297:18
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_mul_f32_e32 v130, v17, v18
	v_mul_f32_e32 v133, v17, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v115, v16, v19
	v_mul_f32_e32 v114, v16, v18
	v_mul_f32_e32 v129, v16, v91
	v_dual_mul_f32 v127, v16, v31 :: v_dual_mul_f32 v18, v115, v88
	v_dual_mul_f32 v91, v17, v91 :: v_dual_mul_f32 v122, v16, v26
	v_dual_mul_f32 v137, v17, v26 :: v_dual_lshlrev_b32 v20, 16, v20
	v_dual_mul_f32 v141, v17, v30 :: v_dual_add_nc_u32 v94, 0, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 299 13 is_stmt 0              ; generate_amdgcn.py:299:13
	v_dual_mul_f32 v81, v122, v81 :: v_dual_mul_f32 v124, v16, v28
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_mul_f32_e32 v116, v16, v20
	.loc	1 298 18 is_stmt 1              ; generate_amdgcn.py:298:18
	v_lshlrev_b32_e32 v90, 16, v90
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_mul_f32_e32 v131, v17, v20
	.loc	1 299 13 is_stmt 0              ; generate_amdgcn.py:299:13
	v_mul_f32_e32 v79, v124, v79
	.loc	1 298 18 is_stmt 1              ; generate_amdgcn.py:298:18
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	v_mul_f32_e32 v20, v116, v87
	.loc	1 299 20 is_stmt 0              ; generate_amdgcn.py:299:20
	v_dual_mul_f32 v140, v17, v29 :: v_dual_lshlrev_b32 v23, 16, v23
	v_mul_f32_e32 v128, v16, v90
	v_dual_mul_f32 v90, v17, v90 :: v_dual_lshlrev_b32 v21, 16, v21
	v_mul_f32_e32 v138, v17, v27
	v_mul_f32_e32 v120, v16, v24
	v_mul_f32_e32 v123, v16, v27
	v_dual_mul_f32 v142, v17, v31 :: v_dual_mul_f32 v121, v16, v25
	v_mul_f32_e32 v136, v17, v25
	v_mul_f32_e32 v19, v17, v19
	v_mul_f32_e32 v119, v16, v23
	v_mul_f32_e32 v139, v17, v28
	v_dual_mul_f32 v132, v17, v21 :: v_dual_add_nc_u32 v93, 0, v54
	v_mul_f32_e32 v117, v16, v21
	v_mul_f32_e32 v118, v16, v22
	v_mul_f32_e32 v125, v16, v29
	v_dual_mul_f32 v134, v17, v23 :: v_dual_lshlrev_b32 v95, 2, v92
	v_dual_mul_f32 v135, v17, v24 :: v_dual_mul_f32 v28, v120, v83
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	v_mul_f32_e32 v87, v127, v76
	v_dual_mul_f32 v83, v123, v80 :: v_dual_mul_f32 v126, v16, v30
	v_mul_f32_e32 v16, v114, v89
	v_dual_mul_f32 v30, v121, v82 :: v_dual_mul_f32 v75, v128, v75
	v_mul_f32_e32 v17, v130, v15
	v_dual_mul_f32 v19, v19, v14 :: v_dual_mul_f32 v82, v137, v7
	v_dual_mul_f32 v26, v119, v84 :: v_dual_mul_f32 v77, v126, v77
	v_dual_mul_f32 v21, v131, v13 :: v_dual_mul_f32 v84, v138, v6
	v_dual_mul_f32 v89, v129, v74 :: v_dual_mul_f32 v80, v139, v5
	v_mul_f32_e32 v22, v117, v86
	v_dual_mul_f32 v24, v118, v85 :: v_dual_mul_f32 v85, v125, v78
	v_dual_mul_f32 v23, v132, v12 :: v_dual_mul_f32 v78, v141, v3
	v_dual_mul_f32 v86, v140, v4 :: v_dual_mul_f32 v25, v133, v11
	v_mul_f32_e32 v88, v142, v2
	v_mul_f32_e32 v27, v134, v10
	v_mul_f32_e32 v29, v135, v9
	v_dual_mul_f32 v31, v136, v8 :: v_dual_mul_f32 v76, v90, v1
	v_mul_f32_e32 v90, v91, v0
	ds_store_2addr_stride64_b64 v93, v[16:17], v[81:82] offset1:2
	ds_store_2addr_stride64_b64 v60, v[18:19], v[83:84] offset1:2
	ds_store_2addr_stride64_b64 v61, v[20:21], v[79:80] offset1:2
	ds_store_2addr_stride64_b64 v62, v[22:23], v[85:86] offset1:2
	ds_store_2addr_stride64_b64 v63, v[24:25], v[77:78] offset1:2
	ds_store_2addr_stride64_b64 v64, v[26:27], v[87:88] offset1:2
	ds_store_2addr_stride64_b64 v65, v[28:29], v[75:76] offset1:2
	ds_store_2addr_stride64_b64 v66, v[30:31], v[89:90] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[0:3], v94 offset1:16
	ds_load_2addr_b64 v[4:7], v67 offset1:16
	ds_load_2addr_b64 v[8:11], v68 offset1:16
	ds_load_2addr_b64 v[12:15], v69 offset1:16
	ds_load_2addr_b64 v[16:19], v70 offset1:16
	ds_load_2addr_b64 v[20:23], v71 offset1:16
	ds_load_2addr_b64 v[24:27], v72 offset1:16
	ds_load_2addr_b64 v[28:31], v73 offset1:16
	.loc	1 334 13 is_stmt 1              ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v74, v92, s48, 2
	v_add_lshl_u32 v75, v92, s49, 2
	v_add_lshl_u32 v76, v92, s50, 2
	v_add_lshl_u32 v77, v92, s51, 2
	v_add_lshl_u32 v78, v92, s52, 2
	v_add_lshl_u32 v79, v92, s53, 2
	v_add_lshl_u32 v80, v92, s54, 2
	v_add_lshl_u32 v81, v92, s55, 2
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v0, v95, s[12:15], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v4, v96, s[12:15], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v8, v97, s[12:15], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v12, v98, s[12:15], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v16, v99, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v20, v100, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v24, v101, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x13
	buffer_atomic_add_f32 v28, v102, s[12:15], 0 offen
	buffer_atomic_add_f32 v2, v103, s[12:15], 0 offen
	buffer_atomic_add_f32 v6, v104, s[12:15], 0 offen
	buffer_atomic_add_f32 v10, v105, s[12:15], 0 offen
	buffer_atomic_add_f32 v14, v106, s[12:15], 0 offen
	buffer_atomic_add_f32 v18, v107, s[12:15], 0 offen
	buffer_atomic_add_f32 v22, v108, s[12:15], 0 offen
	buffer_atomic_add_f32 v26, v109, s[12:15], 0 offen
	buffer_atomic_add_f32 v30, v110, s[12:15], 0 offen
	buffer_atomic_add_f32 v1, v111, s[12:15], 0 offen
	buffer_atomic_add_f32 v5, v112, s[12:15], 0 offen
	buffer_atomic_add_f32 v9, v113, s[12:15], 0 offen
	buffer_atomic_add_f32 v13, v74, s[12:15], 0 offen
	buffer_atomic_add_f32 v17, v75, s[12:15], 0 offen
	buffer_atomic_add_f32 v21, v76, s[12:15], 0 offen
	buffer_atomic_add_f32 v25, v77, s[12:15], 0 offen
	buffer_atomic_add_f32 v29, v78, s[12:15], 0 offen
	buffer_atomic_add_f32 v3, v79, s[12:15], 0 offen
	buffer_atomic_add_f32 v7, v80, s[12:15], 0 offen
	buffer_atomic_add_f32 v11, v81, s[12:15], 0 offen
	v_add_lshl_u32 v82, v92, s56, 2
	v_add_lshl_u32 v83, v92, s57, 2
	v_add_lshl_u32 v84, v92, s58, 2
	v_add_lshl_u32 v85, v92, s59, 2
	v_add_lshl_u32 v0, v92, s60, 2
	s_clause 0x4
	buffer_atomic_add_f32 v15, v82, s[12:15], 0 offen
	buffer_atomic_add_f32 v19, v83, s[12:15], 0 offen
	buffer_atomic_add_f32 v23, v84, s[12:15], 0 offen
	buffer_atomic_add_f32 v27, v85, s[12:15], 0 offen
	buffer_atomic_add_f32 v31, v0, s[12:15], 0 offen
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 271 20                        ; generate_amdgcn.py:271:20
	s_abs_i32 s6, s2
	s_ashr_i32 s10, s2, 31
	s_mul_hi_u32 s7, s6, s63
	s_xor_b32 s10, s10, s62
	s_mul_i32 s11, s7, s42
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	s_sub_i32 s6, s6, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s14, s6, s42
	s_cmp_ge_u32 s6, s42
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s6, s14, s6
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s6, s42
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
	s_sub_i32 s7, s26, s11
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
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v15, s10
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s10, v15
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_mov_b32_e32 v89, 0
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
	s_sub_i32 s65, s15, s7
	s_cmp_ge_u32 s15, s7
	s_cselect_b32 s10, s23, s10
	s_cselect_b32 s15, s65, s15
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
	v_lshl_add_u32 v1, s7, 7, v33
	v_mov_b32_e32 v0, 0
	s_lshl_b32 s6, s6, 7
	v_add_nc_u32_e32 v74, s14, v56
	s_mov_b32 s11, s3
	v_subrev_nc_u32_e32 v75, s6, v1
	v_mov_b32_e32 v1, v0
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
	s_mov_b32 s15, s61
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 284 27                        ; generate_amdgcn.py:284:27
	v_cmp_lt_i32_e32 vcc_lo, s11, v52
	.loc	1 294 26                        ; generate_amdgcn.py:294:26
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_add_i32 s15, s15, -1
	s_add_i32 s11, s11, 64
	.loc	1 287 26                        ; generate_amdgcn.py:287:26
	v_cndmask_b32_e32 v76, 0x80000000, v74, vcc_lo
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	v_add_nc_u32_e32 v74, s24, v74
	s_cmp_lg_u32 s15, 0
	.loc	1 287 26                        ; generate_amdgcn.py:287:26
	buffer_load_b32 v78, v76, s[16:19], 0 offen
	.loc	1 294 26                        ; generate_amdgcn.py:294:26
	v_cndmask_b32_e32 v76, 0x80000000, v75, vcc_lo
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	v_add_nc_u32_e32 v75, s64, v75
	.loc	1 294 26                        ; generate_amdgcn.py:294:26
	buffer_load_b64 v[76:77], v76, s[4:7], 0 offen
	.loc	1 287 26                        ; generate_amdgcn.py:287:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b32 v53, v78
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 295 27                        ; generate_amdgcn.py:295:27
	ds_load_u8 v78, v57 offset:448
	ds_load_u8 v79, v57 offset:384
	ds_load_u8 v80, v57 offset:320
	ds_load_u8 v81, v57 offset:256
	ds_load_u8 v82, v57 offset:480
	ds_load_u8 v83, v57 offset:416
	ds_load_u8 v84, v57 offset:352
	ds_load_u8 v85, v57 offset:288
	ds_load_u8 v86, v57 offset:192
	ds_load_u8 v87, v57 offset:128
	ds_load_u8 v88, v57 offset:64
	ds_load_u8 v89, v57 offset:224
	ds_load_u8 v90, v57 offset:160
	ds_load_u8 v91, v57 offset:96
	ds_load_u8 v92, v57
	ds_load_u8 v93, v57 offset:32
	ds_load_u8 v94, v57 offset:704
	ds_load_u8 v95, v57 offset:640
	ds_load_u8 v96, v57 offset:576
	ds_load_u8 v97, v57 offset:512
	ds_load_u8 v98, v57 offset:736
	ds_load_u8 v99, v57 offset:672
	ds_load_u8 v100, v57 offset:608
	ds_load_u8 v101, v57 offset:544
	ds_load_u8 v102, v57 offset:960
	ds_load_u8 v103, v57 offset:896
	ds_load_u8 v104, v57 offset:832
	ds_load_u8 v105, v57 offset:768
	ds_load_u8 v106, v57 offset:992
	ds_load_u8 v107, v57 offset:928
	ds_load_u8 v108, v57 offset:864
	ds_load_u8 v109, v57 offset:800
	.loc	1 294 26                        ; generate_amdgcn.py:294:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v58, v[76:77]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 295 27                        ; generate_amdgcn.py:295:27
	ds_load_u8 v110, v59 offset:640
	ds_load_u8 v111, v59 offset:512
	ds_load_u8 v112, v59 offset:896
	ds_load_u8 v113, v59 offset:768
	ds_load_u8 v114, v59 offset:960
	ds_load_u8 v115, v59 offset:832
	ds_load_u8 v116, v59 offset:704
	ds_load_u8 v117, v59 offset:576
	ds_load_u8 v118, v59 offset:128
	ds_load_u8 v119, v59
	ds_load_u8 v120, v59 offset:384
	ds_load_u8 v121, v59 offset:256
	ds_load_u8 v122, v59 offset:448
	ds_load_u8 v123, v59 offset:320
	ds_load_u8 v124, v59 offset:192
	ds_load_u8 v125, v59 offset:64
	ds_load_u8 v126, v59 offset:1664
	ds_load_u8 v127, v59 offset:1536
	ds_load_u8 v128, v59 offset:1920
	ds_load_u8 v129, v59 offset:1792
	ds_load_u8 v130, v59 offset:1984
	ds_load_u8 v131, v59 offset:1856
	ds_load_u8 v132, v59 offset:1728
	ds_load_u8 v133, v59 offset:1600
	ds_load_u8 v134, v59 offset:1152
	ds_load_u8 v135, v59 offset:1024
	ds_load_u8 v136, v59 offset:1408
	ds_load_u8 v137, v59 offset:1280
	ds_load_u8 v138, v59 offset:1472
	ds_load_u8 v139, v59 offset:1344
	ds_load_u8 v140, v59 offset:1216
	ds_load_u8 v141, v59 offset:1088
	v_perm_b32 v76, v81, v80, 0xc0c0004
	v_perm_b32 v77, v79, v78, 0xc0c0004
	v_perm_b32 v78, v92, v88, 0xc0c0004
	v_perm_b32 v79, v87, v86, 0xc0c0004
	v_perm_b32 v86, v97, v96, 0xc0c0004
	v_perm_b32 v87, v95, v94, 0xc0c0004
	v_perm_b32 v84, v85, v84, 0xc0c0004
	v_perm_b32 v81, v103, v102, 0xc0c0004
	v_perm_b32 v82, v83, v82, 0xc0c0004
	v_perm_b32 v80, v105, v104, 0xc0c0004
	v_perm_b32 v83, v93, v91, 0xc0c0004
	v_perm_b32 v85, v90, v89, 0xc0c0004
	v_perm_b32 v89, v107, v106, 0xc0c0004
	v_perm_b32 v88, v109, v108, 0xc0c0004
	v_perm_b32 v90, v101, v100, 0xc0c0004
	v_perm_b32 v91, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v92, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v93, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v94, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v95, v121, v120, 0xc0c0004
	v_perm_b32 v98, v117, v116, 0xc0c0004
	v_perm_b32 v99, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v100, v125, v124, 0xc0c0004
	v_perm_b32 v101, v123, v122, 0xc0c0004
	v_lshl_or_b32 v77, v77, 16, v76
	v_lshl_or_b32 v76, v79, 16, v78
	v_lshl_or_b32 v79, v81, 16, v80
	v_lshl_or_b32 v78, v87, 16, v86
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v86, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v87, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v96, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v97, v137, v136, 0xc0c0004
	v_perm_b32 v102, v133, v132, 0xc0c0004
	v_perm_b32 v103, v131, v130, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v141, v140, 0xc0c0004
	v_perm_b32 v105, v139, v138, 0xc0c0004
	v_lshl_or_b32 v81, v82, 16, v84
	v_lshl_or_b32 v80, v85, 16, v83
	v_lshl_or_b32 v83, v89, 16, v88
	v_lshl_or_b32 v85, v93, 16, v92
	v_lshl_or_b32 v84, v95, 16, v94
	v_lshl_or_b32 v89, v99, 16, v98
	v_lshl_or_b32 v88, v101, 16, v100
	v_lshl_or_b32 v82, v91, 16, v90
	v_lshl_or_b32 v87, v87, 16, v86
	v_lshl_or_b32 v86, v97, 16, v96
	v_lshl_or_b32 v91, v103, 16, v102
	v_lshl_or_b32 v90, v105, 16, v104
	v_wmma_i32_16x16x16_iu4 v[0:7], v[84:85], v[76:77], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[88:89], v[76:77], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[84:85], v[80:81], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[88:89], v[80:81], v[24:31] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[86:87], v[78:79], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[90:91], v[78:79], v[8:15] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[16:23], v[86:87], v[82:83], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[90:91], v[82:83], v[24:31] neg_lo:[1,1,0]
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 296 19                        ; generate_amdgcn.py:296:19
	v_cvt_f32_i32_e32 v89, v0
	v_cvt_f32_i32_e32 v88, v1
	v_cvt_f32_i32_e32 v87, v2
	v_cvt_f32_i32_e32 v86, v3
	v_cvt_f32_i32_e32 v85, v4
	v_cvt_f32_i32_e32 v84, v5
	v_cvt_f32_i32_e32 v83, v6
	v_cvt_f32_i32_e32 v82, v7
	v_cvt_f32_i32_e32 v81, v8
	v_cvt_f32_i32_e32 v80, v9
	v_cvt_f32_i32_e32 v79, v10
	v_cvt_f32_i32_e32 v78, v11
	v_cvt_f32_i32_e32 v77, v12
	v_cvt_f32_i32_e32 v76, v13
	v_cvt_f32_i32_e32 v75, v14
	v_cvt_f32_i32_e32 v74, v15
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
.LBB0_7:                                ; %._crit_edge37
	.loc	1 251 1                         ; generate_amdgcn.py:251:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp13:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_maskk
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
		.amdhsa_next_free_sgpr 66
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
		.amdhsa_inst_pref_size 34
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_maskk.num_vgpr, 143
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_maskk.numbered_sgpr, 66
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4252
; TotalNumSgprs: 68
; NumVgprs: 143
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 68
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
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
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
	.byte	5                               ; Abbrev [5] 0x5b:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp11                         ; DW_AT_low_pc
	.long	.Ltmp12-.Ltmp11                 ; DW_AT_high_pc
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     68
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     143
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
