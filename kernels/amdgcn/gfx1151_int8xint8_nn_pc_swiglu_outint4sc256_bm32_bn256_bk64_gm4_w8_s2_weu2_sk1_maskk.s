	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[30:31], s[0:1], 0x30
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x0
	s_load_b32 s22, s[0:1], 0x38
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v115, 15, v0
	v_lshrrev_b32_e32 v114, 4, v0
	v_lshrrev_b32_e32 v2, 3, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v116, 7, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v37, 4, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v109, 4, v115
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v133, 16, v114
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_or_b32_e32 v135, 32, v114
	v_or_b32_e32 v136, 48, v114
	v_lshlrev_b32_e32 v134, 3, v116
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v141, 0, v37
	v_lshlrev_b32_e32 v137, 6, v115
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s31, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s30, 31
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
	s_lshr_b32 s10, s10, 27
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
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	s_mov_b64 s[16:17], s[14:15]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_mov_b32 s15, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s19, s15
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s18, s14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
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
	s_lshl_b32 s9, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s6, s8, s9
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s11, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s6, s6, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s4, s11
	s_abs_i32 s7, s6
	s_xor_b32 s5, s11, s6
	s_cvt_f32_u32 s8, s7
	s_sub_i32 s10, 0, s7
	s_ashr_i32 s5, s5, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s8
	v_readfirstlane_b32 s8, v1
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v1, s22, v2
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s8, s8
	s_mul_i32 s10, s10, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s8, s10
	s_add_i32 s8, s8, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s4, s8
	s_mul_i32 s8, s2, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s8
	s_add_i32 s8, s2, 1
	s_sub_i32 s10, s4, s7
	s_cmp_ge_u32 s4, s7
	s_cselect_b32 s2, s8, s2
	s_cselect_b32 s4, s10, s4
	s_add_i32 s8, s2, 1
	s_cmp_ge_u32 s4, s7
	s_cselect_b32 s2, s8, s2
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s23, s31, 1
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s2, s2, s5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[110:111], null, s23, v114, v[109:110]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s33, s2, s5
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s8, s3, 6
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s6, s33, s6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s8, v114
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s11, s11, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s7, s22, 63
.Ltmp13:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s11, s11, s9
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s20, s33, 8
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s11, 5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s10, s23, s8
	v_mad_u64_u32 v[111:112], null, 0x60, s31, v[110:111]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s7, 63
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s8, v133
	v_or_b32_e32 v5, s8, v135
	v_or_b32_e32 v6, s8, v136
	v_or_b32_e32 v2, s8, v134
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s2, s22, v3
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s9, s34, s22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s21, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s10, s20, s10
	v_lshl_add_u32 v138, s31, 5, v110
	v_lshl_add_u32 v139, s31, 6, v110
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v140, v1, v134, s9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s10, v110
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s22, v4
	v_cmp_gt_i32_e64 s5, s22, v5
	v_cmp_gt_i32_e64 s6, s22, v6
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s22, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s2, s2, s21
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s10, v138
	v_add_nc_u32_e32 v3, s10, v139
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s9, s10, s31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s10, v111
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v7, s8, v140
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v8, 0x80000000, v1, s2
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v1, s31, v1
	v_add_nc_u32_e32 v5, s9, v138
	v_add_nc_u32_e32 v6, s9, v139
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s4, s4, s21
	s_and_b32 s5, s5, s21
	s_and_b32 s6, s6, s21
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v15, s9, v111
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s21
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_cndmask_b32_e64 v11, 0x80000000, v3, s5
	v_cndmask_b32_e64 v16, 0x80000000, v4, s6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v17, 0x80000000, v7, vcc_lo
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v23, 0x80000000, v5, s4
	v_cndmask_b32_e64 v27, 0x80000000, v6, s5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[3:6], v8, s[16:19], 0 offen
	buffer_load_b128 v[7:10], v2, s[16:19], 0 offen
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v2, 0x80000000, v15, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[11:14], v11, s[16:19], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[35:36], v17, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x4
	buffer_load_b128 v[15:18], v16, s[16:19], 0 offen
	buffer_load_b128 v[19:22], v1, s[16:19], 0 offen
	buffer_load_b128 v[23:26], v23, s[16:19], 0 offen
	buffer_load_b128 v[27:30], v27, s[16:19], 0 offen
	buffer_load_b128 v[31:34], v2, s[16:19], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v2, 3, v0
	v_and_b32_e32 v1, 48, v0
	s_mov_b32 s2, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s7, 0x7f
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v1, v2, v1
	v_add_nc_u32_e32 v142, 0, v1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(7)
	ds_store_b128 v141, v[7:10] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v141, v[11:14] offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(5)
	ds_store_b64 v142, v[35:36] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b128 v141, v[3:6]
	s_waitcnt vmcnt(4)
	ds_store_b128 v141, v[15:18] offset:12288
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(3)
	ds_store_b128 v141, v[19:22] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v141, v[23:26] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v141, v[27:30] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v141, v[31:34] offset:28672
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v1, 6, v115
	s_load_b256 s[36:43], s[0:1], 0x10
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_mov_b32_e32 v41, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v44, v41
	v_mov_b32_e32 v42, v41
	v_mov_b32_e32 v43, v41
	v_mov_b32_e32 v118, v41
	v_dual_mov_b32 v119, v41 :: v_dual_mov_b32 v68, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v48, v44 :: v_dual_mov_b32 v47, v43
	v_dual_mov_b32 v72, v44 :: v_dual_mov_b32 v71, v43
	v_dual_mov_b32 v52, v44 :: v_dual_mov_b32 v51, v43
	v_dual_mov_b32 v76, v44 :: v_dual_mov_b32 v75, v43
	v_dual_mov_b32 v56, v44 :: v_dual_mov_b32 v55, v43
	v_dual_mov_b32 v80, v44 :: v_dual_mov_b32 v79, v43
	v_dual_mov_b32 v60, v44 :: v_dual_mov_b32 v59, v43
	v_dual_mov_b32 v84, v44 :: v_dual_mov_b32 v83, v43
	v_dual_mov_b32 v64, v44 :: v_dual_mov_b32 v63, v43
	v_dual_mov_b32 v88, v44 :: v_dual_mov_b32 v87, v43
	v_dual_mov_b32 v67, v43 :: v_dual_mov_b32 v66, v42
	v_dual_mov_b32 v65, v41 :: v_dual_mov_b32 v46, v42
	v_dual_mov_b32 v45, v41 :: v_dual_mov_b32 v70, v42
	v_dual_mov_b32 v69, v41 :: v_dual_mov_b32 v50, v42
	v_dual_mov_b32 v49, v41 :: v_dual_mov_b32 v74, v42
	v_dual_mov_b32 v73, v41 :: v_dual_mov_b32 v54, v42
	v_dual_mov_b32 v53, v41 :: v_dual_mov_b32 v78, v42
	v_dual_mov_b32 v77, v41 :: v_dual_mov_b32 v58, v42
	v_dual_mov_b32 v57, v41 :: v_dual_mov_b32 v82, v42
	v_dual_mov_b32 v81, v41 :: v_dual_mov_b32 v62, v42
	v_dual_mov_b32 v61, v41 :: v_dual_mov_b32 v86, v42
	v_mov_b32_e32 v85, v41
	v_mov_b32_e32 v120, v41
	v_mov_b32_e32 v121, v41
	v_mov_b32_e32 v122, v41
	v_mov_b32_e32 v123, v41
	v_mov_b32_e32 v124, v41
	v_mov_b32_e32 v117, v41
	v_mov_b32_e32 v132, v41
	v_mov_b32_e32 v131, v41
	v_mov_b32_e32 v130, v41
	v_mov_b32_e32 v129, v41
	v_mov_b32_e32 v128, v41
	v_mov_b32_e32 v127, v41
	v_mov_b32_e32 v126, v41
	v_mov_b32_e32 v125, v41
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr1
	s_load_b256 s[36:43], s[0:1], 0x10
	s_mov_b32 s4, 0
.LBB0_4:                                ; %.lr.ph
	v_lshrrev_b32_e32 v1, 1, v0
	v_and_or_b32 v2, v2, 48, v137
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s7, 6
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_and_or_b32 v1, 0x70, v1, v115
	v_xor_b32_e32 v3, 16, v2
	v_xor_b32_e32 v4, 32, v2
	v_xor_b32_e32 v5, 48, v2
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v144, 0, v1
	v_add_nc_u32_e32 v143, 0, v2
	v_add_nc_u32_e32 v145, 0, v3
	v_add_nc_u32_e32 v146, 0, v4
	v_add_nc_u32_e32 v147, 0, v5
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_mov_b32_e32 v124, 0
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	s_add_i32 s5, s0, -2
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s6, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s0, s6, s3
	s_lshl_b32 s7, s0, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v9, s7, v134
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v10, s7, v140
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s22, v9
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	buffer_load_b64 v[112:113], v9, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v9, v144 offset:3328
	ds_load_u8 v10, v144 offset:3072
	ds_load_u8 v11, v144 offset:3840
	ds_load_u8 v12, v144 offset:3584
	ds_load_u8 v13, v144 offset:2304
	ds_load_u8 v14, v144 offset:2048
	ds_load_u8 v15, v144 offset:2816
	ds_load_u8 v16, v144 offset:2560
	ds_load_u8 v17, v144 offset:1280
	ds_load_u8 v18, v144 offset:1024
	ds_load_u8 v19, v144 offset:1792
	ds_load_u8 v20, v144 offset:1536
	ds_load_u8 v21, v144 offset:256
	ds_load_u8 v22, v144
	ds_load_u8 v23, v144 offset:768
	ds_load_u8 v24, v144 offset:512
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[89:92], v143 offset:33792
	ds_load_b128 v[93:96], v145 offset:33792
	ds_load_b128 v[101:104], v145 offset:32768
	ds_load_b128 v[97:100], v143 offset:32768
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v144 offset:7424
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v144 offset:7168
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v14, v16, v15, 0xc0c0004
	v_lshl_or_b32 v28, v11, 16, v9
	ds_load_u8 v9, v144 offset:7936
	ds_load_u8 v11, v144 offset:7680
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v15, v20, v19, 0xc0c0004
	v_lshl_or_b32 v27, v14, 16, v13
	v_perm_b32 v13, v18, v17, 0xc0c0004
	ds_load_u8 v14, v144 offset:6400
	ds_load_u8 v18, v144 offset:6912
	ds_load_u8 v16, v144 offset:6144
	ds_load_u8 v20, v144 offset:6656
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v17, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v19, v24, v23, 0xc0c0004
	v_lshl_or_b32 v26, v15, 16, v13
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v144 offset:5376
	v_lshl_or_b32 v25, v19, 16, v17
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v9, 16, v10
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v16, v14, 0xc0c0004
	ds_load_u8 v16, v144 offset:5888
	ds_load_u8 v11, v144 offset:5120
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	ds_load_u8 v20, v144 offset:5632
	v_lshl_or_b32 v31, v18, 16, v14
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v144 offset:4352
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v16, v20, v16, 0xc0c0004
	ds_load_u8 v20, v144 offset:4096
	v_lshl_or_b32 v30, v16, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v20, v12, 0xc0c0004
	ds_load_u8 v20, v144 offset:4864
	ds_load_u8 v21, v144 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v20, 16, v12
	v_wmma_i32_16x16x16_iu8 v[9:16], v[25:28], v[97:100], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[25:28], v[89:92], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v144 offset:3456
	ds_load_u8 v26, v144 offset:3200
	v_wmma_i32_16x16x16_iu8 v[9:16], v[29:32], v[101:104], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[29:32], v[93:96], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v144 offset:3968
	ds_load_u8 v27, v144 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v144 offset:2432
	ds_load_u8 v28, v144 offset:2176
	v_lshl_or_b32 v108, v26, 16, v25
	ds_load_u8 v25, v144 offset:1408
	ds_load_u8 v26, v144 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v144 offset:2944
	ds_load_u8 v29, v144 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v107, v28, 16, v27
	ds_load_u8 v26, v144 offset:1920
	ds_load_u8 v27, v144 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v106, v26, 16, v25
	ds_load_u8 v25, v144 offset:384
	ds_load_u8 v26, v144 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v144 offset:896
	ds_load_u8 v27, v144 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v105, v26, 16, v25
	ds_load_u8 v25, v144 offset:7552
	ds_load_u8 v26, v144 offset:7296
	v_wmma_i32_16x16x16_iu8 v[33:40], v[105:108], v[97:100], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v144 offset:8064
	ds_load_u8 v27, v144 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v144 offset:6528
	ds_load_u8 v28, v144 offset:6272
	v_lshl_or_b32 v151, v26, 16, v25
	ds_load_u8 v25, v144 offset:5504
	ds_load_u8 v26, v144 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v144 offset:7040
	ds_load_u8 v29, v144 offset:6784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v28, 16, v27
	ds_load_u8 v26, v144 offset:6016
	ds_load_u8 v27, v144 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v149, v26, 16, v25
	ds_load_u8 v25, v144 offset:4480
	ds_load_u8 v26, v144 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v144 offset:4992
	ds_load_u8 v27, v144 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v148, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[105:108], v[89:92], v[1:8] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	ds_load_u8 v105, v144 offset:19712
	ds_load_u8 v106, v144 offset:19456
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[33:40], v[148:151], v[101:104], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[148:151], v[93:96], v[25:32] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v144 offset:20224
	ds_load_u8 v107, v144 offset:19968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v144 offset:18688
	ds_load_u8 v108, v144 offset:18432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v144 offset:19200
	ds_load_u8 v148, v144 offset:18944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v148, v108, 0xc0c0004
	v_lshl_or_b32 v108, v106, 16, v105
	ds_load_u8 v105, v144 offset:17664
	ds_load_u8 v106, v144 offset:17408
	v_lshl_or_b32 v107, v148, 16, v107
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v144 offset:18176
	ds_load_u8 v148, v144 offset:17920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v148, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v106, v106, 16, v105
	ds_load_u8 v105, v144 offset:16640
	ds_load_u8 v148, v144 offset:16384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v148, v105, 0xc0c0004
	ds_load_u8 v148, v144 offset:17152
	ds_load_u8 v149, v144 offset:16896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v105, v148, 16, v105
	ds_load_u8 v148, v144 offset:23808
	ds_load_u8 v149, v144 offset:23552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v144 offset:24320
	ds_load_u8 v150, v144 offset:24064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v144 offset:22784
	ds_load_u8 v151, v144 offset:22528
	v_lshl_or_b32 v167, v149, 16, v148
	ds_load_u8 v148, v144 offset:21760
	ds_load_u8 v149, v144 offset:21504
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v144 offset:23296
	ds_load_u8 v152, v144 offset:23040
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v166, v151, 16, v150
	ds_load_u8 v149, v144 offset:22272
	ds_load_u8 v150, v144 offset:22016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	v_lshl_or_b32 v165, v149, 16, v148
	ds_load_u8 v148, v144 offset:20736
	ds_load_u8 v149, v144 offset:20480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v144 offset:21248
	ds_load_u8 v150, v144 offset:20992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v164, v149, 16, v148
	ds_load_u8 v148, v144 offset:19840
	ds_load_u8 v149, v144 offset:19584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v144 offset:20352
	ds_load_u8 v150, v144 offset:20096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v144 offset:18816
	ds_load_u8 v151, v144 offset:18560
	v_lshl_or_b32 v175, v149, 16, v148
	ds_load_u8 v148, v144 offset:17792
	ds_load_u8 v149, v144 offset:17536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v144 offset:19328
	ds_load_u8 v152, v144 offset:19072
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v174, v151, 16, v150
	ds_load_u8 v149, v144 offset:18304
	ds_load_u8 v150, v144 offset:18048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	v_lshl_or_b32 v173, v149, 16, v148
	ds_load_u8 v148, v144 offset:16768
	ds_load_u8 v149, v144 offset:16512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v144 offset:17280
	ds_load_u8 v150, v144 offset:17024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v172, v149, 16, v148
	ds_load_u8 v148, v144 offset:23936
	ds_load_u8 v149, v144 offset:23680
	v_wmma_i32_16x16x16_iu8 v[156:163], v[172:175], v[97:100], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v144 offset:24448
	ds_load_u8 v150, v144 offset:24192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v144 offset:22912
	ds_load_u8 v151, v144 offset:22656
	v_lshl_or_b32 v179, v149, 16, v148
	ds_load_u8 v148, v144 offset:21888
	ds_load_u8 v149, v144 offset:21632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v144 offset:23424
	ds_load_u8 v152, v144 offset:23168
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v178, v151, 16, v150
	ds_load_u8 v149, v144 offset:22400
	ds_load_u8 v150, v144 offset:22144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	v_lshl_or_b32 v177, v149, 16, v148
	ds_load_u8 v148, v144 offset:20864
	ds_load_u8 v149, v144 offset:20608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v144 offset:21376
	ds_load_u8 v150, v144 offset:21120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v176, v149, 16, v148
	v_wmma_i32_16x16x16_iu8 v[148:155], v[105:108], v[97:100], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[156:163], v[176:179], v[101:104], v[156:163] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[148:155], v[164:167], v[101:104], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[105:108], v[89:92], v[1:8] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[105:108], v146 offset:33792
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[97:104], v[164:167], v[93:96], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[164:171], v[172:175], v[89:92], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v89, v144 offset:11520
	ds_load_u8 v90, v144 offset:11264
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[164:171], v[176:179], v[93:96], v[164:171] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v144 offset:12032
	ds_load_u8 v91, v144 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v144 offset:10496
	ds_load_u8 v92, v144 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v144 offset:11008
	ds_load_u8 v93, v144 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v93, v92, 0xc0c0004
	v_lshl_or_b32 v92, v90, 16, v89
	ds_load_u8 v89, v144 offset:9472
	ds_load_u8 v90, v144 offset:9216
	v_lshl_or_b32 v91, v93, 16, v91
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v144 offset:9984
	ds_load_u8 v93, v144 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v93, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v144 offset:8448
	ds_load_u8 v93, v144 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v93, v89, 0xc0c0004
	ds_load_u8 v93, v144 offset:8960
	ds_load_u8 v94, v144 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v89, v93, 16, v89
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[93:96], v146 offset:32768
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[17:24], v[89:92], v[105:108], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[89:92], v[93:96], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v89, v144 offset:11648
	ds_load_u8 v90, v144 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v144 offset:12160
	ds_load_u8 v91, v144 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v144 offset:10624
	ds_load_u8 v92, v144 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v144 offset:11136
	ds_load_u8 v172, v144 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v172, v92, 0xc0c0004
	v_lshl_or_b32 v92, v90, 16, v89
	ds_load_u8 v89, v144 offset:9600
	ds_load_u8 v90, v144 offset:9344
	v_lshl_or_b32 v91, v172, 16, v91
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v144 offset:10112
	ds_load_u8 v172, v144 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v172, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v144 offset:8576
	ds_load_u8 v172, v144 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v172, v89, 0xc0c0004
	ds_load_u8 v172, v144 offset:9088
	ds_load_u8 v173, v144 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v172, 16, v89
	v_wmma_i32_16x16x16_iu8 v[33:40], v[89:92], v[93:96], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[89:92], v[105:108], v[25:32] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	ds_load_u8 v89, v144 offset:27904
	ds_load_u8 v90, v144 offset:27648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v144 offset:28416
	ds_load_u8 v91, v144 offset:28160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v144 offset:26880
	ds_load_u8 v92, v144 offset:26624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v144 offset:27392
	ds_load_u8 v172, v144 offset:27136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v172, v92, 0xc0c0004
	v_lshl_or_b32 v92, v90, 16, v89
	ds_load_u8 v89, v144 offset:25856
	ds_load_u8 v90, v144 offset:25600
	v_lshl_or_b32 v91, v172, 16, v91
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v144 offset:26368
	ds_load_u8 v172, v144 offset:26112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v172, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v144 offset:24832
	ds_load_u8 v172, v144 offset:24576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v172, v89, 0xc0c0004
	ds_load_u8 v172, v144 offset:25344
	ds_load_u8 v173, v144 offset:25088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v89, v172, 16, v89
	ds_load_u8 v172, v144 offset:28032
	ds_load_u8 v173, v144 offset:27776
	v_wmma_i32_16x16x16_iu8 v[148:155], v[89:92], v[93:96], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[89:92], v[105:108], v[97:104] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v89, v144 offset:15616
	ds_load_u8 v90, v144 offset:15360
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v173, v144 offset:28544
	ds_load_u8 v174, v144 offset:28288
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v144 offset:16128
	ds_load_u8 v91, v144 offset:15872
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	ds_load_u8 v174, v144 offset:27008
	ds_load_u8 v175, v144 offset:26752
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v144 offset:14592
	ds_load_u8 v92, v144 offset:14336
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	ds_load_u8 v175, v144 offset:27520
	ds_load_u8 v176, v144 offset:27264
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v176, v175, 0xc0c0004
	v_lshl_or_b32 v175, v173, 16, v172
	ds_load_u8 v172, v144 offset:25984
	ds_load_u8 v173, v144 offset:25728
	v_lshl_or_b32 v174, v176, 16, v174
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v173, v144 offset:26496
	ds_load_u8 v176, v144 offset:26240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v176, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v173, 16, v172
	ds_load_u8 v172, v144 offset:24960
	ds_load_u8 v176, v144 offset:24704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v176, v172, 0xc0c0004
	ds_load_u8 v176, v144 offset:25472
	ds_load_u8 v177, v144 offset:25216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v172, v176, 16, v172
	v_wmma_i32_16x16x16_iu8 v[156:163], v[172:175], v[93:96], v[156:163] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v92, v144 offset:15104
	ds_load_u8 v93, v144 offset:14848
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[164:171], v[172:175], v[105:108], v[164:171] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[105:108], v147 offset:33792
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v93, v93, v92, 0xc0c0004
	v_lshl_or_b32 v92, v90, 16, v89
	ds_load_u8 v89, v144 offset:13568
	ds_load_u8 v90, v144 offset:13312
	v_lshl_or_b32 v91, v93, 16, v91
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v144 offset:14080
	ds_load_u8 v93, v144 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v93, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v144 offset:12544
	ds_load_u8 v93, v144 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v93, v89, 0xc0c0004
	ds_load_u8 v93, v144 offset:13056
	ds_load_u8 v94, v144 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v93, 16, v89
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[93:96], v147 offset:32768
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[17:24], v[89:92], v[105:108], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v180, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v178, v19
	v_cvt_f32_i32_e32 v179, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v181, v22
	v_cvt_f32_i32_e32 v182, v23
	v_cvt_f32_i32_e32 v183, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v83, v83, v178
	v_add_f32_e32 v65, v65, v180
	v_add_f32_e32 v67, v67, v182
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[89:92], v[93:96], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v89, v144 offset:15744
	ds_load_u8 v90, v144 offset:15488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v144 offset:16256
	ds_load_u8 v91, v144 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v144 offset:14720
	ds_load_u8 v92, v144 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v144 offset:15232
	ds_load_u8 v172, v144 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v172, v92, 0xc0c0004
	v_lshl_or_b32 v92, v90, 16, v89
	ds_load_u8 v89, v144 offset:13696
	ds_load_u8 v90, v144 offset:13440
	v_lshl_or_b32 v91, v172, 16, v91
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v144 offset:14208
	ds_load_u8 v172, v144 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v172, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v144 offset:12672
	ds_load_u8 v172, v144 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v172, v89, 0xc0c0004
	ds_load_u8 v172, v144 offset:13184
	ds_load_u8 v173, v144 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v172, 16, v89
	v_wmma_i32_16x16x16_iu8 v[33:40], v[89:92], v[93:96], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[89:92], v[105:108], v[25:32] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	ds_load_u8 v89, v144 offset:32000
	ds_load_u8 v90, v144 offset:31744
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v184, v25
	v_cvt_f32_i32_e32 v191, v29
	v_cvt_f32_i32_e32 v185, v30
	v_cvt_f32_i32_e32 v186, v31
	v_cvt_f32_i32_e32 v187, v32
	v_cvt_f32_i32_e32 v188, v26
	v_cvt_f32_i32_e32 v189, v27
	v_cvt_f32_i32_e32 v190, v28
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v84, v84, v179 :: v_dual_add_f32 v129, v129, v184
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_add_f32 v68, v68, v183 :: v_dual_add_f32 v85, v85, v188
	v_dual_add_f32 v66, v66, v181 :: v_dual_add_f32 v131, v131, v186
	v_add_f32_e32 v87, v87, v190
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v144 offset:32512
	ds_load_u8 v91, v144 offset:32256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v144 offset:30976
	ds_load_u8 v92, v144 offset:30720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v144 offset:31488
	ds_load_u8 v172, v144 offset:31232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v172, v92, 0xc0c0004
	v_lshl_or_b32 v92, v90, 16, v89
	ds_load_u8 v89, v144 offset:29952
	ds_load_u8 v90, v144 offset:29696
	v_lshl_or_b32 v91, v172, 16, v91
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v144 offset:30464
	ds_load_u8 v172, v144 offset:30208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v172, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v144 offset:28928
	ds_load_u8 v172, v144 offset:28672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v172, v89, 0xc0c0004
	ds_load_u8 v172, v144 offset:29440
	ds_load_u8 v173, v144 offset:29184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v89, v172, 16, v89
	ds_load_u8 v172, v144 offset:32128
	ds_load_u8 v173, v144 offset:31872
	v_wmma_i32_16x16x16_iu8 v[148:155], v[89:92], v[93:96], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[89:92], v[105:108], v[97:104] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v89, v9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s7, v114
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v90, v10
	v_cvt_f32_i32_e32 v91, v11
	v_cvt_f32_i32_e32 v92, v12
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v73, v73, v89
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s22, v9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s7, v133
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v74, v74, v90
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s0, s22, v9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s7, v135
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v173, v144 offset:32640
	ds_load_u8 v174, v144 offset:32384
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s1, s22, v9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s7, v136
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s7, s7, s23
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v102, v102
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s7, s7, s20
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v103, v103
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v10, s7, v138
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s2, s22, v9
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s8, s7, s31
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v104, v104
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v76, v76, v92 :: v_dual_add_f32 v75, v75, v91
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v42, v42, v102
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s4, s5
	s_mov_b32 s4, s6
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v59, v59, v99
	v_add_f32_e32 v57, v57, v97
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	ds_load_u8 v174, v144 offset:31104
	ds_load_u8 v175, v144 offset:30848
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_add_f32_e32 v43, v43, v103
	v_add_f32_e32 v41, v41, v101
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	ds_load_u8 v175, v144 offset:31616
	ds_load_u8 v176, v144 offset:31360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v176, v175, 0xc0c0004
	v_lshl_or_b32 v175, v173, 16, v172
	ds_load_u8 v172, v144 offset:30080
	ds_load_u8 v173, v144 offset:29824
	v_lshl_or_b32 v174, v176, 16, v174
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v173, v144 offset:30592
	ds_load_u8 v176, v144 offset:30336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v176, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v173, 16, v172
	ds_load_u8 v172, v144 offset:29056
	ds_load_u8 v176, v144 offset:28800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v176, v172, 0xc0c0004
	ds_load_u8 v176, v144 offset:29568
	ds_load_u8 v177, v144 offset:29312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v177, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_lshl_or_b32 v172, v176, 16, v172
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v176, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v82, v82, v177
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[156:163], v[172:175], v[93:96], v[156:163] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v93, v13
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v13, 0x80000000, v10, s0
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v10, s7, v139
	.loc	1 415 28 is_stmt 1              ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[164:171], v[172:175], v[105:108], v[164:171] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v105, v148
	v_cvt_f32_i32_e32 v148, v152
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v152, v33
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v69, v69, v93
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v17, 0x80000000, v10, s1
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v10, s7, v111
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v95, v15
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v125, v125, v152
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v172, v34
	v_cvt_f32_i32_e32 v175, v37
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v21, 0x80000000, v10, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v71, v71, v95 :: v_dual_add_nc_u32 v10, s8, v110
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v174, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v77, v77, v172
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v96, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_dual_cndmask_b32 v25, 0x80000000, v10 :: v_dual_add_f32 v80, v80, v175
	.loc	1 414 39 is_stmt 0              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v10, s8, v138
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_dual_add_f32 v72, v72, v96 :: v_dual_add_nc_u32 v9, s7, v110
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v107, v150
	v_cvt_f32_i32_e32 v150, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v29, 0x80000000, v10, s0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v79, v79, v174 :: v_dual_add_nc_u32 v10, s8, v139
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v154, v39
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v94, v14
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v33, 0x80000000, v10, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v127, v127, v154 :: v_dual_add_nc_u32 v10, s8, v111
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v106, v149
	v_cvt_f32_i32_e32 v108, v151
	v_cvt_f32_i32_e32 v149, v153
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e64 v37, 0x80000000, v10, s2
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v151, v155
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v153, v38
	v_cvt_f32_i32_e32 v155, v40
	v_cvt_f32_i32_e32 v173, v35
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x7
	buffer_load_b128 v[9:12], v9, s[16:19], 0 offen
	buffer_load_b128 v[13:16], v13, s[16:19], 0 offen
	buffer_load_b128 v[17:20], v17, s[16:19], 0 offen
	buffer_load_b128 v[21:24], v21, s[16:19], 0 offen
	buffer_load_b128 v[25:28], v25, s[16:19], 0 offen
	buffer_load_b128 v[29:32], v29, s[16:19], 0 offen
	buffer_load_b128 v[33:36], v33, s[16:19], 0 offen
	buffer_load_b128 v[37:40], v37, s[16:19], 0 offen
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v171, v171
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v70, v70, v94 :: v_dual_add_f32 v81, v81, v176
	v_add_f32_e32 v78, v78, v173
	v_add_f32_e32 v126, v126, v153
	v_add_f32_e32 v128, v128, v155
	v_dual_add_f32 v88, v88, v191 :: v_dual_add_f32 v49, v49, v105
	v_dual_add_f32 v86, v86, v189 :: v_dual_add_f32 v51, v51, v107
	v_dual_add_f32 v130, v130, v185 :: v_dual_add_f32 v47, v47, v150
	v_dual_add_f32 v132, v132, v187 :: v_dual_add_f32 v45, v45, v148
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v52, v52, v108 :: v_dual_add_f32 v55, v55, v159
	v_dual_add_f32 v50, v50, v106 :: v_dual_add_f32 v117, v117, v156
	v_dual_add_f32 v48, v48, v151 :: v_dual_add_f32 v53, v53, v157
	v_dual_add_f32 v46, v46, v149 :: v_dual_add_f32 v123, v123, v162
	v_add_f32_e32 v56, v56, v160
	v_add_f32_e32 v54, v54, v158
	v_add_f32_e32 v124, v124, v161
	v_add_f32_e32 v122, v122, v163
	v_dual_add_f32 v60, v60, v100 :: v_dual_add_f32 v63, v63, v167
	v_dual_add_f32 v58, v58, v98 :: v_dual_add_f32 v121, v121, v164
	v_dual_add_f32 v44, v44, v104 :: v_dual_add_f32 v61, v61, v165
	v_dual_add_f32 v64, v64, v168 :: v_dual_add_f32 v119, v119, v170
	v_add_f32_e32 v62, v62, v166
	v_add_f32_e32 v120, v120, v169
	v_add_f32_e32 v118, v118, v171
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(7)
	ds_store_b128 v141, v[9:12]
	s_waitcnt vmcnt(6)
	ds_store_b128 v141, v[13:16] offset:4096
	s_waitcnt vmcnt(5)
	ds_store_b128 v141, v[17:20] offset:8192
	s_waitcnt vmcnt(4)
	ds_store_b128 v141, v[21:24] offset:12288
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b64 v142, v[112:113] offset:32768
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(3)
	ds_store_b128 v141, v[25:28] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v141, v[29:32] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v141, v[33:36] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v141, v[37:40] offset:28672
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v137
.LBB0_7:                                ; %Flow419
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v110, v125 :: v_dual_and_b32 v107, 6, v0
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v112, v127 :: v_dual_and_b32 v105, 0xe0, v0
	v_lshl_or_b32 v1, v107, 3, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v2, 0, 1, s21
	v_mov_b32_e32 v25, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v108, 1, v105
	v_dual_mov_b32 v134, v130 :: v_dual_add_nc_u32 v3, 0, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xad_u32 v4, v1, 16, 0
	v_xad_u32 v5, v1, 32, 0
	v_xad_u32 v1, v1, 48, 0
	ds_load_b128 v[101:104], v3 offset:32768
	ds_load_b128 v[89:92], v3 offset:33792
	ds_load_b128 v[97:100], v4 offset:32768
	ds_load_b128 v[37:40], v4 offset:33792
	ds_load_b128 v[93:96], v5 offset:32768
	ds_load_b128 v[33:36], v5 offset:33792
	ds_load_b128 v[9:12], v1 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[5:8], v1 offset:33792
	v_or_b32_e32 v13, v108, v115
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v2
	v_dual_mov_b32 v1, v85 :: v_dual_mov_b32 v28, v84
	v_mov_b32_e32 v17, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v136, v132 :: v_dual_add_nc_u32 v137, 0, v13
	v_mov_b32_e32 v13, v73
	v_mov_b32_e32 v21, v69
	v_dual_mov_b32 v29, v65 :: v_dual_and_b32 v106, 0xf0, v0
	v_mov_b32_e32 v111, v126
	v_dual_mov_b32 v113, v128 :: v_dual_mov_b32 v2, v86
	v_dual_mov_b32 v133, v129 :: v_dual_mov_b32 v4, v88
	v_dual_mov_b32 v135, v131 :: v_dual_mov_b32 v26, v82
	v_dual_mov_b32 v3, v87 :: v_dual_mov_b32 v18, v78
	v_dual_mov_b32 v27, v83 :: v_dual_mov_b32 v14, v74
	v_dual_mov_b32 v19, v79 :: v_dual_mov_b32 v22, v70
	v_dual_mov_b32 v20, v80 :: v_dual_mov_b32 v15, v75
	v_mov_b32_e32 v30, v66
	v_dual_mov_b32 v16, v76 :: v_dual_mov_b32 v23, v71
	v_dual_mov_b32 v24, v72 :: v_dual_mov_b32 v31, v67
	v_mov_b32_e32 v32, v68
	s_and_not1_b32 vcc_lo, exec_lo, s21
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v1, v137 offset:3328
	ds_load_u8 v2, v137 offset:3072
	ds_load_u8 v3, v137 offset:3840
	ds_load_u8 v4, v137 offset:3584
	ds_load_u8 v13, v137 offset:2304
	ds_load_u8 v14, v137 offset:2048
	ds_load_u8 v15, v137 offset:2816
	ds_load_u8 v16, v137 offset:2560
	ds_load_u8 v17, v137 offset:1280
	ds_load_u8 v18, v137 offset:1024
	ds_load_u8 v19, v137 offset:1792
	ds_load_u8 v20, v137 offset:1536
	ds_load_u8 v133, v137 offset:3968
	ds_load_u8 v134, v137 offset:3712
	ds_load_u8 v135, v137 offset:3456
	ds_load_u8 v138, v137 offset:3200
	ds_load_u8 v21, v137 offset:256
	ds_load_u8 v22, v137
	ds_load_u8 v23, v137 offset:768
	ds_load_u8 v24, v137 offset:512
	ds_load_u8 v139, v137 offset:2944
	ds_load_u8 v140, v137 offset:2688
	ds_load_u8 v141, v137 offset:2432
	ds_load_u8 v142, v137 offset:2176
	ds_load_u8 v25, v137 offset:6400
	ds_load_u8 v26, v137 offset:6144
	ds_load_u8 v27, v137 offset:6912
	ds_load_u8 v28, v137 offset:6656
	ds_load_u8 v29, v137 offset:5376
	ds_load_u8 v30, v137 offset:5120
	ds_load_u8 v31, v137 offset:5888
	ds_load_u8 v32, v137 offset:5632
	ds_load_u8 v110, v137 offset:4352
	ds_load_u8 v111, v137 offset:4096
	ds_load_u8 v112, v137 offset:4864
	ds_load_u8 v113, v137 offset:4608
	ds_load_u8 v151, v137 offset:8064
	ds_load_u8 v152, v137 offset:7808
	ds_load_u8 v153, v137 offset:7552
	ds_load_u8 v158, v137 offset:7296
	ds_load_u8 v143, v137 offset:1920
	ds_load_u8 v144, v137 offset:1664
	ds_load_u8 v145, v137 offset:1408
	ds_load_u8 v146, v137 offset:1152
	ds_load_u8 v147, v137 offset:896
	ds_load_u8 v148, v137 offset:640
	ds_load_u8 v149, v137 offset:384
	ds_load_u8 v150, v137 offset:128
	ds_load_u8 v159, v137 offset:7040
	ds_load_u8 v160, v137 offset:6784
	ds_load_u8 v161, v137 offset:6528
	ds_load_u8 v162, v137 offset:6272
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v163, v137 offset:6016
	ds_load_u8 v164, v137 offset:5760
	ds_load_u8 v165, v137 offset:5504
	ds_load_u8 v166, v137 offset:5248
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v155, v26, v25, 0xc0c0004
	v_perm_b32 v3, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v156, v28, v27, 0xc0c0004
	v_perm_b32 v13, v16, v15, 0xc0c0004
	v_lshl_or_b32 v4, v2, 16, v1
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	v_perm_b32 v1, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	v_lshl_or_b32 v3, v13, 16, v3
	v_perm_b32 v13, v24, v23, 0xc0c0004
	ds_load_u8 v21, v137 offset:7424
	ds_load_u8 v22, v137 offset:7168
	ds_load_u8 v23, v137 offset:7936
	ds_load_u8 v24, v137 offset:7680
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v111, v113, v112, 0xc0c0004
	ds_load_u8 v112, v137 offset:11520
	ds_load_u8 v113, v137 offset:11264
	ds_load_u8 v157, v137 offset:12032
	ds_load_u8 v171, v137 offset:11776
	v_perm_b32 v30, v32, v31, 0xc0c0004
	v_lshl_or_b32 v31, v156, 16, v155
	ds_load_u8 v167, v137 offset:4992
	ds_load_u8 v168, v137 offset:4736
	ds_load_u8 v169, v137 offset:4480
	ds_load_u8 v170, v137 offset:4224
	ds_load_u8 v184, v137 offset:10112
	ds_load_u8 v185, v137 offset:9856
	ds_load_u8 v186, v137 offset:9600
	ds_load_u8 v187, v137 offset:9344
	v_perm_b32 v135, v138, v135, 0xc0c0004
	v_lshl_or_b32 v30, v30, 16, v29
	v_lshl_or_b32 v29, v111, 16, v110
	v_perm_b32 v133, v134, v133, 0xc0c0004
	v_perm_b32 v134, v142, v141, 0xc0c0004
	v_perm_b32 v138, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v139, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v141, v150, v149, 0xc0c0004
	v_perm_b32 v142, v148, v147, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v147, v160, v159, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v148, v166, v165, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v136, v22, v21, 0xc0c0004
	v_perm_b32 v149, v164, v163, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v154, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v113, v171, v157, 0xc0c0004
	ds_load_u8 v157, v137 offset:8448
	ds_load_u8 v171, v137 offset:8192
	ds_load_u8 v178, v137 offset:8960
	ds_load_u8 v179, v137 offset:8704
	ds_load_u8 v180, v137 offset:11136
	ds_load_u8 v181, v137 offset:10880
	ds_load_u8 v182, v137 offset:10624
	ds_load_u8 v183, v137 offset:10368
	v_perm_b32 v14, v18, v17, 0xc0c0004
	v_lshl_or_b32 v32, v154, 16, v136
	ds_load_u8 v110, v137 offset:10496
	ds_load_u8 v111, v137 offset:10240
	ds_load_u8 v136, v137 offset:11008
	ds_load_u8 v154, v137 offset:10752
	ds_load_u8 v155, v137 offset:9472
	ds_load_u8 v156, v137 offset:9216
	ds_load_u8 v172, v137 offset:9984
	ds_load_u8 v173, v137 offset:9728
	ds_load_u8 v174, v137 offset:12160
	ds_load_u8 v175, v137 offset:11904
	ds_load_u8 v176, v137 offset:11648
	ds_load_u8 v177, v137 offset:11392
	v_lshl_or_b32 v113, v113, 16, v112
	v_perm_b32 v15, v20, v19, 0xc0c0004
	v_perm_b32 v140, v144, v143, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v150, v170, v169, 0xc0c0004
	v_lshl_or_b32 v159, v149, 16, v148
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v148, v187, v186, 0xc0c0004
	v_perm_b32 v149, v185, v184, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	v_perm_b32 v157, v171, v157, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v111, v154, v136, 0xc0c0004
	v_perm_b32 v178, v179, v178, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v136, v156, v155, 0xc0c0004
	ds_load_u8 v171, v137 offset:16128
	ds_load_u8 v190, v137 offset:15872
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v154, v173, v172, 0xc0c0004
	ds_load_u8 v155, v137 offset:15616
	ds_load_u8 v156, v137 offset:15360
	ds_load_u8 v172, v137 offset:9088
	ds_load_u8 v173, v137 offset:8832
	ds_load_u8 v188, v137 offset:8576
	ds_load_u8 v189, v137 offset:8320
	v_lshl_or_b32 v112, v111, 16, v110
	v_lshl_or_b32 v110, v178, 16, v157
	s_mov_b32 s6, s4
	v_lshl_or_b32 v111, v154, 16, v136
	ds_load_u8 v154, v137 offset:14592
	ds_load_u8 v157, v137 offset:14336
	ds_load_u8 v178, v137 offset:15104
	ds_load_u8 v179, v137 offset:14848
	ds_load_u8 v191, v137 offset:16256
	ds_load_u8 v192, v137 offset:16000
	ds_load_u8 v193, v137 offset:15744
	ds_load_u8 v194, v137 offset:15488
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_lshl_or_b32 v2, v15, 16, v14
	v_lshl_or_b32 v1, v13, 16, v1
	v_dual_mov_b32 v20, s11 :: v_dual_mov_b32 v19, s10
	v_dual_mov_b32 v18, s9 :: v_dual_mov_b32 v17, s8
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v136, v156, v155, 0xc0c0004
	ds_load_u8 v155, v137 offset:13568
	ds_load_u8 v156, v137 offset:13312
	ds_load_u8 v195, v137 offset:14080
	ds_load_u8 v196, v137 offset:13824
	v_perm_b32 v171, v190, v171, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v201, v157, v154, 0xc0c0004
	ds_load_u8 v190, v137 offset:12544
	ds_load_u8 v197, v137 offset:12288
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	ds_load_u8 v154, v137 offset:13056
	ds_load_u8 v157, v137 offset:12800
	ds_load_u8 v179, v137 offset:14208
	ds_load_u8 v202, v137 offset:13952
	ds_load_u8 v203, v137 offset:13696
	ds_load_u8 v204, v137 offset:13440
	v_lshl_or_b32 v136, v171, 16, v136
	ds_load_u8 v171, v137 offset:15232
	ds_load_u8 v198, v137 offset:14976
	ds_load_u8 v199, v137 offset:14720
	ds_load_u8 v200, v137 offset:14464
	v_dual_mov_b32 v16, s7 :: v_dual_mov_b32 v15, s6
	v_dual_mov_b32 v14, s5 :: v_dual_mov_b32 v13, s4
	v_lshl_or_b32 v163, v149, 16, v148
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v148, v192, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[21:28], v[1:4], v[101:104], v[13:20] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v205, v156, v155, 0xc0c0004
	v_lshl_or_b32 v156, v138, 16, v134
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v195, v196, v195, 0xc0c0004
	ds_load_u8 v196, v137 offset:13184
	ds_load_u8 v206, v137 offset:12928
	ds_load_u8 v207, v137 offset:12672
	ds_load_u8 v208, v137 offset:12416
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v146, v157, v154, 0xc0c0004
	v_lshl_or_b32 v157, v133, 16, v135
	v_perm_b32 v135, v162, v161, 0xc0c0004
	v_perm_b32 v133, v158, v153, 0xc0c0004
	v_perm_b32 v134, v152, v151, 0xc0c0004
	v_perm_b32 v151, v168, v167, 0xc0c0004
	v_perm_b32 v190, v197, v190, 0xc0c0004
	v_lshl_or_b32 v160, v147, 16, v135
	v_perm_b32 v135, v183, v182, 0xc0c0004
	v_perm_b32 v147, v181, v180, 0xc0c0004
	v_lshl_or_b32 v155, v140, 16, v139
	v_lshl_or_b32 v154, v142, 16, v141
	v_lshl_or_b32 v161, v134, 16, v133
	v_lshl_or_b32 v158, v151, 16, v150
	v_perm_b32 v133, v177, v176, 0xc0c0004
	v_perm_b32 v134, v175, v174, 0xc0c0004
	v_perm_b32 v150, v189, v188, 0xc0c0004
	v_perm_b32 v151, v173, v172, 0xc0c0004
	v_lshl_or_b32 v164, v147, 16, v135
	v_perm_b32 v147, v194, v193, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[138:145], v[154:157], v[101:104], v[13:20] neg_lo:[1,1,0]
	v_lshl_or_b32 v165, v134, 16, v133
	v_lshl_or_b32 v162, v151, 16, v150
	v_lshl_or_b32 v133, v146, 16, v190
	v_lshl_or_b32 v169, v148, 16, v147
	v_wmma_i32_16x16x16_iu8 v[146:153], v[1:4], v[89:92], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[13:20], v[154:157], v[89:92], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[21:28], v[29:32], v[97:100], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[158:161], v[97:100], v[138:145] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v166, v200, v199, 0xc0c0004
	v_perm_b32 v167, v198, v171, 0xc0c0004
	v_perm_b32 v170, v204, v203, 0xc0c0004
	v_perm_b32 v1, v202, v179, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v208, v207, 0xc0c0004
	v_perm_b32 v3, v206, v196, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[146:153], v[29:32], v[37:40], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[13:20], v[158:161], v[37:40], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[21:28], v[110:113], v[93:96], v[21:28] neg_lo:[1,1,0]
	v_lshl_or_b32 v135, v178, 16, v201
	v_lshl_or_b32 v134, v195, 16, v205
	v_wmma_i32_16x16x16_iu8 v[138:145], v[162:165], v[93:96], v[138:145] neg_lo:[1,1,0]
	v_lshl_or_b32 v168, v167, 16, v166
	v_lshl_or_b32 v167, v1, 16, v170
	v_lshl_or_b32 v166, v3, 16, v2
	v_wmma_i32_16x16x16_iu8 v[146:153], v[110:113], v[33:36], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[13:20], v[162:165], v[33:36], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[21:28], v[133:136], v[9:12], v[21:28] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[138:145], v[166:169], v[9:12], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[133:136], v[5:8], v[146:153] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[166:169], v[5:8], v[13:20] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v25
	v_cvt_f32_i32_e32 v2, v26
	v_cvt_f32_i32_e32 v3, v27
	v_cvt_f32_i32_e32 v4, v28
	v_cvt_f32_i32_e32 v25, v138
	v_cvt_f32_i32_e32 v26, v139
	v_cvt_f32_i32_e32 v27, v140
	v_cvt_f32_i32_e32 v28, v141
	v_cvt_f32_i32_e32 v29, v142
	v_cvt_f32_i32_e32 v30, v143
	v_cvt_f32_i32_e32 v31, v144
	v_cvt_f32_i32_e32 v32, v145
	v_cvt_f32_i32_e32 v133, v146
	v_cvt_f32_i32_e32 v134, v147
	v_cvt_f32_i32_e32 v135, v148
	v_cvt_f32_i32_e32 v136, v149
	v_cvt_f32_i32_e32 v138, v150
	v_cvt_f32_i32_e32 v139, v151
	v_cvt_f32_i32_e32 v140, v152
	v_cvt_f32_i32_e32 v141, v153
	v_cvt_f32_i32_e32 v142, v13
	v_cvt_f32_i32_e32 v143, v14
	v_cvt_f32_i32_e32 v144, v15
	v_cvt_f32_i32_e32 v145, v16
	v_cvt_f32_i32_e32 v146, v17
	v_cvt_f32_i32_e32 v147, v18
	v_cvt_f32_i32_e32 v148, v19
	v_cvt_f32_i32_e32 v13, v24
	v_cvt_f32_i32_e32 v14, v23
	v_cvt_f32_i32_e32 v17, v22
	v_cvt_f32_i32_e32 v18, v21
	v_cvt_f32_i32_e32 v149, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v16, v76, v13 :: v_dual_add_f32 v15, v75, v14
	v_dual_add_f32 v14, v74, v17 :: v_dual_add_f32 v13, v73, v18
	v_dual_add_f32 v24, v72, v4 :: v_dual_add_f32 v23, v71, v3
	v_dual_add_f32 v22, v70, v2 :: v_dual_add_f32 v21, v69, v1
	v_dual_add_f32 v110, v125, v25 :: v_dual_add_f32 v19, v79, v28
	v_dual_add_f32 v20, v80, v29 :: v_dual_add_f32 v17, v77, v26
	v_dual_add_f32 v18, v78, v27 :: v_dual_add_f32 v113, v128, v32
	v_dual_add_f32 v111, v126, v30 :: v_dual_add_f32 v112, v127, v31
	v_dual_add_f32 v28, v84, v136 :: v_dual_add_f32 v27, v83, v135
	v_dual_add_f32 v26, v82, v134 :: v_dual_add_f32 v25, v81, v133
	v_dual_add_f32 v32, v68, v141 :: v_dual_add_f32 v31, v67, v140
	v_dual_add_f32 v30, v66, v139 :: v_dual_add_f32 v29, v65, v138
	v_dual_add_f32 v133, v129, v142 :: v_dual_add_f32 v2, v86, v144
	v_dual_add_f32 v4, v88, v146 :: v_dual_add_f32 v3, v87, v145
	v_dual_add_f32 v1, v85, v143 :: v_dual_add_f32 v136, v132, v149
	v_dual_add_f32 v134, v130, v147 :: v_dual_add_f32 v135, v131, v148
.LBB0_9:
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	ds_load_u8 v65, v137 offset:19712
	ds_load_u8 v66, v137 offset:19456
	ds_load_u8 v67, v137 offset:20224
	ds_load_u8 v68, v137 offset:19968
	ds_load_u8 v69, v137 offset:18688
	ds_load_u8 v70, v137 offset:18432
	ds_load_u8 v71, v137 offset:19200
	ds_load_u8 v72, v137 offset:18944
	ds_load_u8 v73, v137 offset:17664
	ds_load_u8 v74, v137 offset:17408
	ds_load_u8 v75, v137 offset:18176
	ds_load_u8 v76, v137 offset:17920
	ds_load_u8 v81, v137 offset:20352
	ds_load_u8 v82, v137 offset:20096
	ds_load_u8 v83, v137 offset:19840
	ds_load_u8 v84, v137 offset:19584
	ds_load_u8 v142, v137 offset:18304
	ds_load_u8 v143, v137 offset:18048
	ds_load_u8 v144, v137 offset:17792
	ds_load_u8 v146, v137 offset:17536
	ds_load_u8 v147, v137 offset:17280
	ds_load_u8 v148, v137 offset:17024
	ds_load_u8 v149, v137 offset:16768
	ds_load_u8 v150, v137 offset:16512
	ds_load_u8 v156, v137 offset:23424
	ds_load_u8 v157, v137 offset:23168
	ds_load_u8 v158, v137 offset:22912
	ds_load_u8 v159, v137 offset:22656
	ds_load_u8 v162, v137 offset:22400
	ds_load_u8 v163, v137 offset:22144
	ds_load_u8 v164, v137 offset:21888
	ds_load_u8 v165, v137 offset:21632
	ds_load_u8 v166, v137 offset:21376
	ds_load_u8 v167, v137 offset:21120
	ds_load_u8 v168, v137 offset:20864
	ds_load_u8 v169, v137 offset:20608
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_mov_b32 s0, 0
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v66, v68, v67, 0xc0c0004
	ds_load_u8 v67, v137 offset:16640
	ds_load_u8 v68, v137 offset:16384
	ds_load_u8 v77, v137 offset:17152
	ds_load_u8 v78, v137 offset:16896
	ds_load_u8 v85, v137 offset:19328
	ds_load_u8 v86, v137 offset:19072
	ds_load_u8 v87, v137 offset:18816
	ds_load_u8 v88, v137 offset:18560
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_mov_b32 s7, s0
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v70, v72, v71, 0xc0c0004
	v_lshl_or_b32 v128, v66, 16, v65
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v71, v74, v73, 0xc0c0004
	s_mov_b32 s1, s0
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v72, v76, v75, 0xc0c0004
	ds_load_u8 v73, v137 offset:23808
	ds_load_u8 v74, v137 offset:23552
	ds_load_u8 v75, v137 offset:24320
	ds_load_u8 v76, v137 offset:24064
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_mov_b32 s2, s0
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_mov_b32 s3, s0
	s_mov_b32 s4, s0
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v65, v68, v67, 0xc0c0004
	s_mov_b32 s5, s0
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v66, v78, v77, 0xc0c0004
	ds_load_u8 v77, v137 offset:22784
	ds_load_u8 v78, v137 offset:22528
	ds_load_u8 v79, v137 offset:23296
	ds_load_u8 v80, v137 offset:23040
	ds_load_u8 v129, v137 offset:21760
	ds_load_u8 v130, v137 offset:21504
	ds_load_u8 v131, v137 offset:22272
	ds_load_u8 v132, v137 offset:22016
	ds_load_u8 v138, v137 offset:20736
	ds_load_u8 v139, v137 offset:20480
	ds_load_u8 v140, v137 offset:21248
	ds_load_u8 v141, v137 offset:20992
	ds_load_u8 v151, v137 offset:24448
	ds_load_u8 v152, v137 offset:24192
	ds_load_u8 v153, v137 offset:23936
	ds_load_u8 v154, v137 offset:23680
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v84, v86, v85, 0xc0c0004
	v_perm_b32 v85, v146, v144, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v82, v88, v87, 0xc0c0004
	v_perm_b32 v86, v143, v142, 0xc0c0004
	v_perm_b32 v87, v150, v149, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v160, v78, v77, 0xc0c0004
	v_perm_b32 v88, v148, v147, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v161, v80, v79, 0xc0c0004
	v_perm_b32 v145, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	v_perm_b32 v155, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v130, v132, v131, 0xc0c0004
	v_lshl_or_b32 v131, v161, 16, v160
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_mov_b32 s6, s0
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v139, v141, v140, 0xc0c0004
	ds_load_u8 v140, v137 offset:27904
	ds_load_u8 v141, v137 offset:27648
	ds_load_u8 v170, v137 offset:28416
	ds_load_u8 v171, v137 offset:28160
	v_lshl_or_b32 v132, v155, 16, v145
	v_lshl_or_b32 v130, v130, 16, v129
	v_lshl_or_b32 v127, v70, 16, v69
	v_lshl_or_b32 v129, v139, 16, v138
	ds_load_u8 v138, v137 offset:26880
	ds_load_u8 v139, v137 offset:26624
	ds_load_u8 v145, v137 offset:27392
	ds_load_u8 v155, v137 offset:27136
	ds_load_u8 v160, v137 offset:25856
	ds_load_u8 v161, v137 offset:25600
	ds_load_u8 v172, v137 offset:26368
	ds_load_u8 v173, v137 offset:26112
	ds_load_u8 v174, v137 offset:28544
	ds_load_u8 v175, v137 offset:28288
	ds_load_u8 v176, v137 offset:28032
	ds_load_u8 v177, v137 offset:27776
	v_lshl_or_b32 v126, v72, 16, v71
	v_lshl_or_b32 v125, v66, 16, v65
	v_dual_mov_b32 v72, s7 :: v_dual_mov_b32 v71, s6
	v_dual_mov_b32 v70, s5 :: v_dual_mov_b32 v69, s4
	v_dual_mov_b32 v68, s3 :: v_dual_mov_b32 v67, s2
	v_dual_mov_b32 v66, s1 :: v_dual_mov_b32 v65, s0
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v139, v155, v145, 0xc0c0004
	v_perm_b32 v140, v141, v140, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v145, v161, v160, 0xc0c0004
	v_perm_b32 v141, v171, v170, 0xc0c0004
	ds_load_u8 v170, v137 offset:24832
	ds_load_u8 v171, v137 offset:24576
	ds_load_u8 v178, v137 offset:25344
	ds_load_u8 v179, v137 offset:25088
	ds_load_u8 v180, v137 offset:27520
	ds_load_u8 v181, v137 offset:27264
	ds_load_u8 v182, v137 offset:27008
	ds_load_u8 v183, v137 offset:26752
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v160, v173, v172, 0xc0c0004
	ds_load_u8 v161, v137 offset:32000
	ds_load_u8 v172, v137 offset:31744
	ds_load_u8 v173, v137 offset:25472
	ds_load_u8 v187, v137 offset:25216
	ds_load_u8 v188, v137 offset:24960
	ds_load_u8 v189, v137 offset:24704
	ds_load_u8 v155, v137 offset:26496
	ds_load_u8 v184, v137 offset:26240
	ds_load_u8 v185, v137 offset:25984
	ds_load_u8 v186, v137 offset:25728
	v_lshl_or_b32 v141, v141, 16, v140
	v_lshl_or_b32 v140, v139, 16, v138
	v_lshl_or_b32 v139, v160, 16, v145
	v_lshl_or_b32 v149, v81, 16, v83
	v_lshl_or_b32 v148, v84, 16, v82
	v_lshl_or_b32 v147, v86, 16, v85
	v_lshl_or_b32 v146, v88, 16, v87
	v_perm_b32 v143, v154, v153, 0xc0c0004
	v_perm_b32 v144, v152, v151, 0xc0c0004
	v_perm_b32 v150, v159, v158, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v137 offset:32512
	ds_load_u8 v190, v137 offset:32256
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	v_perm_b32 v151, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v145, v172, v161, 0xc0c0004
	ds_load_u8 v161, v137 offset:29952
	ds_load_u8 v172, v137 offset:29696
	ds_load_u8 v195, v137 offset:30464
	ds_load_u8 v196, v137 offset:30208
	v_perm_b32 v152, v165, v164, 0xc0c0004
	v_lshl_or_b32 v138, v178, 16, v170
	ds_load_u8 v160, v137 offset:30976
	ds_load_u8 v170, v137 offset:30720
	ds_load_u8 v178, v137 offset:31488
	ds_load_u8 v179, v137 offset:31232
	ds_load_u8 v191, v137 offset:32640
	ds_load_u8 v192, v137 offset:32384
	ds_load_u8 v193, v137 offset:32128
	ds_load_u8 v194, v137 offset:31872
	v_perm_b32 v153, v163, v162, 0xc0c0004
	v_perm_b32 v154, v169, v168, 0xc0c0004
	v_perm_b32 v156, v167, v166, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[73:80], v[125:128], v[101:104], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[146:149], v[101:104], v[65:72] neg_lo:[1,1,0]
	v_lshl_or_b32 v104, v144, 16, v143
	v_lshl_or_b32 v103, v151, 16, v150
	v_lshl_or_b32 v102, v153, 16, v152
	v_lshl_or_b32 v101, v156, 16, v154
	v_perm_b32 v143, v177, v176, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v171, v190, v171, 0xc0c0004
	ds_load_u8 v190, v137 offset:28928
	ds_load_u8 v197, v137 offset:28672
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v160, v170, v160, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v170, v179, v178, 0xc0c0004
	ds_load_u8 v178, v137 offset:29440
	ds_load_u8 v179, v137 offset:29184
	ds_load_u8 v201, v137 offset:30592
	ds_load_u8 v202, v137 offset:30336
	ds_load_u8 v203, v137 offset:30080
	ds_load_u8 v204, v137 offset:29824
	v_lshl_or_b32 v145, v171, 16, v145
	ds_load_u8 v171, v137 offset:31616
	ds_load_u8 v198, v137 offset:31360
	ds_load_u8 v199, v137 offset:31104
	ds_load_u8 v200, v137 offset:30848
	v_perm_b32 v161, v172, v161, 0xc0c0004
	v_perm_b32 v172, v196, v195, 0xc0c0004
	ds_load_u8 v195, v137 offset:29568
	ds_load_u8 v196, v137 offset:29312
	ds_load_u8 v205, v137 offset:29056
	ds_load_u8 v137, v137 offset:28800
	v_perm_b32 v144, v175, v174, 0xc0c0004
	v_perm_b32 v150, v183, v182, 0xc0c0004
	v_perm_b32 v151, v181, v180, 0xc0c0004
	v_perm_b32 v154, v186, v185, 0xc0c0004
	v_perm_b32 v155, v184, v155, 0xc0c0004
	v_perm_b32 v156, v189, v188, 0xc0c0004
	v_perm_b32 v157, v187, v173, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[73:80], v[129:132], v[97:100], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[101:104], v[97:100], v[81:88] neg_lo:[1,1,0]
	v_lshl_or_b32 v153, v144, 16, v143
	v_lshl_or_b32 v152, v151, 16, v150
	v_lshl_or_b32 v151, v155, 16, v154
	v_lshl_or_b32 v150, v157, 16, v156
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v97, v194, v193, 0xc0c0004
	v_perm_b32 v98, v192, v191, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[73:80], v[138:141], v[93:96], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v190, v197, v190, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[81:88], v[150:153], v[93:96], v[81:88] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v142, v179, v178, 0xc0c0004
	v_lshl_or_b32 v157, v98, 16, v97
	v_wmma_i32_16x16x16_iu8 v[93:100], v[125:128], v[89:92], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[146:149], v[89:92], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v154, v200, v199, 0xc0c0004
	v_perm_b32 v155, v198, v171, 0xc0c0004
	v_perm_b32 v158, v204, v203, 0xc0c0004
	v_perm_b32 v89, v202, v201, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v137, v205, 0xc0c0004
	v_perm_b32 v91, v196, v195, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[93:100], v[129:132], v[37:40], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[101:104], v[37:40], v[65:72] neg_lo:[1,1,0]
	v_lshl_or_b32 v144, v170, 16, v160
	v_lshl_or_b32 v143, v172, 16, v161
	v_lshl_or_b32 v142, v142, 16, v190
	v_lshl_or_b32 v156, v155, 16, v154
	v_lshl_or_b32 v155, v89, 16, v158
	v_lshl_or_b32 v154, v91, 16, v90
	v_wmma_i32_16x16x16_iu8 v[93:100], v[138:141], v[33:36], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[150:153], v[33:36], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[142:145], v[9:12], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[81:88], v[154:157], v[9:12], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[142:145], v[5:8], v[93:100] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[154:157], v[5:8], v[65:72] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v5, v73
	v_cvt_f32_i32_e32 v6, v74
	v_cvt_f32_i32_e32 v7, v75
	v_cvt_f32_i32_e32 v8, v76
	v_cvt_f32_i32_e32 v9, v77
	v_cvt_f32_i32_e32 v10, v78
	v_cvt_f32_i32_e32 v11, v79
	v_cvt_f32_i32_e32 v12, v80
	v_cvt_f32_i32_e32 v33, v81
	v_cvt_f32_i32_e32 v34, v82
	v_cvt_f32_i32_e32 v35, v83
	v_cvt_f32_i32_e32 v36, v84
	v_cvt_f32_i32_e32 v37, v85
	v_cvt_f32_i32_e32 v38, v86
	v_cvt_f32_i32_e32 v39, v87
	v_cvt_f32_i32_e32 v40, v88
	v_cvt_f32_i32_e32 v73, v93
	v_cvt_f32_i32_e32 v74, v94
	v_cvt_f32_i32_e32 v75, v95
	v_cvt_f32_i32_e32 v76, v96
	v_cvt_f32_i32_e32 v77, v97
	v_cvt_f32_i32_e32 v78, v98
	v_cvt_f32_i32_e32 v79, v99
	v_cvt_f32_i32_e32 v80, v100
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v52, v52, v8 :: v_dual_add_f32 v51, v51, v7
	v_dual_add_f32 v50, v50, v6 :: v_dual_add_f32 v49, v49, v5
	v_dual_add_f32 v48, v48, v12 :: v_dual_add_f32 v47, v47, v11
	v_dual_add_f32 v46, v46, v10 :: v_dual_add_f32 v45, v45, v9
	v_dual_add_f32 v117, v117, v33 :: v_dual_add_f32 v54, v54, v35
	v_dual_add_f32 v56, v56, v37 :: v_dual_add_f32 v55, v55, v36
	v_dual_add_f32 v53, v53, v34 :: v_dual_add_f32 v122, v122, v40
	v_dual_add_f32 v124, v124, v38 :: v_dual_add_f32 v123, v123, v39
	v_dual_add_f32 v60, v60, v76 :: v_dual_add_f32 v59, v59, v75
	v_dual_add_f32 v58, v58, v74 :: v_dual_add_f32 v57, v57, v73
	v_dual_add_f32 v44, v44, v80 :: v_dual_add_f32 v43, v43, v79
	v_dual_add_f32 v42, v42, v78 :: v_dual_add_f32 v41, v41, v77
	v_dual_add_f32 v121, v121, v65 :: v_dual_add_f32 v62, v62, v67
	v_dual_add_f32 v64, v64, v69 :: v_dual_add_f32 v63, v63, v68
	v_dual_add_f32 v61, v61, v66 :: v_dual_add_f32 v118, v118, v72
	v_dual_add_f32 v120, v120, v70 :: v_dual_add_f32 v119, v119, v71
	s_branch .LBB0_12
.LBB0_11:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	v_dual_mov_b32 v1, v85 :: v_dual_mov_b32 v2, v86
	v_dual_mov_b32 v25, v81 :: v_dual_mov_b32 v26, v82
	v_dual_mov_b32 v17, v77 :: v_dual_mov_b32 v18, v78
	v_dual_mov_b32 v13, v73 :: v_dual_mov_b32 v14, v74
	v_dual_mov_b32 v21, v69 :: v_dual_mov_b32 v22, v70
	v_dual_mov_b32 v29, v65 :: v_dual_mov_b32 v30, v66
	v_dual_mov_b32 v136, v132 :: v_dual_mov_b32 v135, v131
	v_dual_mov_b32 v134, v130 :: v_dual_mov_b32 v133, v129
	v_dual_mov_b32 v113, v128 :: v_dual_mov_b32 v112, v127
	v_dual_mov_b32 v111, v126 :: v_dual_mov_b32 v110, v125
	v_dual_mov_b32 v3, v87 :: v_dual_mov_b32 v4, v88
	v_dual_mov_b32 v27, v83 :: v_dual_mov_b32 v28, v84
	v_dual_mov_b32 v19, v79 :: v_dual_mov_b32 v20, v80
	v_dual_mov_b32 v15, v75 :: v_dual_mov_b32 v16, v76
	v_dual_mov_b32 v23, v71 :: v_dual_mov_b32 v24, v72
	v_dual_mov_b32 v31, v67 :: v_dual_mov_b32 v32, v68
.LBB0_12:
	.loc	1 434 22 is_stmt 1              ; generate_amdgcn.py:434:22
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v5, s34, v115
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s45, s37, 0xffff
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	s_mov_b32 s44, s36
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_lshlrev_b32_e32 v5, 1, v5
	.loc	1 435 22 is_stmt 1              ; generate_amdgcn.py:435:22
	v_or_b32_e32 v6, s20, v0
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s20, s20, s31
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v74, v106, 1, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_or_b32_e32 v7, 32, v5
	s_clause 0x1
	buffer_load_u16 v67, v5, s[44:47], 0 offen
	buffer_load_u16 v68, v7, s[44:47], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s45, s39, 0xffff
	s_mov_b32 s44, s38
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v72, 16, v67
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v6, 1, v6
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v67, 16, v68
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v66, 1, v0
	v_lshlrev_b32_e32 v65, 5, v0
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v5, v6, s[44:47], 0 offen
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v6, v106, 2, 0
	v_and_b32_e32 v7, 28, v66
	v_and_b32_e32 v8, 32, v65
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v73, v6, v8, v7
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v6, s20, v0, 1
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_store_b32 v73, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	buffer_load_u16 v75, v6, s[44:47], 0 offen
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_load_b128 v[5:8], v74 offset:512
	ds_load_b128 v[9:12], v74 offset:528
	ds_load_b128 v[37:40], v74
	ds_load_b128 v[33:36], v74 offset:16
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp16:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s45, s41, 0xffff
	s_mov_b32 s44, s40
.Ltmp17:
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v68, v5, v72
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v71, v110, v68
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v69, v10, v72
	v_mul_f32_e32 v76, v11, v72
	v_mul_f32_e32 v77, v12, v72
	v_mul_f32_e32 v80, v40, v72
	v_mul_f32_e32 v89, v7, v72
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v70, v111, v69 :: v_dual_mul_f32 v5, v5, v67
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v10, v10, v67
	v_mul_f32_e32 v11, v11, v67
	v_dual_mul_f32 v78, v12, v67 :: v_dual_mul_f32 v79, v39, v72
	v_dual_mul_f32 v92, v40, v67 :: v_dual_mul_f32 v81, v38, v72
	v_mul_f32_e32 v94, v37, v67
	v_dual_mul_f32 v82, v37, v72 :: v_dual_mul_f32 v91, v39, v67
	v_dual_mul_f32 v85, v34, v72 :: v_dual_mul_f32 v98, v33, v67
	v_dual_mul_f32 v86, v33, v72 :: v_dual_mul_f32 v95, v36, v67
	v_dual_mul_f32 v83, v36, v72 :: v_dual_mul_f32 v96, v35, v67
	v_dual_mul_f32 v84, v35, v72 :: v_dual_mul_f32 v93, v38, v67
	v_mul_f32_e32 v87, v9, v72
	v_dual_mul_f32 v88, v8, v72 :: v_dual_mul_f32 v97, v34, v67
	v_mul_f32_e32 v90, v6, v72
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v69, v112, v76 :: v_dual_mul_f32 v12, v133, v5
	v_dual_mul_f32 v68, v113, v77 :: v_dual_mul_f32 v5, v134, v10
	v_mul_f32_e32 v38, v16, v80
	v_dual_mul_f32 v10, v135, v11 :: v_dual_mul_f32 v11, v136, v78
	v_dual_mul_f32 v39, v14, v81 :: v_dual_mul_f32 v36, v15, v79
	v_dual_mul_f32 v37, v21, v86 :: v_dual_mul_f32 v34, v23, v84
	v_mul_f32_e32 v35, v22, v85
	v_dual_mul_f32 v23, v18, v89 :: v_dual_mul_f32 v14, v27, v91
	v_dual_mul_f32 v21, v20, v87 :: v_dual_mul_f32 v20, v26, v93
	v_mul_f32_e32 v40, v13, v82
	v_dual_mul_f32 v13, v29, v98 :: v_dual_mul_f32 v18, v32, v95
	v_dual_mul_f32 v22, v19, v88 :: v_dual_mul_f32 v19, v25, v94
	v_dual_mul_f32 v16, v30, v97 :: v_dual_mul_f32 v7, v7, v67
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v2, v2, v7
	.loc	1 438 23 is_stmt 1              ; generate_amdgcn.py:438:23
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v75
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	ds_store_b32 v73, v33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[75:78], v74 offset:512
	ds_load_b128 v[79:82], v74 offset:528
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v33, v24, v83 :: v_dual_mul_f32 v24, v17, v90
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	ds_load_b128 v[83:86], v74
	ds_load_b128 v[87:90], v74 offset:16
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v17, v28, v92
	v_mul_f32_e32 v15, v31, v96
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp19:
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v25, v75, v72
	v_dual_mul_f32 v26, v80, v72 :: v_dual_mul_f32 v29, v75, v67
	v_dual_mul_f32 v28, v82, v72 :: v_dual_mul_f32 v31, v81, v67
	v_mul_f32_e32 v73, v85, v72
	v_dual_mul_f32 v75, v84, v72 :: v_dual_mul_f32 v102, v79, v67
	v_mul_f32_e32 v91, v83, v72
	v_dual_mul_f32 v92, v90, v72 :: v_dual_mul_f32 v101, v83, v67
	v_mul_f32_e32 v94, v88, v72
	v_dual_mul_f32 v95, v87, v72 :: v_dual_mul_f32 v104, v77, v67
	v_dual_mul_f32 v98, v77, v72 :: v_dual_mul_f32 v87, v87, v67
	v_mul_f32_e32 v90, v90, v67
	v_mul_f32_e32 v88, v88, v67
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v83, v124, v26 :: v_dual_mul_f32 v28, v122, v28
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v27, v81, v72 :: v_dual_mul_f32 v100, v84, v67
	v_mul_f32_e32 v30, v80, v67
	v_dual_mul_f32 v74, v86, v72 :: v_dual_mul_f32 v85, v85, v67
	v_dual_mul_f32 v93, v89, v72 :: v_dual_mul_f32 v110, v76, v67
	v_dual_mul_f32 v96, v79, v72 :: v_dual_mul_f32 v103, v78, v67
	v_mul_f32_e32 v86, v86, v67
	v_dual_mul_f32 v97, v78, v72 :: v_dual_mul_f32 v84, v117, v25
	v_mul_f32_e32 v89, v89, v67
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v25, v121, v29 :: v_dual_mul_f32 v26, v120, v30
	v_dual_mul_f32 v78, v50, v75 :: v_dual_mul_f32 v77, v52, v74
	v_dual_mul_f32 v75, v45, v95 :: v_dual_mul_f32 v74, v46, v94
	v_mul_f32_e32 v45, v41, v87
	v_dual_mul_f32 v41, v42, v88 :: v_dual_mul_f32 v42, v44, v90
	v_dual_mul_f32 v29, v62, v104 :: v_dual_mul_f32 v44, 0xbfb8aa3b, v83
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v32, v82, v67 :: v_dual_mul_f32 v99, v76, v72
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_mul_f32_e32 v82, v123, v27
	v_mul_f32_e32 v81, v119, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v44
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v80, v118, v32 :: v_dual_mul_f32 v53, v53, v99
	v_mul_f32_e32 v52, v54, v98
	v_dual_mul_f32 v32, v43, v89 :: v_dual_mul_f32 v43, 0xbfb8aa3b, v84
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v54, 0xbfb8aa3b, v82
	v_cndmask_b32_e64 v44, 0, 0x42800000, s0
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v27, v61, v110 :: v_dual_mul_f32 v30, v63, v103
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v99, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v54
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v83
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v79, v49, v91 :: v_dual_mul_f32 v76, v51, v73
	v_dual_mul_f32 v73, v47, v93 :: v_dual_mul_f32 v72, v48, v92
	v_dual_mul_f32 v51, v55, v97 :: v_dual_mul_f32 v50, v56, v96
	v_dual_mul_f32 v47, v60, v86 :: v_dual_mul_f32 v46, v59, v85
	v_dual_mul_f32 v31, v64, v102 :: v_dual_mul_f32 v56, 0xbfb8aa3b, v25
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v59, 0xbfb8aa3b, v80 :: v_dual_mul_f32 v62, 0xbfb8aa3b, v78
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	v_mul_f32_e32 v55, 0xbfb8aa3b, v28
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v49, v57, v101 :: v_dual_mul_f32 v48, v58, v100
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, s1
	v_mul_f32_e32 v103, 0xbfb8aa3b, v27
	v_exp_f32_e32 v44, v44
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v56
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v59
	v_dual_mul_f32 v57, 0xbfb8aa3b, v26 :: v_dual_mul_f32 v60, 0xbfb8aa3b, v76
	v_dual_mul_f32 v58, 0xbfb8aa3b, v81 :: v_dual_mul_f32 v63, 0xbfb8aa3b, v79
	v_mul_f32_e32 v86, 0xbfb8aa3b, v74
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v55
	v_dual_mul_f32 v93, 0xbfb8aa3b, v47 :: v_dual_mul_f32 v96, 0xbfb8aa3b, v42
	v_dual_mul_f32 v89, 0xbfb8aa3b, v51 :: v_dual_mul_f32 v92, 0xbfb8aa3b, v46
	v_dual_mul_f32 v91, 0xbfb8aa3b, v53 :: v_dual_mul_f32 v94, 0xbfb8aa3b, v48
	v_dual_mul_f32 v95, 0xbfb8aa3b, v49 :: v_dual_mul_f32 v100, 0xbfb8aa3b, v31
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v62
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v99
	v_cndmask_b32_e64 v110, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v82
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v103
	v_dual_mul_f32 v85, 0xbfb8aa3b, v73 :: v_dual_mul_f32 v88, 0xbfb8aa3b, v50
	v_cndmask_b32_e64 v56, 0, 0x42800000, s3
	v_cndmask_b32_e64 v59, 0, 0x42800000, s6
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v84
	v_dual_mul_f32 v61, 0xbfb8aa3b, v77 :: v_dual_mul_f32 v64, 0xbfb8aa3b, v72
	v_dual_mul_f32 v87, 0xbfb8aa3b, v75 :: v_dual_mul_f32 v90, 0xbfb8aa3b, v52
	v_cndmask_b32_e64 v55, 0, 0x42800000, s2
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v57
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v58
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v63
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v86
	v_dual_mul_f32 v97, 0xbfb8aa3b, v32 :: v_dual_mul_f32 v98, 0xbfb8aa3b, v41
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v60
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v93
	v_cndmask_b32_e64 v62, 0, 0x42800000, s8
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v91
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v89
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v92
	v_cndmask_b32_e64 v99, 0, 0x42800000, s23
	v_cndmask_b32_e64 v103, 0, 0x42800000, s27
	v_cmp_gt_f32_e64 s30, 0xc2fc0000, v100
	v_exp_f32_e32 v54, v54
	v_ldexp_f32 v44, v44, v110
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v85
	v_dual_fmac_f32 v56, 0xbfb8aa3b, v25 :: v_dual_fmac_f32 v59, 0xbfb8aa3b, v80
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v78
	v_exp_f32_e32 v43, v43
	v_cndmask_b32_e64 v57, 0, 0x42800000, s4
	v_cndmask_b32_e64 v58, 0, 0x42800000, s5
	v_cndmask_b32_e64 v63, 0, 0x42800000, s7
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v61
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v87
	v_cndmask_b32_e64 v86, 0, 0x42800000, s12
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v90
	v_dual_fmac_f32 v55, 0xbfb8aa3b, v28 :: v_dual_fmac_f32 v58, 0xbfb8aa3b, v81
	v_cndmask_b32_e64 v60, 0, 0x42800000, s10
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v95
	v_cndmask_b32_e64 v93, 0, 0x42800000, s21
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v98
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v96
	v_cndmask_b32_e64 v91, 0, 0x42800000, s15
	v_cndmask_b32_e64 v89, 0, 0x42800000, s17
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v94
	v_cndmask_b32_e64 v92, 0, 0x42800000, s22
	v_cndmask_b32_e64 v100, 0, 0x42800000, s30
	v_cndmask_b32_e64 v111, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v99, 0xbfb8aa3b, v45
	v_dual_fmac_f32 v103, 0xbfb8aa3b, v27 :: v_dual_add_f32 v44, 1.0, v44
	v_cndmask_b32_e64 v85, 0, 0x42800000, s13
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v88
	v_cndmask_b32_e64 v104, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v59, v59
	v_dual_mul_f32 v101, 0xbfb8aa3b, v30 :: v_dual_mul_f32 v102, 0xbfb8aa3b, v29
	v_cndmask_b32_e64 v61, 0, 0x42800000, s9
	v_cndmask_b32_e64 v87, 0, 0x42800000, s11
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v64
	v_cndmask_b32_e64 v90, 0, 0x42800000, s16
	v_cmp_gt_f32_e64 s25, 0xc2fc0000, v97
	v_dual_fmac_f32 v57, 0xbfb8aa3b, v26 :: v_dual_fmac_f32 v60, 0xbfb8aa3b, v76
	v_dual_fmac_f32 v63, 0xbfb8aa3b, v79 :: v_dual_fmac_f32 v86, 0xbfb8aa3b, v74
	v_exp_f32_e32 v55, v55
	v_cndmask_b32_e64 v95, 0, 0x42800000, s19
	v_cndmask_b32_e64 v98, 0, 0x42800000, s24
	v_cndmask_b32_e64 v96, 0, 0x42800000, s26
	v_fmac_f32_e32 v93, 0xbfb8aa3b, v47
	v_exp_f32_e32 v56, v56
	v_cndmask_b32_e64 v94, 0, 0x42800000, s20
	v_fmac_f32_e32 v91, 0xbfb8aa3b, v53
	v_dual_fmac_f32 v89, 0xbfb8aa3b, v51 :: v_dual_fmac_f32 v92, 0xbfb8aa3b, v46
	v_fmac_f32_e32 v100, 0xbfb8aa3b, v31
	v_exp_f32_e32 v62, v62
	v_exp_f32_e32 v99, v99
	v_ldexp_f32 v54, v54, v111
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_scale_f32 v111, null, v44, v44, v83
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v88, 0, 0x42800000, s18
	v_cndmask_b32_e64 v119, 0, 0xffffffc0, s6
	v_fmac_f32_e32 v85, 0xbfb8aa3b, v73
	v_ldexp_f32 v43, v43, v104
	v_cndmask_b32_e64 v64, 0, 0x42800000, s14
	v_cndmask_b32_e64 v97, 0, 0x42800000, s25
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v102
	v_cndmask_b32_e64 v112, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v61, 0xbfb8aa3b, v77 :: v_dual_fmac_f32 v64, 0xbfb8aa3b, v72
	v_dual_fmac_f32 v87, 0xbfb8aa3b, v75 :: v_dual_fmac_f32 v90, 0xbfb8aa3b, v52
	v_exp_f32_e32 v57, v57
	v_exp_f32_e32 v58, v58
	v_exp_f32_e32 v63, v63
	v_exp_f32_e32 v86, v86
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v101
	v_cndmask_b32_e64 v113, 0, 0xffffffc0, s3
	v_dual_fmac_f32 v95, 0xbfb8aa3b, v49 :: v_dual_fmac_f32 v96, 0xbfb8aa3b, v42
	v_fmac_f32_e32 v98, 0xbfb8aa3b, v41
	v_exp_f32_e32 v60, v60
	v_exp_f32_e32 v93, v93
	v_cndmask_b32_e64 v121, 0, 0xffffffc0, s8
	v_fmac_f32_e32 v94, 0xbfb8aa3b, v48
	v_cndmask_b32_e64 v136, 0, 0xffffffc0, s23
	v_exp_f32_e32 v91, v91
	v_exp_f32_e32 v89, v89
	v_exp_f32_e32 v92, v92
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v172, v111
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v88, 0xbfb8aa3b, v50
	v_exp_f32_e32 v85, v85
	v_ldexp_f32 v59, v59, v119
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v43, 1.0, v43 :: v_dual_add_f32 v54, 1.0, v54
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v102, 0, 0x42800000, s28
	v_cndmask_b32_e64 v117, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v118, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v120, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v125, 0, 0xffffffc0, s12
	v_dual_fmac_f32 v97, 0xbfb8aa3b, v32 :: v_dual_fmac_f32 v102, 0xbfb8aa3b, v29
	v_exp_f32_e32 v61, v61
	v_exp_f32_e32 v87, v87
	v_exp_f32_e32 v90, v90
	v_ldexp_f32 v55, v55, v112
	v_cndmask_b32_e64 v101, 0, 0x42800000, s29
	v_cndmask_b32_e64 v123, 0, 0xffffffc0, s10
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, s21
	v_exp_f32_e32 v96, v96
	v_ldexp_f32 v56, v56, v113
	v_cndmask_b32_e64 v128, 0, 0xffffffc0, s15
	v_cndmask_b32_e64 v130, 0, 0xffffffc0, s17
	v_cndmask_b32_e64 v135, 0, 0xffffffc0, s22
	v_exp_f32_e32 v94, v94
	v_ldexp_f32 v62, v62, v121
	v_ldexp_f32 v99, v99, v136
	v_cndmask_b32_e64 v126, 0, 0xffffffc0, s13
	v_exp_f32_e32 v88, v88
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v59, 1.0, v59 :: v_dual_add_f32 v62, 1.0, v62
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v104, null, v43, v43, v84
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v122, 0, 0xffffffc0, s9
	v_cndmask_b32_e64 v124, 0, 0xffffffc0, s11
	v_cndmask_b32_e64 v129, 0, 0xffffffc0, s16
	v_exp_f32_e32 v64, v64
	v_exp_f32_e32 v97, v97
	v_ldexp_f32 v57, v57, v117
	v_ldexp_f32 v58, v58, v118
	v_ldexp_f32 v63, v63, v120
	v_ldexp_f32 v86, v86, v125
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v55, 1.0, v55
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, s26
	v_dual_fmac_f32 v101, 0xbfb8aa3b, v30 :: v_dual_add_f32 v56, 1.0, v56
	v_exp_f32_e32 v95, v95
	v_exp_f32_e32 v98, v98
	v_ldexp_f32 v60, v60, v123
	v_ldexp_f32 v93, v93, v134
	v_cndmask_b32_e64 v133, 0, 0xffffffc0, s20
	v_ldexp_f32 v91, v91, v128
	v_ldexp_f32 v89, v89, v130
	v_ldexp_f32 v92, v92, v135
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v113, null, v54, v54, v82
	v_fma_f32 v201, -v111, v172, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v99, 1.0, v99
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v131, 0, 0xffffffc0, s18
	v_ldexp_f32 v85, v85, v126
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v126, null, v59, v59, v80
	v_rcp_f32_e32 v171, v104
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v127, 0, 0xffffffc0, s14
	v_cndmask_b32_e64 v138, 0, 0xffffffc0, s25
	v_exp_f32_e32 v102, v102
	v_ldexp_f32 v61, v61, v122
	v_ldexp_f32 v87, v87, v124
	v_ldexp_f32 v90, v90, v129
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v57, 1.0, v57 :: v_dual_add_f32 v60, 1.0, v60
	v_dual_add_f32 v58, 1.0, v58 :: v_dual_add_f32 v63, 1.0, v63
	v_add_f32_e32 v86, 1.0, v86
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v118, null, v55, v55, v28
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v132, 0, 0xffffffc0, s19
	v_cndmask_b32_e64 v137, 0, 0xffffffc0, s24
	v_ldexp_f32 v96, v96, v139
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v93, 1.0, v93
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v120, null, v56, v56, v25
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v94, v94, v133
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v89, 1.0, v89 :: v_dual_add_f32 v92, 1.0, v92
	v_add_f32_e32 v91, 1.0, v91
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v130, null, v62, v62, v78
	v_rcp_f32_e32 v173, v113
	v_fmac_f32_e32 v172, v201, v172
	v_div_scale_f32 v161, null, v99, v99, v45
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v88, v88, v131
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v178, v126
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v141, 0, 0xffffffc0, s28
	v_exp_f32_e32 v101, v101
	v_ldexp_f32 v64, v64, v127
	v_ldexp_f32 v97, v97, v138
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v61, 1.0, v61
	v_dual_add_f32 v87, 1.0, v87 :: v_dual_add_f32 v90, 1.0, v90
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v122, null, v57, v57, v26
	v_div_scale_f32 v124, null, v58, v58, v81
	v_div_scale_f32 v138, null, v86, v86, v74
	v_rcp_f32_e32 v174, v118
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v95, v95, v132
	v_ldexp_f32 v98, v98, v137
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v96, 1.0, v96
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v134, null, v60, v60, v76
	v_div_scale_f32 v157, null, v93, v93, v47
	v_rcp_f32_e32 v175, v120
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v103, v103
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v94, 1.0, v94
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v145, null, v91, v91, v53
	v_div_scale_f32 v159, null, v92, v92, v46
	v_rcp_f32_e32 v180, v130
	v_rcp_f32_e32 v195, v161
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v85, 1.0, v85 :: v_dual_add_f32 v88, 1.0, v88
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v200, -v104, v171, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v142, 0, 0xffffffc0, s29
	v_ldexp_f32 v102, v102, v141
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v64, 1.0, v64 :: v_dual_add_f32 v97, 1.0, v97
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v128, null, v63, v63, v79
	v_div_scale_f32 v132, null, v61, v61, v77
	v_div_scale_f32 v147, null, v90, v90, v52
	v_rcp_f32_e32 v176, v122
	v_rcp_f32_e32 v177, v124
	v_rcp_f32_e32 v184, v138
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v95, 1.0, v95 :: v_dual_add_f32 v98, 1.0, v98
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v182, v134
	v_rcp_f32_e32 v193, v157
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v140, 0, 0xffffffc0, s27
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v187, v145
	v_rcp_f32_e32 v194, v159
	v_fma_f32 v202, -v113, v173, 1.0
	v_div_scale_f32 v110, vcc_lo, v84, v43, v84
	v_div_scale_f32 v136, null, v87, v87, v75
	v_div_scale_f32 v151, null, v88, v88, v50
	v_fma_f32 v207, -v126, v178, 1.0
	v_fmac_f32_e32 v171, v200, v171
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v101, v101, v142
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v102, 1.0, v102
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v142, null, v64, v64, v72
	v_div_scale_f32 v165, null, v97, v97, v32
	v_rcp_f32_e32 v179, v128
	v_rcp_f32_e32 v181, v132
	v_rcp_f32_e32 v188, v147
	v_fma_f32 v203, -v118, v174, 1.0
	v_div_scale_f32 v112, s25, v83, v44, v83
	v_div_scale_f32 v149, null, v89, v89, v51
	v_div_scale_f32 v163, null, v98, v98, v41
	v_fma_f32 v204, -v120, v175, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v103, v103, v140
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v117, s26, v82, v54, v82
	v_div_scale_f32 v140, null, v85, v85, v73
	v_div_scale_f32 v155, null, v94, v94, v48
	v_fma_f32 v209, -v130, v180, 1.0
	v_fma_f32 v224, -v161, v195, 1.0
	v_fmac_f32_e32 v173, v202, v173
	v_rcp_f32_e32 v183, v136
	v_rcp_f32_e32 v190, v151
	v_fmac_f32_e32 v178, v207, v178
	v_dual_mul_f32 v200, v110, v171 :: v_dual_mul_f32 v201, v112, v172
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v101, 1.0, v101 :: v_dual_fmac_f32 v174, v203, v174
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v119, s24, v28, v55, v28
	v_rcp_f32_e32 v186, v142
	v_rcp_f32_e32 v197, v165
	v_fma_f32 v205, -v122, v176, 1.0
	v_fma_f32 v206, -v124, v177, 1.0
	v_fma_f32 v213, -v138, v184, 1.0
	v_div_scale_f32 v121, s23, v25, v56, v25
	v_rcp_f32_e32 v189, v149
	v_rcp_f32_e32 v196, v163
	v_fma_f32 v211, -v134, v182, 1.0
	v_fma_f32 v222, -v157, v193, 1.0
	v_fmac_f32_e32 v175, v204, v175
	v_rcp_f32_e32 v185, v140
	v_rcp_f32_e32 v192, v155
	v_fma_f32 v216, -v145, v187, 1.0
	v_fma_f32 v223, -v159, v194, 1.0
	v_dual_fmac_f32 v180, v209, v180 :: v_dual_fmac_f32 v195, v224, v195
	v_mul_f32_e32 v202, v117, v173
	v_fma_f32 v228, -v104, v200, v110
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v103, 1.0, v103 :: v_dual_fmac_f32 v176, v205, v176
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v123, s22, v26, v57, v26
	v_div_scale_f32 v125, s21, v81, v58, v81
	v_div_scale_f32 v153, null, v95, v95, v49
	v_div_scale_f32 v167, null, v96, v96, v42
	v_fma_f32 v208, -v128, v179, 1.0
	v_fma_f32 v210, -v132, v181, 1.0
	v_fma_f32 v217, -v147, v188, 1.0
	v_dual_fmac_f32 v177, v206, v177 :: v_dual_fmac_f32 v184, v213, v184
	v_mul_f32_e32 v203, v119, v174
	v_fma_f32 v229, -v111, v201, v112
	v_dual_fmac_f32 v182, v211, v182 :: v_dual_fmac_f32 v193, v222, v193
	v_mul_f32_e32 v204, v121, v175
	v_div_scale_f32 v160, s4, v46, v92, v46
	v_dual_fmac_f32 v187, v216, v187 :: v_dual_fmac_f32 v194, v223, v194
	v_fma_f32 v230, -v113, v202, v117
	v_div_scale_f32 v127, s20, v80, v59, v80
	v_fma_f32 v212, -v136, v183, 1.0
	v_fma_f32 v219, -v151, v190, 1.0
	v_dual_fmac_f32 v200, v228, v171 :: v_dual_fmac_f32 v201, v229, v172
	v_div_scale_f32 v129, s19, v79, v63, v79
	v_div_scale_f32 v133, s17, v77, v61, v77
	v_rcp_f32_e32 v191, v153
	v_rcp_f32_e32 v198, v167
	v_fma_f32 v215, -v142, v186, 1.0
	v_fma_f32 v226, -v165, v197, 1.0
	v_fmac_f32_e32 v179, v208, v179
	v_dual_fmac_f32 v181, v210, v181 :: v_dual_fmac_f32 v188, v217, v188
	v_dual_mul_f32 v205, v123, v176 :: v_dual_mul_f32 v206, v125, v177
	v_fma_f32 v231, -v118, v203, v119
	v_fma_f32 v218, -v149, v189, 1.0
	v_fma_f32 v225, -v163, v196, 1.0
	v_fma_f32 v232, -v120, v204, v121
	v_div_scale_f32 v131, s18, v78, v62, v78
	v_fma_f32 v214, -v140, v185, 1.0
	v_fma_f32 v221, -v155, v192, 1.0
	v_dual_mul_f32 v223, v160, v194 :: v_dual_fmac_f32 v202, v230, v173
	v_div_scale_f32 v137, s15, v75, v87, v75
	v_dual_fmac_f32 v183, v212, v183 :: v_dual_fmac_f32 v190, v219, v190
	v_mul_f32_e32 v207, v127, v178
	v_fma_f32 v104, -v104, v200, v110
	v_dual_fmac_f32 v186, v215, v186 :: v_dual_fmac_f32 v197, v226, v197
	v_mul_f32_e32 v208, v129, v179
	v_mul_f32_e32 v210, v133, v181
	v_fma_f32 v233, -v122, v205, v123
	v_dual_fmac_f32 v203, v231, v174 :: v_dual_fmac_f32 v204, v232, v175
	v_fma_f32 v110, -v111, v201, v112
	v_div_scale_f32 v164, s0, v41, v98, v41
	v_dual_fmac_f32 v189, v218, v189 :: v_dual_fmac_f32 v196, v225, v196
	v_fma_f32 v234, -v124, v206, v125
	v_div_scale_f32 v135, s16, v76, v60, v76
	v_div_scale_f32 v141, s13, v73, v85, v73
	v_dual_fmac_f32 v185, v214, v185 :: v_dual_fmac_f32 v192, v221, v192
	v_mul_f32_e32 v209, v131, v180
	v_fma_f32 v111, -v113, v202, v117
	v_mul_f32_e32 v212, v137, v183
	v_fma_f32 v235, -v126, v207, v127
	v_div_fmas_f32 v104, v104, v171, v200
	s_mov_b32 vcc_lo, s25
	v_fma_f32 v220, -v153, v191, 1.0
	v_fma_f32 v227, -v167, v198, 1.0
	v_fma_f32 v236, -v128, v208, v129
	v_fmac_f32_e32 v205, v233, v176
	v_fma_f32 v112, -v118, v203, v119
	v_div_fmas_f32 v110, v110, v172, v201
	s_mov_b32 vcc_lo, s26
	v_div_scale_f32 v139, s14, v74, v86, v74
	v_dual_mul_f32 v225, v164, v196 :: v_dual_fmac_f32 v206, v234, v177
	v_fma_f32 v113, -v120, v204, v121
	v_div_scale_f32 v146, s11, v53, v91, v53
	v_dual_mul_f32 v211, v135, v182 :: v_dual_mul_f32 v214, v141, v185
	v_fma_f32 v237, -v130, v209, v131
	v_div_fmas_f32 v111, v111, v173, v202
	s_mov_b32 vcc_lo, s24
	v_fma_f32 v240, -v136, v212, v137
	v_fmac_f32_e32 v207, v235, v178
	v_div_scale_f32 v168, s2, v42, v96, v42
	v_dual_fmac_f32 v191, v220, v191 :: v_dual_fmac_f32 v198, v227, v198
	v_fma_f32 v238, -v132, v210, v133
	v_fmac_f32_e32 v208, v236, v179
	v_fma_f32 v117, -v122, v205, v123
	v_div_fixup_f32 v43, v104, v43, v84
	v_div_fmas_f32 v84, v112, v174, v203
	s_mov_b32 vcc_lo, s23
	v_div_scale_f32 v144, s12, v72, v64, v72
	v_div_scale_f32 v150, s9, v51, v89, v51
	v_mul_f32_e32 v213, v139, v184
	v_fma_f32 v232, -v159, v223, v160
	v_fma_f32 v118, -v124, v206, v125
	v_div_fixup_f32 v44, v110, v44, v83
	v_div_fmas_f32 v83, v113, v175, v204
	v_mul_f32_e32 v216, v146, v187
	v_fma_f32 v239, -v134, v211, v135
	v_fma_f32 v242, -v140, v214, v141
	v_fmac_f32_e32 v209, v237, v180
	s_mov_b32 vcc_lo, s22
	v_fmac_f32_e32 v212, v240, v183
	v_fma_f32 v119, -v126, v207, v127
	v_div_scale_f32 v148, s10, v52, v90, v52
	v_dual_mul_f32 v227, v168, v198 :: v_dual_fmac_f32 v210, v238, v181
	v_div_fixup_f32 v54, v111, v54, v82
	v_div_fmas_f32 v82, v117, v176, v205
	s_mov_b32 vcc_lo, s21
	v_div_scale_f32 v154, s7, v49, v95, v49
	v_mul_f32_e32 v215, v144, v186
	v_fma_f32 v234, -v163, v225, v164
	v_fma_f32 v120, -v128, v208, v129
	v_div_fixup_f32 v55, v84, v55, v28
	v_mul_f32_e32 v218, v150, v189
	v_fma_f32 v241, -v138, v213, v139
	v_dual_fmac_f32 v223, v232, v194 :: v_dual_mul_f32 v28, v70, v44
	v_div_fixup_f32 v44, v83, v56, v25
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v43, v71, v43
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v71, v118, v177, v206
	s_mov_b32 vcc_lo, s20
	v_fma_f32 v244, -v145, v216, v146
	v_dual_fmac_f32 v211, v239, v182 :: v_dual_fmac_f32 v214, v242, v185
	v_fma_f32 v121, -v130, v209, v131
	v_div_scale_f32 v152, s8, v50, v88, v50
	v_div_fmas_f32 v56, v119, v178, v207
	s_mov_b32 vcc_lo, s19
	v_div_scale_f32 v158, s5, v47, v93, v47
	v_mul_f32_e32 v217, v148, v188
	v_fma_f32 v122, -v132, v210, v133
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v25, v69, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v54, v82, v57, v26
	v_mul_f32_e32 v220, v154, v191
	v_fma_f32 v243, -v142, v215, v144
	v_dual_fmac_f32 v225, v234, v196 :: v_dual_mul_f32 v26, v68, v55
	v_div_fmas_f32 v55, v120, v179, v208
	s_mov_b32 vcc_lo, s18
	v_fma_f32 v246, -v149, v218, v150
	v_fmac_f32_e32 v213, v241, v184
	v_fma_f32 v236, -v167, v227, v168
	v_fmac_f32_e32 v216, v244, v187
	v_fma_f32 v123, -v134, v211, v135
	v_div_fixup_f32 v57, v71, v58, v81
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v12, v12, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v44, v121, v180, v209
	s_mov_b32 vcc_lo, s17
	v_div_scale_f32 v156, s6, v48, v94, v48
	v_div_scale_f32 v162, s3, v45, v99, v45
	v_dual_mul_f32 v219, v152, v190 :: v_dual_mul_f32 v222, v158, v193
	v_fma_f32 v245, -v147, v217, v148
	v_fma_f32 v124, -v136, v212, v137
	v_div_fixup_f32 v56, v56, v59, v80
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v5, v5, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v54, v122, v181, v210
	v_fma_f32 v229, -v153, v220, v154
	v_fmac_f32_e32 v215, v243, v186
	s_mov_b32 vcc_lo, s16
	v_fmac_f32_e32 v218, v246, v189
	v_fma_f32 v125, -v138, v213, v139
	v_div_fixup_f32 v55, v55, v63, v79
	v_dual_fmac_f32 v227, v236, v198 :: v_dual_mul_f32 v10, v10, v57
	v_div_fmas_f32 v57, v123, v182, v211
	s_mov_b32 vcc_lo, s15
	v_div_scale_f32 v166, s1, v32, v97, v32
	v_dual_mul_f32 v221, v156, v192 :: v_dual_mul_f32 v224, v162, v195
	v_fma_f32 v228, -v151, v219, v152
	v_fma_f32 v126, -v140, v214, v141
	v_div_fixup_f32 v44, v44, v62, v78
	v_fma_f32 v231, -v157, v222, v158
	v_fmac_f32_e32 v217, v245, v188
	v_div_fixup_f32 v54, v54, v61, v77
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v11, v11, v56
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v56, v124, v183, v212
	s_mov_b32 vcc_lo, s14
	v_fmac_f32_e32 v220, v229, v191
	v_fma_f32 v127, -v142, v215, v144
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v40, v40, v55
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v55, v125, v184, v213
	s_mov_b32 vcc_lo, s13
	v_fma_f32 v128, -v145, v216, v146
	v_div_fixup_f32 v57, v57, v60, v76
	v_mul_f32_e32 v226, v166, v197
	v_fma_f32 v230, -v155, v221, v156
	v_fma_f32 v233, -v161, v224, v162
	v_fmac_f32_e32 v219, v228, v190
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v39, v39, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v44, v126, v185, v214
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v222, v231, v193
	v_fma_f32 v129, -v147, v217, v148
	v_div_fixup_f32 v56, v56, v87, v75
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v38, v38, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v54, v127, v186, v215
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v130, -v149, v218, v150
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v36, v36, v57
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v57, v128, v187, v216
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v235, -v165, v226, v166
	v_dual_fmac_f32 v221, v230, v192 :: v_dual_fmac_f32 v224, v233, v195
	v_fma_f32 v131, -v151, v219, v152
	v_div_fixup_f32 v55, v55, v86, v74
	v_div_fixup_f32 v44, v44, v85, v73
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v37, v37, v56
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v56, v129, v188, v217
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v132, -v153, v220, v154
	v_div_fixup_f32 v54, v54, v64, v72
	v_div_fmas_f32 v58, v130, v189, v218
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v226, v235, v197
	v_fma_f32 v133, -v155, v221, v156
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v55, v35, v55 :: v_dual_mul_f32 v34, v34, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v53, v57, v91, v53
	v_div_fmas_f32 v44, v131, v190, v219
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v134, -v157, v222, v158
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v35, v33, v54
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v54, v132, v191, v220
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v135, -v159, v223, v160
	v_div_fixup_f32 v51, v58, v89, v51
	v_div_fixup_f32 v44, v44, v88, v50
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v33, v24, v53
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v53, v133, v192, v221
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v136, -v161, v224, v162
	v_div_scale_f32 v169, null, v103, v103, v27
	v_div_fmas_f32 v50, v134, v193, v222
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v137, -v163, v225, v164
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v24, v22, v51
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v51, v135, v194, v223
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v138, -v165, v226, v166
	v_div_fixup_f32 v52, v56, v90, v52
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v22, v21, v44
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v44, v136, v195, v224
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v199, v169
	v_fma_f32 v139, -v167, v227, v168
	v_div_fixup_f32 v47, v50, v93, v47
	v_div_fmas_f32 v50, v137, v196, v225
	s_mov_b32 vcc_lo, s1
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v23, v23, v52
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v52, v138, v197, v226
	s_mov_b32 vcc_lo, s2
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v100, v100
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v48, v53, v94, v48
	v_div_fmas_f32 v53, v139, v198, v227
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v143, 0, 0xffffffc0, s30
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v49, v54, v95, v49
	v_div_fixup_f32 v46, v51, v92, v46
	v_div_fixup_f32 v44, v44, v99, v45
	v_div_fixup_f32 v42, v53, v96, v42
	v_fma_f32 v45, -v169, v199, 1.0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v21, v19, v49
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v41, v50, v98, v41
	v_div_scale_f32 v170, null, v102, v102, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v199, v45, v199
	v_div_scale_f32 v45, vcc_lo, v27, v103, v27
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v19, v20, v48 :: v_dual_mul_f32 v20, v14, v46
	v_mul_f32_e32 v14, v18, v42
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v18, v100, v143
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v42, null, v101, v101, v30
	v_div_fixup_f32 v32, v52, v97, v32
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v16, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v46, v42
	s_mov_b32 s7, 0x76543210
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v41, null, v18, v18, v31
	v_rcp_f32_e32 v48, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v42, v46, 1.0
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v15, v15, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v32, v170
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v17, v47
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v46, v49, v46
	v_div_scale_f32 v49, s1, v30, v101, v30
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v51, -v41, v48, 1.0
	v_mul_f32_e32 v54, v49, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v170, v32, 1.0
	v_fmac_f32_e32 v48, v51, v48
	v_mul_f32_e32 v50, v45, v199
	v_div_scale_f32 v51, s2, v31, v18, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v32, v47, v32
	v_div_scale_f32 v47, s0, v29, v102, v29
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v8, v8, v67
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v52, -v169, v50, v45
	v_mul_f32_e32 v57, v51, v48
	v_mul_f32_e32 v53, v47, v32
	v_fma_f32 v56, -v42, v54, v49
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v9, v9, v67
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v50, v52, v199
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v170, v53, v47
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v6, v6, v67
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v54, v56, v46
	v_fma_f32 v45, -v169, v50, v45
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v4, v4, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fmac_f32_e32 v53, v52, v32
	v_fma_f32 v52, -v41, v57, v51
	v_fma_f32 v42, -v42, v54, v49
	v_div_fmas_f32 v45, v45, v199, v50
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v47, -v170, v53, v47
	v_fmac_f32_e32 v57, v52, v48
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v1, v1, v6
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v9, v45, v103, v27
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v27, |v21|, |v19|
.Ltmp21:
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v32, v47, v32, v53
	v_fma_f32 v41, -v41, v57, v51
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v42, v42, v46, v54
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v41, v41, v48, v57
	v_div_fixup_f32 v7, v42, v101, v30
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fixup_f32 v6, v41, v18, v31
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v3, v3, v8
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v8, v32, v102, v29
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v13, v13, v44
.Ltmp22:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v18, |v22|, |v28|, |v25|
.Ltmp23:
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v4, v4, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v6, v3, v7 :: v_dual_mul_f32 v7, v2, v8
	v_mul_f32_e32 v8, v1, v9
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v1, |v40|, |v39|
	v_max3_f32 v2, |v38|, |v37|, |v55|
	v_max3_f32 v9, |v33|, |v23|, |v24|
	v_max3_f32 v3, |v34|, |v35|, |v43|
	v_max3_f32 v29, |v17|, |v13|, |v16|
	v_max3_f32 v30, |v8|, |v7|, |v6|
	v_max3_f32 v31, |v4|, |v5|, |v10|
	v_max3_f32 v1, v1, |v36|, v2
	v_max3_f32 v2, v9, v18, |v26|
	v_max3_f32 v9, |v15|, |v14|, |v12|
	v_max3_f32 v18, v27, |v20|, v29
	v_max3_f32 v27, v30, v31, |v11|
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v30, v116, 7, 0
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v1, v1, v3, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max3_f32 v2, v18, v9, v27
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v3, v1, s7, 0xfedcba98 op_sel:[1,0]
	v_lshlrev_b32_e32 v18, 4, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v9, v2, s7, 0xfedcba98 op_sel:[1,0]
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_or_b32 v29, v105, 2, v18
	v_xor_b32_e32 v18, v18, v108
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v27, 8, v0
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v1, v3
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v3, v29, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v2, v2, v9
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v9, v30, v18, v27
	v_lshrrev_b32_e32 v18, 2, v105
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v3, 0, v27, v3
	v_lshlrev_b32_e32 v27, 3, v27
	ds_store_b64 v9, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[1:2], v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v3, v1
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v3
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v3, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v1, v1, v3
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v9, v2
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	v_max_f32_e32 v2, v2, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v9, v2
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	v_dual_max_f32 v3, v2, v9 :: v_dual_mov_b32 v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v9, v3
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v29, v1, v2 :: v_dual_lshlrev_b32 v2, 3, v115
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v1, 0, v27, v18
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v30, v3, v9 :: v_dual_add_nc_u32 v3, 0, v2
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	ds_store_b64 v1, v[29:30]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[29:30], v3
.Ltmp52:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_max_f32_e32 v1, v29, v29
	v_max_f32_e32 v3, v30, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v1, 0x2b8cbccc, v1
	v_max_f32_e32 v3, 0x2b8cbccc, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v9, null, 0x40e00000, 0x40e00000, v1
	v_div_scale_f32 v18, null, 0x40e00000, 0x40e00000, v3
	v_div_scale_f32 v32, vcc_lo, v1, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v27, v9
	v_rcp_f32_e32 v29, v18
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v30, -v9, v27, 1.0
	v_fma_f32 v31, -v18, v29, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v27, v30, v27
	v_div_scale_f32 v30, s0, v3, 0x40e00000, v3
	v_fmac_f32_e32 v29, v31, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v31, v32, v27
	v_mul_f32_e32 v41, v30, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v9, v31, v32
	v_fma_f32 v44, -v18, v41, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v31, v42, v27
	v_fmac_f32_e32 v41, v44, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v9, -v9, v31, v32
	v_fma_f32 v18, -v18, v41, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v9, v9, v27, v31
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v18, v18, v29, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v1, v9, 0x40e00000, v1
	v_div_fixup_f32 v3, v18, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v9, v1, 16, 1
	v_bfe_u32 v18, v3, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v9, v1, v9, 0x7fff
	v_mov_b16_e32 v1.h, 0
	v_add3_u32 v18, v3, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v41, 0xffff0000, v9
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v1.l, v9.h
	v_mov_b16_e32 v3.h, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v3.l, v18.h
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v9, 0xffff0000, v18
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v18, null, v41, v41, v40
	v_div_scale_f32 v29, null, v41, v41, v39
	v_div_scale_f32 v31, null, v41, v41, v36
	v_rcp_f32_e32 v53, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v54, v29
	v_div_scale_f32 v42, null, v41, v41, v38
	v_rcp_f32_e32 v56, v31
	v_div_scale_f32 v51, null, v41, v41, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v57, v42
	v_div_scale_f32 v27, vcc_lo, v40, v41, v40
	v_rcp_f32_e32 v61, v51
	v_fma_f32 v64, -v18, v53, 1.0
	v_fma_f32 v67, -v29, v54, 1.0
	v_div_scale_f32 v30, s0, v39, v41, v39
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v68, -v31, v56, 1.0
	v_fmac_f32_e32 v53, v64, v53
	v_div_scale_f32 v45, null, v41, v41, v37
	v_fmac_f32_e32 v54, v67, v54
	v_div_scale_f32 v32, s1, v36, v41, v36
	v_div_scale_f32 v49, null, v41, v41, v34
	v_fma_f32 v69, -v42, v57, 1.0
	v_fmac_f32_e32 v56, v68, v56
	v_fma_f32 v73, -v51, v61, 1.0
	v_mul_f32_e32 v64, v27, v53
	v_rcp_f32_e32 v58, v45
	v_mul_f32_e32 v67, v30, v54
	v_div_scale_f32 v44, s2, v38, v41, v38
	v_rcp_f32_e32 v60, v49
	v_dual_fmac_f32 v57, v69, v57 :: v_dual_mul_f32 v68, v32, v56
	v_div_scale_f32 v47, null, v41, v41, v55
	v_fmac_f32_e32 v61, v73, v61
	v_fma_f32 v73, -v18, v64, v27
	v_fma_f32 v74, -v29, v67, v30
	v_mul_f32_e32 v69, v44, v57
	v_fma_f32 v75, -v31, v68, v32
	v_rcp_f32_e32 v59, v47
	v_fmac_f32_e32 v64, v73, v53
	v_fma_f32 v70, -v45, v58, 1.0
	v_fmac_f32_e32 v67, v74, v54
	v_fma_f32 v72, -v49, v60, 1.0
	v_fma_f32 v76, -v42, v69, v44
	v_fmac_f32_e32 v68, v75, v56
	v_fma_f32 v18, -v18, v64, v27
	v_div_scale_f32 v46, s3, v37, v41, v37
	v_fmac_f32_e32 v58, v70, v58
	v_fma_f32 v27, -v29, v67, v30
	v_div_scale_f32 v50, s5, v34, v41, v34
	v_fmac_f32_e32 v60, v72, v60
	v_fmac_f32_e32 v69, v76, v57
	v_fma_f32 v29, -v31, v68, v32
	v_fma_f32 v71, -v47, v59, 1.0
	v_div_fmas_f32 v18, v18, v53, v64
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v70, v46, v58
	v_div_fmas_f32 v27, v27, v54, v67
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v52, null, v41, v41, v43
	v_mul_f32_e32 v72, v50, v60
	v_fma_f32 v30, -v42, v69, v44
	v_div_fmas_f32 v29, v29, v56, v68
	v_div_scale_f32 v48, s4, v55, v41, v55
	v_fmac_f32_e32 v59, v71, v59
	v_fma_f32 v77, -v45, v70, v46
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v62, s6, v35, v41, v35
	v_rcp_f32_e32 v63, v52
	v_div_fmas_f32 v30, v30, v57, v69
	v_div_fixup_f32 v18, v18, v41, v40
	v_div_fixup_f32 v29, v29, v41, v36
	v_fma_f32 v36, -v49, v72, v50
	v_div_scale_f32 v40, null, v41, v41, v33
	v_dual_mul_f32 v71, v48, v59 :: v_dual_fmac_f32 v70, v77, v58
	v_div_fixup_f32 v30, v30, v41, v38
	v_mul_f32_e32 v38, v62, v61
	v_fmac_f32_e32 v72, v36, v60
	v_rcp_f32_e32 v36, v40
	v_fma_f32 v78, -v47, v71, v48
	v_fma_f32 v31, -v45, v70, v46
	v_div_fixup_f32 v27, v27, v41, v39
	v_fma_f32 v39, -v52, v63, 1.0
	v_fma_f32 v42, -v51, v38, v62
	v_fmac_f32_e32 v71, v78, v59
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v45, null, v41, v41, v23
	v_div_fmas_f32 v31, v31, v58, v70
	v_fmac_f32_e32 v63, v39, v63
	v_div_scale_f32 v39, s0, v43, v41, v43
	v_fmac_f32_e32 v38, v42, v61
	v_fma_f32 v44, -v40, v36, 1.0
	v_fma_f32 v32, -v47, v71, v48
	v_div_fixup_f32 v31, v31, v41, v37
	v_fma_f32 v37, -v49, v72, v50
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v42, v39, v63
	v_fma_f32 v46, -v51, v38, v62
	v_fmac_f32_e32 v36, v44, v36
	v_rcp_f32_e32 v44, v45
	v_div_scale_f32 v49, null, v41, v41, v24
	v_div_fmas_f32 v32, v32, v59, v71
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v47, -v52, v42, v39
	v_div_fmas_f32 v37, v37, v60, v72
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v48, s1, v33, v41, v33
	v_div_fmas_f32 v38, v46, v61, v38
	v_rcp_f32_e32 v46, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v42, v47, v63 :: v_dual_mul_f32 v47, v48, v36
	v_fma_f32 v50, -v45, v44, 1.0
	v_div_fixup_f32 v35, v38, v41, v35
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v34, v37, v41, v34
	v_fma_f32 v38, -v40, v47, v48
	v_fmac_f32_e32 v44, v50, v44
	v_fma_f32 v37, -v52, v42, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v49, v46, 1.0
	v_fmac_f32_e32 v47, v38, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v37, v37, v63, v42
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s0, v24, v41, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v40, -v40, v47, v48
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v48, v50, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v40, v36, v47
	v_fma_f32 v40, -v49, v48, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v40, v46
	v_div_scale_f32 v39, s2, v23, v41, v23
	v_div_scale_f32 v51, null, v41, v41, v22
	v_div_scale_f32 v52, null, v41, v41, v28
	v_mul_f32_e32 v38, v39, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v42, v51
	v_div_fixup_f32 v37, v37, v41, v43
	v_rcp_f32_e32 v53, v52
	v_div_fixup_f32 v33, v36, v41, v33
	v_fma_f32 v43, -v45, v38, v39
	v_div_scale_f32 v40, s3, v28, v41, v28
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v32, v32, v41, v55
	v_fmac_f32_e32 v38, v43, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v54, -v51, v42, 1.0
	v_div_scale_f32 v43, s1, v22, v41, v22
	v_fma_f32 v47, -v52, v53, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v45, v38, v39
	v_fmac_f32_e32 v42, v54, v42
	v_div_scale_f32 v45, null, v41, v41, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v53, v47, v53
	v_div_fmas_f32 v36, v36, v44, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v39, v43, v42
	v_rcp_f32_e32 v47, v45
	v_fma_f32 v38, -v49, v48, v50
	v_mul_f32_e32 v49, v40, v53
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v44, -v51, v39, v43
	v_div_scale_f32 v50, null, v41, v41, v26
	v_div_fmas_f32 v38, v38, v46, v48
	v_fma_f32 v46, -v52, v49, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v39, v44, v42
	v_fma_f32 v48, -v45, v47, 1.0
	v_rcp_f32_e32 v44, v50
	v_div_fixup_f32 v23, v36, v41, v23
	v_div_fixup_f32 v24, v38, v41, v24
	v_fma_f32 v36, -v51, v39, v43
	v_fmac_f32_e32 v49, v46, v53
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v38, s0, v25, v41, v25
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v33, v33
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v36, v36, v42, v39
	v_fma_f32 v39, -v52, v49, v40
	v_mul_f32_e32 v40, v38, v47
	v_div_scale_f32 v42, null, v9, v9, v21
	v_fma_f32 v43, -v50, v44, 1.0
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v45, v40, v38
	v_rcp_f32_e32 v46, v42
	v_div_fmas_f32 v39, v39, v53, v49
	v_fmac_f32_e32 v44, v43, v44
	v_div_scale_f32 v43, s1, v26, v41, v26
	v_fmac_f32_e32 v40, v48, v47
	v_div_scale_f32 v51, null, v9, v9, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v49, v43, v44
	v_div_fixup_f32 v22, v36, v41, v22
	v_fma_f32 v48, -v42, v46, 1.0
	v_fma_f32 v38, -v45, v40, v38
	v_div_scale_f32 v45, null, v9, v9, v20
	v_div_fixup_f32 v28, v39, v41, v28
	v_fma_f32 v36, -v50, v49, v43
	v_rcp_f32_e32 v39, v51
	v_fmac_f32_e32 v46, v48, v46
	v_rcp_f32_e32 v48, v45
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v49, v36, v44
	v_div_fmas_f32 v38, v38, v47, v40
	v_div_scale_f32 v36, s2, v21, v9, v21
	v_div_scale_f32 v47, s0, v19, v9, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v52, -v51, v39, 1.0
	v_fma_f32 v40, -v50, v49, v43
	v_fma_f32 v50, -v45, v48, 1.0
	v_div_scale_f32 v53, null, v9, v9, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v52, v39
	v_dual_mul_f32 v43, v36, v46 :: v_dual_fmac_f32 v48, v50, v48
	v_div_scale_f32 v50, s3, v20, v9, v20
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v54, v47, v39
	v_rcp_f32_e32 v55, v53
	v_div_fmas_f32 v40, v40, v44, v49
	v_mul_f32_e32 v49, v50, v48
	v_fma_f32 v52, -v42, v43, v36
	v_fma_f32 v44, -v51, v54, v47
	v_div_fixup_f32 v25, v38, v41, v25
	v_div_fixup_f32 v26, v40, v41, v26
	v_fma_f32 v38, -v45, v49, v50
	v_div_scale_f32 v41, null, v9, v9, v13
	v_fmac_f32_e32 v43, v52, v46
	v_fmac_f32_e32 v54, v44, v39
	v_fma_f32 v40, -v53, v55, 1.0
	v_fmac_f32_e32 v49, v38, v48
	v_rcp_f32_e32 v38, v41
	v_fma_f32 v36, -v42, v43, v36
	v_fma_f32 v42, -v51, v54, v47
	v_fmac_f32_e32 v55, v40, v55
	v_div_scale_f32 v40, s1, v17, v9, v17
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v44, null, v9, v9, v16
	v_div_fmas_f32 v36, v36, v46, v43
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v43, v40, v55
	v_div_fmas_f32 v39, v42, v39, v54
	v_fma_f32 v42, -v45, v49, v50
	v_fma_f32 v45, -v41, v38, 1.0
	v_rcp_f32_e32 v46, v44
	v_fma_f32 v47, -v53, v43, v40
	v_div_fixup_f32 v21, v36, v9, v21
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v38, v45, v38
	v_div_scale_f32 v45, s0, v13, v9, v13
	v_fmac_f32_e32 v43, v47, v55
	v_div_fmas_f32 v42, v42, v48, v49
	v_div_fixup_f32 v19, v39, v9, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v36, v45, v38
	v_fma_f32 v39, -v44, v46, 1.0
	v_fma_f32 v40, -v53, v43, v40
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v20, v42, v9, v20
	v_fma_f32 v47, -v41, v36, v45
	v_div_scale_f32 v42, null, v9, v9, v15
	v_fmac_f32_e32 v46, v39, v46
	v_div_scale_f32 v39, s2, v16, v9, v16
	v_div_fmas_f32 v40, v40, v55, v43
	v_fmac_f32_e32 v36, v47, v38
	v_rcp_f32_e32 v48, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v43, v39, v46
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v17, v40, v9, v17
	v_fma_f32 v40, -v41, v36, v45
	v_div_scale_f32 v47, null, v9, v9, v14
	v_fma_f32 v41, -v44, v43, v39
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v36, v40, v38, v36
	v_div_scale_f32 v38, null, v9, v9, v12
	v_fma_f32 v45, -v42, v48, 1.0
	v_rcp_f32_e32 v49, v47
	v_fmac_f32_e32 v43, v41, v46
	v_rcp_f32_e32 v41, v38
	v_div_scale_f32 v40, s0, v15, v9, v15
	v_fmac_f32_e32 v48, v45, v48
	v_div_scale_f32 v45, null, v9, v9, v8
	v_div_fixup_f32 v13, v36, v9, v13
	v_fma_f32 v39, -v44, v43, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v47, v49, 1.0
	v_rcp_f32_e32 v51, v45
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v50, -v38, v41, 1.0
	v_mul_f32_e32 v44, v40, v48
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v49, v36, v49
	v_div_scale_f32 v36, s1, v14, v9, v14
	v_fmac_f32_e32 v41, v50, v41
	v_div_scale_f32 v50, null, v9, v9, v7
	v_div_fmas_f32 v39, v39, v46, v43
	v_fma_f32 v43, -v42, v44, v40
	v_mul_f32_e32 v46, v36, v49
	v_div_scale_f32 v52, s2, v12, v9, v12
	v_fma_f32 v53, -v45, v51, 1.0
	v_rcp_f32_e32 v54, v50
	v_fmac_f32_e32 v44, v43, v48
	v_fma_f32 v43, -v47, v46, v36
	v_mul_f32_e32 v55, v52, v41
	v_fmac_f32_e32 v51, v53, v51
	v_div_scale_f32 v53, s3, v8, v9, v8
	v_div_fixup_f32 v16, v39, v9, v16
	v_fma_f32 v39, -v42, v44, v40
	v_fmac_f32_e32 v46, v43, v49
	v_fma_f32 v40, -v38, v55, v52
	v_mul_f32_e32 v42, v53, v51
	v_fma_f32 v43, -v50, v54, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v36, -v47, v46, v36
	v_fmac_f32_e32 v55, v40, v41
	v_fma_f32 v40, -v45, v42, v53
	v_fmac_f32_e32 v54, v43, v54
	v_div_scale_f32 v43, s0, v7, v9, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v38, v55, v52
	v_fmac_f32_e32 v42, v40, v51
	v_div_fmas_f32 v39, v39, v48, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v40, v43, v54
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v44, null, v9, v9, v6
	v_div_fmas_f32 v36, v36, v49, v46
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v15, v39, v9, v15
	v_div_fmas_f32 v38, v38, v41, v55
	v_fma_f32 v41, -v45, v42, v53
	v_fma_f32 v45, -v50, v40, v43
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v14, v36, v9, v14
	v_div_fixup_f32 v12, v38, v9, v12
	v_div_scale_f32 v38, null, v9, v9, v4
	v_fmac_f32_e32 v40, v45, v54
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v48, null, v9, v9, v11
	v_div_fmas_f32 v41, v41, v51, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v36, -v50, v40, v43
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v39, -v44, v46, 1.0
	v_rcp_f32_e32 v50, v48
	v_div_fixup_f32 v8, v41, v9, v8
	v_div_fmas_f32 v36, v36, v54, v40
	v_rcp_f32_e32 v40, v38
	v_fmac_f32_e32 v46, v39, v46
	v_div_scale_f32 v39, null, v9, v9, v5
	v_div_scale_f32 v42, vcc_lo, v6, v9, v6
	v_div_fixup_f32 v7, v36, v9, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v43, v39
	v_div_scale_f32 v41, null, v9, v9, v10
	v_fma_f32 v36, -v38, v40, 1.0
	v_mul_f32_e32 v47, v42, v46
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v45, v41
	v_fma_f32 v54, -v48, v50, 1.0
	v_fmac_f32_e32 v40, v36, v40
	v_div_scale_f32 v36, s0, v4, v9, v4
	v_fma_f32 v51, -v44, v47, v42
	v_fma_f32 v49, -v39, v43, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v50, v54, v50 :: v_dual_mul_f32 v53, v36, v40
	v_div_scale_f32 v54, s3, v11, v9, v11
	v_fmac_f32_e32 v47, v51, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v43, v49, v43
	v_fma_f32 v51, -v38, v53, v36
	v_div_scale_f32 v49, s1, v5, v9, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v44, v47, v42
	v_fma_f32 v52, -v41, v45, 1.0
	v_fmac_f32_e32 v53, v51, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v55, v49, v43
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v26, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v42, v42, v46, v47
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v36, -v38, v53, v36
	v_fma_f32 v44, -v39, v55, v49
	s_mov_b32 s0, 0xc1000000
	v_div_fixup_f32 v6, v42, v9, v6
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v12, v12, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v36, v36, v40, v53
	v_fmac_f32_e32 v55, v44, v43
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v19, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v4, v36, v9, v4
	v_fma_f32 v39, -v39, v55, v49
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v6, v6
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v28, v28, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v4, v4
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v39, v39, v43, v55
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v43, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v45, v52, v45
	v_div_scale_f32 v52, s2, v10, v9, v10
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v4, v4, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v5, v39, v9, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v56, v52, v45
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_cvt_i32_f32_e32 v47, v4
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v57, v54, v50
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v7, v7, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v51, -v41, v56, v52
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v22, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v38, -v48, v57, v54
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v21, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v56, v51, v45
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v57, v38, v50
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v8, v8
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v38, -v41, v56, v52
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v40, -v48, v57, v54
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v17, v17, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v38, v38, v45, v56
	s_mov_b32 vcc_lo, s3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v6, v6, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v40, v40, v50, v57
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v28, v28
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v10, v38, v9, v10
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v45, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v9, v40, v9, v11
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v11, v18
	v_rndne_f32_e32 v18, v27
	v_rndne_f32_e32 v27, v29
	v_rndne_f32_e32 v29, v30
	v_rndne_f32_e32 v30, v31
	v_rndne_f32_e32 v31, v32
	v_rndne_f32_e32 v32, v34
	v_rndne_f32_e32 v10, v10
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v34, v35
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v32, v32, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v9, v9
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v29, v29
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v32, v32
	v_and_b32_e32 v7, 15, v29
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v29, 6, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v35, v37
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v36, v19
	v_cvt_i32_f32_e32 v38, v17
	v_cvt_i32_f32_e32 v46, v6
	v_cvt_i32_f32_e32 v49, v10
	v_and_b32_e32 v6, 15, v27
	v_and_b32_e32 v10, 15, v32
	v_and_b32_e32 v17, 15, v28
	v_and_b32_e32 v19, 15, v26
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v26, 0x60, v0
	v_lshlrev_b32_e32 v27, 10, v107
	v_and_b32_e32 v28, 0x400, v29
	v_and_b32_e32 v32, 0x60, v65
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v37, v20
	v_cvt_i32_f32_e32 v39, v13
	v_cvt_i32_f32_e32 v44, v8
	v_cvt_i32_f32_e32 v50, v9
	v_and_b32_e32 v8, 15, v30
	v_and_b32_e32 v9, 15, v31
	v_and_b32_e32 v13, 15, v33
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v30, 0x100, v66
	v_xor_b32_e32 v31, v109, v26
	v_add3_u32 v33, 0, v27, v28
	v_and_or_b32 v32, 0x1b00, v29, v32
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v40, v16
	v_cvt_i32_f32_e32 v42, v14
	v_cvt_i32_f32_e32 v48, v5
	v_and_b32_e32 v4, 15, v11
	v_and_b32_e32 v5, 15, v18
	v_and_b32_e32 v11, 15, v34
	v_and_b32_e32 v14, 15, v23
	v_and_b32_e32 v16, 15, v22
	v_and_b32_e32 v20, 15, v21
	v_and_b32_e32 v21, 15, v36
	v_and_b32_e32 v22, 15, v37
	v_and_b32_e32 v23, 15, v38
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v36, v33, v30, v31
	v_xad_u32 v37, v32, v106, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v41, v15
	v_and_b32_e32 v12, 15, v35
	v_and_b32_e32 v15, 15, v24
	v_and_b32_e32 v18, 15, v25
	v_and_b32_e32 v26, 15, v43
	v_and_b32_e32 v27, 15, v44
	v_and_b32_e32 v28, 15, v45
	v_and_b32_e32 v29, 15, v46
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v36, v[4:7]
	ds_store_b128 v36, v[12:15] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[4:7], v37
	ds_load_b128 v[12:15], v37 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v36, v[20:23]
	ds_store_b128 v36, v[26:29] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[20:23], v37
	ds_load_b128 v[28:31], v37 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v36, v[8:11]
	ds_store_b128 v36, v[16:19] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v37
	ds_load_b128 v[16:19], v37 offset:1024
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s31, 31
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v24, 15, v39
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s31, s0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v25, 15, v40
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v26, 15, v41
	v_and_b32_e32 v27, 15, v42
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v12, v12, 4, v4
	v_lshl_or_b32 v4, v13, 4, v5
	v_lshl_or_b32 v5, v14, 4, v6
	v_lshl_or_b32 v6, v15, 4, v7
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v32, 15, v47
	v_and_b32_e32 v33, 15, v48
	v_and_b32_e32 v34, 15, v49
	v_and_b32_e32 v35, 15, v50
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s34, s0
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s2, s2, s1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v7, v16, 4, v8
	v_lshl_or_b32 v8, v17, 4, v9
	v_lshl_or_b32 v9, v18, 4, v10
	v_lshl_or_b32 v10, v19, 4, v11
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v11, s0, v114
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_barrier
	ds_store_b128 v36, v[24:27]
	ds_store_b128 v36, v[32:35] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[24:27], v37
	ds_load_b128 v[32:35], v37 offset:1024
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v5.h, 0xff, v9.l
	v_and_b16 v6.h, 0xff, v7.l
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v11, s2, v2, v11
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v2.h, 0xff, v5.l
	v_lshlrev_b16 v5.l, 8, v10.l
	v_lshlrev_b16 v2.l, 8, v6.l
	v_lshlrev_b16 v6.l, 8, v8.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v14, v29, 4, v21
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_lshl_add_u32 v21, s0, 4, v11
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v9.h, v5.h, v5.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v5, 16, v0
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s31, 31
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v15, v30, 4, v22
	v_lshl_or_b32 v16, v31, 4, v23
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v5
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v9.l, v6.h, v6.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v6, v0, 31, s34
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s31, s0
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v13, v28, 4, v20
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cndmask_b32_e32 v3, v1, v3, vcc_lo
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v19, v34, 4, v26
	v_lshl_or_b32 v20, v35, 4, v27
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v4.l, 8, v4.l
	v_and_b16 v4.h, 0xff, v12.l
	v_lshlrev_b16 v7.l, 8, v16.l
	v_and_b16 v7.h, 0xff, v15.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_bfe_i32 v5, v3, 0, 16
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v6, v6, s0
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v17, v32, 4, v24
	v_lshl_or_b32 v18, v33, 4, v25
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v8.h, v2.h, v2.l
	v_or_b16 v8.l, v4.h, v4.l
	v_or_b16 v4.h, v7.h, v7.l
	v_lshlrev_b16 v2.l, 8, v14.l
	v_and_b16 v0.l, 0xff, v13.l
	v_lshlrev_b16 v0.h, 8, v20.l
	v_and_b16 v2.h, 0xff, v19.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_permlanex16_b32 v7, v5, s7, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v3.l, 8, v18.l
	v_and_b16 v3.h, 0xff, v17.l
	v_or_b16 v4.l, v0.l, v2.l
	v_or_b16 v5.h, v2.h, v0.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_lshl_u32 v0, v6, s33, 1
	v_cndmask_b32_e32 v1, v7, v1, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v105
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v5.l, v3.h, v3.l
	buffer_store_b64 v[8:9], v11, s[44:47], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[4:5], v21, s[44:47], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s45, s43, 0xffff
	s_mov_b32 s44, s42
	buffer_store_b16 v1, v0, s[44:47], 0 offen
.Ltmp53:
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp54:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 247
		.amdhsa_next_free_sgpr 48
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.num_vgpr, 247
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 23932
; TotalNumSgprs: 50
; NumVgprs: 247
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 247
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
	.quad	.Ltmp53-.Lfunc_begin0
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
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     247
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
