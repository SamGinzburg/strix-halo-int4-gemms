	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	s_load_b32 s33, s[0:1], 0x38
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v15, 3, v0
	v_lshrrev_b32_e32 v2, 2, v0
	v_lshlrev_b32_e32 v83, 5, v0
	s_mov_b32 s12, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b32_e32 v13, 4, v15
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v3, 0xc0, v2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s28, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s10, s8, 31
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
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mad_u64_u32 v[4:5], null, s33, v2, v[13:14]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_mov_b64 s[24:25], s[22:23]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_lshl_add_u32 v7, s33, 6, v4
	v_lshl_add_u32 v8, s33, 7, v4
	.loc	1 406 22 is_stmt 0              ; generate_amdgcn.py:406:22
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 349 16 is_stmt 1              ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s6, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s7, s8, s6
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s7, s7, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_mul_lo_u32 v1, s33, v3
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s4, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s10, s4, s8
	s_ashr_i32 s14, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s13, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s16, s4, s14
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v5, s13, v13
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s28, s16, s14
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s15, s33, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s4, s28, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s3, s28, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s4
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v5
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_mul_i32 s4, s3, s33
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s30, s2, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s15, 63
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mad_u64_u32 v[5:6], null, s30, s33, v[4:5]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s31, -1, 0
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_add_i32 s4, s4, s13
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 406 30 is_stmt 0              ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v4, s4, v4
	v_add_nc_u32_e32 v6, s4, v7
	v_add_nc_u32_e32 v9, s4, v8
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s31
	s_cmpk_gt_i32 s15, 0x7f
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v10, s13, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s5, s13, 64
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_dual_cndmask_b32 v17, 0x80000000, v9 :: v_dual_add_nc_u32 v12, 64, v4
	v_cndmask_b32_e32 v16, 0x80000000, v6, vcc_lo
	.loc	1 406 30 is_stmt 0              ; generate_amdgcn.py:406:30
	v_add3_u32 v1, v1, v13, s4
	.loc	1 398 17 is_stmt 1              ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s5, v13
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v4
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_add_i32 s4, s4, 64
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v14, 64, v1
	.loc	1 406 22 is_stmt 0              ; generate_amdgcn.py:406:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 399 23 is_stmt 1              ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v9
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v30, s5, v5
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v31, s4, v7
	v_add_nc_u32_e32 v32, s4, v8
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[4:7], v10, s[20:23], 0 offen
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s15, 0xbf
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[8:11], v11, s[24:27], 0 offen
	buffer_load_b128 v[18:21], v16, s[24:27], 0 offen
	buffer_load_b128 v[22:25], v17, s[24:27], 0 offen
	buffer_load_b128 v[26:29], v1, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_dual_cndmask_b32 v1, 0x80000000, v30 :: v_dual_cndmask_b32 v16, 0x80000000, v31
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_dual_cndmask_b32 v17, 0x80000000, v32 :: v_dual_cndmask_b32 v14, 0x80000000, v14
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[30:33], v1, s[20:23], 0 offen
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_clause 0x3
	buffer_load_b128 v[34:37], v12, s[24:27], 0 offen
	buffer_load_b128 v[38:41], v16, s[24:27], 0 offen
	buffer_load_b128 v[42:45], v17, s[24:27], 0 offen
	buffer_load_b128 v[46:49], v14, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v17, 1, v0
	v_lshlrev_b32_e32 v16, 4, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v14, 15, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v1, 48, v17
	v_lshlrev_b32_e32 v84, 6, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v85, v16, v1
	v_add_nc_u32_e32 v1, 0, v85
	s_waitcnt vmcnt(9)
	ds_store_b128 v1, v[4:7] offset:32768
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v1, v[8:11]
	s_waitcnt vmcnt(7)
	ds_store_b128 v1, v[18:21] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v1, v[22:25] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v1, v[26:29] offset:12288
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v1, v[30:33] offset:36864
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v1, v[34:37] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v1, v[38:41] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v1, v[42:45] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[46:49] offset:28672
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_lshlrev_b32_e32 v1, 5, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v4, 6, v14
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_and_b32_e32 v82, 0x1c00, v1
	s_load_b256 s[4:11], s[0:1], 0x10
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v73, 0
	s_add_i32 s35, 0, 0x8000
	s_add_i32 s0, 0, 0x9000
	s_add_i32 s1, 0, 0x4000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr82
	s_load_b256 s[4:11], s[0:1], 0x10
.LBB0_4:                                ; %.lr.ph
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_lshl_b32 s0, s16, 8
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s1, s15, 6
.Ltmp15:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_add3_u32 v95, s13, v13, 0x80
	s_mov_b32 s13, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_lshlrev_b32_e32 v1, 3, v0
	v_or_b32_e32 v3, s0, v3
	v_dual_mov_b32 v73, 0 :: v_dual_and_b32 v82, 0x1c00, v83
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v76, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v86, v1, 48, v84
	v_or_b32_e32 v1, s0, v2
	s_lshl_b32 s0, s14, 8
	s_mov_b32 s14, s12
	v_subrev_nc_u32_e32 v3, s0, v3
	v_or_b32_e32 v87, v86, v82
	v_subrev_nc_u32_e32 v1, s0, v1
	v_xor_b32_e32 v88, 16, v86
	v_xor_b32_e32 v89, 32, v86
	v_mul_lo_u32 v94, s33, v3
	v_xor_b32_e32 v90, 48, v86
	v_or_b32_e32 v4, 0x80, v1
	v_or_b32_e32 v5, 64, v1
	v_mul_lo_u32 v98, s33, v1
	v_add_nc_u32_e32 v1, s30, v2
	v_xor_b32_e32 v91, 16, v87
	v_mul_lo_u32 v96, s33, v4
	v_mul_lo_u32 v97, s33, v5
	v_xor_b32_e32 v92, 32, v87
	v_mul_lo_u32 v99, s33, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v6, s17
	v_xor_b32_e32 v93, 48, v87
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_mov_b32_e32 v8, s19
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v7, s18
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	s_add_i32 s34, s1, -2
	s_add_i32 s35, 0, 0x8000
	s_add_i32 s0, 0, 0x9000
	s_add_i32 s1, 0, 0x4000
	s_mov_b32 s13, 1
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v95
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v9, v99, v95
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v108, s12, v87
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v172, s35, v86
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v109, s12, v91
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v176, s35, v88
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_b128 v[9:12], v9, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[164:167], v108 offset:8192
	ds_load_b128 v[168:171], v109 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[116:119], v172
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[156:159], v108
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[120:123], v176
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[160:163], v109
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[132:135], v172 offset:1024
	ds_load_b128 v[136:139], v176 offset:1024
	ds_load_b128 v[148:151], v172 offset:2048
	ds_load_b128 v[152:155], v176 offset:2048
	ds_load_b128 v[172:175], v172 offset:3072
	ds_load_b128 v[176:179], v176 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[100:107], v[156:159], v[116:119], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[164:167], v[116:119], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[124:131], v[164:167], v[132:135], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[100:107], v[160:163], v[120:123], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[168:171], v[120:123], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[156:159], v[132:135], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[124:131], v[168:171], v[136:139], v[124:131] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[140:147], v[164:167], v[148:151], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[160:163], v[136:139], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[132:139], v[156:159], v[148:151], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[140:147], v[168:171], v[152:155], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[132:139], v[160:163], v[152:155], v[132:139] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[148:155], v[156:159], v[172:175], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[148:155], v[160:163], v[176:179], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[156:163], v[164:167], v[172:175], v[1:8] neg_lo:[1,1,0]
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v172, s12, v92
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[156:163], v[168:171], v[176:179], v[156:163] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v176, s35, v89
	ds_load_b128 v[164:167], v176
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[168:171], v172
	ds_load_b128 v[172:175], v172 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[100:107], v[168:171], v[164:167], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[108:115], v[172:175], v[164:167], v[108:115] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[164:167], v176 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[116:123], v[168:171], v[164:167], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[124:131], v[172:175], v[164:167], v[124:131] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[164:167], v176 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[132:139], v[168:171], v[164:167], v[132:139] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[172:175], v[164:167], v[140:147] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[164:167], v176 offset:3072
	v_add_nc_u32_e32 v176, s35, v90
	s_mov_b32 s35, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s0, s13, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_cmp_lt_i32 s0, 2
	s_cselect_b32 s13, s0, 0
	s_add_i32 s34, s34, -1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s0, s13, 12
	s_add_i32 s14, s0, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s0, s14, 0x8000
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[156:163], v[172:175], v[164:167], v[156:163] neg_lo:[1,1,0]
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v172, s12, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[148:155], v[168:171], v[164:167], v[148:155] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[164:167], v176
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[168:171], v172
	ds_load_b128 v[172:175], v172 offset:8192
	s_mov_b32 s12, s1
	s_lshl_b32 s1, s13, 14
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s1, s1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s34, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[100:107], v[168:171], v[164:167], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[108:115], v[172:175], v[164:167], v[108:115] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v73, v73, v100
	v_add_f32_e32 v69, v69, v112
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[164:167], v176 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v104, v104
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v81, v81, v101
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v108, v108
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v80, v80, v102 :: v_dual_add_f32 v79, v79, v103
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v78, v78, v104
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v114, v114
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v74, v74, v108
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v115, v115
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v77, v77, v105 :: v_dual_add_f32 v76, v76, v106
	v_add_f32_e32 v75, v75, v107
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[116:123], v[168:171], v[164:167], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[124:131], v[172:175], v[164:167], v[124:131] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[164:167], v176 offset:2048
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v71, v71, v110
	v_add_f32_e32 v67, v67, v114
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v118, v118
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v72, v72, v109
	v_add_f32_e32 v70, v70, v111
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v122, v122
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v101, v97, v95
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v68, v68, v113 :: v_dual_add_nc_u32 v103, v94, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v61, v61, v120 :: v_dual_add_f32 v66, v66, v115
	v_add_f32_e32 v59, v59, v122
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[132:139], v[168:171], v[164:167], v[132:139] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[172:175], v[164:167], v[140:147] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[164:167], v176 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v40, v40, v141
	v_add_f32_e32 v36, v36, v145
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[148:155], v[168:171], v[164:167], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[156:163], v[172:175], v[164:167], v[156:163] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v150, v150
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v100, v98, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v154, v154
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v102, v96, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v158, v158
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v31, v31, v150 :: v_dual_cndmask_b32 v100, 0x80000000, v100
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v160, v160
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_dual_cndmask_b32 v104, 0x80000000, v101 :: v_dual_add_f32 v27, v27, v154
	v_dual_cndmask_b32 v108, 0x80000000, v102 :: v_dual_add_nc_u32 v95, 64, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v162, v162
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_dual_cndmask_b32 v112, 0x80000000, v103 :: v_dual_add_f32 v23, v23, v158
	buffer_load_b128 v[100:103], v100, s[24:27], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v21, v21, v160
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_clause 0x1
	buffer_load_b128 v[104:107], v104, s[24:27], 0 offen
	buffer_load_b128 v[108:111], v108, s[24:27], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v19, v19, v162
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	buffer_load_b128 v[112:115], v112, s[24:27], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v163, v163
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v65, v65, v116 :: v_dual_add_f32 v64, v64, v117
	v_add_f32_e32 v57, v57, v124
	v_dual_add_f32 v63, v63, v118 :: v_dual_add_f32 v62, v62, v119
	v_dual_add_f32 v55, v55, v126 :: v_dual_add_f32 v60, v60, v121
	v_dual_add_f32 v53, v53, v128 :: v_dual_add_f32 v58, v58, v123
	v_dual_add_f32 v51, v51, v130 :: v_dual_add_f32 v56, v56, v125
	v_dual_add_f32 v49, v49, v132 :: v_dual_add_f32 v54, v54, v127
	v_dual_add_f32 v47, v47, v134 :: v_dual_add_f32 v52, v52, v129
	v_dual_add_f32 v45, v45, v136 :: v_dual_add_f32 v50, v50, v131
	v_dual_add_f32 v43, v43, v138 :: v_dual_add_f32 v48, v48, v133
	v_dual_add_f32 v41, v41, v140 :: v_dual_add_f32 v46, v46, v135
	v_dual_add_f32 v39, v39, v142 :: v_dual_add_f32 v44, v44, v137
	v_dual_add_f32 v37, v37, v144 :: v_dual_add_f32 v42, v42, v139
	v_dual_add_f32 v35, v35, v146 :: v_dual_add_f32 v38, v38, v143
	v_dual_add_f32 v33, v33, v148 :: v_dual_add_f32 v34, v34, v147
	v_dual_add_f32 v29, v29, v152 :: v_dual_add_f32 v32, v32, v149
	v_dual_add_f32 v25, v25, v156 :: v_dual_add_f32 v30, v30, v151
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v117, s1, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v28, v28, v153
	v_add_f32_e32 v26, v26, v155
	v_add_f32_e32 v24, v24, v157
	v_add_f32_e32 v22, v22, v159
	v_add_f32_e32 v20, v20, v161
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v116, s14, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v18, v18, v163
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v116, v[9:12] offset:32768
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v117, v[100:103]
	s_waitcnt vmcnt(2)
	ds_store_b128 v117, v[104:107] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v117, v[108:111] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v117, v[112:115] offset:12288
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v4, v84 :: v_dual_mov_b32 v1, v83
.LBB0_7:                                ; %._crit_edge
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_and_b32_e32 v3, 6, v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s31
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v3, 3, v4
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_or_b32_e32 v7, v2, v82
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v4, 16, v2
	v_xor_b32_e32 v5, 32, v2
	v_xor_b32_e32 v6, 48, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_xor_b32_e32 v8, 16, v7
	v_xor_b32_e32 v10, 32, v7
	v_xor_b32_e32 v9, 48, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v82, s12, v7
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v11, s12, v10
	v_add_nc_u32_e32 v12, s12, v8
	v_add_nc_u32_e32 v90, s12, v9
	s_mov_b32 s12, 0
	ds_load_b128 v[162:165], v82 offset:8192
	ds_load_b128 v[166:169], v82
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s19, s12
	s_mov_b32 s18, s12
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	v_dual_mov_b32 v89, s19 :: v_dual_mov_b32 v88, s18
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[146:149], v11 offset:8192
	ds_load_b128 v[150:153], v11
	ds_load_b128 v[154:157], v12 offset:8192
	ds_load_b128 v[158:161], v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v86, s16 :: v_dual_add_nc_u32 v11, s35, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v126, s35, v4
	ds_load_b128 v[122:125], v11 offset:1024
	ds_load_b128 v[106:109], v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v84, s14 :: v_dual_add_nc_u32 v127, s35, v5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[170:173], v126 offset:1024
	ds_load_b128 v[110:113], v126
	ds_load_b128 v[174:177], v127 offset:1024
	ds_load_b128 v[114:117], v127
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v83, s13 :: v_dual_add_nc_u32 v12, s35, v6
	v_mov_b32_e32 v87, s17
	v_dual_mov_b32 v85, s15 :: v_dual_mov_b32 v82, s12
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[178:181], v90 offset:8192
	ds_load_b128 v[182:185], v90
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[186:189], v12 offset:1024
	ds_load_b128 v[118:121], v12
	ds_load_b128 v[190:193], v11 offset:3072
	ds_load_b128 v[138:141], v11 offset:2048
	ds_load_b128 v[194:197], v126 offset:3072
	ds_load_b128 v[198:201], v126 offset:2048
	ds_load_b128 v[210:213], v12 offset:3072
	ds_load_b128 v[214:217], v12 offset:2048
	ds_load_b128 v[202:205], v127 offset:3072
	ds_load_b128 v[206:209], v127 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(16)
	v_wmma_i32_16x16x16_iu8 v[90:97], v[166:169], v[106:109], v[82:89] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[90:97], v[158:161], v[110:113], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_wmma_i32_16x16x16_iu8 v[90:97], v[150:153], v[114:117], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[90:97], v[182:185], v[118:121], v[90:97] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v11, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v91, v93
	v_cvt_f32_i32_e32 v12, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v92, v94
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v81, v81, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add_f32_e32 v79, v79, v91
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[98:105], v[162:165], v[106:109], v[82:89] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v11, v95
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v80, v80, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v96
	v_wmma_i32_16x16x16_iu8 v[98:105], v[154:157], v[110:113], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[166:169], v[122:125], v[82:89] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v77, v77, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v91, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[98:105], v[146:149], v[114:117], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[158:161], v[170:173], v[106:113] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v78, v78, v92
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[162:165], v[138:141], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[178:181], v[118:121], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[162:165], v[122:125], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[150:153], v[174:177], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[166:169], v[138:141], v[82:89] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[154:157], v[170:173], v[114:121] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v11, v100
	v_wmma_i32_16x16x16_iu8 v[106:113], v[182:185], v[186:189], v[106:113] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v92, v98
	v_cvt_f32_i32_e32 v93, v99
	v_wmma_i32_16x16x16_iu8 v[114:121], v[146:149], v[174:177], v[114:121] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v76, v76, v12 :: v_dual_add_f32 v71, v71, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v101
	v_cvt_f32_i32_e32 v11, v105
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[178:181], v[186:189], v[114:121] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v75, v75, v91
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v91, v102
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v74, v74, v92
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v92, v103
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v70, v70, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v106
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v72, v72, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v93, v104
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v66, v66, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v110
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[158:161], v[198:201], v[122:129] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v69, v69, v91 :: v_dual_add_f32 v68, v68, v92
	v_add_f32_e32 v67, v67, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v91, v107
	v_cvt_f32_i32_e32 v93, v109
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v65, v65, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v111
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v61, v61, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v115
	v_wmma_i32_16x16x16_iu8 v[130:137], v[154:157], v[198:201], v[130:137] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[150:153], v[206:209], v[122:129] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v92, v108
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v62, v62, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v93, v114
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v64, v64, v91
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v91, v112
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v56, v56, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v120
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v60, v60, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v116
	v_wmma_i32_16x16x16_iu8 v[138:145], v[166:169], v[190:193], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[146:149], v[206:209], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[182:185], v[214:217], v[122:129] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v63, v63, v92
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v92, v113
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v59, v59, v91
	v_add_f32_e32 v57, v57, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v91, v117
	v_cvt_f32_i32_e32 v93, v119
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v55, v55, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v121
	v_wmma_i32_16x16x16_iu8 v[138:145], v[158:161], v[194:197], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[178:181], v[214:217], v[130:137] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v54, v54, v91
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v91, v122
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v58, v58, v92
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v92, v118
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v51, v51, v11 :: v_dual_add_f32 v50, v50, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v125
	v_cvt_f32_i32_e32 v12, v126
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v52, v52, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v93, v124
	v_wmma_i32_16x16x16_iu8 v[82:89], v[162:165], v[190:193], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[150:153], v[202:205], v[138:145] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v53, v53, v92
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v92, v123
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v49, v49, v91
	v_add_f32_e32 v47, v47, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v91, v127
	v_cvt_f32_i32_e32 v93, v129
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v46, v46, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v130
	v_wmma_i32_16x16x16_iu8 v[82:89], v[154:157], v[194:197], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[182:185], v[210:213], v[138:145] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v48, v48, v92
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v92, v128
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v45, v45, v12 :: v_dual_add_f32 v42, v42, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v131
	v_cvt_f32_i32_e32 v93, v134
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v44, v44, v91
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v91, v132
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v41, v41, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v135
	v_wmma_i32_16x16x16_iu8 v[82:89], v[146:149], v[202:205], v[82:89] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v43, v43, v92
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v92, v133
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v39, v39, v91
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v91, v137
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v36, v36, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v140
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v40, v40, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v136
	v_wmma_i32_16x16x16_iu8 v[82:89], v[178:181], v[210:213], v[82:89] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v34, v34, v91
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v91, v142
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v38, v38, v92
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v92, v138
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v35, v35, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v141
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v37, v37, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v93, v139
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v33, v33, v92
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v92, v143
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v31, v31, v11 :: v_dual_add_f32 v30, v30, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v145
	v_cvt_f32_i32_e32 v12, v82
	v_cvt_f32_i32_e32 v82, v83
	v_cvt_f32_i32_e32 v83, v84
	v_cvt_f32_i32_e32 v84, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v32, v32, v93 :: v_dual_add_f32 v25, v25, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v93, v144
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v28, v28, v92 :: v_dual_add_f32 v23, v23, v83
	v_add_f32_e32 v24, v24, v82
	v_add_f32_e32 v22, v22, v84
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v87
	v_cvt_f32_i32_e32 v82, v88
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v26, v26, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v86
	v_cvt_f32_i32_e32 v83, v89
	v_cvt_f32_i32_e32 v84, v90
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v29, v29, v91
	v_add_f32_e32 v27, v27, v93
	v_dual_add_f32 v21, v21, v11 :: v_dual_add_f32 v20, v20, v12
	v_dual_add_f32 v19, v19, v82 :: v_dual_add_f32 v18, v18, v83
	v_add_f32_e32 v73, v73, v84
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v143, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s12, 0
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v4, s0, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v83, s1, v7
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v2, s0, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v143, s19 :: v_dual_add_nc_u32 v12, s1, v8
	v_dual_mov_b32 v138, s14 :: v_dual_add_nc_u32 v5, s0, v5
	v_dual_mov_b32 v142, s18 :: v_dual_add_nc_u32 v11, s1, v10
	v_mov_b32_e32 v140, s16
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[160:163], v83 offset:8192
	ds_load_b128 v[164:167], v83
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v139, s15
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[114:117], v2 offset:1024
	ds_load_b128 v[98:101], v2
	ds_load_b128 v[168:171], v5 offset:1024
	ds_load_b128 v[106:109], v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v141, s17 :: v_dual_add_nc_u32 v82, s1, v9
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[7:10], v11 offset:8192
	ds_load_b128 v[130:133], v11
	ds_load_b128 v[152:155], v12 offset:8192
	ds_load_b128 v[156:159], v12
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[172:175], v4 offset:1024
	ds_load_b128 v[110:113], v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v137, s13 :: v_dual_add_nc_u32 v6, s0, v6
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[176:179], v82 offset:8192
	ds_load_b128 v[180:183], v82
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v136, s12
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[184:187], v6 offset:1024
	ds_load_b128 v[118:121], v6
	ds_load_b128 v[188:191], v2 offset:3072
	ds_load_b128 v[144:147], v2 offset:2048
	ds_load_b128 v[192:195], v4 offset:3072
	ds_load_b128 v[196:199], v4 offset:2048
	ds_load_b128 v[200:203], v5 offset:3072
	ds_load_b128 v[204:207], v5 offset:2048
	ds_load_b128 v[208:211], v6 offset:3072
	ds_load_b128 v[212:215], v6 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(20)
	v_wmma_i32_16x16x16_iu8 v[82:89], v[164:167], v[98:101], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[160:163], v[98:101], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[164:167], v[114:117], v[136:143] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[82:89], v[156:159], v[110:113], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[152:155], v[110:113], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[98:105], v[156:159], v[172:175], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[130:133], v[106:109], v[82:89] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[90:97], v[7:10], v[106:109], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[160:163], v[114:117], v[136:143] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[160:163], v[144:147], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[180:183], v[118:121], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[176:179], v[118:121], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[164:167], v[144:147], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[164:167], v[188:191], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[160:163], v[188:191], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[152:155], v[172:175], v[106:113] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[156:159], v[196:199], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[152:155], v[196:199], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[156:159], v[192:195], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[152:155], v[192:195], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[130:133], v[168:171], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[7:10], v[168:171], v[106:113] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[130:133], v[204:207], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[7:10], v[204:207], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[130:133], v[200:203], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[7:10], v[200:203], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[180:183], v[184:187], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[176:179], v[184:187], v[106:113] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[180:183], v[212:215], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[176:179], v[212:215], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[180:183], v[208:211], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[176:179], v[208:211], v[136:143] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v11, v82
	v_cvt_f32_i32_e32 v12, v83
	v_cvt_f32_i32_e32 v82, v84
	v_cvt_f32_i32_e32 v83, v85
	v_cvt_f32_i32_e32 v84, v86
	v_cvt_f32_i32_e32 v85, v87
	v_cvt_f32_i32_e32 v86, v88
	v_cvt_f32_i32_e32 v87, v89
	v_cvt_f32_i32_e32 v88, v90
	v_cvt_f32_i32_e32 v89, v91
	v_cvt_f32_i32_e32 v90, v92
	v_cvt_f32_i32_e32 v91, v93
	v_cvt_f32_i32_e32 v92, v94
	v_cvt_f32_i32_e32 v93, v95
	v_cvt_f32_i32_e32 v94, v96
	v_cvt_f32_i32_e32 v95, v97
	v_cvt_f32_i32_e32 v96, v98
	v_cvt_f32_i32_e32 v97, v99
	v_cvt_f32_i32_e32 v98, v100
	v_cvt_f32_i32_e32 v99, v101
	v_cvt_f32_i32_e32 v100, v102
	v_cvt_f32_i32_e32 v101, v103
	v_cvt_f32_i32_e32 v102, v104
	v_cvt_f32_i32_e32 v103, v105
	v_cvt_f32_i32_e32 v104, v106
	v_cvt_f32_i32_e32 v105, v107
	v_cvt_f32_i32_e32 v106, v108
	v_cvt_f32_i32_e32 v107, v109
	v_cvt_f32_i32_e32 v108, v110
	v_cvt_f32_i32_e32 v109, v111
	v_cvt_f32_i32_e32 v110, v112
	v_cvt_f32_i32_e32 v111, v113
	v_cvt_f32_i32_e32 v112, v114
	v_cvt_f32_i32_e32 v113, v115
	v_cvt_f32_i32_e32 v114, v116
	v_cvt_f32_i32_e32 v115, v117
	v_cvt_f32_i32_e32 v116, v118
	v_cvt_f32_i32_e32 v117, v119
	v_cvt_f32_i32_e32 v118, v120
	v_cvt_f32_i32_e32 v119, v121
	v_cvt_f32_i32_e32 v120, v122
	v_cvt_f32_i32_e32 v121, v123
	v_cvt_f32_i32_e32 v122, v124
	v_cvt_f32_i32_e32 v123, v125
	v_cvt_f32_i32_e32 v124, v126
	v_cvt_f32_i32_e32 v125, v127
	v_cvt_f32_i32_e32 v126, v128
	v_cvt_f32_i32_e32 v127, v129
	v_cvt_f32_i32_e32 v128, v144
	v_cvt_f32_i32_e32 v129, v145
	v_cvt_f32_i32_e32 v130, v146
	v_cvt_f32_i32_e32 v131, v147
	v_cvt_f32_i32_e32 v132, v148
	v_cvt_f32_i32_e32 v133, v149
	v_cvt_f32_i32_e32 v134, v150
	v_cvt_f32_i32_e32 v135, v151
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
.LBB0_11:
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v2, s30, v14
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v4, s3, v0
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_and_b32 s13, s5, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 434 22 is_stmt 0              ; generate_amdgcn.py:434:22
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_dual_add_f32 v9, v79, v83 :: v_dual_lshlrev_b32 v4, 1, v4
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s12, s4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v8, v80, v82
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_or_b32_e32 v5, 32, v2
	v_or_b32_e32 v6, 64, v2
	v_or_b32_e32 v7, 0x60, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v10, v78, v84
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_clause 0x3
	buffer_load_u16 v2, v2, s[12:15], 0 offen
	buffer_load_u16 v144, v5, s[12:15], 0 offen
	buffer_load_u16 v145, v6, s[12:15], 0 offen
	buffer_load_u16 v146, v7, s[12:15], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s13, s7, 0xffff
	s_mov_b32 s12, s6
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v6, v73, v11 :: v_dual_add_f32 v83, v74, v88
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v5, v4, s[12:15], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v11, v77, v85 :: v_dual_and_b32 v4, 0xf0, v0
	v_dual_add_f32 v7, v81, v12 :: v_dual_add_f32 v12, v76, v86
	v_add_f32_e32 v82, v75, v87
	v_dual_add_f32 v84, v72, v89 :: v_dual_add_f32 v89, v67, v94
	v_dual_add_f32 v85, v71, v90 :: v_dual_add_f32 v86, v70, v91
	v_dual_add_f32 v87, v69, v92 :: v_dual_add_f32 v88, v68, v93
	v_dual_add_f32 v90, v66, v95 :: v_dual_add_f32 v91, v65, v96
	v_dual_add_f32 v92, v64, v97 :: v_dual_add_f32 v93, v63, v98
	v_dual_add_f32 v94, v62, v99 :: v_dual_add_f32 v95, v61, v100
	v_dual_add_f32 v96, v60, v101 :: v_dual_add_f32 v97, v59, v102
	v_dual_add_f32 v98, v58, v103 :: v_dual_add_f32 v99, v57, v104
	v_dual_add_f32 v100, v56, v105 :: v_dual_add_f32 v101, v55, v106
	v_add_f32_e32 v102, v54, v107
	v_dual_add_f32 v104, v52, v109 :: v_dual_add_f32 v105, v51, v110
	v_dual_add_f32 v106, v50, v111 :: v_dual_add_f32 v107, v49, v112
	v_dual_add_f32 v109, v47, v114 :: v_dual_add_f32 v110, v46, v115
	v_dual_add_f32 v111, v45, v116 :: v_dual_add_f32 v112, v44, v117
	v_dual_add_f32 v114, v42, v119 :: v_dual_add_f32 v115, v41, v120
	v_dual_add_f32 v116, v40, v121 :: v_dual_add_f32 v119, v37, v124
	v_dual_add_f32 v120, v36, v125 :: v_dual_add_f32 v121, v35, v126
	v_dual_add_f32 v124, v32, v129 :: v_dual_add_f32 v125, v31, v130
	v_dual_add_f32 v126, v30, v131 :: v_dual_add_f32 v129, v27, v134
	v_dual_add_f32 v130, v26, v135 :: v_dual_and_b32 v17, 28, v17
	v_dual_add_f32 v134, v22, v139 :: v_dual_and_b32 v1, 32, v1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v73, v73, v6, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v6, v4, 2, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v103, v53, v108 :: v_dual_add_f32 v108, v48, v113
	v_add_f32_e32 v117, v39, v122
	v_dual_add_f32 v113, v43, v118 :: v_dual_add_f32 v118, v38, v123
	v_dual_add_f32 v123, v33, v128 :: v_dual_add_f32 v128, v28, v133
	v_add_f32_e32 v133, v23, v138
	v_dual_add_f32 v135, v21, v140 :: v_dual_add_f32 v138, v18, v143
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_add3_u32 v1, v6, v1, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v30, v126, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v30, v4, 1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v81, v81, v7, s2
	v_cndmask_b32_e64 v80, v80, v8, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v79, v79, v9, s2
	v_cndmask_b32_e64 v78, v78, v10, s2
	v_cndmask_b32_e64 v77, v77, v11, s2
	v_cndmask_b32_e64 v76, v76, v12, s2
	v_cndmask_b32_e64 v68, v68, v88, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v122, v34, v127 :: v_dual_add_f32 v131, v25, v136
	v_add_f32_e32 v127, v29, v132
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v49, v49, v107, s2
	v_cndmask_b32_e64 v75, v75, v82, s2
	v_cndmask_b32_e64 v74, v74, v83, s2
	v_cndmask_b32_e64 v72, v72, v84, s2
	v_cndmask_b32_e64 v71, v71, v85, s2
	v_cndmask_b32_e64 v70, v70, v86, s2
	v_cndmask_b32_e64 v69, v69, v87, s2
	v_cndmask_b32_e64 v65, v65, v91, s2
	v_cndmask_b32_e64 v82, v31, v125, s2
	v_cndmask_b32_e64 v84, v27, v129, s2
	v_cndmask_b32_e64 v85, v26, v130, s2
	v_cndmask_b32_e64 v86, v25, v131, s2
	v_cndmask_b32_e64 v67, v67, v89, s2
	v_cndmask_b32_e64 v66, v66, v90, s2
	v_cndmask_b32_e64 v64, v64, v92, s2
	v_cndmask_b32_e64 v63, v63, v93, s2
	v_cndmask_b32_e64 v62, v62, v94, s2
	v_cndmask_b32_e64 v61, v61, v95, s2
	v_cndmask_b32_e64 v60, v60, v96, s2
	v_cndmask_b32_e64 v59, v59, v97, s2
	v_cndmask_b32_e64 v57, v57, v99, s2
	v_cndmask_b32_e64 v56, v56, v100, s2
	v_cndmask_b32_e64 v55, v55, v101, s2
	v_cndmask_b32_e64 v54, v54, v102, s2
	v_cndmask_b32_e64 v53, v53, v103, s2
	v_cndmask_b32_e64 v52, v52, v104, s2
	v_cndmask_b32_e64 v51, v51, v105, s2
	v_cndmask_b32_e64 v58, v58, v98, s2
	v_cndmask_b32_e64 v50, v50, v106, s2
	v_cndmask_b32_e64 v48, v48, v108, s2
	v_cndmask_b32_e64 v47, v47, v109, s2
	v_cndmask_b32_e64 v46, v46, v110, s2
	v_cndmask_b32_e64 v45, v45, v111, s2
	v_cndmask_b32_e64 v44, v44, v112, s2
	v_cndmask_b32_e64 v43, v43, v113, s2
	v_cndmask_b32_e64 v42, v42, v114, s2
	v_cndmask_b32_e64 v41, v41, v115, s2
	v_cndmask_b32_e64 v40, v40, v116, s2
	v_cndmask_b32_e64 v39, v39, v117, s2
	v_cndmask_b32_e64 v38, v38, v118, s2
	v_cndmask_b32_e64 v37, v37, v119, s2
	v_cndmask_b32_e64 v36, v36, v120, s2
	v_cndmask_b32_e64 v35, v35, v121, s2
	v_cndmask_b32_e64 v34, v34, v122, s2
	v_cndmask_b32_e64 v33, v33, v123, s2
	v_cndmask_b32_e64 v32, v32, v124, s2
	v_cndmask_b32_e64 v23, v23, v133, s2
	v_cndmask_b32_e64 v22, v22, v134, s2
	v_cndmask_b32_e64 v21, v21, v135, s2
	s_mov_b32 s0, 0x76543210
.Ltmp16:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v3, 10, v3
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s13, s9, 0xffff
	s_mov_b32 s12, s8
.Ltmp17:
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v18, v18, v138, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_store_b32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v30
	ds_load_b128 v[9:12], v30 offset:16
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v88, 16, v144
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v29, v127, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v107, v6, v88 :: v_dual_add_f32 v132, v24, v137
	v_mul_f32_e32 v91, v5, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v137, v19, v142
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v83, v28, v128, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v136, v20, v141 :: v_dual_mul_f32 v93, v7, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v87, v24, v132, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_load_b128 v[24:27], v30 offset:512
	ds_load_b128 v[28:31], v30 offset:528
	v_dual_mul_f32 v92, v6, v2 :: v_dual_lshlrev_b32 v89, 16, v145
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v95, v9, v2
	v_dual_mul_f32 v109, v8, v88 :: v_dual_lshlrev_b32 v90, 16, v146
	v_dual_mul_f32 v94, v8, v2 :: v_dual_mul_f32 v111, v10, v88
	v_dual_mul_f32 v96, v10, v2 :: v_dual_mul_f32 v113, v12, v88
	v_dual_mul_f32 v97, v11, v2 :: v_dual_mul_f32 v106, v5, v88
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v136, s2
	v_cndmask_b32_e64 v19, v19, v137, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v98, v12, v2
	v_mul_f32_e32 v108, v7, v88
	v_mul_f32_e32 v110, v9, v88
	v_dual_mul_f32 v112, v11, v88 :: v_dual_mul_f32 v121, v5, v89
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v99, v24, v2
	v_dual_mul_f32 v100, v25, v2 :: v_dual_mul_f32 v117, v27, v88
	v_mul_f32_e32 v101, v26, v2
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v102, v27, v2 :: v_dual_mul_f32 v119, v29, v88
	v_mul_f32_e32 v103, v28, v2
	v_dual_mul_f32 v104, v29, v2 :: v_dual_mul_f32 v123, v7, v89
	v_dual_mul_f32 v105, v30, v2 :: v_dual_mul_f32 v114, v24, v88
	v_dual_mul_f32 v2, v31, v2 :: v_dual_mul_f32 v115, v25, v88
	v_dual_mul_f32 v116, v26, v88 :: v_dual_mul_f32 v125, v9, v89
	v_dual_mul_f32 v118, v28, v88 :: v_dual_mul_f32 v127, v11, v89
	v_dual_mul_f32 v120, v30, v88 :: v_dual_mul_f32 v129, v24, v89
	v_dual_mul_f32 v88, v31, v88 :: v_dual_mul_f32 v131, v26, v89
	v_dual_mul_f32 v122, v6, v89 :: v_dual_mul_f32 v5, v5, v90
	v_dual_mul_f32 v124, v8, v89 :: v_dual_mul_f32 v7, v7, v90
	v_dual_mul_f32 v126, v10, v89 :: v_dual_mul_f32 v9, v9, v90
	v_dual_mul_f32 v128, v12, v89 :: v_dual_mul_f32 v11, v11, v90
	v_mul_f32_e32 v130, v25, v89
	v_dual_mul_f32 v132, v27, v89 :: v_dual_mul_f32 v25, v25, v90
	v_dual_mul_f32 v133, v28, v89 :: v_dual_mul_f32 v6, v6, v90
	v_mul_f32_e32 v134, v29, v89
	v_dual_mul_f32 v135, v30, v89 :: v_dual_mul_f32 v8, v8, v90
	v_dual_mul_f32 v89, v31, v89 :: v_dual_mul_f32 v10, v10, v90
	v_dual_mul_f32 v12, v12, v90 :: v_dual_mul_f32 v73, v73, v91
	v_dual_mul_f32 v24, v24, v90 :: v_dual_mul_f32 v81, v81, v92
	v_dual_mul_f32 v26, v26, v90 :: v_dual_mul_f32 v77, v77, v96
	v_mul_f32_e32 v27, v27, v90
	v_dual_mul_f32 v28, v28, v90 :: v_dual_mul_f32 v71, v71, v101
	v_dual_mul_f32 v29, v29, v90 :: v_dual_mul_f32 v80, v80, v93
	v_dual_mul_f32 v30, v30, v90 :: v_dual_mul_f32 v69, v69, v103
	v_mul_f32_e32 v31, v31, v90
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v79, v79, v94 :: v_dual_mul_f32 v78, v78, v95
	v_dual_mul_f32 v76, v76, v97 :: v_dual_mul_f32 v75, v75, v98
	v_dual_mul_f32 v74, v74, v99 :: v_dual_mul_f32 v67, v67, v105
	v_dual_mul_f32 v72, v72, v100 :: v_dual_mul_f32 v65, v65, v106
	v_dual_mul_f32 v70, v70, v102 :: v_dual_mul_f32 v63, v63, v108
	v_dual_mul_f32 v68, v68, v104 :: v_dual_mul_f32 v61, v61, v110
	v_dual_mul_f32 v2, v66, v2 :: v_dual_mul_f32 v59, v59, v112
	v_dual_mul_f32 v64, v64, v107 :: v_dual_mul_f32 v57, v57, v114
	v_dual_mul_f32 v62, v62, v109 :: v_dual_mul_f32 v55, v55, v116
	v_dual_mul_f32 v60, v60, v111 :: v_dual_mul_f32 v53, v53, v118
	v_dual_mul_f32 v58, v58, v113 :: v_dual_mul_f32 v51, v51, v120
	v_dual_mul_f32 v56, v56, v115 :: v_dual_mul_f32 v49, v49, v121
	v_dual_mul_f32 v54, v54, v117 :: v_dual_mul_f32 v47, v47, v123
	v_dual_mul_f32 v52, v52, v119 :: v_dual_mul_f32 v45, v45, v125
	v_dual_mul_f32 v50, v50, v88 :: v_dual_mul_f32 v43, v43, v127
	v_dual_mul_f32 v48, v48, v122 :: v_dual_mul_f32 v41, v41, v129
	v_dual_mul_f32 v46, v46, v124 :: v_dual_mul_f32 v39, v39, v131
	v_dual_mul_f32 v44, v44, v126 :: v_dual_mul_f32 v37, v37, v133
	v_dual_mul_f32 v42, v42, v128 :: v_dual_mul_f32 v35, v35, v135
	v_dual_mul_f32 v40, v40, v130 :: v_dual_mul_f32 v5, v33, v5
	v_dual_mul_f32 v38, v38, v132 :: v_dual_mul_f32 v1, v1, v9
	v_dual_mul_f32 v36, v36, v134 :: v_dual_mul_f32 v7, v82, v7
	v_dual_mul_f32 v34, v34, v89 :: v_dual_mul_f32 v9, v83, v10
	v_mul_f32_e32 v6, v32, v6
	v_dual_mul_f32 v8, v17, v8 :: v_dual_mul_f32 v17, v87, v25
	v_dual_mul_f32 v10, v84, v11 :: v_dual_mul_f32 v23, v23, v26
	v_mul_f32_e32 v11, v85, v12
	v_dual_mul_f32 v12, v86, v24 :: v_dual_mul_f32 v19, v19, v30
	v_dual_mul_f32 v22, v22, v27 :: v_dual_mul_f32 v21, v21, v28
	v_dual_mul_f32 v20, v20, v29 :: v_dual_max_f32 v27, 0, v79
	v_dual_mul_f32 v18, v18, v31 :: v_dual_max_f32 v25, 0, v81
	.loc	1 443 15 is_stmt 1              ; generate_amdgcn.py:443:15
	v_dual_max_f32 v24, 0, v73 :: v_dual_max_f32 v31, 0, v75
	v_dual_max_f32 v26, 0, v80 :: v_dual_max_f32 v29, 0, v77
	v_dual_max_f32 v28, 0, v78 :: v_dual_max_f32 v33, 0, v72
	v_dual_max_f32 v30, 0, v76 :: v_dual_max_f32 v69, 0, v69
	v_dual_max_f32 v32, 0, v74 :: v_dual_max_f32 v67, 0, v67
	v_dual_max_f32 v66, 0, v71 :: v_dual_max_f32 v71, 0, v65
	v_dual_max_f32 v70, 0, v70 :: v_dual_max_f32 v63, 0, v63
	v_dual_max_f32 v68, 0, v68 :: v_dual_max_f32 v75, 0, v61
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v59, 0, v59
	v_dual_max_f32 v64, 0, v64 :: v_dual_max_f32 v77, 0, v57
	v_dual_max_f32 v72, 0, v62 :: v_dual_max_f32 v55, 0, v55
	v_dual_max_f32 v60, 0, v60 :: v_dual_max_f32 v81, 0, v53
	v_dual_max_f32 v58, 0, v58 :: v_dual_max_f32 v51, 0, v51
	v_dual_max_f32 v80, 0, v56 :: v_dual_max_f32 v83, 0, v49
	v_dual_max_f32 v54, 0, v54 :: v_dual_max_f32 v47, 0, v47
	v_dual_max_f32 v82, 0, v52 :: v_dual_max_f32 v85, 0, v46
	v_dual_max_f32 v50, 0, v50 :: v_dual_max_f32 v87, 0, v44
	v_dual_max_f32 v84, 0, v48 :: v_dual_max_f32 v89, 0, v42
	v_dual_max_f32 v86, 0, v45 :: v_dual_max_f32 v91, 0, v40
	v_dual_max_f32 v88, 0, v43 :: v_dual_max_f32 v93, 0, v38
	v_dual_max_f32 v90, 0, v41 :: v_dual_max_f32 v95, 0, v36
	v_dual_max_f32 v92, 0, v39 :: v_dual_max_f32 v97, 0, v34
	v_dual_max_f32 v94, 0, v37 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v96, 0, v35 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v17, 0, v17
	v_dual_max_f32 v102, 0, v19 :: v_dual_mul_f32 v79, v24, v24
	v_dual_max_f32 v18, 0, v18 :: v_dual_mul_f32 v41, v27, v27
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v78, v25, v25 :: v_dual_mul_f32 v49, v31, v31
	v_dual_mul_f32 v40, v26, v26 :: v_dual_mul_f32 v45, v29, v29
	v_dual_mul_f32 v44, v28, v28 :: v_dual_mul_f32 v53, v33, v33
	v_dual_mul_f32 v48, v30, v30 :: v_dual_mul_f32 v61, v69, v69
	v_dual_mul_f32 v52, v32, v32 :: v_dual_mul_f32 v57, v70, v70
	v_dual_mul_f32 v56, v66, v66 :: v_dual_mul_f32 v65, v67, v67
	v_dual_mul_f32 v62, v68, v68 :: v_dual_mul_f32 v69, v71, v71
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v98, 0, v23 :: v_dual_max_f32 v99, 0, v22
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v66, v2, v2 :: v_dual_mul_f32 v73, v63, v63
	v_dual_mul_f32 v70, v64, v64 :: v_dual_mul_f32 v71, v59, v59
	v_dual_mul_f32 v74, v72, v72 :: v_dual_mul_f32 v67, v77, v77
	v_dual_mul_f32 v76, v75, v75 :: v_dual_mul_f32 v75, v60, v60
	v_dual_mul_f32 v72, v58, v58 :: v_dual_mul_f32 v63, v55, v55
	v_dual_mul_f32 v68, v80, v80 :: v_dual_mul_f32 v59, v82, v82
	v_dual_mul_f32 v64, v54, v54 :: v_dual_mul_f32 v55, v51, v51
	v_dual_mul_f32 v58, v81, v81 :: v_dual_mul_f32 v51, v84, v84
	v_mul_f32_e32 v54, v50, v50
	v_dual_mul_f32 v50, v83, v83 :: v_dual_mul_f32 v39, v89, v89
	v_dual_mul_f32 v46, v47, v47 :: v_dual_mul_f32 v37, v90, v90
	v_dual_mul_f32 v47, v85, v85 :: v_dual_mul_f32 v42, v86, v86
	v_dual_mul_f32 v43, v87, v87 :: v_dual_mul_f32 v38, v88, v88
	v_dual_mul_f32 v35, v93, v93 :: v_dual_mul_f32 v36, v91, v91
	v_dual_mul_f32 v33, v94, v94 :: v_dual_mul_f32 v34, v92, v92
	v_dual_mul_f32 v31, v97, v97 :: v_dual_mul_f32 v32, v95, v95
	v_dual_mul_f32 v29, v5, v5 :: v_dual_mul_f32 v30, v96, v96
	v_dual_mul_f32 v27, v6, v6 :: v_dual_mul_f32 v28, v7, v7
	v_dual_mul_f32 v25, v1, v1 :: v_dual_mul_f32 v22, v12, v12
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v79, v78
	v_max3_f32 v2, v41, v44, v45
	v_max3_f32 v5, v53, v56, v57
	v_max3_f32 v6, v61, v62, v65
.Ltmp19:
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v100, 0, v21 :: v_dual_max_f32 v101, 0, v20
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v24, v9, v9 :: v_dual_mul_f32 v19, v98, v98
	v_dual_mul_f32 v20, v10, v10 :: v_dual_mul_f32 v23, v17, v17
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v1, v1, v40, v2
	v_max3_f32 v2, v5, v6, v66
	v_dual_max_f32 v5, v69, v70 :: v_dual_max_f32 v60, v50, v51
	v_max3_f32 v6, v74, v76, v75
	v_max3_f32 v9, v68, v63, v64
	v_max3_f32 v17, v58, v59, v55
	v_max3_f32 v77, v47, v42, v43
	v_max3_f32 v80, v36, v34, v35
	v_max3_f32 v81, v33, v32, v30
.Ltmp21:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v26, v8, v8 :: v_dual_mul_f32 v21, v11, v11
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v7, v48, v49, v52
	v_max3_f32 v8, v71, v72, v67
	v_max3_f32 v5, v5, v73, v6
	v_max3_f32 v6, v9, v17, v54
	v_max3_f32 v9, v38, v39, v37
	v_max3_f32 v60, v60, v46, v77
	v_max3_f32 v77, v80, v81, v31
	v_max3_f32 v1, v1, v7, v2
	v_max3_f32 v2, v5, v8, v6
.Ltmp23:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v10, v99, v99 :: v_dual_mul_f32 v11, v100, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v5, v60, v9, v77
.Ltmp25:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v12, v101, v101 :: v_dual_mul_f32 v17, v102, v102
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v7, v26, v25, v24
	v_max3_f32 v9, v23, v19, v10
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v80, v5, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v6, v29, v27
	v_max3_f32 v60, v11, v12, v17
	v_max3_f32 v8, v20, v21, v22
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v77, v2, s0, 0xfedcba98 op_sel:[1,0]
	s_waitcnt lgkmcnt(0)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v6, v6, v28, v7
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v7, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp32:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v18, v18, v18
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v7, v7, v7
	v_max3_f32 v9, v9, v60, v18
	v_dual_max_f32 v60, v77, v77 :: v_dual_max_f32 v77, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v83, v6, v8, v9
	v_dual_max_f32 v80, v1, v7 :: v_dual_and_b32 v9, 0x60, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v81, v2, v60 :: v_dual_max_f32 v82, v5, v77
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v7, 0x80, v0
	v_permlanex16_b32 v1, v83, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v2, 4, v0
	v_lshl_add_u32 v5, v15, 9, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_lshlrev_b32 v8, 1, v7
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v6, 5, v15
	v_and_b32_e32 v15, 8, v0
	v_lshl_add_u32 v5, v2, 2, v5
	v_lshrrev_b32_e32 v77, 3, v7
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v83, v83, v1
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_or_b32 v16, 0x680, v16, v6
	v_xor_b32_e32 v60, v6, v9
	v_lshl_add_u32 v5, v15, 4, v5
	v_lshl_add_u32 v84, v2, 6, 0
	v_add_nc_u32_e32 v7, 0, v7
	v_xor_b32_e32 v16, v16, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v5, v8, v60
	v_add3_u32 v5, v84, v77, v16
	ds_store_b128 v1, v[80:83]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[80:83], v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v1, v80
	v_dual_mov_b32 v5, v81 :: v_dual_max_f32 v60, v80, v80
	v_dual_mov_b32 v16, v82 :: v_dual_max_f32 v77, v81, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v80, v83, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v83, v83 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v1, v1
	v_max_f32_e32 v5, v5, v5
	v_dual_max_f32 v16, v16, v16 :: v_dual_lshlrev_b32 v15, 3, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v1, v60, v1 :: v_dual_max_f32 v60, v82, v82
	v_max_f32_e32 v5, v77, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v77, v83, v83 :: v_dual_max_f32 v16, v60, v16
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v82, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v81, v1 :: v_dual_max_f32 v60, v80, v77
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v77, v16
	v_mov_b32_e32 v80, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v82, v82, v82
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v81, v81, v81
	v_dual_max_f32 v77, v77, v77 :: v_dual_max_f32 v80, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v1, v1, v81
	v_dual_max_f32 v5, v5, v82 :: v_dual_max_f32 v16, v16, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v60, v60, v80 :: v_dual_mov_b32 v81, v1
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v82, v5 :: v_dual_mov_b32 v77, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v83, v60
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v80, v81, v81 :: v_dual_max_f32 v81, v82, v82
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v83, v83 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v80, v1, v80
	v_max_f32_e32 v1, v77, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v81, v5, v81
	v_max_f32_e32 v5, v83, v83
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v77, 1, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v82, v16, v1 :: v_dual_lshlrev_b32 v1, 5, v2
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add_nc_u32_e32 v2, 0, v13
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v83, v60, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v5, v7, v77, v15
	v_add3_u32 v1, v2, v1, v15
	ds_store_b128 v5, v[80:83]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[80:83], v1
.Ltmp56:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_max_f32_e32 v1, v80, v80
	v_dual_max_f32 v13, v82, v82 :: v_dual_max_f32 v80, v81, v81
	v_max_f32_e32 v81, v83, v83
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v83.h, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_max_f32_e32 v1, 0x2b8cbccc, v1
	v_max_f32_e32 v13, 0x2b8cbccc, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v86.h, v83.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v2, null, 0x40e00000, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v16, null, 0x40e00000, 0x40e00000, v13
	v_rcp_f32_e32 v5, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v77, v16
	v_fma_f32 v7, -v2, v5, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v5, v7, v5
	v_div_scale_f32 v7, vcc_lo, v1, 0x40e00000, v1
	v_mul_f32_e32 v15, v7, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v2, v15, v7
	v_dual_fmac_f32 v15, v60, v5 :: v_dual_max_f32 v60, 0x2b8cbccc, v80
	v_max_f32_e32 v80, 0x2b8cbccc, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v2, -v2, v15, v7
	v_fma_f32 v7, -v16, v77, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v81, null, 0x40e00000, 0x40e00000, v60
	v_div_fmas_f32 v2, v2, v5, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v77, v7, v77
	v_rcp_f32_e32 v7, v81
	v_div_scale_f32 v15, null, 0x40e00000, 0x40e00000, v80
	v_div_scale_f32 v5, vcc_lo, v13, 0x40e00000, v13
	v_div_fixup_f32 v1, v2, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v82, v15
	v_mul_f32_e32 v2, v5, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v84, -v81, v7, 1.0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v86.l, v1.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v85, -v16, v2, v5
	v_fmac_f32_e32 v7, v84, v7
	v_div_scale_f32 v84, s0, v60, 0x40e00000, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v15, v82, 1.0
	v_dual_fmac_f32 v2, v85, v77 :: v_dual_and_b32 v85, 1, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v86, v84, v7
	v_fmac_f32_e32 v82, v87, v82
	v_div_scale_f32 v87, s1, v80, 0x40e00000, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v16, -v16, v2, v5
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v5, v1, v85, 0x7fff
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v1, -v81, v86, v84
	v_mul_f32_e32 v85, v87, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v2, v16, v77, v2
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v88, 0xffff0000, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v86, v1, v7
	v_fma_f32 v1, -v15, v85, v87
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v2, v2, 0x40e00000, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v16, null, v88, v88, v79
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v13, -v81, v86, v84
	v_fmac_f32_e32 v85, v1, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v83.l, v2.h
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v81, v16
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v77.h, v83.h
	.loc	1 76 14 is_stmt 0               ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v1, v13, v7, v86
	v_fma_f32 v7, -v15, v85, v87
	s_mov_b32 vcc_lo, s1
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v87, null, v88, v88, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v13, v1, 0x40e00000, v60
	v_div_fmas_f32 v1, v7, v82, v85
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v82, null, v88, v88, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v15, -v16, v81, 1.0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v7, 1, v83
	.loc	1 76 14 is_stmt 0               ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v60, v1, 0x40e00000, v80
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v80, v82
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v77.l, v13.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v81, v15, v81
	v_div_scale_f32 v15, vcc_lo, v79, v88, v79
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v1, v2, v7, 0x7fff
	v_mov_b16_e32 v83.l, v60.h
	v_and_b32_e32 v2, 1, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v84, v15, v81
	v_div_scale_f32 v85, null, v88, v88, v40
	v_fma_f32 v77, -v82, v80, 1.0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v83, 1, v83
	v_add3_u32 v7, v13, v2, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v13, -v16, v84, v15
	v_rcp_f32_e32 v86, v85
	v_fmac_f32_e32 v80, v77, v80
	v_div_scale_f32 v89, s0, v78, v88, v78
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v2, v60, v83, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v84, v13, v81
	v_rcp_f32_e32 v83, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v90, v89, v80
	v_div_scale_f32 v93, null, v88, v88, v44
	v_fma_f32 v91, -v85, v86, 1.0
	v_fma_f32 v15, -v16, v84, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v16, -v82, v90, v89
	v_div_scale_f32 v94, null, v88, v88, v45
	v_fmac_f32_e32 v86, v91, v86
	v_div_scale_f32 v91, s1, v40, v88, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v92, -v87, v83, 1.0
	v_fmac_f32_e32 v90, v16, v80
	v_div_fmas_f32 v15, v15, v81, v84
	v_mul_f32_e32 v81, v91, v86
	v_rcp_f32_e32 v84, v93
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v92, s2, v41, v88, v41
	v_fma_f32 v16, -v82, v90, v89
	v_rcp_f32_e32 v89, v94
	v_div_fixup_f32 v15, v15, v88, v79
	v_fma_f32 v79, -v85, v81, v91
	v_mul_f32_e32 v82, v92, v83
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v93, v84, 1.0
	v_div_fmas_f32 v16, v16, v80, v90
	v_fmac_f32_e32 v81, v79, v86
	v_fma_f32 v79, -v87, v82, v92
	v_div_scale_f32 v80, s0, v44, v88, v44
	v_fma_f32 v90, -v94, v89, 1.0
	v_fmac_f32_e32 v84, v95, v84
	v_div_fixup_f32 v16, v16, v88, v78
	v_fma_f32 v78, -v85, v81, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v82, v79, v83 :: v_dual_fmac_f32 v89, v90, v89
	v_div_scale_f32 v90, null, v88, v88, v48
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v79, v80, v84
	v_div_scale_f32 v85, s3, v45, v88, v45
	v_div_fmas_f32 v78, v78, v86, v81
	v_fma_f32 v81, -v87, v82, v92
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v92, null, v88, v88, v49
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v86, -v93, v79, v80
	v_mul_f32_e32 v91, v85, v89
	v_div_fmas_f32 v81, v81, v83, v82
	v_rcp_f32_e32 v82, v92
	v_div_fixup_f32 v40, v78, v88, v40
	v_fmac_f32_e32 v79, v86, v84
	v_fma_f32 v83, -v94, v91, v85
	v_fma_f32 v86, -v90, v87, 1.0
	v_div_fixup_f32 v41, v81, v88, v41
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v78, -v93, v79, v80
	v_fmac_f32_e32 v91, v83, v89
	v_fmac_f32_e32 v87, v86, v87
	v_div_scale_f32 v80, s1, v48, v88, v48
	v_fma_f32 v81, -v92, v82, 1.0
	v_div_scale_f32 v83, null, v88, v88, v52
	v_div_fmas_f32 v78, v78, v84, v79
	v_fma_f32 v79, -v94, v91, v85
	v_mul_f32_e32 v84, v80, v87
	v_fmac_f32_e32 v82, v81, v82
	v_rcp_f32_e32 v81, v83
	v_div_scale_f32 v86, null, v88, v88, v53
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v85, s0, v49, v88, v49
	v_div_fmas_f32 v79, v79, v89, v91
	v_fma_f32 v89, -v90, v84, v80
	v_rcp_f32_e32 v94, v86
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v13, 0xffff0000, v2
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v91, v85, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v83, v81, 1.0
	v_fmac_f32_e32 v84, v89, v87
	v_div_scale_f32 v89, null, v88, v88, v56
	v_div_fixup_f32 v44, v78, v88, v44
	v_div_fixup_f32 v45, v79, v88, v45
	v_fma_f32 v78, -v92, v91, v85
	v_fmac_f32_e32 v81, v93, v81
	v_div_scale_f32 v79, s2, v52, v88, v52
	v_fma_f32 v93, -v86, v94, 1.0
	v_fma_f32 v80, -v90, v84, v80
	v_rcp_f32_e32 v90, v89
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v77, 0xffff0000, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v91, v78, v82 :: v_dual_mul_f32 v78, v79, v81
	v_fmac_f32_e32 v94, v93, v94
	v_div_scale_f32 v93, s3, v53, v88, v53
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v95, null, v88, v88, v57
	v_div_fmas_f32 v80, v80, v87, v84
	v_fma_f32 v84, -v92, v91, v85
	v_fma_f32 v85, -v83, v78, v79
	v_mul_f32_e32 v87, v93, v94
	v_fma_f32 v92, -v89, v90, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v48, v80, v88, v48
	v_div_fmas_f32 v82, v84, v82, v91
	v_fmac_f32_e32 v78, v85, v81
	v_rcp_f32_e32 v84, v95
	v_fma_f32 v85, -v86, v87, v93
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v91, s0, v56, v88, v56
	v_fma_f32 v79, -v83, v78, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v85, v94
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v80, v91, v90
	v_div_fixup_f32 v49, v82, v88, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v82, -v95, v84, 1.0
	v_div_scale_f32 v83, null, v88, v88, v61
	v_div_fmas_f32 v78, v79, v81, v78
	v_fma_f32 v79, -v86, v87, v93
	v_fma_f32 v81, -v89, v80, v91
	v_div_scale_f32 v86, null, v88, v88, v62
	v_fmac_f32_e32 v84, v82, v84
	v_rcp_f32_e32 v82, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v81, v90
	v_rcp_f32_e32 v81, v86
	v_div_scale_f32 v85, s1, v57, v88, v57
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v52, v78, v88, v52
	v_div_fmas_f32 v79, v79, v94, v87
	v_mul_f32_e32 v87, v85, v84
	v_fma_f32 v78, -v89, v80, v91
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v92, -v83, v82, 1.0
	v_div_scale_f32 v89, s2, v61, v88, v61
	v_fma_f32 v91, -v86, v81, 1.0
	v_div_fixup_f32 v53, v79, v88, v53
	v_fma_f32 v79, -v95, v87, v85
	v_fmac_f32_e32 v82, v92, v82
	v_div_scale_f32 v92, null, v88, v88, v65
	v_fmac_f32_e32 v81, v91, v81
	v_div_scale_f32 v91, null, v88, v88, v66
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v87, v79, v84
	v_div_fmas_f32 v78, v78, v90, v80
	v_mul_f32_e32 v79, v89, v82
	v_rcp_f32_e32 v80, v92
	v_div_scale_f32 v90, s0, v62, v88, v62
	v_rcp_f32_e32 v94, v91
	v_div_fixup_f32 v56, v78, v88, v56
	v_fma_f32 v78, -v95, v87, v85
	v_fma_f32 v85, -v83, v79, v89
	v_mul_f32_e32 v93, v90, v81
	s_mov_b32 vcc_lo, s1
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v60, 0xffff0000, v1
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v95, -v92, v80, 1.0
	v_div_fmas_f32 v78, v78, v84, v87
	v_fmac_f32_e32 v79, v85, v82
	v_fma_f32 v84, -v86, v93, v90
	v_fma_f32 v87, -v91, v94, 1.0
	v_fmac_f32_e32 v80, v95, v80
	v_div_scale_f32 v85, s1, v65, v88, v65
	v_div_fixup_f32 v57, v78, v88, v57
	v_fma_f32 v78, -v83, v79, v89
	v_dual_fmac_f32 v93, v84, v81 :: v_dual_fmac_f32 v94, v87, v94
	v_div_scale_f32 v87, null, v77, v77, v69
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v83, v85, v80
	v_div_scale_f32 v84, s3, v66, v88, v66
	v_div_fmas_f32 v78, v78, v82, v79
	v_fma_f32 v79, -v86, v93, v90
	v_rcp_f32_e32 v86, v87
	v_div_scale_f32 v90, null, v77, v77, v70
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v82, -v92, v83, v85
	v_mul_f32_e32 v89, v84, v94
	v_div_fmas_f32 v79, v79, v81, v93
	v_rcp_f32_e32 v81, v90
	v_div_fixup_f32 v61, v78, v88, v61
	v_fmac_f32_e32 v83, v82, v80
	v_fma_f32 v82, -v91, v89, v84
	v_fma_f32 v93, -v87, v86, 1.0
	v_div_fixup_f32 v62, v79, v88, v62
	v_div_scale_f32 v79, s0, v69, v77, v69
	v_fma_f32 v78, -v92, v83, v85
	v_fmac_f32_e32 v89, v82, v94
	v_fmac_f32_e32 v86, v93, v86
	v_fma_f32 v82, -v90, v81, 1.0
	v_div_scale_f32 v85, null, v77, v77, v73
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v78, v78, v80, v83
	v_fma_f32 v80, -v91, v89, v84
	v_mul_f32_e32 v83, v79, v86
	v_fmac_f32_e32 v81, v82, v81
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v84, s1, v70, v77, v70
	v_div_scale_f32 v91, null, v77, v77, v74
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v92, v84, v81
	v_div_fmas_f32 v80, v80, v94, v89
	v_fma_f32 v89, -v87, v83, v79
	v_rcp_f32_e32 v94, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v85, v82, 1.0
	v_div_fixup_f32 v65, v78, v88, v65
	v_div_fixup_f32 v66, v80, v88, v66
	v_fmac_f32_e32 v83, v89, v86
	v_fma_f32 v78, -v90, v92, v84
	v_div_scale_f32 v88, null, v77, v77, v76
	v_fmac_f32_e32 v82, v93, v82
	v_div_scale_f32 v80, s2, v73, v77, v73
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v91, v94, 1.0
	v_fma_f32 v79, -v87, v83, v79
	v_fmac_f32_e32 v92, v78, v81
	v_rcp_f32_e32 v87, v88
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v78, v80, v82
	v_fmac_f32_e32 v94, v89, v94
	v_div_scale_f32 v89, s3, v74, v77, v74
	v_div_fmas_f32 v79, v79, v86, v83
	v_fma_f32 v83, -v90, v92, v84
	v_div_scale_f32 v93, null, v77, v77, v75
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v84, -v85, v78, v80
	v_mul_f32_e32 v86, v89, v94
	v_fma_f32 v90, -v88, v87, 1.0
	v_div_fmas_f32 v81, v83, v81, v92
	v_rcp_f32_e32 v83, v93
	v_fmac_f32_e32 v78, v84, v82
	v_fma_f32 v84, -v91, v86, v89
	v_fmac_f32_e32 v87, v90, v87
	v_div_scale_f32 v90, s0, v76, v77, v76
	v_div_fixup_f32 v69, v79, v77, v69
	v_div_fixup_f32 v70, v81, v77, v70
	v_fma_f32 v79, -v85, v78, v80
	v_fmac_f32_e32 v86, v84, v94
	v_mul_f32_e32 v80, v90, v87
	v_fma_f32 v81, -v93, v83, 1.0
	v_div_scale_f32 v84, null, v77, v77, v71
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v85, s1, v75, v77, v75
	v_div_fmas_f32 v78, v79, v82, v78
	v_fma_f32 v79, -v91, v86, v89
	v_fma_f32 v82, -v88, v80, v90
	v_fmac_f32_e32 v83, v81, v83
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v89, null, v77, v77, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v82, v87
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v73, v78, v77, v73
	v_rcp_f32_e32 v82, v89
	v_div_fmas_f32 v79, v79, v94, v86
	v_mul_f32_e32 v86, v85, v83
	v_fma_f32 v78, -v88, v80, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v84, v81, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v74, v79, v77, v74
	v_fma_f32 v79, -v93, v86, v85
	v_div_scale_f32 v88, s2, v71, v77, v71
	v_fmac_f32_e32 v81, v91, v81
	v_fma_f32 v90, -v89, v82, 1.0
	v_div_scale_f32 v91, null, v77, v77, v67
	v_div_fmas_f32 v78, v78, v87, v80
	v_fmac_f32_e32 v86, v79, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v90, v82
	v_rcp_f32_e32 v80, v91
	v_div_scale_f32 v90, null, v77, v77, v68
	v_mul_f32_e32 v79, v88, v81
	v_div_scale_f32 v87, s0, v72, v77, v72
	v_div_fixup_f32 v76, v78, v77, v76
	v_fma_f32 v78, -v93, v86, v85
	v_rcp_f32_e32 v93, v90
	v_fma_f32 v85, -v84, v79, v88
	v_mul_f32_e32 v92, v87, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v91, v80, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v78, v78, v83, v86
	v_fmac_f32_e32 v79, v85, v81
	v_fma_f32 v83, -v89, v92, v87
	v_fmac_f32_e32 v80, v94, v80
	v_div_scale_f32 v85, s1, v67, v77, v67
	v_fma_f32 v86, -v90, v93, 1.0
	v_div_fixup_f32 v75, v78, v77, v75
	v_fma_f32 v78, -v84, v79, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v92, v83, v82 :: v_dual_mul_f32 v83, v85, v80
	v_fmac_f32_e32 v93, v86, v93
	v_div_scale_f32 v86, null, v77, v77, v63
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v84, s3, v68, v77, v68
	v_div_fmas_f32 v78, v78, v81, v79
	v_fma_f32 v79, -v89, v92, v87
	v_fma_f32 v81, -v91, v83, v85
	v_rcp_f32_e32 v87, v86
	v_div_scale_f32 v89, null, v77, v77, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v88, v84, v93 :: v_dual_fmac_f32 v83, v81, v80
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v81, v89
	v_div_fmas_f32 v79, v79, v82, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v82, -v90, v88, v84
	v_div_fixup_f32 v71, v78, v77, v71
	v_fma_f32 v92, -v86, v87, 1.0
	v_fma_f32 v78, -v91, v83, v85
	v_div_fixup_f32 v72, v79, v77, v72
	v_fmac_f32_e32 v88, v82, v93
	v_div_scale_f32 v79, s0, v63, v77, v63
	v_fmac_f32_e32 v87, v92, v87
	v_fma_f32 v82, -v89, v81, 1.0
	v_div_scale_f32 v85, null, v77, v77, v58
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v94, null, v77, v77, v54
	v_div_fmas_f32 v78, v78, v80, v83
	v_fma_f32 v80, -v90, v88, v84
	v_mul_f32_e32 v83, v79, v87
	v_fmac_f32_e32 v81, v82, v81
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v84, s1, v64, v77, v64
	v_div_scale_f32 v90, null, v77, v77, v59
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v91, v84, v81
	v_div_fmas_f32 v80, v80, v93, v88
	v_fma_f32 v88, -v86, v83, v79
	v_rcp_f32_e32 v93, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v85, v82, 1.0
	v_div_fixup_f32 v67, v78, v77, v67
	v_fma_f32 v78, -v89, v91, v84
	v_fmac_f32_e32 v83, v88, v87
	v_div_fixup_f32 v68, v80, v77, v68
	v_fmac_f32_e32 v82, v92, v82
	v_div_scale_f32 v80, s2, v58, v77, v58
	v_div_scale_f32 v88, null, v77, v77, v55
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v90, v93, 1.0
	v_fma_f32 v79, -v86, v83, v79
	v_fmac_f32_e32 v91, v78, v81
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v78, v80, v82
	v_rcp_f32_e32 v86, v88
	v_fmac_f32_e32 v93, v92, v93
	v_div_scale_f32 v92, s3, v59, v77, v59
	v_div_fmas_f32 v79, v79, v87, v83
	v_fma_f32 v83, -v89, v91, v84
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v84, -v85, v78, v80
	v_mul_f32_e32 v87, v92, v93
	v_div_fixup_f32 v63, v79, v77, v63
	v_div_fmas_f32 v81, v83, v81, v91
	v_rcp_f32_e32 v83, v94
	v_fma_f32 v89, -v88, v86, 1.0
	v_fmac_f32_e32 v78, v84, v82
	v_fma_f32 v84, -v90, v87, v92
	v_div_fixup_f32 v64, v81, v77, v64
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v86, v89, v86
	v_div_scale_f32 v89, s0, v55, v77, v55
	v_fmac_f32_e32 v87, v84, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v94, v83, 1.0
	v_div_scale_f32 v84, null, v60, v60, v50
	v_fma_f32 v79, -v85, v78, v80
	v_mul_f32_e32 v80, v89, v86
	v_fmac_f32_e32 v83, v81, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v85, s1, v54, v77, v54
	v_div_fmas_f32 v78, v79, v82, v78
	v_fma_f32 v79, -v90, v87, v92
	v_fma_f32 v82, -v88, v80, v89
	v_div_scale_f32 v90, null, v60, v60, v51
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v58, v78, v77, v58
	v_fmac_f32_e32 v80, v82, v86
	v_rcp_f32_e32 v82, v90
	v_fma_f32 v91, -v84, v81, 1.0
	v_div_fmas_f32 v79, v79, v93, v87
	v_mul_f32_e32 v87, v85, v83
	v_fma_f32 v78, -v88, v80, v89
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v81, v91, v81
	v_div_scale_f32 v91, null, v60, v60, v46
	v_div_fixup_f32 v59, v79, v77, v59
	v_fma_f32 v79, -v94, v87, v85
	v_div_scale_f32 v88, s2, v50, v60, v50
	v_fma_f32 v89, -v90, v82, 1.0
	v_div_fmas_f32 v78, v78, v86, v80
	v_rcp_f32_e32 v80, v91
	v_fmac_f32_e32 v87, v79, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v79, v88, v81 :: v_dual_fmac_f32 v82, v89, v82
	v_div_scale_f32 v86, s0, v51, v60, v51
	v_div_scale_f32 v89, null, v60, v60, v47
	v_div_fixup_f32 v55, v78, v77, v55
	v_fma_f32 v78, -v94, v87, v85
	v_fma_f32 v85, -v84, v79, v88
	v_mul_f32_e32 v92, v86, v82
	v_rcp_f32_e32 v93, v89
	v_fma_f32 v94, -v91, v80, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v79, v85, v81
	v_div_fmas_f32 v78, v78, v83, v87
	v_fma_f32 v83, -v90, v92, v86
	v_fmac_f32_e32 v80, v94, v80
	v_div_scale_f32 v85, s1, v46, v60, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v54, v78, v77, v54
	v_fma_f32 v87, -v89, v93, 1.0
	v_fma_f32 v77, -v84, v79, v88
	v_fmac_f32_e32 v92, v83, v82
	v_mul_f32_e32 v78, v85, v80
	v_div_scale_f32 v84, null, v60, v60, v42
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v93, v87, v93
	v_div_scale_f32 v83, s3, v47, v60, v47
	v_div_fmas_f32 v77, v77, v81, v79
	v_fma_f32 v79, -v90, v92, v86
	v_fma_f32 v81, -v91, v78, v85
	v_rcp_f32_e32 v86, v84
	v_div_scale_f32 v88, null, v60, v60, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v87, v83, v93 :: v_dual_fmac_f32 v78, v81, v80
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v81, v88
	v_div_fmas_f32 v79, v79, v82, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v82, -v89, v87, v83
	v_div_fixup_f32 v50, v77, v60, v50
	v_fma_f32 v90, -v84, v86, 1.0
	v_fma_f32 v77, -v91, v78, v85
	v_div_fixup_f32 v51, v79, v60, v51
	v_fmac_f32_e32 v87, v82, v93
	v_div_scale_f32 v79, s0, v42, v60, v42
	v_fmac_f32_e32 v86, v90, v86
	v_fma_f32 v82, -v88, v81, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v85, null, v60, v60, v38
	v_div_fmas_f32 v77, v77, v80, v78
	v_fma_f32 v78, -v89, v87, v83
	v_dual_mul_f32 v80, v79, v86 :: v_dual_fmac_f32 v81, v82, v81
	v_div_scale_f32 v83, s1, v43, v60, v43
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v46, v77, v60, v46
	v_div_fmas_f32 v78, v78, v93, v87
	v_fma_f32 v87, -v84, v80, v79
	v_mul_f32_e32 v90, v83, v81
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v89, null, v60, v60, v39
	v_fmac_f32_e32 v80, v87, v86
	v_fma_f32 v77, -v88, v90, v83
	v_div_scale_f32 v93, null, v60, v60, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v92, v89
	v_fma_f32 v79, -v84, v80, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v90, v77, v81
	v_fma_f32 v91, -v85, v82, 1.0
	v_div_scale_f32 v87, null, v60, v60, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v79, v79, v86, v80
	v_fma_f32 v80, -v88, v90, v83
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v47, v78, v60, v47
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v78, s2, v38, v60, v38
	v_div_fmas_f32 v80, v80, v81, v90
	v_rcp_f32_e32 v81, v93
	v_fma_f32 v91, -v89, v92, 1.0
	v_rcp_f32_e32 v84, v87
	v_div_fixup_f32 v42, v79, v60, v42
	v_div_fixup_f32 v43, v80, v60, v43
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s3, v39, v60, v39
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v46, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v80, -v93, v81, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v47, v47
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v86, v91, v92
	v_fma_f32 v88, -v87, v84, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v42, v42
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v81, v80, v81
	v_mul_f32_e32 v77, v78, v82
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v71, v71
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v84, v88, v84
	v_div_scale_f32 v88, s0, v37, v60, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v85, v77, v78
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v59, v59
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v79, v88, v84
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v50, v50
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v77, v83, v82
	v_fma_f32 v83, -v89, v86, v91
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v68, v68
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v78, -v85, v77, v78
	v_fmac_f32_e32 v86, v83, v92
	v_div_scale_f32 v83, null, v60, v60, v34
	v_div_scale_f32 v85, s1, v36, v60, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v77, v78, v82, v77
	v_fma_f32 v78, -v89, v86, v91
	v_fma_f32 v82, -v87, v79, v88
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v89, null, v60, v60, v35
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v79, v82, v84
	v_div_fmas_f32 v78, v78, v92, v86
	v_rcp_f32_e32 v82, v89
	v_mul_f32_e32 v86, v85, v81
	v_div_fixup_f32 v38, v77, v60, v38
	v_fma_f32 v77, -v87, v79, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v83, v80, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v39, v78, v60, v39
	v_fma_f32 v78, -v93, v86, v85
	v_div_scale_f32 v87, s2, v34, v60, v34
	v_fmac_f32_e32 v80, v90, v80
	v_fma_f32 v88, -v89, v82, 1.0
	v_div_scale_f32 v90, null, v60, v60, v33
	v_div_fmas_f32 v77, v77, v84, v79
	v_fmac_f32_e32 v86, v78, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v88, v82
	v_rcp_f32_e32 v79, v90
	v_div_scale_f32 v88, null, v60, v60, v32
	v_mul_f32_e32 v78, v87, v80
	v_div_scale_f32 v84, s0, v35, v60, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v92, v88
	v_div_fixup_f32 v37, v77, v60, v37
	v_fma_f32 v77, -v93, v86, v85
	v_fma_f32 v85, -v83, v78, v87
	v_mul_f32_e32 v91, v84, v82
	v_fma_f32 v93, -v90, v79, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v63, v63
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v77, v77, v81, v86
	v_fmac_f32_e32 v78, v85, v80
	v_fma_f32 v81, -v89, v91, v84
	v_fmac_f32_e32 v79, v93, v79
	v_div_scale_f32 v85, s1, v33, v60, v33
	v_fma_f32 v86, -v88, v92, 1.0
	v_div_fixup_f32 v36, v77, v60, v36
	v_fma_f32 v77, -v83, v78, v87
	v_fmac_f32_e32 v91, v81, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v81, v85, v79 :: v_dual_fmac_f32 v92, v86, v92
	v_div_scale_f32 v86, null, v60, v60, v30
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v83, s3, v32, v60, v32
	v_div_fmas_f32 v77, v77, v80, v78
	v_fma_f32 v78, -v89, v91, v84
	v_fma_f32 v80, -v90, v81, v85
	v_rcp_f32_e32 v84, v86
	v_div_scale_f32 v89, null, v60, v60, v31
	v_mul_f32_e32 v87, v83, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v80, v79
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v80, v89
	v_div_fmas_f32 v78, v78, v82, v91
	v_fma_f32 v82, -v88, v87, v83
	v_div_fixup_f32 v34, v77, v60, v34
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v86, v84, 1.0
	v_fma_f32 v77, -v90, v81, v85
	v_div_fixup_f32 v35, v78, v60, v35
	v_fmac_f32_e32 v87, v82, v92
	v_div_scale_f32 v78, s0, v30, v60, v30
	v_fmac_f32_e32 v84, v91, v84
	v_fma_f32 v82, -v89, v80, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v90, null, v13, v13, v27
	v_div_fmas_f32 v77, v77, v79, v81
	v_fma_f32 v79, -v88, v87, v83
	v_mul_f32_e32 v81, v78, v84
	v_fmac_f32_e32 v80, v82, v80
	v_div_scale_f32 v82, null, v13, v13, v29
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v83, s1, v31, v60, v31
	v_div_fmas_f32 v79, v79, v92, v87
	v_rcp_f32_e32 v85, v82
	v_fma_f32 v87, -v86, v81, v78
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v88, v83, v80
	v_div_fixup_f32 v33, v77, v60, v33
	v_div_fixup_f32 v32, v79, v60, v32
	v_rcp_f32_e32 v79, v90
	v_fmac_f32_e32 v81, v87, v84
	v_fma_f32 v77, -v89, v88, v83
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v92, null, v13, v13, v26
	v_fma_f32 v87, -v82, v85, 1.0
	v_fma_f32 v78, -v86, v81, v78
	v_div_scale_f32 v86, null, v13, v13, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v88, v77, v80 :: v_dual_fmac_f32 v85, v87, v85
	v_div_scale_f32 v77, s2, v29, v13, v29
	v_rcp_f32_e32 v87, v86
	v_fma_f32 v91, -v90, v79, 1.0
	v_div_fmas_f32 v78, v78, v84, v81
	v_fma_f32 v81, -v89, v88, v83
	v_mul_f32_e32 v83, v77, v85
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v79, v91, v79
	v_div_scale_f32 v84, s0, v27, v13, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v91, -v82, v83, v77
	v_fma_f32 v89, -v86, v87, 1.0
	v_rcp_f32_e32 v94, v92
	v_div_fmas_f32 v80, v81, v80, v88
	v_mul_f32_e32 v93, v84, v79
	v_fmac_f32_e32 v83, v91, v85
	v_fmac_f32_e32 v87, v89, v87
	v_div_scale_f32 v89, s3, v28, v13, v28
	v_div_fixup_f32 v30, v78, v60, v30
	v_div_fixup_f32 v31, v80, v60, v31
	v_fma_f32 v60, -v82, v83, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v88, v89, v87
	v_div_scale_f32 v80, null, v13, v13, v25
	v_fma_f32 v81, -v90, v93, v84
	v_fma_f32 v78, -v92, v94, 1.0
	v_fma_f32 v77, -v86, v88, v89
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v93, v81, v79 :: v_dual_fmac_f32 v94, v78, v94
	v_fmac_f32_e32 v88, v77, v87
	v_rcp_f32_e32 v77, v80
	v_div_scale_f32 v78, s1, v26, v13, v26
	v_div_fmas_f32 v60, v60, v85, v83
	v_fma_f32 v81, -v90, v93, v84
	v_div_scale_f32 v83, null, v13, v13, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v82, v78, v94
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v29, v60, v13, v29
	v_fma_f32 v84, -v80, v77, 1.0
	v_div_fmas_f32 v79, v81, v79, v93
	v_fma_f32 v81, -v86, v88, v89
	v_rcp_f32_e32 v85, v83
	v_fma_f32 v86, -v92, v82, v78
	v_fmac_f32_e32 v77, v84, v77
	v_div_scale_f32 v84, s0, v25, v13, v25
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v82, v86, v94
	v_div_fmas_f32 v81, v81, v87, v88
	v_mul_f32_e32 v60, v84, v77
	v_div_fixup_f32 v27, v79, v13, v27
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v79, -v83, v85, 1.0
	v_fma_f32 v78, -v92, v82, v78
	v_div_fixup_f32 v28, v81, v13, v28
	v_div_scale_f32 v81, null, v13, v13, v20
	v_fma_f32 v86, -v80, v60, v84
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v85, v79, v85
	v_div_scale_f32 v79, s2, v24, v13, v24
	v_rcp_f32_e32 v87, v81
	v_div_fmas_f32 v78, v78, v94, v82
	v_fmac_f32_e32 v60, v86, v77
	v_div_scale_f32 v86, null, v13, v13, v21
	v_mul_f32_e32 v82, v79, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v26, v78, v13, v26
	v_fma_f32 v78, -v80, v60, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v88, v86
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v80, -v83, v82, v79
	v_fma_f32 v84, -v81, v87, 1.0
	v_div_fmas_f32 v60, v78, v77, v60
	v_div_scale_f32 v78, s0, v20, v13, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v80, v85
	v_fmac_f32_e32 v87, v84, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v25, v60, v13, v25
	v_fma_f32 v60, -v86, v88, 1.0
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v79, -v83, v82, v79
	v_mul_f32_e32 v83, v78, v87
	v_div_scale_f32 v77, null, v13, v13, v22
	v_fmac_f32_e32 v88, v60, v88
	v_div_scale_f32 v60, s1, v21, v13, v21
	v_div_fmas_f32 v79, v79, v85, v82
	v_fma_f32 v82, -v81, v83, v78
	v_rcp_f32_e32 v80, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v85, v60, v88
	v_div_scale_f32 v84, null, v13, v13, v23
	v_fmac_f32_e32 v83, v82, v87
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v86, v85, v60
	v_rcp_f32_e32 v90, v84
	v_div_scale_f32 v91, s2, v22, v13, v22
	v_fma_f32 v78, -v81, v83, v78
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v85, v82, v88
	v_fma_f32 v89, -v77, v80, 1.0
	v_div_fixup_f32 v24, v79, v13, v24
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v33, v33
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v78, v78, v87, v83
	v_fma_f32 v60, -v86, v85, v60
	v_div_scale_f32 v83, null, v13, v13, v10
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v89, null, v13, v13, v19
	v_div_fmas_f32 v60, v60, v88, v85
	v_rcp_f32_e32 v85, v83
	v_fma_f32 v92, -v84, v90, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v93, v89
	v_mul_f32_e32 v94, v91, v80
	v_div_fixup_f32 v20, v78, v13, v20
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s3, v23, v13, v23
	v_fma_f32 v79, -v77, v94, v91
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v78, -v83, v85, 1.0
	v_div_fixup_f32 v21, v60, v13, v21
	v_fma_f32 v82, -v89, v93, 1.0
	v_div_scale_f32 v87, null, v13, v13, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v78, v85
	v_dual_mul_f32 v81, v92, v90 :: v_dual_fmac_f32 v94, v79, v80
	v_fmac_f32_e32 v93, v82, v93
	v_div_scale_f32 v82, s0, v19, v13, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v84, v81, v92
	v_fma_f32 v77, -v77, v94, v91
	v_div_scale_f32 v78, null, v13, v13, v12
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v81, v79, v90
	v_mul_f32_e32 v79, v82, v93
	v_div_fmas_f32 v77, v77, v80, v94
	s_mov_b32 vcc_lo, s3
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v32, v32
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v80, -v84, v81, v92
	v_fma_f32 v84, -v89, v79, v82
	v_div_fixup_f32 v22, v77, v13, v22
	v_div_scale_f32 v77, null, v13, v13, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v80, v80, v90, v81
	v_fmac_f32_e32 v79, v84, v93
	s_mov_b32 vcc_lo, s0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v27, v27
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v23, v80, v13, v23
	v_fma_f32 v60, -v89, v79, v82
	v_div_scale_f32 v80, null, v13, v13, v17
	v_rcp_f32_e32 v82, v78
	v_rcp_f32_e32 v89, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v60, v60, v93, v79
	v_rcp_f32_e32 v79, v77
	v_div_scale_f32 v81, vcc_lo, v10, v13, v10
	v_rcp_f32_e32 v84, v80
	v_div_fixup_f32 v19, v60, v13, v19
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v86, v81, v85
	v_fma_f32 v88, -v78, v82, 1.0
	v_fma_f32 v93, -v87, v89, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v60, -v77, v79, 1.0
	v_fma_f32 v90, -v83, v86, v81
	v_fmac_f32_e32 v82, v88, v82
	v_fma_f32 v91, -v80, v84, 1.0
	v_div_scale_f32 v88, s1, v12, v13, v12
	v_fmac_f32_e32 v79, v60, v79
	v_div_scale_f32 v60, s0, v11, v13, v11
	v_fmac_f32_e32 v86, v90, v85
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v91, s2, v17, v13, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v92, v60, v79
	v_fma_f32 v81, -v83, v86, v81
	v_mul_f32_e32 v94, v88, v82
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v54, v54
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v90, -v77, v92, v60
	v_div_fmas_f32 v81, v81, v85, v86
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fma_f32 v83, -v78, v94, v88
	v_fmac_f32_e32 v92, v90, v79
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v24, v24, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v10, v81, v13, v10
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v46, v46, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v94, v83, v82
	v_fma_f32 v60, -v77, v92, v60
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v71, v71, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v78, -v78, v94, v88
	v_div_fmas_f32 v60, v60, v79, v92
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v92, v24
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	s_mov_b32 vcc_lo, s1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v72, v72, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v78, v78, v82, v94
	v_div_fixup_f32 v11, v60, v13, v11
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v60, v62
	v_rndne_f32_e32 v62, v66
	v_rndne_f32_e32 v66, v70
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v12, v78, v13, v12
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v70, v74
	v_rndne_f32_e32 v74, v75
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v60, v60
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s3, v18, v13, v18
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v62, v62
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v95, v91, v84
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v24, 15, v60
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v96, v93, v89
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v66, v66
	v_med3_f32 v74, v74, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v90, -v80, v95, v91
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v46, v46
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v77, -v87, v96, v93
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v75, v42
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v95, v90, v84
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v34, v34, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v96, v77, v89
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v77, -v80, v95, v91
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v74, v74
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v79, -v87, v96, v93
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v77, v77, v84, v95
	s_mov_b32 vcc_lo, s3
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v37, v37
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v79, v79, v89, v96
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v36, v36
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v17, v77, v13, v17
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v22, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v13, v79, v13, v18
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v18, v40
	v_rndne_f32_e32 v40, v41
	v_rndne_f32_e32 v41, v44
	v_rndne_f32_e32 v44, v45
	v_rndne_f32_e32 v45, v48
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v48, v49
	v_rndne_f32_e32 v49, v52
	v_rndne_f32_e32 v52, v53
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v53, v56
	v_rndne_f32_e32 v56, v57
	v_rndne_f32_e32 v57, v61
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v45, v45
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v61, v65
	v_rndne_f32_e32 v65, v69
	v_rndne_f32_e32 v69, v73
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v101, v17
	v_and_b32_e32 v17, 15, v45
	v_and_b32_e32 v45, 15, v46
	v_and_b32_e32 v46, 15, v47
	v_and_b32_e32 v47, 15, v75
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v75, 16, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v13, v13
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_cvt_i32_f32_e32 v81, v34
	v_cvt_i32_f32_e32 v83, v33
	v_cvt_i32_f32_e32 v84, v32
	v_and_b32_e32 v32, 15, v74
	v_and_b32_e32 v33, 15, v71
	v_and_b32_e32 v34, 15, v72
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v71, 4, v14
	v_lshlrev_b32_e32 v72, 6, v75
	v_lshlrev_b32_e32 v74, 6, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v21, v21
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v73, v76
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v55, v55
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v87, v29
	v_cvt_i32_f32_e32 v88, v27
	v_cvt_i32_f32_e32 v89, v28
	v_cvt_i32_f32_e32 v90, v26
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v9, v71, v9
	v_add3_u32 v3, 0, v3, v72
	v_and_or_b32 v6, 0x1b00, v74, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v79, v37
	v_cvt_i32_f32_e32 v80, v36
	v_cvt_i32_f32_e32 v82, v35
	v_cvt_i32_f32_e32 v95, v22
	v_cvt_i32_f32_e32 v96, v23
	v_cvt_i32_f32_e32 v97, v19
	v_cvt_i32_f32_e32 v98, v10
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v31, v31
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v73, v73, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v39, v39
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_cvt_i32_f32_e32 v76, v43
	v_cvt_i32_f32_e32 v85, v30
	v_cvt_i32_f32_e32 v91, v25
	v_cvt_i32_f32_e32 v99, v11
	v_cvt_i32_f32_e32 v100, v12
	v_cvt_i32_f32_e32 v102, v13
	v_and_b32_e32 v10, 15, v15
	v_and_b32_e32 v11, 15, v16
	v_and_b32_e32 v12, 15, v18
	v_and_b32_e32 v13, 15, v40
	v_and_b32_e32 v15, 15, v41
	v_and_b32_e32 v16, 15, v44
	v_and_b32_e32 v18, 15, v48
	v_and_b32_e32 v25, 15, v61
	v_and_b32_e32 v26, 15, v62
	v_and_b32_e32 v27, 15, v65
	v_and_b32_e32 v28, 15, v66
	v_and_b32_e32 v29, 15, v69
	v_and_b32_e32 v30, 15, v70
	v_and_b32_e32 v40, 15, v59
	v_and_b32_e32 v43, 15, v50
	v_and_b32_e32 v44, 15, v51
	v_and_b32_e32 v59, 15, v87
	v_and_b32_e32 v60, 15, v88
	v_and_b32_e32 v61, 15, v89
	v_and_b32_e32 v62, 15, v90
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v3, v3, v9, v8
	v_xad_u32 v4, v6, v4, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v77, v38
	v_cvt_i32_f32_e32 v93, v20
	v_cvt_i32_f32_e32 v94, v21
	v_and_b32_e32 v19, 15, v49
	v_and_b32_e32 v20, 15, v52
	v_and_b32_e32 v21, 15, v53
	v_and_b32_e32 v22, 15, v56
	v_and_b32_e32 v23, 15, v57
	v_and_b32_e32 v35, 15, v67
	v_and_b32_e32 v36, 15, v68
	v_and_b32_e32 v37, 15, v63
	v_and_b32_e32 v38, 15, v64
	v_and_b32_e32 v42, 15, v54
	v_and_b32_e32 v51, 15, v79
	v_and_b32_e32 v52, 15, v80
	v_and_b32_e32 v53, 15, v81
	v_and_b32_e32 v54, 15, v82
	v_and_b32_e32 v67, 15, v95
	v_and_b32_e32 v68, 15, v96
	v_and_b32_e32 v69, 15, v97
	v_and_b32_e32 v70, 15, v98
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_cvt_i32_f32_e32 v73, v73
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v55, v55
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v3, v[10:13]
	ds_store_b128 v3, v[19:22] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v4
	ds_load_b128 v[19:22], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v3, v[27:30]
	ds_store_b128 v3, v[35:38] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v4
	ds_load_b128 v[35:38], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v3, v[43:46]
	ds_store_b128 v3, v[51:54] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[43:46], v4
	ds_load_b128 v[51:54], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v3, v[59:62]
	ds_store_b128 v3, v[67:70] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[59:62], v4
	ds_load_b128 v[67:70], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v3, v[15:18]
	ds_store_b128 v3, v[23:26] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[15:18], v4
	ds_load_b128 v[23:26], v4 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v86, v31
	v_and_b32_e32 v31, 15, v73
	v_cvt_i32_f32_e32 v78, v39
	v_and_b32_e32 v39, 15, v58
	v_and_b32_e32 v41, 15, v55
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v3, v[31:34]
	ds_store_b128 v3, v[39:42] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[31:34], v4
	ds_load_b128 v[39:42], v4 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v48, 15, v76
	v_and_b32_e32 v49, 15, v77
	v_and_b32_e32 v50, 15, v78
	v_and_b32_e32 v55, 15, v83
	v_and_b32_e32 v56, 15, v84
	v_and_b32_e32 v57, 15, v85
	v_and_b32_e32 v58, 15, v86
	v_and_b32_e32 v63, 15, v91
	v_and_b32_e32 v64, 15, v92
	v_and_b32_e32 v65, 15, v93
	v_and_b32_e32 v66, 15, v94
	v_and_b32_e32 v71, 15, v99
	v_and_b32_e32 v72, 15, v100
	v_and_b32_e32 v73, 15, v101
	v_and_b32_e32 v74, 15, v102
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v3, v[47:50]
	ds_store_b128 v3, v[55:58] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[47:50], v4
	ds_load_b128 v[55:58], v4 offset:1024
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s29, 31
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v3, v[63:66]
	ds_store_b128 v3, v[71:74] offset:512
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v3, v20, 4, v9
	v_lshl_or_b32 v9, v23, 4, v15
	v_lshl_or_b32 v15, v36, 4, v28
.Ltmp57:
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v36, 4, v0
.Ltmp58:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[63:66], v4
	ds_load_b128 v[71:74], v4 offset:1024
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v4, v19, 4, v8
	v_lshl_or_b32 v6, v21, 4, v10
	v_lshl_or_b32 v8, v22, 4, v11
	v_lshl_or_b32 v10, v24, 4, v16
	v_lshl_or_b32 v11, v25, 4, v17
	v_lshl_or_b32 v12, v26, 4, v18
	.loc	1 85 46                         ; generate_amdgcn.py:85:46 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v14, 3, v14
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v16, v37, 4, v29
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v37, s0, v36
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s28, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s30, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v13, v35, 4, v27
	v_lshl_or_b32 v17, v38, 4, v30
	v_lshl_or_b32 v18, v39, 4, v31
	v_lshl_or_b32 v19, v40, 4, v32
	v_lshl_or_b32 v20, v41, 4, v33
	v_lshl_or_b32 v21, v42, 4, v34
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v39, s2, s1, v14
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v8.l
	v_and_b16 v2.l, 0xff, v6.l
	v_lshlrev_b16 v3.l, 8, v3.l
	v_and_b16 v3.h, 0xff, v4.l
	v_lshlrev_b16 v4.l, 8, v12.l
	v_and_b16 v4.h, 0xff, v11.l
	v_lshlrev_b16 v5.l, 8, v10.l
	v_and_b16 v6.l, 0xff, v9.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v22, v51, 4, v43
	v_lshl_or_b32 v23, v52, 4, v44
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v41, v39, v37
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v3.h, v3.l
	v_or_b16 v9.h, v4.h, v4.l
	v_or_b16 v9.l, v6.l, v5.l
	v_lshlrev_b16 v1.l, 8, v17.l
	v_and_b16 v2.l, 0xff, v16.l
	v_lshlrev_b16 v3.l, 8, v15.l
	v_and_b16 v3.h, 0xff, v13.l
	v_lshlrev_b16 v4.l, 8, v21.l
	v_and_b16 v4.h, 0xff, v20.l
	v_lshlrev_b16 v5.l, 8, v19.l
	v_and_b16 v6.l, 0xff, v18.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s0, 4
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v26, v55, 4, v47
	v_lshl_or_b32 v27, v56, 4, v48
	v_lshl_or_b32 v30, v67, 4, v59
	v_lshl_or_b32 v31, v68, 4, v60
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v42, v37, s1, v39
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[8:9], v41, s[12:15], 0 offen
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v3.h, v3.l
	v_or_b16 v9.h, v4.h, v4.l
	v_or_b16 v9.l, v6.l, v5.l
	v_lshlrev_b16 v3.l, 8, v23.l
	v_and_b16 v3.h, 0xff, v22.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v24, v53, 4, v45
	v_lshl_or_b32 v25, v54, 4, v46
	v_lshl_or_b32 v28, v57, 4, v49
	v_lshl_or_b32 v29, v58, 4, v50
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v34, v71, 4, v63
	v_lshl_or_b32 v35, v72, 4, v64
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v5.l, 8, v27.l
	v_and_b16 v6.l, 0xff, v26.l
	buffer_store_b64 v[8:9], v42, s[12:15], 0 offen
	v_or_b16 v8.l, v3.h, v3.l
	v_lshlrev_b16 v3.l, 8, v31.l
	v_and_b16 v3.h, 0xff, v30.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v32, v69, 4, v61
	v_lshl_or_b32 v33, v70, 4, v62
	v_lshl_or_b32 v38, v73, 4, v65
	v_lshl_or_b32 v40, v74, 4, v66
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v25.l
	v_and_b16 v2.l, 0xff, v24.l
	v_lshlrev_b16 v4.l, 8, v29.l
	v_and_b16 v4.h, 0xff, v28.l
	v_or_b16 v9.l, v6.l, v5.l
	v_lshlrev_b16 v5.l, 8, v35.l
	v_and_b16 v6.l, 0xff, v34.l
	v_or_b16 v10.l, v3.h, v3.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v3, 2, v75
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v9.h, v4.h, v4.l
	v_lshlrev_b16 v1.l, 8, v33.l
	v_and_b16 v2.l, 0xff, v32.l
	v_lshlrev_b16 v4.l, 8, v40.l
	v_and_b16 v4.h, 0xff, v38.l
	v_or_b16 v11.l, v6.l, v5.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v6, 2, v36
	v_add_nc_u32_e32 v3, 0, v3
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s2, s0, 5
	s_mul_i32 s0, s0, 48
	v_add3_u32 v43, v37, s2, v39
	v_add3_u32 v37, v37, s0, v39
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s29, 31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v10.h, v2.l, v1.l
	v_or_b16 v11.h, v4.h, v4.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v4, 0, v14
	v_mov_b16_e32 v2.l, v7.h
	v_mov_b16_e32 v1.l, v5.h
	v_add3_u32 v3, v3, v6, v14
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v5, v0, 63, s30
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_clause 0x1
	buffer_store_b64 v[8:9], v43, s[12:15], 0 offen
	buffer_store_b64 v[10:11], v37, s[12:15], 0 offen
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
	v_mul_lo_u32 v2, v5, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s13, s11, 0xffff
	s_mov_b32 s12, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s28, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[12:15], 0 offen
.Ltmp59:
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp60:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 36
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 218
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17048
; TotalNumSgprs: 38
; NumVgprs: 218
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 38
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     218
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
