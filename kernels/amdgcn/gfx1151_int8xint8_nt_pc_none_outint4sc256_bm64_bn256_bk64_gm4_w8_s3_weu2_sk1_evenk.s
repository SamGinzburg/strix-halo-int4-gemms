	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[28:29], s[0:1], 0x30
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v62, 3, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v80, 1, v0
	v_lshlrev_b32_e32 v63, 4, v0
	v_lshlrev_b32_e32 v84, 5, v0
	s_mov_b32 s17, 0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v57, 4, v62
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v41, 48, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v86, v63, v41
	v_add_nc_u32_e32 v41, 0, v86
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s28, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s10, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s7, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s8, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s8
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s9, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s9, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s5, s9
	s_add_i32 s5, s5, s9
	s_xor_b32 s9, s2, s8
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s10
	s_add_i32 s10, s5, 1
	s_sub_i32 s11, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s10, s5
	s_cselect_b32 s6, s11, s6
	s_add_i32 s10, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s10, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s9
	s_sub_i32 s9, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s10, s9, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s9, s9, s8
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s4, s7, s10
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s9
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s11, s4, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s9, s2
	s_abs_i32 s12, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s12
	s_sub_i32 s15, 0, s12
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s4, v1
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v1, 2, v0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s13, s4, 0x4f7ffffe
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b32 s14, s[0:1], 0x38
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v2, 0xc0, v1
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s13, s13
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s15, s15, s13
	s_mul_hi_u32 s8, s13, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s13, s13, s8
	s_mul_hi_u32 s8, s9, s13
	s_xor_b32 s13, s2, s11
	s_mul_i32 s15, s8, s12
	s_ashr_i32 s13, s13, 31
	s_sub_i32 s9, s9, s15
	s_add_i32 s15, s8, 1
	s_sub_i32 s16, s9, s12
	s_cmp_ge_u32 s9, s12
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[58:59], null, s14, v1, v[57:58]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s8, s15, s8
	s_cselect_b32 s9, s16, s9
	s_add_i32 s15, s8, 1
	s_cmp_ge_u32 s9, s12
	s_mov_b64 s[24:25], s[6:7]
	s_cselect_b32 s6, s15, s8
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_mad_u64_u32 v[59:60], null, s14, v2, v[57:58]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s6, s6, s13
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s18, s14, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s28, s6, s13
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s34, s3, 6
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s8, s28, s11
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s31, s28, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s8
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_mul_i32 s33, s31, s14
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s10
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_lshl_add_u32 v82, s14, 6, v58
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s30, s2, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s18, 63
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mad_u64_u32 v[60:61], null, s30, s14, v[58:59]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_add_i32 s8, s33, s34
	v_lshl_add_u32 v83, s14, 7, v58
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s18, 0x7f
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v2, s8, v58
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v1, s34, v60
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s34, s34, 64
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v5, s8, v59
	v_add_nc_u32_e32 v3, s8, v82
	v_add_nc_u32_e32 v4, s8, v83
	s_add_i32 s8, s8, 64
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v6, s34, v60
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v14, 64, v2
	v_add_nc_u32_e32 v7, s8, v82
	v_add_nc_u32_e32 v21, s8, v83
	v_add_nc_u32_e32 v22, 64, v5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e64 v8, 0x80000000, v2, s3
	v_cndmask_b32_e64 v13, 0x80000000, v4, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v23, 0x80000000, v6, s2
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e64 v9, 0x80000000, v3, s3
	v_cndmask_b32_e64 v17, 0x80000000, v5, s3
	v_cndmask_b32_e64 v25, 0x80000000, v14, s2
	v_cndmask_b32_e64 v29, 0x80000000, v7, s2
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	v_cndmask_b32_e64 v33, 0x80000000, v21, s2
	v_cndmask_b32_e64 v37, 0x80000000, v22, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[1:4], v1, s[4:7], 0 offen
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_clause 0x3
	buffer_load_b128 v[5:8], v8, s[24:27], 0 offen
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v17, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[21:24], v23, s[4:7], 0 offen
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_clause 0x3
	buffer_load_b128 v[25:28], v25, s[24:27], 0 offen
	buffer_load_b128 v[29:32], v29, s[24:27], 0 offen
	buffer_load_b128 v[33:36], v33, s[24:27], 0 offen
	buffer_load_b128 v[37:40], v37, s[24:27], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v61, 15, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s18, 0xbf
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(9)
	ds_store_b128 v41, v[1:4] offset:32768
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v41, v[5:8]
	s_waitcnt vmcnt(7)
	ds_store_b128 v41, v[9:12] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v41, v[13:16] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v41, v[17:20] offset:12288
	v_lshlrev_b32_e32 v85, 6, v61
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v41, v[21:24] offset:36864
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v41, v[25:28] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v41, v[29:32] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v41, v[33:36] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v41, v[37:40] offset:28672
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_lshlrev_b32_e32 v1, 5, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v2, 6, v61
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_and_b32_e32 v81, 0x1c00, v1
	s_load_b256 s[8:15], s[0:1], 0x10
	s_mov_b32 s16, 0
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_mov_b32_e32 v9, 0
	s_add_i32 s37, 0, 0x8000
	s_add_i32 s0, 0, 0x9000
	s_add_i32 s1, 0, 0x4000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v12, v9
	v_mov_b32_e32 v10, v9
	v_mov_b32_e32 v11, v9
	v_mov_b32_e32 v65, v9
	v_mov_b32_e32 v66, v9
	v_mov_b32_e32 v16, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v20, v12 :: v_dual_mov_b32 v19, v11
	v_dual_mov_b32 v28, v12 :: v_dual_mov_b32 v27, v11
	v_dual_mov_b32 v56, v12 :: v_dual_mov_b32 v55, v11
	v_dual_mov_b32 v48, v12 :: v_dual_mov_b32 v47, v11
	v_dual_mov_b32 v52, v12 :: v_dual_mov_b32 v51, v11
	v_dual_mov_b32 v40, v12 :: v_dual_mov_b32 v39, v11
	v_dual_mov_b32 v44, v12 :: v_dual_mov_b32 v43, v11
	v_dual_mov_b32 v36, v12 :: v_dual_mov_b32 v35, v11
	v_dual_mov_b32 v32, v12 :: v_dual_mov_b32 v31, v11
	v_dual_mov_b32 v24, v12 :: v_dual_mov_b32 v23, v11
	v_dual_mov_b32 v15, v11 :: v_dual_mov_b32 v14, v10
	v_dual_mov_b32 v13, v9 :: v_dual_mov_b32 v18, v10
	v_dual_mov_b32 v17, v9 :: v_dual_mov_b32 v26, v10
	v_dual_mov_b32 v25, v9 :: v_dual_mov_b32 v54, v10
	v_dual_mov_b32 v53, v9 :: v_dual_mov_b32 v46, v10
	v_dual_mov_b32 v45, v9 :: v_dual_mov_b32 v50, v10
	v_dual_mov_b32 v49, v9 :: v_dual_mov_b32 v38, v10
	v_dual_mov_b32 v37, v9 :: v_dual_mov_b32 v42, v10
	v_dual_mov_b32 v41, v9 :: v_dual_mov_b32 v34, v10
	v_dual_mov_b32 v33, v9 :: v_dual_mov_b32 v30, v10
	v_dual_mov_b32 v29, v9 :: v_dual_mov_b32 v22, v10
	v_mov_b32_e32 v21, v9
	v_mov_b32_e32 v67, v9
	v_mov_b32_e32 v68, v9
	v_mov_b32_e32 v69, v9
	v_mov_b32_e32 v70, v9
	v_mov_b32_e32 v71, v9
	v_mov_b32_e32 v72, v9
	v_mov_b32_e32 v73, v9
	v_mov_b32_e32 v74, v9
	v_mov_b32_e32 v75, v9
	v_mov_b32_e32 v76, v9
	v_mov_b32_e32 v77, v9
	v_mov_b32_e32 v78, v9
	v_mov_b32_e32 v79, v9
	v_mov_b32_e32 v64, v9
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr81
	s_load_b256 s[8:15], s[0:1], 0x10
	s_mov_b32 s16, 0
.LBB0_4:                                ; %.lr.ph
	v_dual_mov_b32 v64, 0 :: v_dual_lshlrev_b32 v1, 3, v0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s35, s18, 6
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_delay_alu instid0(VALU_DEP_1)
	v_and_or_b32 v87, v1, 48, v85
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v81, 0x1c00, v84
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v4, s19
	v_mov_b32_e32 v2, s17
	v_xor_b32_e32 v89, 16, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v88, v87, v81
	v_xor_b32_e32 v90, 32, v87
	v_xor_b32_e32 v91, 48, v87
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v6, s21
	v_xor_b32_e32 v92, 16, v88
	v_xor_b32_e32 v93, 32, v88
	v_xor_b32_e32 v94, 48, v88
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v24, 0
	v_mov_b32_e32 v21, 0
	v_mov_b32_e32 v23, 0
	s_add_i32 s34, s34, 64
	s_add_i32 s37, 0, 0x8000
	s_add_i32 s0, 0, 0x9000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s35, s35, -3
	s_mov_b32 s36, 1
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s17, 0
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s18, s17, 6
	s_mov_b32 s19, s16
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s16, s34, s18
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v103, s19, v88
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v95, s16, v60
	.loc	1 404 22 is_stmt 0              ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v171, s37, v87
	.loc	1 406 22 is_stmt 1              ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v104, s19, v92
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v175, s37, v89
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_add_i32 s16, s16, s33
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[159:162], v95, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[163:166], v103 offset:8192
	ds_load_b128 v[167:170], v104 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[111:114], v171
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[151:154], v103
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[115:118], v175
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[155:158], v104
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[127:130], v171 offset:1024
	ds_load_b128 v[131:134], v175 offset:1024
	ds_load_b128 v[143:146], v171 offset:2048
	ds_load_b128 v[147:150], v175 offset:2048
	ds_load_b128 v[171:174], v171 offset:3072
	ds_load_b128 v[175:178], v175 offset:3072
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s18, s36, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	s_cmp_lt_i32 s18, 2
	s_cselect_b32 s36, s18, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s18, s36, 12
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s18, s18, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[151:154], v[111:114], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[163:166], v[111:114], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[163:166], v[127:130], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[155:158], v[115:118], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[167:170], v[115:118], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[151:154], v[127:130], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[167:170], v[131:134], v[119:126] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[135:142], v[163:166], v[143:146], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[155:158], v[131:134], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[151:154], v[143:146], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[135:142], v[167:170], v[147:150], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[155:158], v[147:150], v[127:134] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[143:150], v[151:154], v[171:174], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[143:150], v[155:158], v[175:178], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[163:166], v[171:174], v[1:8] neg_lo:[1,1,0]
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v171, s19, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[151:158], v[167:170], v[175:178], v[151:158] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v175, s37, v90
	ds_load_b128 v[163:166], v175
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[167:170], v171
	ds_load_b128 v[171:174], v171 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[167:170], v[163:166], v[95:102] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[171:174], v[163:166], v[103:110] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[163:166], v175 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[167:170], v[163:166], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[171:174], v[163:166], v[119:126] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[163:166], v175 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[127:134], v[167:170], v[163:166], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[171:174], v[163:166], v[135:142] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[163:166], v175 offset:3072
	v_add_nc_u32_e32 v175, s37, v91
	s_mov_b32 s37, s0
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_lshl_b32 s0, s36, 14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[151:158], v[171:174], v[163:166], v[151:158] neg_lo:[1,1,0]
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v171, s19, v94
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[143:150], v[167:170], v[163:166], v[143:150] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[163:166], v175
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[167:170], v171
	ds_load_b128 v[171:174], v171 offset:8192
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s19, s17, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[167:170], v[163:166], v[95:102] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[171:174], v[163:166], v[103:110] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[163:166], v175 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v176, v108
	v_cvt_f32_i32_e32 v177, v109
	v_cvt_f32_i32_e32 v178, v110
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v78, v78, v177
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[167:170], v[163:166], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[171:174], v[163:166], v[119:126] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[163:166], v175 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v117, v117
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v20, v20, v118
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[127:134], v[167:170], v[163:166], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[171:174], v[163:166], v[135:142] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[163:166], v175 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v175, v107
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v52, v52, v114 :: v_dual_add_nc_u32 v107, s16, v59
	v_add_f32_e32 v50, v50, v112
	v_add_f32_e32 v18, v18, v116
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[143:150], v[167:170], v[163:166], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[171:174], v[163:166], v[151:158] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v163, v95
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v95, s16, v58
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v167, v99
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v99, s16, v82
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v171, v103
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v103, s16, v83
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v164, v96
	v_cvt_f32_i32_e32 v165, v97
	v_cvt_f32_i32_e32 v166, v98
	v_cvt_f32_i32_e32 v168, v100
	v_cvt_f32_i32_e32 v169, v101
	v_cvt_f32_i32_e32 v170, v102
	v_cvt_f32_i32_e32 v172, v104
	v_cvt_f32_i32_e32 v173, v105
	v_cvt_f32_i32_e32 v174, v106
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_clause 0x3
	buffer_load_b128 v[95:98], v95, s[24:27], 0 offen
	buffer_load_b128 v[99:102], v99, s[24:27], 0 offen
	buffer_load_b128 v[103:106], v103, s[24:27], 0 offen
	buffer_load_b128 v[107:110], v107, s[24:27], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v158, v158
	s_mov_b32 s16, s1
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_add_i32 s1, s0, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v76, v76, v119 :: v_dual_add_nc_u32 v179, s18, v86
	v_dual_add_f32 v56, v56, v166 :: v_dual_add_f32 v55, v55, v165
	v_dual_add_f32 v54, v54, v164 :: v_dual_add_f32 v53, v53, v163
	v_add_f32_e32 v38, v38, v121
	v_dual_add_f32 v28, v28, v170 :: v_dual_add_f32 v27, v27, v169
	v_add_f32_e32 v40, v40, v123
	v_dual_add_f32 v26, v26, v168 :: v_dual_add_f32 v25, v25, v167
	v_add_f32_e32 v74, v74, v125
	v_add_f32_e32 v64, v64, v171
	v_dual_add_f32 v48, v48, v175 :: v_dual_add_f32 v47, v47, v174
	v_add_f32_e32 v42, v42, v128
	v_dual_add_f32 v46, v46, v173 :: v_dual_add_f32 v45, v45, v172
	v_dual_add_f32 v44, v44, v130 :: v_dual_add_f32 v79, v79, v176
	v_add_f32_e32 v16, v16, v134
	v_dual_add_f32 v77, v77, v178 :: v_dual_add_f32 v14, v14, v132
	v_dual_add_f32 v51, v51, v113 :: v_dual_add_f32 v72, v72, v135
	v_dual_add_f32 v49, v49, v111 :: v_dual_add_f32 v34, v34, v137
	v_dual_add_f32 v19, v19, v117 :: v_dual_add_f32 v36, v36, v139
	v_dual_add_f32 v17, v17, v115 :: v_dual_add_f32 v70, v70, v141
	v_dual_add_f32 v39, v39, v122 :: v_dual_add_f32 v30, v30, v144
	v_dual_add_f32 v37, v37, v120 :: v_dual_add_f32 v32, v32, v146
	v_dual_add_f32 v75, v75, v124 :: v_dual_add_f32 v12, v12, v150
	v_dual_add_f32 v73, v73, v126 :: v_dual_add_f32 v10, v10, v148
	v_dual_add_f32 v43, v43, v129 :: v_dual_add_f32 v68, v68, v151
	v_dual_add_f32 v41, v41, v127 :: v_dual_add_f32 v22, v22, v153
	v_dual_add_f32 v15, v15, v133 :: v_dual_add_f32 v24, v24, v155
	v_dual_add_f32 v13, v13, v131 :: v_dual_add_f32 v66, v66, v157
	v_add_f32_e32 v35, v35, v138
	v_add_f32_e32 v33, v33, v136
	v_add_f32_e32 v71, v71, v140
	v_add_f32_e32 v69, v69, v142
	v_add_f32_e32 v31, v31, v145
	v_add_f32_e32 v29, v29, v143
	v_add_f32_e32 v11, v11, v149
	v_add_f32_e32 v9, v9, v147
	v_add_f32_e32 v23, v23, v154
	v_add_f32_e32 v21, v21, v152
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v111, s1, v86
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v67, v67, v156
	v_add_f32_e32 v65, v65, v158
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s0, s18, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s17, s35
	s_mov_b32 s17, s19
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v179, v[159:162] offset:32768
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v111, v[95:98]
	s_waitcnt vmcnt(2)
	ds_store_b128 v111, v[99:102] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v111, v[103:106] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v111, v[107:110] offset:12288
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v2, v85 :: v_dual_mov_b32 v1, v84
	s_mov_b32 s17, s16
.LBB0_7:                                ; %._crit_edge
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_and_b32_e32 v3, 6, v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v3, 3, v2
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_or_b32_e32 v7, v2, v81
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v4, 16, v2
	v_xor_b32_e32 v5, 32, v2
	v_xor_b32_e32 v6, 48, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_xor_b32_e32 v8, 16, v7
	v_xor_b32_e32 v59, 32, v7
	v_xor_b32_e32 v58, 48, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s16, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 406 22 is_stmt 1              ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v60, s17, v59
	v_add_nc_u32_e32 v81, s17, v8
	v_add_nc_u32_e32 v83, s17, v7
	v_add_nc_u32_e32 v82, s17, v58
	ds_load_b128 v[145:148], v60 offset:8192
	ds_load_b128 v[149:152], v60
	ds_load_b128 v[153:156], v81 offset:8192
	ds_load_b128 v[157:160], v81
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s17, s16
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v60, s37, v2
	v_add_nc_u32_e32 v129, s37, v5
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[161:164], v83 offset:8192
	ds_load_b128 v[165:168], v83
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v131, s37, v4
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[177:180], v82 offset:8192
	ds_load_b128 v[181:184], v82
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v88, s23 :: v_dual_mov_b32 v83, s18
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[121:124], v60 offset:1024
	ds_load_b128 v[105:108], v60
	ds_load_b128 v[169:172], v129 offset:1024
	ds_load_b128 v[113:116], v129
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v82, s17
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[173:176], v131 offset:1024
	ds_load_b128 v[117:120], v131
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v81, s16 :: v_dual_add_nc_u32 v130, s37, v6
	v_dual_mov_b32 v87, s22 :: v_dual_mov_b32 v86, s21
	v_dual_mov_b32 v85, s20 :: v_dual_mov_b32 v84, s19
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[185:188], v130 offset:1024
	ds_load_b128 v[125:128], v130
	ds_load_b128 v[189:192], v60 offset:3072
	ds_load_b128 v[137:140], v60 offset:2048
	ds_load_b128 v[193:196], v131 offset:3072
	ds_load_b128 v[197:200], v131 offset:2048
	ds_load_b128 v[201:204], v129 offset:3072
	ds_load_b128 v[205:208], v129 offset:2048
	ds_load_b128 v[209:212], v130 offset:3072
	ds_load_b128 v[213:216], v130 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(14)
	v_wmma_i32_16x16x16_iu8 v[89:96], v[165:168], v[105:108], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[161:164], v[105:108], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[165:168], v[121:124], v[81:88] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[89:96], v[157:160], v[117:120], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[153:156], v[117:120], v[97:104] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[105:112], v[157:160], v[173:176], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[149:152], v[113:116], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[97:104], v[145:148], v[113:116], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[161:164], v[121:124], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[149:152], v[169:172], v[105:112] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[89:96], v[181:184], v[125:128], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[177:180], v[125:128], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[153:156], v[173:176], v[113:120] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[121:128], v[165:168], v[137:140], v[81:88] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v60, v96
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v93, v93
	v_wmma_i32_16x16x16_iu8 v[105:112], v[181:184], v[185:188], v[105:112] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v28, v28, v60 :: v_dual_add_f32 v27, v27, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v60, v97
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v26, v26, v94 :: v_dual_add_f32 v25, v25, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v93, v101
	v_cvt_f32_i32_e32 v94, v98
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v64, v64, v60
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v60, v100
	v_cvt_f32_i32_e32 v95, v99
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v48, v48, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v93, v102
	v_wmma_i32_16x16x16_iu8 v[113:120], v[145:148], v[169:172], v[113:120] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v47, v47, v60
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v60, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v46, v46, v95 :: v_dual_add_f32 v79, v79, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v93, v104
	v_wmma_i32_16x16x16_iu8 v[113:120], v[177:180], v[185:188], v[113:120] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v78, v78, v60
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v60, v108
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v45, v45, v94
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v94, v107
	v_cvt_f32_i32_e32 v95, v106
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v77, v77, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v93, v105
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v52, v52, v60 :: v_dual_add_f32 v51, v51, v94
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v60, v112
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[121:128], v[157:160], v[197:200], v[121:128] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v50, v50, v95 :: v_dual_add_f32 v49, v49, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v93, v111
	v_cvt_f32_i32_e32 v94, v110
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v20, v20, v60
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v60, v113
	v_wmma_i32_16x16x16_iu8 v[129:136], v[161:164], v[137:140], v[81:88] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[121:128], v[149:152], v[205:208], v[121:128] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v95, v109
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v19, v19, v93 :: v_dual_add_f32 v18, v18, v94
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v93, v117
	v_cvt_f32_i32_e32 v94, v114
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v76, v76, v60
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v60, v116
	v_wmma_i32_16x16x16_iu8 v[129:136], v[153:156], v[197:200], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[121:128], v[181:184], v[213:216], v[121:128] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v17, v17, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v95, v115
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v40, v40, v93 :: v_dual_add_f32 v39, v39, v60
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v93, v118
	v_cvt_f32_i32_e32 v60, v119
	v_wmma_i32_16x16x16_iu8 v[129:136], v[145:148], v[205:208], v[129:136] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v38, v38, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[137:144], v[165:168], v[189:192], v[81:88] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v75, v75, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v93, v120
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v74, v74, v60
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v60, v124
	v_wmma_i32_16x16x16_iu8 v[129:136], v[177:180], v[213:216], v[129:136] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v37, v37, v94
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v94, v123
	v_cvt_f32_i32_e32 v95, v122
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v73, v73, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v93, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v44, v44, v60 :: v_dual_add_f32 v43, v43, v94
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v60, v128
	v_wmma_i32_16x16x16_iu8 v[137:144], v[157:160], v[193:196], v[137:144] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v42, v42, v95 :: v_dual_add_f32 v41, v41, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v93, v127
	v_cvt_f32_i32_e32 v94, v126
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v16, v16, v60
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v60, v129
	v_wmma_i32_16x16x16_iu8 v[81:88], v[161:164], v[189:192], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[149:152], v[201:204], v[137:144] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v95, v125
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v15, v15, v93 :: v_dual_add_f32 v14, v14, v94
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v93, v133
	v_cvt_f32_i32_e32 v94, v130
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v72, v72, v60
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v60, v132
	v_wmma_i32_16x16x16_iu8 v[81:88], v[153:156], v[193:196], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[181:184], v[209:212], v[137:144] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v13, v13, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v95, v131
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v36, v36, v93 :: v_dual_add_f32 v35, v35, v60
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v93, v134
	v_cvt_f32_i32_e32 v60, v135
	v_wmma_i32_16x16x16_iu8 v[81:88], v[145:148], v[201:204], v[81:88] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v34, v34, v95 :: v_dual_add_f32 v33, v33, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v71, v71, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v93, v136
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v70, v70, v60
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v60, v140
	v_wmma_i32_16x16x16_iu8 v[81:88], v[177:180], v[209:212], v[81:88] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v94, v139
	v_cvt_f32_i32_e32 v95, v138
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v69, v69, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v93, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v32, v32, v60 :: v_dual_add_f32 v31, v31, v94
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v60, v144
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v30, v30, v95 :: v_dual_add_f32 v29, v29, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v93, v143
	v_cvt_f32_i32_e32 v83, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v12, v12, v60
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v60, v81
	v_cvt_f32_i32_e32 v81, v85
	v_cvt_f32_i32_e32 v94, v142
	v_cvt_f32_i32_e32 v95, v141
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v11, v11, v93 :: v_dual_add_f32 v68, v68, v60
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v60, v82
	v_cvt_f32_i32_e32 v82, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v24, v24, v81
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v81, v86
	v_cvt_f32_i32_e32 v84, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v22, v22, v83 :: v_dual_add_f32 v23, v23, v82
	v_add_f32_e32 v21, v21, v60
	v_add_f32_e32 v67, v67, v81
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v60, v88
	v_cvt_f32_i32_e32 v81, v92
	v_cvt_f32_i32_e32 v82, v91
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v66, v66, v84
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v83, v90
	v_cvt_f32_i32_e32 v84, v89
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v10, v10, v94 :: v_dual_add_f32 v9, v9, v95
	v_dual_add_f32 v65, v65, v60 :: v_dual_add_f32 v56, v56, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v55, v55, v82 :: v_dual_add_f32 v54, v54, v83
	v_add_f32_e32 v53, v53, v84
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v143, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s16, 0
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v60, s0, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v59, s1, v59
	v_add_nc_u32_e32 v7, s1, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v149, s23 :: v_dual_add_nc_u32 v8, s1, v8
	v_dual_mov_b32 v145, s19 :: v_dual_add_nc_u32 v2, s0, v2
	v_mov_b32_e32 v148, s22
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[97:100], v59 offset:8192
	ds_load_b128 v[101:104], v59
	ds_load_b128 v[105:108], v8 offset:8192
	ds_load_b128 v[109:112], v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v143, s17 :: v_dual_add_nc_u32 v8, s0, v5
	v_mov_b32_e32 v146, s20
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[113:116], v7 offset:8192
	ds_load_b128 v[117:120], v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v144, s18 :: v_dual_add_nc_u32 v59, s0, v6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[4:7], v2 offset:1024
	ds_load_b128 v[121:124], v2
	ds_load_b128 v[174:177], v8 offset:1024
	ds_load_b128 v[131:134], v8
	ds_load_b128 v[178:181], v60 offset:1024
	ds_load_b128 v[135:138], v60
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v147, s21 :: v_dual_add_nc_u32 v58, s1, v58
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[182:185], v58 offset:8192
	ds_load_b128 v[186:189], v58
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v142, s16
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[190:193], v59 offset:1024
	ds_load_b128 v[150:153], v59
	ds_load_b128 v[194:197], v2 offset:3072
	ds_load_b128 v[166:169], v2 offset:2048
	ds_load_b128 v[198:201], v60 offset:3072
	ds_load_b128 v[202:205], v60 offset:2048
	ds_load_b128 v[206:209], v8 offset:3072
	ds_load_b128 v[210:213], v8 offset:2048
	ds_load_b128 v[214:217], v59 offset:3072
	ds_load_b128 v[218:221], v59 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(16)
	v_wmma_i32_16x16x16_iu8 v[81:88], v[117:120], v[121:124], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[113:116], v[121:124], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[117:120], v[4:7], v[142:149] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[81:88], v[109:112], v[135:138], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[105:108], v[135:138], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[109:112], v[178:181], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[101:104], v[131:134], v[81:88] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[89:96], v[97:100], v[131:134], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[113:116], v[4:7], v[142:149] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[158:165], v[113:116], v[166:169], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[186:189], v[150:153], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[182:185], v[150:153], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[117:120], v[166:169], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[166:173], v[117:120], v[194:197], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[113:116], v[194:197], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[105:108], v[178:181], v[131:138] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[150:157], v[109:112], v[202:205], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[105:108], v[202:205], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[166:173], v[109:112], v[198:201], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[105:108], v[198:201], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[101:104], v[174:177], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[97:100], v[174:177], v[131:138] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[150:157], v[101:104], v[210:213], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[97:100], v[210:213], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[166:173], v[101:104], v[206:209], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[97:100], v[206:209], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[186:189], v[190:193], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[182:185], v[190:193], v[131:138] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[150:157], v[186:189], v[218:221], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[182:185], v[218:221], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[166:173], v[186:189], v[214:217], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[182:185], v[214:217], v[142:149] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v109, v81
	v_cvt_f32_i32_e32 v112, v82
	v_cvt_f32_i32_e32 v115, v83
	v_cvt_f32_i32_e32 v117, v84
	v_cvt_f32_i32_e32 v105, v85
	v_cvt_f32_i32_e32 v108, v86
	v_cvt_f32_i32_e32 v111, v87
	v_cvt_f32_i32_e32 v114, v88
	v_cvt_f32_i32_e32 v60, v89
	v_cvt_f32_i32_e32 v113, v90
	v_cvt_f32_i32_e32 v116, v91
	v_cvt_f32_i32_e32 v119, v92
	v_cvt_f32_i32_e32 v122, v93
	v_cvt_f32_i32_e32 v81, v94
	v_cvt_f32_i32_e32 v82, v95
	v_cvt_f32_i32_e32 v83, v96
	v_cvt_f32_i32_e32 v118, v123
	v_cvt_f32_i32_e32 v120, v124
	v_cvt_f32_i32_e32 v123, v125
	v_cvt_f32_i32_e32 v125, v126
	v_cvt_f32_i32_e32 v101, v127
	v_cvt_f32_i32_e32 v104, v128
	v_cvt_f32_i32_e32 v107, v129
	v_cvt_f32_i32_e32 v110, v130
	v_cvt_f32_i32_e32 v84, v131
	v_cvt_f32_i32_e32 v121, v132
	v_cvt_f32_i32_e32 v124, v133
	v_cvt_f32_i32_e32 v127, v134
	v_cvt_f32_i32_e32 v130, v135
	v_cvt_f32_i32_e32 v85, v136
	v_cvt_f32_i32_e32 v86, v137
	v_cvt_f32_i32_e32 v87, v138
	v_cvt_f32_i32_e32 v126, v150
	v_cvt_f32_i32_e32 v128, v151
	v_cvt_f32_i32_e32 v131, v152
	v_cvt_f32_i32_e32 v133, v153
	v_cvt_f32_i32_e32 v98, v154
	v_cvt_f32_i32_e32 v100, v155
	v_cvt_f32_i32_e32 v103, v156
	v_cvt_f32_i32_e32 v106, v157
	v_cvt_f32_i32_e32 v88, v158
	v_cvt_f32_i32_e32 v129, v159
	v_cvt_f32_i32_e32 v132, v160
	v_cvt_f32_i32_e32 v135, v161
	v_cvt_f32_i32_e32 v138, v162
	v_cvt_f32_i32_e32 v89, v163
	v_cvt_f32_i32_e32 v90, v164
	v_cvt_f32_i32_e32 v91, v165
	v_cvt_f32_i32_e32 v134, v166
	v_cvt_f32_i32_e32 v136, v167
	v_cvt_f32_i32_e32 v139, v168
	v_cvt_f32_i32_e32 v141, v169
	v_cvt_f32_i32_e32 v94, v170
	v_cvt_f32_i32_e32 v97, v171
	v_cvt_f32_i32_e32 v99, v172
	v_cvt_f32_i32_e32 v102, v173
	v_cvt_f32_i32_e32 v92, v142
	v_cvt_f32_i32_e32 v137, v143
	v_cvt_f32_i32_e32 v140, v144
	v_cvt_f32_i32_e32 v142, v145
	v_cvt_f32_i32_e32 v143, v146
	v_cvt_f32_i32_e32 v93, v147
	v_cvt_f32_i32_e32 v95, v148
	v_cvt_f32_i32_e32 v96, v149
.LBB0_11:
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v2, s30, v61
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v4, s31, v0
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_and_b32 s17, s9, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v115, v55, v115 :: v_dual_lshlrev_b32 v2, 1, v2
	v_dual_add_f32 v117, v56, v117 :: v_dual_lshlrev_b32 v4, 1, v4
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s16, s8
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b32_e32 v5, 32, v2
	v_or_b32_e32 v6, 64, v2
	v_or_b32_e32 v7, 0x60, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v60, v64, v60 :: v_dual_add_f32 v113, v45, v113
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_clause 0x3
	buffer_load_u16 v2, v2, s[16:19], 0 offen
	buffer_load_u16 v8, v5, s[16:19], 0 offen
	buffer_load_u16 v58, v6, s[16:19], 0 offen
	buffer_load_u16 v59, v7, s[16:19], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s17, s11, 0xffff
	s_mov_b32 s16, s10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v122, v48, v122 :: v_dual_add_f32 v81, v79, v81
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v7, v4, s[16:19], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v109, v53, v109 :: v_dual_and_b32 v4, 0xf0, v0
	v_dual_add_f32 v94, v9, v94 :: v_dual_add_f32 v93, v67, v93
	v_dual_add_f32 v142, v23, v142 :: v_dual_and_b32 v1, 32, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v60, v64, v60, s2
	v_cndmask_b32_e64 v64, v79, v81, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v79, v67, v93, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v67, v4, 2, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v118, v49, v118 :: v_dual_add_f32 v107, v19, v107
	v_dual_add_f32 v110, v20, v110 :: v_dual_add_f32 v101, v17, v101
	v_dual_add_f32 v104, v18, v104 :: v_dual_add_f32 v127, v39, v127
	v_dual_add_f32 v126, v41, v126 :: v_dual_add_f32 v103, v15, v103
	v_dual_add_f32 v106, v16, v106 :: v_dual_add_f32 v135, v35, v135
	v_dual_add_f32 v100, v14, v100 :: v_dual_add_f32 v129, v33, v129
	v_dual_add_f32 v98, v13, v98 :: v_dual_add_f32 v89, v71, v89
	v_dual_add_f32 v88, v72, v88 :: v_dual_add_f32 v91, v69, v91
	v_dual_add_f32 v92, v68, v92 :: v_dual_add_f32 v95, v66, v95
	v_add_f32_e32 v96, v65, v96
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v81, v4, 1, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v112, v54, v112 :: v_dual_add_f32 v111, v27, v111
	v_dual_add_f32 v114, v28, v114 :: v_dual_add_f32 v105, v25, v105
	v_dual_add_f32 v116, v46, v116 :: v_dual_add_f32 v83, v77, v83
	v_dual_add_f32 v130, v40, v130 :: v_dual_add_f32 v85, v75, v85
	v_dual_add_f32 v86, v74, v86 :: v_dual_add_f32 v131, v43, v131
	v_dual_add_f32 v90, v70, v90 :: v_dual_add_f32 v99, v11, v99
	v_dual_add_f32 v136, v30, v136 :: v_dual_add_f32 v143, v24, v143
	v_dual_add_f32 v134, v29, v134 :: v_dual_add_f32 v97, v10, v97
	v_dual_add_f32 v102, v12, v102 :: v_dual_add_f32 v137, v21, v137
	v_dual_add_f32 v140, v22, v140 :: v_dual_lshlrev_b32 v5, 5, v62
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v69, v69, v91, s2
	v_cndmask_b32_e64 v68, v68, v92, s2
	v_cndmask_b32_e64 v66, v66, v95, s2
	v_cndmask_b32_e64 v91, v17, v101, s2
	v_cndmask_b32_e64 v92, v18, v104, s2
	v_cndmask_b32_e64 v93, v19, v107, s2
	v_cndmask_b32_e64 v95, v20, v110, s2
	v_cndmask_b32_e64 v98, v13, v98, s2
	v_cndmask_b32_e64 v100, v14, v100, s2
	v_cndmask_b32_e64 v103, v15, v103, s2
	v_cndmask_b32_e64 v106, v16, v106, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v77, v77, v83, s2
	v_cndmask_b32_e64 v75, v75, v85, s2
	v_cndmask_b32_e64 v74, v74, v86, s2
	v_cndmask_b32_e64 v72, v72, v88, s2
	v_cndmask_b32_e64 v83, v55, v115, s2
	v_cndmask_b32_e64 v85, v27, v111, s2
	v_cndmask_b32_e64 v86, v28, v114, s2
	v_cndmask_b32_e64 v88, v46, v116, s2
	v_cndmask_b32_e64 v94, v9, v94, s2
	v_cndmask_b32_e64 v114, v22, v140, s2
	v_cndmask_b32_e64 v115, v23, v142, s2
	v_cndmask_b32_e64 v116, v24, v143, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v108, v26, v108 :: v_dual_add_f32 v119, v47, v119
	v_dual_add_f32 v84, v76, v84 :: v_dual_add_f32 v121, v37, v121
	v_dual_add_f32 v82, v78, v82 :: v_dual_add_f32 v123, v51, v123
	v_dual_add_f32 v124, v38, v124 :: v_dual_add_f32 v87, v73, v87
	v_dual_add_f32 v132, v34, v132 :: v_dual_add_f32 v141, v32, v141
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v76, v76, v84, s2
	v_cndmask_b32_e64 v84, v26, v108, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v125, v52, v125 :: v_dual_add_f32 v120, v50, v120
	v_dual_add_f32 v133, v44, v133 :: v_dual_add_f32 v128, v42, v128
	v_dual_add_f32 v138, v36, v138 :: v_dual_add_f32 v139, v31, v139
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v62, v62, 9, 0
.Ltmp17:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v78, v78, v82, s2
	v_cndmask_b32_e64 v73, v73, v87, s2
	v_cndmask_b32_e64 v53, v53, v109, s2
	v_cndmask_b32_e64 v82, v54, v112, s2
	v_cndmask_b32_e64 v87, v45, v113, s2
	v_cndmask_b32_e64 v101, v40, v130, s2
	v_cndmask_b32_e64 v108, v43, v131, s2
	v_cndmask_b32_e64 v109, v35, v135, s2
	v_cndmask_b32_e64 v112, v30, v136, s2
	v_cndmask_b32_e64 v113, v32, v141, s2
	v_cndmask_b32_e64 v71, v71, v89, s2
	v_cndmask_b32_e64 v70, v70, v90, s2
	v_cndmask_b32_e64 v56, v56, v117, s2
	v_cndmask_b32_e64 v25, v25, v105, s2
	v_cndmask_b32_e64 v47, v47, v119, s2
	v_cndmask_b32_e64 v48, v48, v122, s2
	v_cndmask_b32_e64 v89, v49, v118, s2
	v_cndmask_b32_e64 v90, v50, v120, s2
	v_cndmask_b32_e64 v51, v51, v123, s2
	v_cndmask_b32_e64 v37, v37, v121, s2
	v_cndmask_b32_e64 v38, v38, v124, s2
	v_cndmask_b32_e64 v104, v41, v126, s2
	v_cndmask_b32_e64 v105, v42, v128, s2
	v_cndmask_b32_e64 v107, v44, v133, s2
	v_cndmask_b32_e64 v110, v36, v138, s2
	v_cndmask_b32_e64 v111, v29, v134, s2
	v_cndmask_b32_e64 v52, v52, v125, s2
	v_cndmask_b32_e64 v33, v33, v129, s2
	v_cndmask_b32_e64 v34, v34, v132, s2
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_or_b32 v120, 0x680, v63, v5
	s_mov_b32 s0, 0x76543210
.Ltmp19:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v3, 10, v3
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s17, s13, 0xffff
	s_mov_b32 s16, s12
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add_nc_u32_e32 v57, 0, v57
.Ltmp21:
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_and_b32_e32 v80, 28, v80
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v1, v67, v1, v80
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v80, v31, v139, s2
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v65, v65, v96, s2
	v_cndmask_b32_e64 v96, v39, v127, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_store_b32 v1, v7
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v81 offset:512
	ds_load_b128 v[17:20], v81 offset:528
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v10, v97, s2
	v_cndmask_b32_e64 v97, v11, v99, s2
	v_cndmask_b32_e64 v99, v12, v102, s2
	v_cndmask_b32_e64 v102, v21, v137, s2
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v27, 16, v59
	v_lshlrev_b32_e32 v12, 16, v8
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_load_b128 v[8:11], v81
	ds_load_b128 v[21:24], v81 offset:16
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v26, 16, v58
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v146, 0x80, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp23:
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v32, v13, v12
	v_mul_f32_e32 v35, v18, v12
	v_dual_mul_f32 v28, v13, v2 :: v_dual_and_b32 v145, 8, v0
	v_mul_f32_e32 v30, v19, v2
	v_mul_f32_e32 v40, v13, v26
	v_mul_f32_e32 v43, v20, v26
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v7, 1, v146
.Ltmp25:
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v13, v13, v27
	v_mul_f32_e32 v39, v20, v12
	v_dual_mul_f32 v41, v18, v26 :: v_dual_and_b32 v144, 4, v0
	v_dual_mul_f32 v31, v20, v2 :: v_dual_and_b32 v6, 0x60, v0
	v_mul_f32_e32 v29, v18, v2
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v118, v144, 2, v62
.Ltmp27:
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v36, v19, v12 :: v_dual_mul_f32 v45, v9, v2
	v_dual_mul_f32 v42, v19, v26 :: v_dual_mul_f32 v125, v8, v12
	v_dual_mul_f32 v18, v18, v27 :: v_dual_mul_f32 v59, v21, v2
	v_dual_mul_f32 v20, v20, v27 :: v_dual_mul_f32 v81, v23, v2
	v_dual_mul_f32 v44, v8, v2 :: v_dual_mul_f32 v127, v11, v12
	v_dual_mul_f32 v46, v11, v2 :: v_dual_mul_f32 v129, v21, v12
	v_dual_mul_f32 v50, v10, v2 :: v_dual_mul_f32 v131, v23, v12
	v_dual_mul_f32 v62, v22, v2 :: v_dual_mul_f32 v135, v16, v12
	v_dual_mul_f32 v121, v24, v2 :: v_dual_mul_f32 v126, v9, v12
	v_mul_f32_e32 v122, v14, v2
	v_dual_mul_f32 v123, v15, v2 :: v_dual_mul_f32 v128, v10, v12
	v_dual_mul_f32 v124, v16, v2 :: v_dual_mul_f32 v133, v14, v12
	v_dual_mul_f32 v2, v17, v2 :: v_dual_mul_f32 v153, v10, v27
	v_dual_mul_f32 v19, v19, v27 :: v_dual_mul_f32 v130, v22, v12
	v_mul_f32_e32 v137, v8, v26
	v_dual_mul_f32 v132, v24, v12 :: v_dual_mul_f32 v139, v11, v26
	v_dual_mul_f32 v134, v15, v12 :: v_dual_mul_f32 v141, v21, v26
	v_dual_mul_f32 v136, v17, v12 :: v_dual_mul_f32 v143, v23, v26
	v_dual_mul_f32 v138, v9, v26 :: v_dual_mul_f32 v155, v23, v27
	v_dual_mul_f32 v140, v10, v26 :: v_dual_mul_f32 v21, v21, v27
	v_dual_mul_f32 v142, v22, v26 :: v_dual_mul_f32 v49, v60, v28
	v_dual_mul_f32 v147, v24, v26 :: v_dual_mul_f32 v152, v11, v27
	v_dual_mul_f32 v148, v14, v26 :: v_dual_mul_f32 v67, v76, v32
	v_dual_mul_f32 v149, v15, v26 :: v_dual_mul_f32 v8, v8, v27
	v_dual_mul_f32 v150, v16, v26 :: v_dual_mul_f32 v157, v14, v27
	v_dual_mul_f32 v151, v17, v26 :: v_dual_mul_f32 v154, v22, v27
	v_mul_f32_e32 v9, v9, v27
	v_dual_mul_f32 v156, v24, v27 :: v_dual_mul_f32 v63, v78, v30
	v_dual_mul_f32 v158, v15, v27 :: v_dual_mul_f32 v55, v74, v36
	v_mul_f32_e32 v14, v16, v27
	v_dual_mul_f32 v16, v17, v27 :: v_dual_mul_f32 v15, v68, v13
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v60, v64, v29 :: v_dual_mul_f32 v27, v69, v43
	v_mul_f32_e32 v64, v77, v31
	v_mul_f32_e32 v58, v75, v35
	v_mul_f32_e32 v54, v73, v39
	v_dual_mul_f32 v32, v72, v40 :: v_dual_mul_f32 v11, v66, v19
	v_dual_mul_f32 v28, v71, v41 :: v_dual_mul_f32 v43, v25, v59
	v_mul_f32_e32 v26, v70, v42
	v_mul_f32_e32 v41, v83, v50
	v_dual_mul_f32 v42, v56, v46 :: v_dual_mul_f32 v73, v95, v132
	v_dual_mul_f32 v40, v82, v45 :: v_dual_mul_f32 v39, v53, v44
	v_dual_mul_f32 v44, v84, v62 :: v_dual_mul_f32 v75, v91, v129
	v_dual_mul_f32 v59, v48, v2 :: v_dual_mul_f32 v78, v47, v124
	v_mul_f32_e32 v35, v106, v147
	v_dual_mul_f32 v56, v88, v123 :: v_dual_mul_f32 v31, v34, v149
	v_dual_mul_f32 v50, v87, v122 :: v_dual_mul_f32 v29, v110, v151
	v_mul_f32_e32 v10, v79, v18
	v_dual_mul_f32 v12, v65, v20 :: v_dual_mul_f32 v69, v90, v126
	v_mul_f32_e32 v46, v86, v121
	v_mul_f32_e32 v45, v85, v81
	v_dual_mul_f32 v71, v51, v128 :: v_dual_mul_f32 v72, v52, v127
	v_mul_f32_e32 v33, v33, v148
	v_mul_f32_e32 v68, v89, v125
	v_dual_mul_f32 v76, v92, v130 :: v_dual_mul_f32 v25, v111, v8
	v_dual_mul_f32 v62, v101, v136 :: v_dual_mul_f32 v21, v94, v21
	v_dual_mul_f32 v65, v96, v135 :: v_dual_mul_f32 v66, v38, v134
	v_dual_mul_f32 v17, v99, v156 :: v_dual_mul_f32 v70, v37, v133
	v_mul_f32_e32 v13, v116, v16
	v_dual_mul_f32 v47, v108, v140 :: v_dual_mul_f32 v48, v107, v139
	v_mul_f32_e32 v19, v102, v157
	v_dual_mul_f32 v51, v105, v138 :: v_dual_mul_f32 v52, v104, v137
	v_dual_mul_f32 v37, v100, v142 :: v_dual_mul_f32 v38, v98, v141
	v_mul_f32_e32 v30, v109, v150
	v_mul_f32_e32 v24, v112, v9
	v_mul_f32_e32 v20, v1, v154
.Ltmp28:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v1, |v39|, |v40|
	v_max3_f32 v2, |v42|, |v43|, |v44|
	v_max3_f32 v9, |v50|, |v56|, |v78|
	v_max3_f32 v34, |v59|, |v60|, |v63|
.Ltmp29:
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v74, v93, v131 :: v_dual_mul_f32 v23, v80, v153
	v_mul_f32_e32 v36, v103, v143
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v8, |v45|, |v46|, |v49|
	v_max_f32_e64 v53, |v68|, |v69|
	v_max3_f32 v77, |v72|, |v75|, |v76|
	v_max3_f32 v80, |v70|, |v66|, |v65|
	v_max3_f32 v81, |v62|, |v58|, |v55|
	v_max_f32_e64 v82, |v52|, |v51|
	v_max3_f32 v83, |v48|, |v38|, |v37|
	v_max3_f32 v85, |v33|, |v31|, |v30|
	v_max3_f32 v86, |v29|, |v28|, |v26|
	v_max3_f32 v1, v1, |v41|, v2
	v_max3_f32 v2, v9, v34, |v64|
	v_max3_f32 v79, |v74|, |v73|, |v67|
	v_max3_f32 v84, |v36|, |v35|, |v32|
	v_max3_f32 v9, v53, |v71|, v77
	v_max3_f32 v34, v80, v81, |v54|
	v_max3_f32 v53, v82, |v47|, v83
	v_max3_f32 v77, v85, v86, |v27|
	v_max3_f32 v1, v1, v8, v2
.Ltmp31:
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v22, v113, v152
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v2, v9, v79, v34
.Ltmp33:
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v18, v97, v155
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v8, v53, v84, v77
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v53, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v87, |v25|, |v24|
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v77, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp38:
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v14, v115, v14
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v88, |v22|, |v21|, |v20|
	v_dual_max_f32 v53, v53, v53 :: v_dual_mul_f32 v16, v114, v158
	v_max3_f32 v91, |v13|, |v10|, |v11|
	v_max_f32_e32 v77, v77, v77
	v_max3_f32 v89, |v18|, |v17|, |v15|
	v_max3_f32 v80, v87, |v23|, v88
	v_max3_f32 v90, |v19|, |v16|, |v14|
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v79, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_xor_b32_e32 v117, v5, v6
	v_lshrrev_b32_e32 v119, 3, v146
	v_lshl_add_u32 v83, v144, 6, 0
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v81, v90, v91, |v12|
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v34, v145, 4, v118
	v_xor_b32_e32 v84, v120, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v9, v80, v89, v81
	v_max_f32_e32 v81, v79, v79
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v34, v34, v7, v117
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v79, v1, v53
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v1, v83, v119, v84
	v_permlanex16_b32 v80, v9, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v81, v8, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v82, v80, v80
	v_max_f32_e32 v80, v2, v77
	v_max_f32_e32 v82, v9, v82
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	ds_store_b128 v34, v[79:82]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[79:82], v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v1, v79
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v53, v82, v82
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v82, v82 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v9, v80, v80 :: v_dual_mov_b32 v34, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v2, v79, v79 :: v_dual_max_f32 v79, v82, v82
	v_max_f32_e32 v77, v81, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_add_nc_u32 v82, 0, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v53, v53, v79 :: v_dual_mov_b32 v8, v80
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v80, 1, v6
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v2, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v8, v8, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v9, v8
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v9, v53
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v9, v9, v9
	v_max_f32_e32 v8, v77, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v79, v8
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v79, v79, v79
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v77, v2
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v9, v53, v9 :: v_dual_max_f32 v8, v8, v79
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v34, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v53, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v81, v8
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v77, v77, v77
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v53, v53 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v2, v2, v77
	v_max_f32_e32 v81, v81, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v1, v1, v34 :: v_dual_lshlrev_b32 v34, 3, v145
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v79, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v81, v8, v81
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v77, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v85, v82, v80, v34
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_lshlrev_b32_e32 v83, 5, v144
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v84, v79, v79 :: v_dual_max_f32 v53, v53, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v77, v77, v77 :: v_dual_max_f32 v80, v2, v84
	v_max_f32_e32 v82, v9, v53
	s_delay_alu instid0(VALU_DEP_2)
	v_max_f32_e32 v79, v1, v77
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v1, v57, v83, v34
	ds_store_b128 v85, v[79:82]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[79:82], v1
.Ltmp75:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_dual_max_f32 v8, v81, v81 :: v_dual_max_f32 v9, v82, v82
	v_dual_max_f32 v1, v79, v79 :: v_dual_max_f32 v2, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v8, 0x2b8cbccc, v8 :: v_dual_max_f32 v9, 0x2b8cbccc, v9
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v53, null, 0x40e00000, 0x40e00000, v8
	v_div_scale_f32 v77, null, 0x40e00000, 0x40e00000, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v57, null, 0x40e00000, 0x40e00000, v2
	v_rcp_f32_e32 v80, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v82, v77
	v_div_scale_f32 v85, s1, v2, 0x40e00000, v2
	v_rcp_f32_e32 v81, v57
	v_div_scale_f32 v84, s0, v8, 0x40e00000, v8
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v87, -v53, v80, 1.0
	v_fma_f32 v89, -v77, v82, 1.0
	v_max_f32_e32 v1, 0x2b8cbccc, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v57, v81, 1.0
	v_fmac_f32_e32 v80, v87, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v34, null, 0x40e00000, 0x40e00000, v1
	v_div_scale_f32 v83, vcc_lo, v1, 0x40e00000, v1
	v_fmac_f32_e32 v81, v88, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v79, v34
	v_mul_f32_e32 v88, v85, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v93, -v57, v88, v85
	v_fma_f32 v86, -v34, v79, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v86, v79
	v_mul_f32_e32 v86, v83, v79
	v_div_scale_f32 v90, s2, v9, 0x40e00000, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v34, v86, v83
	v_dual_mul_f32 v89, v90, v82 :: v_dual_fmac_f32 v86, v91, v79
	v_dual_mul_f32 v87, v84, v80 :: v_dual_fmac_f32 v88, v93, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v94, -v77, v89, v90
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v91.h, 0
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v34, -v34, v86, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v92, -v53, v87, v84
	v_fma_f32 v57, -v57, v88, v85
	v_fmac_f32_e32 v89, v94, v82
	v_div_fmas_f32 v34, v34, v79, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v92, v80
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v77, -v77, v89, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v1, v34, 0x40e00000, v1
	v_fma_f32 v53, -v53, v87, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v53, v53, v80, v87
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v57, v57, v81, v88
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v34, v53, 0x40e00000, v8
	v_div_fmas_f32 v8, v77, v82, v89
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v53.h, v91.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v2, v57, 0x40e00000, v2
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v53.l, v1.h
	v_mov_b16_e32 v91.l, v34.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v57, v8, 0x40e00000, v9
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v8.h, v91.h
	v_mov_b16_e32 v8.l, v2.h
	v_and_b32_e32 v9, 1, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v77, 1, v8
	v_add3_u32 v8, v1, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v80, 0xffff0000, v8
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v87, null, v80, v80, v43
	v_div_scale_f32 v95, null, v80, v80, v49
	v_div_scale_f32 v83, null, v80, v80, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v106, v87
	v_rcp_f32_e32 v110, v95
	v_div_scale_f32 v81, null, v80, v80, v40
	v_div_scale_f32 v85, null, v80, v80, v42
	v_rcp_f32_e32 v104, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v103, v81
	v_div_scale_f32 v99, null, v80, v80, v56
	v_fma_f32 v118, -v87, v106, 1.0
	.loc	1 76 13 is_stmt 1               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v53, 1, v91
	v_mov_b16_e32 v91.l, v57.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v122, -v95, v110, 1.0
	v_rcp_f32_e32 v105, v85
	v_div_scale_f32 v97, null, v80, v80, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v79, 1, v91
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v91, null, v80, v80, v45
	v_fmac_f32_e32 v110, v122, v110
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v9, v2, v77, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v116, -v83, v104, 1.0
	v_rcp_f32_e32 v108, v91
	v_rcp_f32_e32 v112, v99
	v_fma_f32 v115, -v81, v103, 1.0
	v_div_scale_f32 v84, s1, v41, v80, v41
	v_fma_f32 v117, -v85, v105, 1.0
	v_fmac_f32_e32 v104, v116, v104
	v_div_scale_f32 v82, s0, v40, v80, v40
	v_rcp_f32_e32 v111, v97
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v120, -v91, v108, 1.0
	v_dual_fmac_f32 v103, v115, v103 :: v_dual_mul_f32 v116, v84, v104
	v_div_scale_f32 v86, s2, v42, v80, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v108, v120, v108
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v2, v57, v79, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v57, null, v80, v80, v39
	v_div_scale_f32 v79, vcc_lo, v39, v80, v39
	v_div_scale_f32 v88, s3, v43, v80, v43
	v_rcp_f32_e32 v102, v57
	v_div_scale_f32 v89, null, v80, v80, v44
	v_dual_fmac_f32 v106, v118, v106 :: v_dual_fmac_f32 v105, v117, v105
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v1, v34, v53, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v124, -v99, v112, 1.0
	v_div_scale_f32 v93, null, v80, v80, v46
	v_rcp_f32_e32 v107, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v114, -v57, v102, 1.0
	v_mul_f32_e32 v118, v88, v106
	v_fma_f32 v127, -v83, v116, v84
	v_mul_f32_e32 v117, v86, v105
	v_dual_fmac_f32 v112, v124, v112 :: v_dual_and_b32 v53, 0xffff0000, v1
	v_dual_fmac_f32 v102, v114, v102 :: v_dual_and_b32 v77, 0xffff0000, v9
	v_div_scale_f32 v100, s9, v56, v80, v56
	v_fma_f32 v123, -v97, v111, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v114, v79, v102
	v_rcp_f32_e32 v109, v93
	v_fmac_f32_e32 v116, v127, v104
	v_fma_f32 v128, -v85, v117, v86
	v_dual_fmac_f32 v111, v123, v111 :: v_dual_mul_f32 v124, v100, v112
	v_fma_f32 v125, -v57, v114, v79
	v_mul_f32_e32 v115, v82, v103
	v_div_scale_f32 v101, null, v80, v80, v78
	v_fma_f32 v119, -v89, v107, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v114, v125, v102
	v_fma_f32 v126, -v81, v115, v82
	v_fmac_f32_e32 v117, v128, v105
	v_div_scale_f32 v92, s5, v45, v80, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v57, v114, v79
	v_fmac_f32_e32 v115, v126, v103
	v_fma_f32 v121, -v93, v109, 1.0
	v_div_scale_f32 v90, s4, v44, v80, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v57, v57, v102, v114
	v_fma_f32 v79, -v81, v115, v82
	v_fma_f32 v81, -v83, v116, v84
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v113, v101
	v_dual_fmac_f32 v107, v119, v107 :: v_dual_mul_f32 v120, v92, v108
	v_fma_f32 v82, -v85, v117, v86
	v_div_fmas_f32 v79, v79, v103, v115
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v94, s6, v46, v80, v46
	v_div_fmas_f32 v81, v81, v104, v116
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v96, s7, v49, v80, v49
	v_fmac_f32_e32 v109, v121, v109
	v_fma_f32 v129, -v87, v118, v88
	v_mul_f32_e32 v119, v90, v107
	v_div_fixup_f32 v39, v57, v80, v39
	v_div_fmas_f32 v57, v82, v105, v117
	v_mul_f32_e32 v122, v96, v110
	v_fma_f32 v131, -v91, v120, v92
	v_dual_mul_f32 v121, v94, v109 :: v_dual_fmac_f32 v118, v129, v106
	v_fma_f32 v130, -v89, v119, v90
	v_div_fixup_f32 v42, v57, v80, v42
	v_fma_f32 v57, -v101, v113, 1.0
	v_fmac_f32_e32 v120, v131, v108
	v_fma_f32 v132, -v93, v121, v94
	v_fma_f32 v83, -v87, v118, v88
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v113, v57, v113
	v_div_scale_f32 v57, s0, v78, v80, v78
	v_fmac_f32_e32 v119, v130, v107
	v_fmac_f32_e32 v121, v132, v109
	v_fma_f32 v85, -v91, v120, v92
	v_div_fixup_f32 v40, v79, v80, v40
	v_div_fmas_f32 v79, v83, v106, v118
	v_fma_f32 v84, -v89, v119, v90
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v86, -v93, v121, v94
	v_div_fixup_f32 v41, v81, v80, v41
	v_div_scale_f32 v98, s8, v50, v80, v50
	v_div_fmas_f32 v81, v84, v107, v119
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v133, -v95, v122, v96
	v_div_fmas_f32 v82, v85, v108, v120
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v85, null, v80, v80, v60
	v_div_fmas_f32 v83, v86, v109, v121
	v_div_fixup_f32 v43, v79, v80, v43
	v_div_scale_f32 v79, null, v80, v80, v59
	v_dual_mul_f32 v123, v98, v111 :: v_dual_fmac_f32 v122, v133, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v46, v83, v80, v46
	v_fma_f32 v83, -v99, v124, v100
	v_rcp_f32_e32 v84, v79
	v_div_scale_f32 v89, null, v80, v80, v63
	v_fma_f32 v87, -v95, v122, v96
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v124, v83, v112
	v_rcp_f32_e32 v83, v85
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v134, -v97, v123, v98
	v_div_fixup_f32 v44, v81, v80, v44
	v_div_fmas_f32 v81, v87, v110, v122
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v87, -v79, v84, 1.0
	v_div_fixup_f32 v45, v82, v80, v45
	v_div_scale_f32 v90, s2, v60, v80, v60
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v88, -v85, v83, 1.0
	v_dual_fmac_f32 v84, v87, v84 :: v_dual_fmac_f32 v123, v134, v111
	v_div_fixup_f32 v49, v81, v80, v49
	v_fma_f32 v81, -v99, v124, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v88, v83
	v_rcp_f32_e32 v88, v89
	v_fma_f32 v82, -v97, v123, v98
	v_div_scale_f32 v87, s1, v59, v80, v59
	v_div_scale_f32 v91, null, v80, v80, v64
	v_div_fmas_f32 v82, v82, v111, v123
	s_mov_b32 vcc_lo, s9
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v34, 0xffff0000, v2
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v81, v81, v112, v124
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v89, v88, 1.0
	v_div_fixup_f32 v50, v82, v80, v50
	v_rcp_f32_e32 v93, v91
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v56, v81, v80, v56
	v_fmac_f32_e32 v88, v94, v88
	v_mul_f32_e32 v92, v90, v83
	v_mul_f32_e32 v86, v57, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v82, -v101, v86, v57
	v_fma_f32 v94, -v91, v93, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v86, v82, v113
	v_dual_mul_f32 v82, v87, v84 :: v_dual_fmac_f32 v93, v94, v93
	v_div_scale_f32 v94, null, v77, v77, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v57, -v101, v86, v57
	v_fma_f32 v81, -v79, v82, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v57, v57, v113, v86
	v_fmac_f32_e32 v82, v81, v84
	v_fma_f32 v81, -v85, v92, v90
	v_div_scale_f32 v86, s0, v63, v80, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v57, v57, v80, v78
	v_fma_f32 v78, -v79, v82, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v92, v81, v83 :: v_dual_mul_f32 v79, v86, v88
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v81, s3, v64, v80, v64
	v_div_fmas_f32 v78, v78, v84, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v85, v92, v90
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v84, -v89, v79, v86
	v_div_scale_f32 v87, null, v77, v77, v68
	v_div_fmas_f32 v82, v82, v83, v92
	v_rcp_f32_e32 v83, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v90, v81, v93 :: v_dual_fmac_f32 v79, v84, v88
	v_rcp_f32_e32 v85, v87
	v_div_fixup_f32 v59, v78, v80, v59
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v91, v90, v81
	v_fma_f32 v78, -v89, v79, v86
	v_div_scale_f32 v86, null, v77, v77, v71
	v_div_fixup_f32 v60, v82, v80, v60
	v_fmac_f32_e32 v90, v84, v93
	v_fma_f32 v84, -v94, v83, 1.0
	v_div_fmas_f32 v78, v78, v88, v79
	v_div_scale_f32 v88, s0, v69, v77, v69
	v_fma_f32 v92, -v87, v85, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v83, v84, v83
	v_rcp_f32_e32 v84, v86
	v_fma_f32 v79, -v91, v90, v81
	v_div_fixup_f32 v63, v78, v80, v63
	v_fmac_f32_e32 v85, v92, v85
	v_mul_f32_e32 v91, v88, v83
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v82, s1, v68, v77, v68
	v_div_scale_f32 v89, null, v77, v77, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v86, v84, 1.0
	v_fma_f32 v78, -v94, v91, v88
	v_dual_fmac_f32 v84, v92, v84 :: v_dual_fmac_f32 v91, v78, v83
	v_div_fmas_f32 v79, v79, v93, v90
	v_rcp_f32_e32 v93, v89
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v64, v79, v80, v64
	v_div_scale_f32 v79, s2, v71, v77, v71
	v_div_scale_f32 v80, null, v77, v77, v75
	v_dual_mul_f32 v78, v79, v84 :: v_dual_mul_f32 v81, v82, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v87, v81, v82
	v_fmac_f32_e32 v81, v90, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v90, -v89, v93, 1.0
	v_fma_f32 v82, -v87, v81, v82
	v_rcp_f32_e32 v87, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v93, v90, v93
	v_div_scale_f32 v90, s3, v72, v77, v72
	v_div_fmas_f32 v81, v82, v85, v81
	v_fma_f32 v82, -v94, v91, v88
	v_div_scale_f32 v94, null, v77, v77, v76
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v85, -v86, v78, v79
	v_mul_f32_e32 v88, v90, v93
	v_div_fmas_f32 v82, v82, v83, v91
	v_rcp_f32_e32 v83, v94
	v_fma_f32 v92, -v80, v87, 1.0
	v_fmac_f32_e32 v78, v85, v84
	v_fma_f32 v85, -v89, v88, v90
	v_div_fixup_f32 v69, v82, v77, v69
	v_div_scale_f32 v91, s0, v75, v77, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v87, v92, v87 :: v_dual_fmac_f32 v88, v85, v93
	v_div_scale_f32 v85, null, v77, v77, v74
	v_fma_f32 v82, -v94, v83, 1.0
	v_fma_f32 v79, -v86, v78, v79
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v68, v81, v77, v68
	v_div_scale_f32 v86, s1, v76, v77, v76
	v_fmac_f32_e32 v83, v82, v83
	v_rcp_f32_e32 v82, v85
	v_div_fmas_f32 v78, v79, v84, v78
	v_fma_f32 v79, -v89, v88, v90
	v_div_scale_f32 v89, null, v77, v77, v73
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v71, v78, v77, v71
	v_div_fmas_f32 v79, v79, v93, v88
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v90, -v85, v82, 1.0
	v_mul_f32_e32 v81, v91, v87
	v_div_fixup_f32 v72, v79, v77, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v90, v82
	v_fma_f32 v84, -v80, v81, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v81, v84, v87
	v_rcp_f32_e32 v84, v89
	v_fma_f32 v90, -v89, v84, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v90, v84
	v_fma_f32 v78, -v80, v81, v91
	v_div_scale_f32 v80, s2, v74, v77, v74
	v_mul_f32_e32 v88, v86, v83
	v_div_scale_f32 v91, null, v77, v77, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v78, v78, v87, v81
	v_div_scale_f32 v87, s0, v73, v77, v73
	v_fma_f32 v79, -v94, v88, v86
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v75, v78, v77, v75
	v_mul_f32_e32 v92, v87, v84
	v_rcp_f32_e32 v81, v91
	v_dual_fmac_f32 v88, v79, v83 :: v_dual_mul_f32 v79, v80, v82
	v_div_scale_f32 v90, null, v77, v77, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v78, -v94, v88, v86
	v_fma_f32 v86, -v85, v79, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v93, v90
	v_fma_f32 v94, -v91, v81, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v78, v78, v83, v88
	v_fma_f32 v83, -v89, v92, v87
	v_fmac_f32_e32 v79, v86, v82
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v81, v94, v81
	v_div_fixup_f32 v76, v78, v77, v76
	v_fmac_f32_e32 v92, v83, v84
	v_fma_f32 v78, -v85, v79, v80
	v_div_scale_f32 v85, null, v77, v77, v66
	v_div_scale_f32 v86, s1, v67, v77, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v78, v78, v82, v79
	v_fma_f32 v79, -v89, v92, v87
	v_rcp_f32_e32 v87, v85
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v88, -v90, v93, 1.0
	v_div_scale_f32 v83, s3, v70, v77, v70
	v_div_fmas_f32 v79, v79, v84, v92
	v_div_scale_f32 v89, null, v77, v77, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v93, v88, v93
	v_div_fixup_f32 v74, v78, v77, v74
	v_fma_f32 v92, -v85, v87, 1.0
	v_mul_f32_e32 v80, v86, v81
	v_div_fixup_f32 v73, v79, v77, v73
	v_mul_f32_e32 v88, v83, v93
	v_div_scale_f32 v79, s0, v66, v77, v66
	v_fmac_f32_e32 v87, v92, v87
	v_fma_f32 v82, -v91, v80, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v84, -v90, v88, v83
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v94, null, v77, v77, v54
	v_fmac_f32_e32 v80, v82, v81
	v_rcp_f32_e32 v82, v89
	v_fmac_f32_e32 v88, v84, v93
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v74, v74
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v78, -v91, v80, v86
	v_div_scale_f32 v86, null, v77, v77, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v89, v82, 1.0
	v_fmac_f32_e32 v82, v84, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v78, v78, v81, v80
	v_fma_f32 v80, -v90, v88, v83
	v_mul_f32_e32 v81, v79, v87
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v84, s1, v65, v77, v65
	v_div_scale_f32 v90, null, v77, v77, v58
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v91, v84, v82
	v_div_fmas_f32 v80, v80, v93, v88
	v_fma_f32 v88, -v85, v81, v79
	v_rcp_f32_e32 v93, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v86, v83, 1.0
	v_div_fixup_f32 v67, v78, v77, v67
	v_fma_f32 v78, -v89, v91, v84
	v_fmac_f32_e32 v81, v88, v87
	v_div_scale_f32 v88, null, v77, v77, v55
	v_div_fixup_f32 v70, v80, v77, v70
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v80, s2, v62, v77, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v92, -v90, v93, 1.0
	v_fma_f32 v79, -v85, v81, v79
	v_dual_fmac_f32 v91, v78, v82 :: v_dual_mul_f32 v78, v80, v83
	v_rcp_f32_e32 v85, v88
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v93, v92, v93
	v_div_scale_f32 v92, s3, v58, v77, v58
	v_div_fmas_f32 v79, v79, v87, v81
	v_fma_f32 v81, -v89, v91, v84
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v84, -v86, v78, v80
	v_mul_f32_e32 v87, v92, v93
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v88, v85, 1.0
	v_div_fmas_f32 v81, v81, v82, v91
	v_rcp_f32_e32 v82, v94
	v_fmac_f32_e32 v78, v84, v83
	v_fma_f32 v84, -v90, v87, v92
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, s0, v55, v77, v55
	v_div_fixup_f32 v66, v79, v77, v66
	v_div_fixup_f32 v65, v81, v77, v65
	v_fma_f32 v79, -v86, v78, v80
	v_fmac_f32_e32 v87, v84, v93
	v_mul_f32_e32 v80, v89, v85
	v_fma_f32 v81, -v94, v82, 1.0
	v_div_scale_f32 v84, null, v53, v53, v52
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v86, s1, v54, v77, v54
	v_div_fmas_f32 v78, v79, v83, v78
	v_fma_f32 v79, -v90, v87, v92
	v_fma_f32 v83, -v88, v80, v89
	v_fmac_f32_e32 v82, v81, v82
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v90, null, v53, v53, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v83, v85
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v62, v78, v77, v62
	v_rcp_f32_e32 v83, v90
	v_div_fmas_f32 v79, v79, v93, v87
	v_mul_f32_e32 v87, v86, v82
	v_fma_f32 v78, -v88, v80, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v84, v81, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v58, v79, v77, v58
	v_fma_f32 v79, -v94, v87, v86
	v_div_scale_f32 v88, s2, v52, v53, v52
	v_fmac_f32_e32 v81, v91, v81
	v_fma_f32 v89, -v90, v83, 1.0
	v_div_scale_f32 v91, null, v53, v53, v47
	v_div_fmas_f32 v78, v78, v85, v80
	v_fmac_f32_e32 v87, v79, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v89, v83
	v_rcp_f32_e32 v80, v91
	v_div_scale_f32 v89, null, v53, v53, v48
	v_mul_f32_e32 v79, v88, v81
	v_div_scale_f32 v85, s0, v51, v53, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v93, v89
	v_div_fixup_f32 v55, v78, v77, v55
	v_fma_f32 v78, -v94, v87, v86
	v_fma_f32 v86, -v84, v79, v88
	v_mul_f32_e32 v92, v85, v83
	v_fma_f32 v94, -v91, v80, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v67, v67
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v78, v78, v82, v87
	v_fmac_f32_e32 v79, v86, v81
	v_fma_f32 v82, -v90, v92, v85
	v_fmac_f32_e32 v80, v94, v80
	v_div_scale_f32 v86, s1, v47, v53, v47
	v_fma_f32 v87, -v89, v93, 1.0
	v_div_fixup_f32 v54, v78, v77, v54
	v_fma_f32 v77, -v84, v79, v88
	v_fmac_f32_e32 v92, v82, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v78, v86, v80 :: v_dual_fmac_f32 v93, v87, v93
	v_div_scale_f32 v82, s3, v48, v53, v48
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v84, null, v53, v53, v38
	v_div_fmas_f32 v77, v77, v81, v79
	v_fma_f32 v79, -v90, v92, v85
	v_fma_f32 v81, -v91, v78, v86
	v_mul_f32_e32 v87, v82, v93
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v85, v84
	v_div_scale_f32 v88, null, v53, v53, v37
	v_div_fmas_f32 v79, v79, v83, v92
	v_fmac_f32_e32 v78, v81, v80
	v_fma_f32 v83, -v89, v87, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v81, v88
	v_div_fixup_f32 v52, v77, v53, v52
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v77, -v91, v78, v86
	v_fmac_f32_e32 v87, v83, v93
	v_div_scale_f32 v86, null, v53, v53, v36
	v_fma_f32 v90, -v84, v85, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v77, v77, v80, v78
	v_fma_f32 v78, -v89, v87, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v82, v86
	v_div_fixup_f32 v51, v79, v53, v51
	v_fmac_f32_e32 v85, v90, v85
	v_div_scale_f32 v79, s0, v38, v53, v38
	v_fma_f32 v83, -v88, v81, 1.0
	v_div_scale_f32 v89, null, v53, v53, v35
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v80, v79, v85
	v_fmac_f32_e32 v81, v83, v81
	v_div_scale_f32 v83, s1, v37, v53, v37
	v_div_fmas_f32 v78, v78, v93, v87
	v_fma_f32 v91, -v86, v82, 1.0
	v_rcp_f32_e32 v92, v89
	v_fma_f32 v87, -v84, v80, v79
	v_div_fixup_f32 v47, v77, v53, v47
	v_div_fixup_f32 v48, v78, v53, v48
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v78, s2, v36, v53, v36
	v_mul_f32_e32 v90, v83, v81
	v_fmac_f32_e32 v80, v87, v85
	v_div_scale_f32 v87, null, v53, v53, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v89, v92, 1.0
	v_fma_f32 v77, -v88, v90, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v84, v80, v79
	v_rcp_f32_e32 v84, v87
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s3, v35, v53, v35
	v_dual_fmac_f32 v90, v77, v81 :: v_dual_mul_f32 v77, v78, v82
	v_div_fmas_f32 v79, v79, v85, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v85, v91, v92
	v_div_scale_f32 v93, null, v53, v53, v33
	v_fma_f32 v80, -v88, v90, v83
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v83, -v86, v77, v78
	v_fma_f32 v88, -v87, v84, 1.0
	v_div_fixup_f32 v38, v79, v53, v38
	v_div_fmas_f32 v80, v80, v81, v90
	v_rcp_f32_e32 v81, v93
	v_fmac_f32_e32 v77, v83, v82
	v_fma_f32 v83, -v89, v85, v91
	v_fmac_f32_e32 v84, v88, v84
	v_div_scale_f32 v88, s0, v32, v53, v32
	v_div_fixup_f32 v37, v80, v53, v37
	v_fma_f32 v78, -v86, v77, v78
	v_fmac_f32_e32 v85, v83, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v79, v88, v84
	v_fma_f32 v80, -v93, v81, 1.0
	v_div_scale_f32 v83, null, v53, v53, v31
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v86, s1, v33, v53, v33
	v_div_fmas_f32 v77, v78, v82, v77
	v_fma_f32 v78, -v89, v85, v91
	v_fma_f32 v82, -v87, v79, v88
	v_fmac_f32_e32 v81, v80, v81
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v89, null, v53, v53, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v82, v84
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v36, v77, v53, v36
	v_rcp_f32_e32 v82, v89
	v_div_fmas_f32 v78, v78, v92, v85
	v_mul_f32_e32 v85, v86, v81
	v_fma_f32 v77, -v87, v79, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v83, v80, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v35, v78, v53, v35
	v_fma_f32 v78, -v93, v85, v86
	v_div_scale_f32 v87, s2, v31, v53, v31
	v_fmac_f32_e32 v80, v90, v80
	v_fma_f32 v88, -v89, v82, 1.0
	v_div_scale_f32 v90, null, v53, v53, v29
	v_div_fmas_f32 v77, v77, v84, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v85, v78, v81 :: v_dual_fmac_f32 v82, v88, v82
	v_rcp_f32_e32 v79, v90
	v_div_scale_f32 v88, null, v53, v53, v28
	v_mul_f32_e32 v78, v87, v80
	v_div_scale_f32 v84, s0, v30, v53, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v92, v88
	v_div_fixup_f32 v32, v77, v53, v32
	v_fma_f32 v77, -v93, v85, v86
	v_fma_f32 v86, -v83, v78, v87
	v_mul_f32_e32 v91, v84, v82
	v_fma_f32 v93, -v90, v79, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v66, v66
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v77, v77, v81, v85
	v_fmac_f32_e32 v78, v86, v80
	v_fma_f32 v81, -v89, v91, v84
	v_fmac_f32_e32 v79, v93, v79
	v_div_scale_f32 v85, s1, v29, v53, v29
	v_fma_f32 v86, -v88, v92, 1.0
	v_div_fixup_f32 v33, v77, v53, v33
	v_fma_f32 v77, -v83, v78, v87
	v_fmac_f32_e32 v91, v81, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v81, v85, v79 :: v_dual_fmac_f32 v92, v86, v92
	v_div_scale_f32 v86, null, v53, v53, v26
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v83, s3, v28, v53, v28
	v_div_fmas_f32 v77, v77, v80, v78
	v_fma_f32 v78, -v89, v91, v84
	v_fma_f32 v80, -v90, v81, v85
	v_rcp_f32_e32 v84, v86
	v_div_scale_f32 v89, null, v53, v53, v27
	v_mul_f32_e32 v87, v83, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v80, v79
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v80, v89
	v_div_fmas_f32 v78, v78, v82, v91
	v_fma_f32 v82, -v88, v87, v83
	v_div_fixup_f32 v31, v77, v53, v31
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v86, v84, 1.0
	v_fma_f32 v77, -v90, v81, v85
	v_div_fixup_f32 v30, v78, v53, v30
	v_fmac_f32_e32 v87, v82, v92
	v_div_scale_f32 v78, s0, v26, v53, v26
	v_fmac_f32_e32 v84, v91, v84
	v_fma_f32 v82, -v89, v80, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v90, null, v34, v34, v24
	v_div_fmas_f32 v77, v77, v79, v81
	v_fma_f32 v79, -v88, v87, v83
	v_mul_f32_e32 v81, v78, v84
	v_fmac_f32_e32 v80, v82, v80
	v_div_scale_f32 v82, null, v34, v34, v25
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v83, s1, v27, v53, v27
	v_div_fmas_f32 v79, v79, v92, v87
	v_rcp_f32_e32 v85, v82
	v_fma_f32 v87, -v86, v81, v78
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v88, v83, v80
	v_div_fixup_f32 v29, v77, v53, v29
	v_div_fixup_f32 v28, v79, v53, v28
	v_rcp_f32_e32 v79, v90
	v_fmac_f32_e32 v81, v87, v84
	v_fma_f32 v77, -v89, v88, v83
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v92, null, v34, v34, v22
	v_fma_f32 v87, -v82, v85, 1.0
	v_fma_f32 v78, -v86, v81, v78
	v_div_scale_f32 v86, null, v34, v34, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v88, v77, v80 :: v_dual_fmac_f32 v85, v87, v85
	v_div_scale_f32 v77, s2, v25, v34, v25
	v_rcp_f32_e32 v87, v86
	v_fma_f32 v91, -v90, v79, 1.0
	v_div_fmas_f32 v78, v78, v84, v81
	v_fma_f32 v81, -v89, v88, v83
	v_mul_f32_e32 v83, v77, v85
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v79, v91, v79
	v_div_scale_f32 v84, s0, v24, v34, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v91, -v82, v83, v77
	v_fma_f32 v89, -v86, v87, 1.0
	v_rcp_f32_e32 v94, v92
	v_div_fmas_f32 v80, v81, v80, v88
	v_mul_f32_e32 v93, v84, v79
	v_fmac_f32_e32 v83, v91, v85
	v_fmac_f32_e32 v87, v89, v87
	v_div_scale_f32 v89, s3, v23, v34, v23
	v_div_fixup_f32 v26, v78, v53, v26
	v_div_fixup_f32 v27, v80, v53, v27
	v_fma_f32 v53, -v82, v83, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v88, v89, v87
	v_div_scale_f32 v80, null, v34, v34, v21
	v_fma_f32 v81, -v90, v93, v84
	v_fma_f32 v78, -v92, v94, 1.0
	v_fma_f32 v77, -v86, v88, v89
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v62, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v93, v81, v79 :: v_dual_fmac_f32 v94, v78, v94
	v_fmac_f32_e32 v88, v77, v87
	v_rcp_f32_e32 v77, v80
	v_div_scale_f32 v78, s1, v22, v34, v22
	v_div_fmas_f32 v53, v53, v85, v83
	v_fma_f32 v81, -v90, v93, v84
	v_div_scale_f32 v83, null, v34, v34, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v82, v78, v94
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v25, v53, v34, v25
	v_fma_f32 v84, -v80, v77, 1.0
	v_div_fmas_f32 v79, v81, v79, v93
	v_fma_f32 v81, -v86, v88, v89
	v_rcp_f32_e32 v85, v83
	v_fma_f32 v86, -v92, v82, v78
	v_fmac_f32_e32 v77, v84, v77
	v_div_scale_f32 v84, s0, v21, v34, v21
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v82, v86, v94
	v_div_fmas_f32 v81, v81, v87, v88
	v_mul_f32_e32 v53, v84, v77
	v_div_fixup_f32 v24, v79, v34, v24
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v79, -v83, v85, 1.0
	v_fma_f32 v78, -v92, v82, v78
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v86, -v80, v53, v84
	v_div_fixup_f32 v23, v81, v34, v23
	v_div_scale_f32 v81, null, v34, v34, v18
	v_fmac_f32_e32 v85, v79, v85
	v_div_scale_f32 v79, s2, v20, v34, v20
	v_div_fmas_f32 v78, v78, v94, v82
	v_fmac_f32_e32 v53, v86, v77
	v_rcp_f32_e32 v87, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v82, v79, v85
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v22, v78, v34, v22
	v_fma_f32 v78, -v80, v53, v84
	v_div_scale_f32 v86, null, v34, v34, v17
	v_fma_f32 v80, -v83, v82, v79
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v53, v78, v77, v53
	v_div_scale_f32 v77, null, v34, v34, v15
	v_fma_f32 v84, -v81, v87, 1.0
	v_rcp_f32_e32 v88, v86
	v_fmac_f32_e32 v82, v80, v85
	v_rcp_f32_e32 v80, v77
	v_div_scale_f32 v78, s0, v18, v34, v18
	v_fmac_f32_e32 v87, v84, v87
	v_div_scale_f32 v84, null, v34, v34, v19
	v_div_fixup_f32 v21, v53, v34, v21
	v_fma_f32 v79, -v83, v82, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v53, -v86, v88, 1.0
	v_rcp_f32_e32 v90, v84
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v77, v80, 1.0
	v_mul_f32_e32 v83, v78, v87
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v88, v53, v88
	v_div_scale_f32 v53, s1, v17, v34, v17
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v89, null, v34, v34, v16
	v_div_fmas_f32 v79, v79, v85, v82
	v_fma_f32 v82, -v81, v83, v78
	v_mul_f32_e32 v85, v53, v88
	v_div_scale_f32 v91, s2, v15, v34, v15
	v_fma_f32 v92, -v84, v90, 1.0
	v_rcp_f32_e32 v93, v89
	v_fmac_f32_e32 v83, v82, v87
	v_fma_f32 v82, -v86, v85, v53
	v_mul_f32_e32 v94, v91, v80
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s3, v19, v34, v19
	v_div_fixup_f32 v20, v79, v34, v20
	v_fma_f32 v78, -v81, v83, v78
	v_fmac_f32_e32 v85, v82, v88
	v_fma_f32 v79, -v77, v94, v91
	v_mul_f32_e32 v81, v92, v90
	v_fma_f32 v82, -v89, v93, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v53, -v86, v85, v53
	v_fmac_f32_e32 v94, v79, v80
	v_fma_f32 v79, -v84, v81, v92
	v_fmac_f32_e32 v93, v82, v93
	v_div_scale_f32 v82, s0, v16, v34, v16
	v_div_fmas_f32 v78, v78, v87, v83
	v_fma_f32 v77, -v77, v94, v91
	v_fmac_f32_e32 v81, v79, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v79, v82, v93
	v_div_scale_f32 v83, null, v34, v34, v14
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v18, v78, v34, v18
	v_div_fmas_f32 v53, v53, v88, v85
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v85, v83
	v_div_fmas_f32 v77, v77, v80, v94
	v_fma_f32 v80, -v84, v81, v92
	v_fma_f32 v84, -v89, v79, v82
	v_div_fixup_f32 v17, v53, v34, v17
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v15, v77, v34, v15
	v_div_fmas_f32 v80, v80, v90, v81
	v_fmac_f32_e32 v79, v84, v93
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v78, -v83, v85, 1.0
	v_div_scale_f32 v77, null, v34, v34, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v53, -v89, v79, v82
	v_div_fixup_f32 v19, v80, v34, v19
	v_fmac_f32_e32 v85, v78, v85
	v_div_scale_f32 v78, null, v34, v34, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v53, v53, v93, v79
	v_div_scale_f32 v81, vcc_lo, v14, v34, v14
	v_rcp_f32_e32 v79, v77
	v_div_scale_f32 v80, null, v34, v34, v11
	v_mul_f32_e32 v86, v81, v85
	v_rcp_f32_e32 v82, v78
	v_div_scale_f32 v87, null, v34, v34, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v84, v80
	v_fma_f32 v90, -v83, v86, v81
	v_div_fixup_f32 v16, v53, v34, v16
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_fma_f32 v53, -v77, v79, 1.0
	v_rcp_f32_e32 v89, v87
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v58, v58
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v86, v90, v85
	v_fma_f32 v88, -v78, v82, 1.0
	v_fmac_f32_e32 v79, v53, v79
	v_div_scale_f32 v53, s0, v13, v34, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v83, v86, v81
	v_fma_f32 v91, -v80, v84, 1.0
	v_fmac_f32_e32 v82, v88, v82
	v_div_scale_f32 v88, s1, v10, v34, v10
	v_div_fmas_f32 v81, v81, v85, v86
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_mul_f32_e32 v92, v53, v79
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v91, s2, v11, v34, v11
	v_fma_f32 v93, -v87, v89, 1.0
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v94, v88, v82
	v_fma_f32 v90, -v77, v92, v53
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_cvt_i32_f32_e32 v67, v67
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v95, v91, v84
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v66, v66
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s3, v12, v34, v12
	v_fma_f32 v83, -v78, v94, v88
	v_fmac_f32_e32 v92, v90, v79
	v_fma_f32 v90, -v80, v95, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v96, v93, v89
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v62, v62
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v94, v83, v82
	v_fma_f32 v53, -v77, v92, v53
	v_fmac_f32_e32 v95, v90, v84
	v_fma_f32 v77, -v87, v96, v93
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v36, v36, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v78, -v78, v94, v88
	v_div_fmas_f32 v53, v53, v79, v92
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v96, v77, v89
	v_fma_f32 v77, -v80, v95, v91
	v_div_fmas_f32 v78, v78, v82, v94
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v14, v81, v34, v14
	v_fma_f32 v79, -v87, v96, v93
	v_div_fmas_f32 v77, v77, v84, v95
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v13, v53, v34, v13
	v_div_fixup_f32 v10, v78, v34, v10
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v53, v57
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v11, v77, v34, v11
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v77, v36
	v_and_b32_e32 v36, 15, v66
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v79, v79, v89, v96
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v57, v60
	v_rndne_f32_e32 v60, v64
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v11, v11
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v12, v79, v34, v12
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v34, v39
	v_rndne_f32_e32 v39, v40
	v_rndne_f32_e32 v40, v41
	v_rndne_f32_e32 v41, v42
	v_rndne_f32_e32 v42, v43
	v_rndne_f32_e32 v43, v44
	v_rndne_f32_e32 v44, v45
	v_rndne_f32_e32 v45, v46
	v_rndne_f32_e32 v46, v49
	v_rndne_f32_e32 v49, v50
	v_rndne_f32_e32 v50, v56
	v_rndne_f32_e32 v56, v59
	v_rndne_f32_e32 v59, v63
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v25, v25
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v63, v68
	v_rndne_f32_e32 v64, v69
	v_rndne_f32_e32 v68, v71
	v_rndne_f32_e32 v69, v72
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v22, v22
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v88, v24
	v_cvt_i32_f32_e32 v101, v11
	v_and_b32_e32 v11, 15, v39
	v_and_b32_e32 v24, 15, v59
	v_and_b32_e32 v39, 15, v58
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v58, 16, v0
	v_lshlrev_b32_e32 v59, 4, v61
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v71, v75
	v_rndne_f32_e32 v72, v76
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v12, v12
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_cvt_i32_f32_e32 v87, v25
	v_and_b32_e32 v25, 15, v60
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v60, 6, v58
	v_xor_b32_e32 v6, v59, v6
	v_lshlrev_b32_e32 v59, 6, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v18, v18
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v72, v72, s0, 0x40e00000
	v_med3_f32 v73, v73, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v54, v54
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v89, v23
	v_cvt_i32_f32_e32 v90, v22
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v3, 0, v3, v60
	v_and_or_b32 v5, 0x1b00, v59, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v79, v32
	v_cvt_i32_f32_e32 v80, v33
	v_cvt_i32_f32_e32 v81, v31
	v_cvt_i32_f32_e32 v82, v30
	v_cvt_i32_f32_e32 v95, v15
	v_cvt_i32_f32_e32 v96, v19
	v_cvt_i32_f32_e32 v97, v16
	v_cvt_i32_f32_e32 v98, v14
	v_med3_f32 v74, v74, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_cvt_i32_f32_e32 v75, v38
	v_cvt_i32_f32_e32 v76, v37
	v_cvt_i32_f32_e32 v83, v29
	v_cvt_i32_f32_e32 v84, v28
	v_cvt_i32_f32_e32 v85, v26
	v_cvt_i32_f32_e32 v86, v27
	v_cvt_i32_f32_e32 v94, v17
	v_cvt_i32_f32_e32 v99, v13
	v_cvt_i32_f32_e32 v100, v10
	v_cvt_i32_f32_e32 v102, v12
	v_and_b32_e32 v10, 15, v34
	v_and_b32_e32 v12, 15, v40
	v_and_b32_e32 v13, 15, v41
	v_and_b32_e32 v14, 15, v42
	v_and_b32_e32 v15, 15, v43
	v_and_b32_e32 v16, 15, v44
	v_and_b32_e32 v17, 15, v45
	v_and_b32_e32 v26, 15, v63
	v_and_b32_e32 v27, 15, v64
	v_and_b32_e32 v28, 15, v68
	v_and_b32_e32 v29, 15, v69
	v_and_b32_e32 v37, 15, v65
	v_and_b32_e32 v38, 15, v62
	v_and_b32_e32 v42, 15, v52
	v_and_b32_e32 v43, 15, v51
	v_and_b32_e32 v44, 15, v47
	v_and_b32_e32 v45, 15, v48
	v_and_b32_e32 v62, 15, v87
	v_and_b32_e32 v63, 15, v88
	v_and_b32_e32 v64, 15, v89
	v_and_b32_e32 v65, 15, v90
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v7, v3, v6, v7
	v_xad_u32 v59, v5, v4, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v78, v35
	v_cvt_i32_f32_e32 v91, v21
	v_cvt_i32_f32_e32 v92, v20
	v_cvt_i32_f32_e32 v93, v18
	v_and_b32_e32 v18, 15, v46
	v_and_b32_e32 v19, 15, v49
	v_and_b32_e32 v20, 15, v50
	v_and_b32_e32 v21, 15, v53
	v_and_b32_e32 v22, 15, v56
	v_and_b32_e32 v23, 15, v57
	v_and_b32_e32 v30, 15, v71
	v_and_b32_e32 v31, 15, v72
	v_and_b32_e32 v33, 15, v73
	v_and_b32_e32 v34, 15, v67
	v_and_b32_e32 v35, 15, v70
	v_and_b32_e32 v50, 15, v79
	v_and_b32_e32 v51, 15, v80
	v_and_b32_e32 v52, 15, v81
	v_and_b32_e32 v53, 15, v82
	v_and_b32_e32 v70, 15, v95
	v_and_b32_e32 v71, 15, v96
	v_and_b32_e32 v72, 15, v97
	v_and_b32_e32 v73, 15, v98
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v54, v54
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v7, v[10:13]
	ds_store_b128 v7, v[18:21] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v59
	ds_load_b128 v[10:13], v59 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[26:29]
	ds_store_b128 v7, v[34:37] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v59
	ds_load_b128 v[26:29], v59 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[42:45]
	ds_store_b128 v7, v[50:53] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v59
	ds_load_b128 v[42:45], v59 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[62:65]
	ds_store_b128 v7, v[70:73] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[50:53], v59
	ds_load_b128 v[62:65], v59 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[14:17]
	ds_store_b128 v7, v[22:25] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[14:17], v59
	ds_load_b128 v[22:25], v59 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v32, 15, v74
	v_and_b32_e32 v40, 15, v55
	v_and_b32_e32 v41, 15, v54
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[30:33]
	ds_store_b128 v7, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[30:33], v59
	ds_load_b128 v[38:41], v59 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v46, 15, v75
	v_and_b32_e32 v47, 15, v76
	v_and_b32_e32 v48, 15, v77
	v_and_b32_e32 v49, 15, v78
	v_and_b32_e32 v54, 15, v83
	v_and_b32_e32 v55, 15, v84
	v_and_b32_e32 v56, 15, v85
	v_and_b32_e32 v57, 15, v86
	v_and_b32_e32 v66, 15, v91
	v_and_b32_e32 v67, 15, v92
	v_and_b32_e32 v68, 15, v93
	v_and_b32_e32 v69, 15, v94
	v_and_b32_e32 v74, 15, v99
	v_and_b32_e32 v75, 15, v100
	v_and_b32_e32 v76, 15, v101
	v_and_b32_e32 v77, 15, v102
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[46:49]
	ds_store_b128 v7, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v59
	ds_load_b128 v[54:57], v59 offset:1024
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s29, 31
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[66:69]
	ds_store_b128 v7, v[74:77] offset:512
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v7, v10, 4, v3
	v_lshl_or_b32 v3, v11, 4, v4
	v_lshl_or_b32 v4, v12, 4, v5
	v_lshl_or_b32 v5, v13, 4, v6
	v_lshl_or_b32 v6, v22, 4, v14
	v_lshl_or_b32 v22, v43, 4, v35
.Ltmp76:
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v35, 4, v0
.Ltmp77:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[66:69], v59
	ds_load_b128 v[70:73], v59 offset:1024
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v10, v23, 4, v15
	v_lshl_or_b32 v11, v24, 4, v16
	v_lshl_or_b32 v12, v25, 4, v17
	v_lshl_or_b32 v23, v44, 4, v36
	.loc	1 85 46                         ; generate_amdgcn.py:85:46 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v36, 3, v61
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v24, v45, 4, v37
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v37, s0, v35
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s28, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s30, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v13, v26, 4, v18
	v_lshl_or_b32 v14, v27, 4, v19
	v_lshl_or_b32 v15, v28, 4, v20
	v_lshl_or_b32 v16, v29, 4, v21
	v_lshl_or_b32 v17, v38, 4, v30
	v_lshl_or_b32 v18, v39, 4, v31
	v_lshl_or_b32 v19, v40, 4, v32
	v_lshl_or_b32 v20, v41, 4, v33
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v39, s2, s1, v36
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v5.l
	v_and_b16 v2.l, 0xff, v4.l
	v_lshlrev_b16 v3.l, 8, v3.l
	v_and_b16 v3.h, 0xff, v7.l
	v_lshlrev_b16 v4.l, 8, v12.l
	v_and_b16 v4.h, 0xff, v11.l
	v_lshlrev_b16 v5.l, 8, v10.l
	v_and_b16 v5.h, 0xff, v6.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v21, v42, 4, v34
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v41, v39, v37
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v6.h, v2.l, v1.l
	v_or_b16 v6.l, v3.h, v3.l
	v_or_b16 v7.h, v4.h, v4.l
	v_or_b16 v7.l, v5.h, v5.l
	v_lshlrev_b16 v1.l, 8, v16.l
	v_and_b16 v2.l, 0xff, v15.l
	v_lshlrev_b16 v3.l, 8, v14.l
	v_and_b16 v3.h, 0xff, v13.l
	v_lshlrev_b16 v4.l, 8, v20.l
	v_and_b16 v4.h, 0xff, v19.l
	v_lshlrev_b16 v5.l, 8, v18.l
	v_and_b16 v5.h, 0xff, v17.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s0, 4
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v25, v54, 4, v46
	v_lshl_or_b32 v26, v55, 4, v47
	v_lshl_or_b32 v29, v62, 4, v50
	v_lshl_or_b32 v30, v63, 4, v51
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v42, v37, s1, v39
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[6:7], v41, s[16:19], 0 offen
	v_or_b16 v6.h, v2.l, v1.l
	v_or_b16 v6.l, v3.h, v3.l
	v_or_b16 v7.h, v4.h, v4.l
	v_or_b16 v7.l, v5.h, v5.l
	v_lshlrev_b16 v3.l, 8, v22.l
	v_and_b16 v3.h, 0xff, v21.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v27, v56, 4, v48
	v_lshl_or_b32 v28, v57, 4, v49
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v33, v70, 4, v66
	v_lshl_or_b32 v34, v71, 4, v67
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v5.l, 8, v26.l
	v_and_b16 v5.h, 0xff, v25.l
	buffer_store_b64 v[6:7], v42, s[16:19], 0 offen
	v_or_b16 v6.l, v3.h, v3.l
	v_lshlrev_b16 v3.l, 8, v30.l
	v_and_b16 v3.h, 0xff, v29.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v31, v64, 4, v52
	v_lshl_or_b32 v32, v65, 4, v53
	v_lshl_or_b32 v38, v72, 4, v68
	v_lshl_or_b32 v40, v73, 4, v69
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v24.l
	v_and_b16 v2.l, 0xff, v23.l
	v_lshlrev_b16 v4.l, 8, v28.l
	v_and_b16 v4.h, 0xff, v27.l
	v_or_b16 v7.l, v5.h, v5.l
	v_lshlrev_b16 v5.l, 8, v34.l
	v_and_b16 v5.h, 0xff, v33.l
	v_or_b16 v10.l, v3.h, v3.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v3, 2, v58
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s2, s0, 5
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v6.h, v2.l, v1.l
	v_or_b16 v7.h, v4.h, v4.l
	v_lshlrev_b16 v1.l, 8, v32.l
	v_and_b16 v2.l, 0xff, v31.l
	v_lshlrev_b16 v4.l, 8, v40.l
	v_and_b16 v4.h, 0xff, v38.l
	v_or_b16 v11.l, v5.h, v5.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v5, 2, v35
	v_add_nc_u32_e32 v3, 0, v3
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s0, s0, 48
	v_add3_u32 v43, v37, s2, v39
	v_add3_u32 v37, v37, s0, v39
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s29, 31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v10.h, v2.l, v1.l
	v_or_b16 v11.h, v4.h, v4.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v4, 0, v36
	v_mov_b16_e32 v2.l, v9.h
	v_mov_b16_e32 v1.l, v8.h
	v_add3_u32 v3, v3, v5, v36
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[6:7], v43, s[16:19], 0 offen
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v6, v0, 63, s30
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[10:11], v37, s[16:19], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v4, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v3
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v2, v6, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s17, s15, 0xffff
	s_mov_b32 s16, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s28, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[16:19], 0 offen
.Ltmp78:
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp79:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 38
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
		.amdhsa_inst_pref_size 63
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 222
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16544
; TotalNumSgprs: 40
; NumVgprs: 222
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 40
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
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x86 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x60 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	347                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	346                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	363                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x68:0x27 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	446                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x75:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x81:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     222
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
