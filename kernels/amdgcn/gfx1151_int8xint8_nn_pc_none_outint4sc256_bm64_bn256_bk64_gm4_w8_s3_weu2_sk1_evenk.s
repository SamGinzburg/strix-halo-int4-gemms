	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	v_and_b32_e32 v87, 15, v0
	v_lshrrev_b32_e32 v86, 4, v0
	v_and_b32_e32 v91, 3, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v109, 1, v0
	v_lshlrev_b32_e32 v92, 4, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v85, 4, v87
	v_lshlrev_b32_e32 v83, 6, v87
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v88, 4, v91
	s_mov_b32 s17, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v43, 0, v92
	s_load_b32 s18, s[0:1], 0x38
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
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
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[77:78], null, s29, v86, v[85:86]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s9, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[78:79], null, s29, 48, v[77:78]
	v_lshl_add_u32 v80, s29, 4, v77
	v_lshl_add_u32 v81, s29, 5, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s5
	s_mul_hi_u32 s9, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s9
	s_xor_b32 s9, s2, s8
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s5, s4
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
	s_sub_i32 s14, 0, s12
	v_rcp_iflag_f32_e32 v1, s4
	s_load_b128 s[4:7], s[0:1], 0x0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s13, v1
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v1, 2, v0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s13, s13, 0x4f7ffffe
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v1, s18, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s13, s13
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	s_xor_b32 s7, s2, s11
	s_mul_i32 s14, s14, s13
	s_mul_hi_u32 s8, s13, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s13, s13, s8
	s_mul_hi_u32 s6, s9, s13
	s_ashr_i32 s13, s7, 31
	s_mul_i32 s8, s6, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s9, s8
	s_add_i32 s8, s6, 1
	s_sub_i32 s9, s7, s12
	s_cmp_ge_u32 s7, s12
	s_cselect_b32 s6, s8, s6
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s6, 1
	s_cmp_ge_u32 s7, s12
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s6, s8, s6
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s33, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s8, s6, s13
	s_mov_b32 s6, 0x7ffffffe
	s_sub_i32 s28, s8, s13
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s26, s6
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s8, s28, s11
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s31, s28, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s27, s7
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s30, s2, 6
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s2, s30, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s18, s18, 63
.Ltmp13:
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v82, v1, v88, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s2, s29, s33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s18, 63
	s_cselect_b32 s3, -1, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s8, s31, s2
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 404 30 is_stmt 1              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v1, s33, v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s18, 0x7f
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s8, v77
	v_add_nc_u32_e32 v3, s8, v80
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s9, s29, 6
	v_add_nc_u32_e32 v4, s8, v81
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s33, s33, 64
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s8, v78
	s_add_i32 s8, s8, s9
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 404 30 is_stmt 0              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v7, s33, v82
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v23, s8, v77
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v11, 0x80000000, v3, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v24, s8, v80
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v15, 0x80000000, v4, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v25, s8, v81
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v19, 0x80000000, v5, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v26, s8, v78
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	buffer_load_b128 v[3:6], v1, s[4:7], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v7, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[7:10], v2, s[24:27], 0 offen
	buffer_load_b128 v[11:14], v11, s[24:27], 0 offen
	buffer_load_b128 v[15:18], v15, s[24:27], 0 offen
	buffer_load_b128 v[19:22], v19, s[24:27], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v23, s2
	v_cndmask_b32_e64 v31, 0x80000000, v24, s2
	v_cndmask_b32_e64 v35, 0x80000000, v25, s2
	v_cndmask_b32_e64 v39, 0x80000000, v26, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[23:26], v1, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[27:30], v2, s[24:27], 0 offen
	buffer_load_b128 v[31:34], v31, s[24:27], 0 offen
	buffer_load_b128 v[35:38], v35, s[24:27], 0 offen
	buffer_load_b128 v[39:42], v39, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v1, 48, v109
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s18, 0xbf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v84, v92, v1
	v_add_nc_u32_e32 v1, 0, v84
	s_waitcnt vmcnt(9)
	ds_store_b128 v1, v[3:6] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v43, v[7:10]
	s_waitcnt vmcnt(7)
	ds_store_b128 v43, v[11:14] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v43, v[15:18] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v43, v[19:22] offset:12288
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v1, v[23:26] offset:36864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v43, v[27:30] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v43, v[31:34] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v43, v[35:38] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v43, v[39:42] offset:28672
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v1, 6, v87
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v79, 0x70, v2
	s_load_b256 s[8:15], s[0:1], 0x10
	s_mov_b32 s16, 0
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_mov_b32_e32 v17, 0
	s_add_i32 s35, 0, 0x8000
	s_add_i32 s1, 0, 0x9000
	s_add_i32 s0, 0, 0x4000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v20, v17
	v_mov_b32_e32 v18, v17
	v_mov_b32_e32 v19, v17
	v_mov_b32_e32 v93, v17
	v_mov_b32_e32 v94, v17
	v_mov_b32_e32 v24, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v28, v20 :: v_dual_mov_b32 v27, v19
	v_dual_mov_b32 v36, v20 :: v_dual_mov_b32 v35, v19
	v_dual_mov_b32 v64, v20 :: v_dual_mov_b32 v63, v19
	v_dual_mov_b32 v56, v20 :: v_dual_mov_b32 v55, v19
	v_dual_mov_b32 v60, v20 :: v_dual_mov_b32 v59, v19
	v_dual_mov_b32 v48, v20 :: v_dual_mov_b32 v47, v19
	v_dual_mov_b32 v52, v20 :: v_dual_mov_b32 v51, v19
	v_dual_mov_b32 v44, v20 :: v_dual_mov_b32 v43, v19
	v_dual_mov_b32 v40, v20 :: v_dual_mov_b32 v39, v19
	v_dual_mov_b32 v32, v20 :: v_dual_mov_b32 v31, v19
	v_dual_mov_b32 v23, v19 :: v_dual_mov_b32 v22, v18
	v_dual_mov_b32 v21, v17 :: v_dual_mov_b32 v26, v18
	v_dual_mov_b32 v25, v17 :: v_dual_mov_b32 v34, v18
	v_dual_mov_b32 v33, v17 :: v_dual_mov_b32 v62, v18
	v_dual_mov_b32 v61, v17 :: v_dual_mov_b32 v54, v18
	v_dual_mov_b32 v53, v17 :: v_dual_mov_b32 v58, v18
	v_dual_mov_b32 v57, v17 :: v_dual_mov_b32 v46, v18
	v_dual_mov_b32 v45, v17 :: v_dual_mov_b32 v50, v18
	v_dual_mov_b32 v49, v17 :: v_dual_mov_b32 v42, v18
	v_dual_mov_b32 v41, v17 :: v_dual_mov_b32 v38, v18
	v_dual_mov_b32 v37, v17 :: v_dual_mov_b32 v30, v18
	v_mov_b32_e32 v29, v17
	v_mov_b32_e32 v95, v17
	v_mov_b32_e32 v96, v17
	v_mov_b32_e32 v97, v17
	v_mov_b32_e32 v98, v17
	v_mov_b32_e32 v99, v17
	v_mov_b32_e32 v100, v17
	v_mov_b32_e32 v101, v17
	v_mov_b32_e32 v103, v17
	v_mov_b32_e32 v104, v17
	v_mov_b32_e32 v105, v17
	v_mov_b32_e32 v106, v17
	v_mov_b32_e32 v107, v17
	v_mov_b32_e32 v108, v17
	v_mov_b32_e32 v102, v17
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr79
	s_load_b256 s[8:15], s[0:1], 0x10
	s_mov_b32 s16, 0
.LBB0_4:                                ; %.lr.ph
	v_dual_mov_b32 v102, 0 :: v_dual_lshlrev_b32 v1, 3, v0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s34, s18, 6
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_delay_alu instid0(VALU_DEP_1)
	v_and_or_b32 v89, v1, 48, v83
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v79, 0x70, v2
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v4, s19
	v_xor_b32_e32 v90, 16, v89
	v_xor_b32_e32 v110, 32, v89
	v_xor_b32_e32 v111, 48, v89
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v8, s23 :: v_dual_mov_b32 v7, s22
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	v_mov_b32_e32 v31, 0
	s_add_i32 s33, s33, 64
	s_mov_b32 s36, 1
	s_add_i32 s35, 0, 0x8000
	s_add_i32 s1, 0, 0x9000
	s_add_i32 s0, 0, 0x4000
	s_add_i32 s34, s34, -3
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
	s_add_i32 s16, s33, s18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add3_u32 v184, s19, v79, v87
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v9, s16, v82
	.loc	1 404 22 is_stmt 0              ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v160, s35, v89
	v_add_nc_u32_e32 v161, s35, v90
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	s_mul_i32 s16, s16, s29
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s16, s16, s31
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v13, v184 offset:3328
	ds_load_u8 v14, v184 offset:3072
	ds_load_u8 v15, v184 offset:3840
	ds_load_u8 v16, v184 offset:3584
	ds_load_u8 v65, v184 offset:2304
	ds_load_u8 v66, v184 offset:2048
	ds_load_u8 v67, v184 offset:2816
	ds_load_u8 v68, v184 offset:2560
	ds_load_u8 v69, v184 offset:1280
	ds_load_u8 v70, v184 offset:1024
	ds_load_u8 v71, v184 offset:1792
	ds_load_u8 v72, v184 offset:1536
	ds_load_u8 v73, v184 offset:256
	ds_load_u8 v74, v184
	ds_load_u8 v75, v184 offset:768
	ds_load_u8 v76, v184 offset:512
	ds_load_u8 v112, v184 offset:7424
	ds_load_u8 v113, v184 offset:7168
	ds_load_u8 v114, v184 offset:7936
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[120:123], v160
	ds_load_b128 v[124:127], v161
	ds_load_b128 v[136:139], v160 offset:1024
	ds_load_b128 v[140:143], v161 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[152:155], v160 offset:2048
	ds_load_b128 v[156:159], v161 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v14, v16, v15, 0xc0c0004
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[176:179], v160 offset:3072
	ds_load_b128 v[180:183], v161 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v15, v66, v65, 0xc0c0004
	ds_load_u8 v66, v184 offset:6144
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v65, v68, v67, 0xc0c0004
	v_lshl_or_b32 v16, v14, 16, v13
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v14, v70, v69, 0xc0c0004
	ds_load_u8 v68, v184 offset:6912
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v67, v72, v71, 0xc0c0004
	v_lshl_or_b32 v15, v65, 16, v15
	ds_load_u8 v13, v184 offset:7680
	ds_load_u8 v65, v184 offset:6400
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v70, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v72, v76, v75, 0xc0c0004
	v_lshl_or_b32 v14, v67, 16, v14
	ds_load_u8 v67, v184 offset:6656
	ds_load_u8 v69, v184 offset:5376
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v74, v113, v112, 0xc0c0004
	ds_load_u8 v71, v184 offset:5120
	ds_load_u8 v73, v184 offset:5888
	ds_load_u8 v112, v184 offset:5632
	ds_load_u8 v113, v184 offset:4352
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v75, v13, v114, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	v_lshl_or_b32 v13, v72, 16, v70
	ds_load_u8 v70, v184 offset:3200
	ds_load_u8 v72, v184 offset:3968
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v67, v67, v68, 0xc0c0004
	ds_load_u8 v68, v184 offset:4864
	ds_load_u8 v66, v184 offset:4096
	v_lshl_or_b32 v76, v75, 16, v74
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v69, v71, v69, 0xc0c0004
	v_lshl_or_b32 v75, v67, 16, v65
	ds_load_u8 v65, v184 offset:4608
	ds_load_u8 v67, v184 offset:3456
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v71, v112, v73, 0xc0c0004
	ds_load_u8 v73, v184 offset:2176
	v_lshl_or_b32 v74, v71, 16, v69
	ds_load_u8 v69, v184 offset:3712
	ds_load_u8 v71, v184 offset:2432
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v66, v66, v113, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v65, v65, v68, 0xc0c0004
	ds_load_u8 v68, v184 offset:2944
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v67, v70, v67, 0xc0c0004
	ds_load_u8 v70, v184 offset:2688
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v69, v69, v72, 0xc0c0004
	ds_load_u8 v72, v184 offset:1408
	v_lshl_or_b32 v171, v69, 16, v67
	ds_load_u8 v69, v184 offset:896
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v68, v70, v68, 0xc0c0004
	ds_load_u8 v70, v184 offset:1920
	ds_load_u8 v112, v184 offset:1152
	v_perm_b32 v71, v73, v71, 0xc0c0004
	v_lshl_or_b32 v73, v65, 16, v66
	ds_load_u8 v65, v184 offset:1664
	ds_load_u8 v66, v184 offset:384
	v_lshl_or_b32 v170, v68, 16, v71
	ds_load_u8 v68, v184 offset:128
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v67, v112, v72, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v65, v65, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v169, v65, 16, v67
	ds_load_u8 v65, v184 offset:640
	ds_load_u8 v67, v184 offset:7552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v66, v68, v66, 0xc0c0004
	ds_load_u8 v68, v184 offset:7296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v65, v65, v69, 0xc0c0004
	ds_load_u8 v69, v184 offset:8064
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v184 offset:6272
	v_lshl_or_b32 v168, v65, 16, v66
	ds_load_u8 v65, v184 offset:7808
	ds_load_u8 v66, v184 offset:6528
	v_wmma_i32_16x16x16_iu8 v[112:119], v[168:171], v[120:123], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[128:135], v[168:171], v[136:139], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[168:171], v[152:155], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[160:167], v[168:171], v[176:179], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v65, v65, v69, 0xc0c0004
	ds_load_u8 v69, v184 offset:7040
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v66, v68, v66, 0xc0c0004
	ds_load_u8 v68, v184 offset:6784
	v_lshl_or_b32 v175, v65, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v68, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v174, v68, 16, v66
	ds_load_u8 v65, v184 offset:5504
	ds_load_u8 v66, v184 offset:5248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v184 offset:6016
	ds_load_u8 v67, v184 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v66, 16, v65
	ds_load_u8 v65, v184 offset:4480
	ds_load_u8 v66, v184 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v184 offset:4992
	ds_load_u8 v67, v184 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v172, v66, 16, v65
	v_wmma_i32_16x16x16_iu8 v[65:72], v[13:16], v[120:123], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[172:175], v[124:127], v[112:119] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[73:76], v[124:127], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[120:127], v[13:16], v[136:139], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[128:135], v[172:175], v[140:143], v[128:135] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[172:175], v[156:159], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[160:167], v[172:175], v[180:183], v[160:167] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[120:127], v[73:76], v[140:143], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[13:16], v[152:155], v[1:8] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v172, s35, v110
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[136:143], v[73:76], v[156:159], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[152:159], v[13:16], v[176:179], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v13, v184 offset:11520
	ds_load_u8 v14, v184 offset:11264
	v_wmma_i32_16x16x16_iu8 v[152:159], v[73:76], v[180:183], v[152:159] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v184 offset:12032
	ds_load_u8 v15, v184 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v184 offset:10496
	ds_load_u8 v16, v184 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v184 offset:11008
	ds_load_u8 v73, v184 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v16, 0xc0c0004
	v_lshl_or_b32 v16, v14, 16, v13
	ds_load_u8 v13, v184 offset:9472
	ds_load_u8 v14, v184 offset:9216
	v_lshl_or_b32 v15, v73, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v184 offset:9984
	ds_load_u8 v73, v184 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v73, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v14, v14, 16, v13
	ds_load_u8 v13, v184 offset:8448
	ds_load_u8 v73, v184 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v73, v13, 0xc0c0004
	ds_load_u8 v73, v184 offset:8960
	ds_load_u8 v74, v184 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v73, 16, v13
	ds_load_u8 v73, v184 offset:11648
	ds_load_u8 v74, v184 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v184 offset:12160
	ds_load_u8 v75, v184 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v184 offset:10624
	ds_load_u8 v76, v184 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v184 offset:11136
	ds_load_u8 v168, v184 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v168, v76, 0xc0c0004
	v_lshl_or_b32 v76, v74, 16, v73
	ds_load_u8 v73, v184 offset:9600
	ds_load_u8 v74, v184 offset:9344
	v_lshl_or_b32 v75, v168, 16, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v184 offset:10112
	ds_load_u8 v168, v184 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v168, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v184 offset:8576
	ds_load_u8 v168, v184 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v168, v73, 0xc0c0004
	ds_load_u8 v168, v184 offset:9088
	ds_load_u8 v169, v184 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v168, 16, v73
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[168:171], v172
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[13:16], v[168:171], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[73:76], v[168:171], v[112:119] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[168:171], v172 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[120:127], v[13:16], v[168:171], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[128:135], v[73:76], v[168:171], v[128:135] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[168:171], v172 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[136:143], v[13:16], v[168:171], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[73:76], v[168:171], v[144:151] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[168:171], v172 offset:3072
	v_add_nc_u32_e32 v172, s35, v111
	s_mov_b32 s35, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s1, s36, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s1, 2
	s_cselect_b32 s36, s1, 0
	s_add_i32 s18, s17, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s1, s36, 14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[152:159], v[13:16], v[168:171], v[152:159] neg_lo:[1,1,0]
	ds_load_u8 v13, v184 offset:15616
	ds_load_u8 v14, v184 offset:15360
	v_wmma_i32_16x16x16_iu8 v[160:167], v[73:76], v[168:171], v[160:167] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v184 offset:16128
	ds_load_u8 v15, v184 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v184 offset:14592
	ds_load_u8 v16, v184 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v184 offset:15104
	ds_load_u8 v73, v184 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v16, 0xc0c0004
	v_lshl_or_b32 v16, v14, 16, v13
	ds_load_u8 v13, v184 offset:13568
	ds_load_u8 v14, v184 offset:13312
	v_lshl_or_b32 v15, v73, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v184 offset:14080
	ds_load_u8 v73, v184 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v73, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v14, v14, 16, v13
	ds_load_u8 v13, v184 offset:12544
	ds_load_u8 v73, v184 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v73, v13, 0xc0c0004
	ds_load_u8 v73, v184 offset:13056
	ds_load_u8 v74, v184 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v73, 16, v13
	ds_load_u8 v73, v184 offset:15744
	ds_load_u8 v74, v184 offset:15488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v184 offset:16256
	ds_load_u8 v75, v184 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v184 offset:14720
	ds_load_u8 v76, v184 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v184 offset:15232
	ds_load_u8 v168, v184 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v168, v76, 0xc0c0004
	v_lshl_or_b32 v76, v74, 16, v73
	ds_load_u8 v73, v184 offset:13696
	ds_load_u8 v74, v184 offset:13440
	v_lshl_or_b32 v75, v168, 16, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v184 offset:14208
	ds_load_u8 v168, v184 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v168, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v184 offset:12672
	ds_load_u8 v168, v184 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v168, v73, 0xc0c0004
	ds_load_u8 v168, v184 offset:13184
	ds_load_u8 v169, v184 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v168, 16, v73
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[168:171], v172
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[13:16], v[168:171], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[73:76], v[168:171], v[112:119] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[168:171], v172 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[120:127], v[13:16], v[168:171], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[128:135], v[73:76], v[168:171], v[128:135] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[168:171], v172 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[136:143], v[13:16], v[168:171], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[73:76], v[168:171], v[144:151] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[168:171], v172 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[152:159], v[13:16], v[168:171], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[160:167], v[73:76], v[168:171], v[160:167] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v13, v65
	v_cvt_f32_i32_e32 v73, v116
	v_cvt_f32_i32_e32 v116, v122
	v_cvt_f32_i32_e32 v122, v128
	v_cvt_f32_i32_e32 v128, v134
	v_cvt_f32_i32_e32 v134, v140
	v_cvt_f32_i32_e32 v140, v146
	v_cvt_f32_i32_e32 v65, v69
	v_cvt_f32_i32_e32 v69, v112
	v_cvt_f32_i32_e32 v14, v66
	v_cvt_f32_i32_e32 v15, v67
	v_cvt_f32_i32_e32 v16, v68
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v61, v61, v13 :: v_dual_add_f32 v42, v42, v140
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v13, s16, v77
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v66, v70
	v_cvt_f32_i32_e32 v67, v71
	v_cvt_f32_i32_e32 v68, v72
	v_cvt_f32_i32_e32 v76, v119
	v_cvt_f32_i32_e32 v119, v125
	v_cvt_f32_i32_e32 v125, v131
	v_cvt_f32_i32_e32 v131, v137
	v_cvt_f32_i32_e32 v137, v143
	v_cvt_f32_i32_e32 v143, v149
	v_cvt_f32_i32_e32 v149, v155
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v33, v33, v65
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v65, s16, v80
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v70, v113
	v_cvt_f32_i32_e32 v71, v114
	v_cvt_f32_i32_e32 v72, v115
	v_cvt_f32_i32_e32 v74, v117
	v_cvt_f32_i32_e32 v117, v123
	v_cvt_f32_i32_e32 v123, v129
	v_cvt_f32_i32_e32 v129, v135
	v_cvt_f32_i32_e32 v135, v141
	v_cvt_f32_i32_e32 v141, v147
	v_cvt_f32_i32_e32 v147, v153
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v102, v102, v69 :: v_dual_add_f32 v53, v53, v70
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v69, s16, v81
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v75, v118
	v_cvt_f32_i32_e32 v115, v121
	v_cvt_f32_i32_e32 v121, v127
	v_cvt_f32_i32_e32 v127, v133
	v_cvt_f32_i32_e32 v133, v139
	v_cvt_f32_i32_e32 v139, v145
	v_cvt_f32_i32_e32 v145, v151
	v_cvt_f32_i32_e32 v151, v157
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v56, v56, v73 :: v_dual_add_f32 v107, v107, v75
	v_dual_add_f32 v64, v64, v16 :: v_dual_add_nc_u32 v73, s16, v78
	v_dual_add_f32 v63, v63, v15 :: v_dual_add_f32 v62, v62, v14
	v_add_f32_e32 v35, v35, v67
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v36, v36, v68
	v_dual_add_f32 v34, v34, v66 :: v_dual_add_f32 v55, v55, v72
	v_add_f32_e32 v40, v40, v149
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[65:68], v65, s[24:27], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v54, v54, v71 :: v_dual_add_f32 v59, v59, v116
	v_add_f32_e32 v38, v38, v147
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[69:72], v69, s[24:27], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v114, v120
	v_cvt_f32_i32_e32 v120, v126
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v108, v108, v74
	v_add_f32_e32 v106, v106, v76
	v_add_f32_e32 v18, v18, v151
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[73:76], v73, s[24:27], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v118, v124
	v_cvt_f32_i32_e32 v124, v130
	v_cvt_f32_i32_e32 v126, v132
	v_cvt_f32_i32_e32 v130, v136
	v_cvt_f32_i32_e32 v132, v138
	v_cvt_f32_i32_e32 v136, v142
	v_cvt_f32_i32_e32 v138, v144
	v_cvt_f32_i32_e32 v142, v148
	v_cvt_f32_i32_e32 v144, v150
	v_cvt_f32_i32_e32 v146, v152
	v_cvt_f32_i32_e32 v148, v154
	v_cvt_f32_i32_e32 v150, v156
	v_cvt_f32_i32_e32 v152, v158
	v_cvt_f32_i32_e32 v153, v159
	v_cvt_f32_i32_e32 v154, v160
	v_cvt_f32_i32_e32 v155, v161
	v_cvt_f32_i32_e32 v156, v162
	v_cvt_f32_i32_e32 v157, v163
	v_cvt_f32_i32_e32 v158, v164
	v_cvt_f32_i32_e32 v159, v165
	v_cvt_f32_i32_e32 v113, v166
	v_cvt_f32_i32_e32 v112, v167
	s_mov_b32 s16, s0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s0, s36, 12
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v60, v60, v117 :: v_dual_add_f32 v25, v25, v118
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s19, s0, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s0, s1, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v58, v58, v115 :: v_dual_add_f32 v105, v105, v122
	v_dual_add_f32 v57, v57, v114 :: v_dual_add_f32 v28, v28, v121
	v_add_f32_e32 v45, v45, v123
	v_dual_add_f32 v27, v27, v120 :: v_dual_add_f32 v26, v26, v119
	v_dual_add_f32 v47, v47, v125 :: v_dual_add_f32 v48, v48, v126
	v_add_f32_e32 v103, v103, v128
	v_dual_add_f32 v46, v46, v124 :: v_dual_add_f32 v101, v101, v129
	v_dual_add_f32 v104, v104, v127 :: v_dual_add_f32 v51, v51, v132
	v_dual_add_f32 v52, v52, v133 :: v_dual_add_f32 v49, v49, v130
	v_dual_add_f32 v50, v50, v131 :: v_dual_add_f32 v23, v23, v136
	v_dual_add_f32 v24, v24, v137 :: v_dual_add_f32 v21, v21, v134
	v_dual_add_f32 v22, v22, v135 :: v_dual_add_f32 v43, v43, v141
	v_dual_add_f32 v100, v100, v138 :: v_dual_add_f32 v41, v41, v139
	v_dual_add_f32 v44, v44, v142 :: v_dual_add_f32 v99, v99, v143
	v_dual_add_f32 v98, v98, v144 :: v_dual_add_f32 v97, v97, v145
	v_dual_add_f32 v39, v39, v148 :: v_dual_add_f32 v20, v20, v153
	v_dual_add_f32 v37, v37, v146 :: v_dual_add_f32 v30, v30, v156
	v_dual_add_f32 v19, v19, v152 :: v_dual_add_f32 v96, v96, v154
	v_dual_add_f32 v17, v17, v150 :: v_dual_add_f32 v94, v94, v113
	v_dual_add_f32 v32, v32, v158 :: v_dual_add_f32 v31, v31, v157
	v_add_f32_e32 v29, v29, v155
	v_add_f32_e32 v95, v95, v159
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v113, s19, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v93, v93, v112
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v112, s0, v92
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s1, s19, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s17, s34
	s_mov_b32 s17, s18
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v113, v[9:12] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v112, v[13:16]
	s_waitcnt vmcnt(2)
	ds_store_b128 v112, v[65:68] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v112, v[69:72] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v112, v[73:76] offset:12288
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v83
	s_mov_b32 s17, s16
.LBB0_7:                                ; %Flow214
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_and_b32_e32 v90, 6, v0
	v_and_b32_e32 v89, 0xf0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v114, v79, v87
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v110, v90, 3, v1
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v111, 16, v110
	v_xor_b32_e32 v112, 32, v110
	v_xor_b32_e32 v113, 48, v110
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s16, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v116, s17, v114
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s17, s16
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v115, s35, v113
	v_add_nc_u32_e32 v1, s35, v112
	v_add_nc_u32_e32 v117, s35, v111
	ds_load_b128 v[65:68], v115 offset:1024
	ds_load_b128 v[132:135], v115
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v2, v116 offset:3328
	ds_load_u8 v3, v116 offset:3072
	ds_load_u8 v4, v116 offset:3840
	ds_load_u8 v5, v116 offset:3584
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[69:72], v1 offset:3072
	ds_load_b128 v[73:76], v1 offset:2048
	ds_load_b128 v[77:80], v1 offset:1024
	ds_load_b128 v[124:127], v1
	ds_load_b128 v[81:84], v117 offset:1024
	ds_load_b128 v[128:131], v117
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v1, v116 offset:2304
	ds_load_u8 v6, v116 offset:2048
	ds_load_u8 v7, v116 offset:2816
	ds_load_u8 v8, v116 offset:2560
	ds_load_u8 v9, v116 offset:1280
	ds_load_u8 v10, v116 offset:1024
	ds_load_u8 v11, v116 offset:1792
	ds_load_u8 v12, v116 offset:1536
	ds_load_u8 v119, v116 offset:3968
	ds_load_u8 v120, v116 offset:3712
	ds_load_u8 v121, v116 offset:3456
	ds_load_u8 v122, v116 offset:3200
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v118, s35, v110
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v6, v1, 0xc0c0004
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	v_perm_b32 v3, v5, v4, 0xc0c0004
	ds_load_u8 v4, v116 offset:256
	ds_load_u8 v5, v116
	ds_load_u8 v13, v116 offset:768
	ds_load_u8 v14, v116 offset:512
	ds_load_u8 v123, v116 offset:2944
	ds_load_u8 v144, v116 offset:2688
	ds_load_u8 v145, v116 offset:2432
	ds_load_u8 v146, v116 offset:2176
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v7, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v8, v12, v11, 0xc0c0004
	v_lshl_or_b32 v166, v6, 16, v1
	v_lshl_or_b32 v167, v3, 16, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v165, v8, 16, v7
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v14, v13, 0xc0c0004
	v_lshl_or_b32 v164, v2, 16, v1
	v_mov_b32_e32 v1, s16
	ds_load_u8 v9, v116 offset:7424
	ds_load_u8 v10, v116 offset:7168
	ds_load_u8 v11, v116 offset:7936
	ds_load_u8 v12, v116 offset:7680
	ds_load_u8 v13, v116 offset:6400
	ds_load_u8 v14, v116 offset:6144
	ds_load_u8 v15, v116 offset:6912
	ds_load_u8 v16, v116 offset:6656
	ds_load_u8 v155, v116 offset:5376
	ds_load_u8 v156, v116 offset:5120
	ds_load_u8 v157, v116 offset:5888
	ds_load_u8 v158, v116 offset:5632
	ds_load_u8 v160, v116 offset:8064
	ds_load_u8 v161, v116 offset:7808
	ds_load_u8 v162, v116 offset:7552
	ds_load_u8 v163, v116 offset:7296
	ds_load_u8 v180, v116 offset:9472
	ds_load_u8 v181, v116 offset:9216
	ds_load_u8 v184, v116 offset:9984
	ds_load_u8 v185, v116 offset:9728
	ds_load_u8 v186, v116 offset:8448
	ds_load_u8 v187, v116 offset:8192
	ds_load_u8 v188, v116 offset:8960
	ds_load_u8 v189, v116 offset:8704
	ds_load_u8 v208, v116 offset:11136
	ds_load_u8 v209, v116 offset:10880
	ds_load_u8 v210, v116 offset:10624
	ds_load_u8 v211, v116 offset:10368
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v3, s18
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[140:143], v118 offset:1024
	ds_load_b128 v[136:139], v118
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v151, v116 offset:896
	ds_load_u8 v152, v116 offset:640
	ds_load_u8 v153, v116 offset:384
	ds_load_u8 v154, v116 offset:128
	ds_load_u8 v147, v116 offset:1920
	ds_load_u8 v148, v116 offset:1664
	ds_load_u8 v149, v116 offset:1408
	ds_load_u8 v150, v116 offset:1152
	v_mov_b32_e32 v2, s17
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_mov_b32_e32 v8, s23
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v169, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v170, v16, v15, 0xc0c0004
	v_mov_b32_e32 v7, s22
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	ds_load_u8 v196, v116 offset:6016
	ds_load_u8 v197, v116 offset:5760
	ds_load_u8 v198, v116 offset:5504
	ds_load_u8 v199, v116 offset:5248
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v156, v158, v157, 0xc0c0004
	v_perm_b32 v159, v10, v9, 0xc0c0004
	v_lshl_or_b32 v170, v170, 16, v169
	v_perm_b32 v168, v12, v11, 0xc0c0004
	ds_load_u8 v9, v116 offset:4352
	ds_load_u8 v10, v116 offset:4096
	ds_load_u8 v11, v116 offset:4864
	ds_load_u8 v12, v116 offset:4608
	ds_load_u8 v192, v116 offset:7040
	ds_load_u8 v193, v116 offset:6784
	ds_load_u8 v194, v116 offset:6528
	ds_load_u8 v195, v116 offset:6272
	v_lshl_or_b32 v169, v156, 16, v155
	ds_load_u8 v157, v116 offset:11520
	ds_load_u8 v158, v116 offset:11264
	ds_load_u8 v172, v116 offset:12032
	ds_load_u8 v173, v116 offset:11776
	ds_load_u8 v200, v116 offset:4992
	ds_load_u8 v201, v116 offset:4736
	ds_load_u8 v202, v116 offset:4480
	ds_load_u8 v203, v116 offset:4224
	ds_load_u8 v215, v116 offset:9088
	ds_load_u8 v216, v116 offset:8832
	ds_load_u8 v217, v116 offset:8576
	ds_load_u8 v218, v116 offset:8320
	v_lshl_or_b32 v171, v168, 16, v159
	ds_load_u8 v231, v116 offset:15232
	ds_load_u8 v232, v116 offset:14976
	ds_load_u8 v233, v116 offset:14720
	ds_load_u8 v234, v116 offset:14464
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v174, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v175, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v158, v173, v172, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[164:167], v[136:139], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v168, v175, 16, v174
	ds_load_u8 v155, v116 offset:10496
	ds_load_u8 v156, v116 offset:10240
	ds_load_u8 v159, v116 offset:11008
	ds_load_u8 v174, v116 offset:10752
	ds_load_u8 v204, v116 offset:12160
	ds_load_u8 v205, v116 offset:11904
	ds_load_u8 v206, v116 offset:11648
	ds_load_u8 v207, v116 offset:11392
	v_lshl_or_b32 v183, v158, 16, v157
	v_perm_b32 v158, v189, v188, 0xc0c0004
	ds_load_u8 v188, v116 offset:15616
	ds_load_u8 v189, v116 offset:15360
	v_perm_b32 v157, v187, v186, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[168:171], v[128:131], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v156, v174, v159, 0xc0c0004
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[172:175], v117 offset:3072
	ds_load_b128 v[176:179], v117 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v117, v181, v180, 0xc0c0004
	v_lshl_or_b32 v180, v158, 16, v157
	v_lshl_or_b32 v182, v156, 16, v155
	v_perm_b32 v156, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v229, v189, v188, 0xc0c0004
	ds_load_u8 v188, v116 offset:12544
	ds_load_u8 v189, v116 offset:12288
	ds_load_u8 v155, v116 offset:10112
	ds_load_u8 v212, v116 offset:9856
	ds_load_u8 v213, v116 offset:9600
	ds_load_u8 v214, v116 offset:9344
	v_lshl_or_b32 v181, v156, 16, v117
	ds_load_u8 v117, v116 offset:16128
	ds_load_u8 v190, v116 offset:15872
	ds_load_u8 v191, v116 offset:14592
	ds_load_u8 v219, v116 offset:14336
	ds_load_u8 v220, v116 offset:15104
	ds_load_u8 v221, v116 offset:14848
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[184:187], v118 offset:3072
	ds_load_b128 v[156:159], v118 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v118, v116 offset:13568
	ds_load_u8 v222, v116 offset:13312
	ds_load_u8 v223, v116 offset:14080
	ds_load_u8 v224, v116 offset:13824
	ds_load_u8 v225, v116 offset:16256
	ds_load_u8 v226, v116 offset:16000
	ds_load_u8 v227, v116 offset:15744
	ds_load_u8 v228, v116 offset:15488
	v_wmma_i32_16x16x16_iu8 v[9:16], v[180:183], v[124:127], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v222, v222, v118, 0xc0c0004
	v_perm_b32 v219, v219, v191, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v223, v224, v223, 0xc0c0004
	v_perm_b32 v220, v221, v220, 0xc0c0004
	v_perm_b32 v230, v190, v117, 0xc0c0004
	ds_load_u8 v117, v116 offset:13056
	ds_load_u8 v190, v116 offset:12800
	ds_load_u8 v221, v116 offset:14208
	ds_load_u8 v235, v116 offset:13952
	ds_load_u8 v236, v116 offset:13696
	ds_load_u8 v237, v116 offset:13440
	v_perm_b32 v241, v189, v188, 0xc0c0004
	v_perm_b32 v118, v120, v119, 0xc0c0004
	v_perm_b32 v119, v146, v145, 0xc0c0004
	ds_load_u8 v224, v116 offset:13184
	ds_load_u8 v238, v116 offset:12928
	ds_load_u8 v239, v116 offset:12672
	ds_load_u8 v240, v116 offset:12416
	v_perm_b32 v120, v144, v123, 0xc0c0004
	v_perm_b32 v144, v152, v151, 0xc0c0004
	v_perm_b32 v151, v203, v202, 0xc0c0004
	v_perm_b32 v152, v201, v200, 0xc0c0004
	v_lshl_or_b32 v203, v230, 16, v229
	v_lshl_or_b32 v202, v220, 16, v219
	v_lshl_or_b32 v201, v223, 16, v222
	v_perm_b32 v116, v122, v121, 0xc0c0004
	v_perm_b32 v121, v150, v149, 0xc0c0004
	v_perm_b32 v122, v148, v147, 0xc0c0004
	v_perm_b32 v123, v154, v153, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v145, v190, v117, 0xc0c0004
	v_lshl_or_b32 v191, v118, 16, v116
	v_lshl_or_b32 v190, v120, 16, v119
	v_lshl_or_b32 v189, v122, 16, v121
	v_lshl_or_b32 v188, v144, 16, v123
	v_lshl_or_b32 v200, v145, 16, v241
	v_perm_b32 v144, v163, v162, 0xc0c0004
	v_perm_b32 v146, v161, v160, 0xc0c0004
	v_perm_b32 v147, v195, v194, 0xc0c0004
	v_perm_b32 v148, v193, v192, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[200:203], v[132:135], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v149, v199, v198, 0xc0c0004
	v_perm_b32 v150, v197, v196, 0xc0c0004
	v_lshl_or_b32 v195, v146, 16, v144
	v_lshl_or_b32 v194, v148, 16, v147
	v_cvt_f32_i32_e32 v16, v16
	v_lshl_or_b32 v192, v152, 16, v151
	v_lshl_or_b32 v193, v150, 16, v149
	v_perm_b32 v144, v214, v213, 0xc0c0004
	v_perm_b32 v146, v212, v155, 0xc0c0004
	v_perm_b32 v147, v218, v217, 0xc0c0004
	v_perm_b32 v148, v216, v215, 0xc0c0004
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v36, v36, v16
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[116:123], v[188:191], v[136:139], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v136, v207, v206, 0xc0c0004
	v_perm_b32 v137, v205, v204, 0xc0c0004
	v_perm_b32 v138, v211, v210, 0xc0c0004
	v_perm_b32 v139, v209, v208, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[116:123], v[192:195], v[128:131], v[116:123] neg_lo:[1,1,0]
	v_lshl_or_b32 v197, v146, 16, v144
	v_lshl_or_b32 v199, v137, 16, v136
	v_lshl_or_b32 v196, v148, 16, v147
	v_lshl_or_b32 v198, v139, 16, v138
	v_perm_b32 v136, v228, v227, 0xc0c0004
	v_perm_b32 v137, v226, v225, 0xc0c0004
	v_perm_b32 v138, v234, v233, 0xc0c0004
	v_perm_b32 v139, v232, v231, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v144, v237, v236, 0xc0c0004
	v_perm_b32 v145, v235, v221, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v240, v239, 0xc0c0004
	v_perm_b32 v147, v238, v224, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[116:123], v[196:199], v[124:127], v[116:123] neg_lo:[1,1,0]
	v_lshl_or_b32 v207, v137, 16, v136
	v_lshl_or_b32 v206, v139, 16, v138
	v_lshl_or_b32 v205, v145, 16, v144
	v_lshl_or_b32 v204, v147, 16, v146
	v_wmma_i32_16x16x16_iu8 v[124:131], v[164:167], v[140:143], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[116:123], v[204:207], v[132:135], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[124:131], v[168:171], v[81:84], v[124:131] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v14, v14
	v_wmma_i32_16x16x16_iu8 v[132:139], v[188:191], v[140:143], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v16, v116
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v33, v33, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v120
	v_wmma_i32_16x16x16_iu8 v[124:131], v[180:183], v[77:80], v[124:131] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v35, v35, v15 :: v_dual_add_f32 v34, v34, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v119
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v56, v56, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v121
	v_wmma_i32_16x16x16_iu8 v[124:131], v[200:203], v[65:68], v[124:131] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[132:139], v[192:195], v[81:84], v[132:139] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v102, v102, v16
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v15, v117
	v_cvt_f32_i32_e32 v16, v118
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v55, v55, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v122
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v108, v108, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v123
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[208:211], v115 offset:3072
	ds_load_b128 v[212:215], v115 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[132:139], v[196:199], v[77:80], v[132:139] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v54, v54, v16 :: v_dual_add_f32 v53, v53, v15
	v_add_f32_e32 v107, v107, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v127
	v_cvt_f32_i32_e32 v15, v126
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v106, v106, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v124
	v_wmma_i32_16x16x16_iu8 v[140:147], v[164:167], v[156:159], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[132:139], v[204:207], v[65:68], v[132:139] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v16, v125
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v60, v60, v14 :: v_dual_add_f32 v57, v57, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v131
	v_cvt_f32_i32_e32 v13, v130
	v_wmma_i32_16x16x16_iu8 v[140:147], v[168:171], v[176:179], v[140:147] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v59, v59, v15 :: v_dual_add_f32 v58, v58, v16
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v15, v129
	v_cvt_f32_i32_e32 v16, v128
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v28, v28, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v132
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v27, v27, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v136
	v_wmma_i32_16x16x16_iu8 v[148:155], v[188:191], v[156:159], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[180:183], v[73:76], v[140:147] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v26, v26, v15 :: v_dual_add_f32 v105, v105, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v135
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v48, v48, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v137
	v_wmma_i32_16x16x16_iu8 v[156:163], v[164:167], v[184:187], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[148:155], v[192:195], v[176:179], v[148:155] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[140:147], v[200:203], v[212:215], v[140:147] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v25, v25, v16
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v15, v133
	v_cvt_f32_i32_e32 v16, v134
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v47, v47, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v138
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v104, v104, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v139
	v_wmma_i32_16x16x16_iu8 v[1:8], v[188:191], v[184:187], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[156:163], v[168:171], v[172:175], v[156:163] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[148:155], v[196:199], v[73:76], v[148:155] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v46, v46, v16 :: v_dual_add_f32 v45, v45, v15
	v_add_f32_e32 v103, v103, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v143
	v_cvt_f32_i32_e32 v15, v142
	v_cvt_f32_i32_e32 v16, v141
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v101, v101, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v140
	v_wmma_i32_16x16x16_iu8 v[1:8], v[192:195], v[172:175], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[156:163], v[180:183], v[69:72], v[156:163] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[148:155], v[204:207], v[212:215], v[148:155] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v52, v52, v14 :: v_dual_add_f32 v51, v51, v15
	v_add_f32_e32 v50, v50, v16
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v147
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v49, v49, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v146
	v_cvt_f32_i32_e32 v15, v145
	v_cvt_f32_i32_e32 v16, v144
	v_wmma_i32_16x16x16_iu8 v[1:8], v[196:199], v[69:72], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[156:163], v[200:203], v[208:211], v[156:163] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v24, v24, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v148
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v23, v23, v13 :: v_dual_add_f32 v22, v22, v15
	v_add_f32_e32 v21, v21, v16
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v152
	v_cvt_f32_i32_e32 v15, v149
	v_cvt_f32_i32_e32 v16, v150
	v_wmma_i32_16x16x16_iu8 v[1:8], v[204:207], v[208:211], v[1:8] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v100, v100, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v151
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v44, v44, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v153
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v42, v42, v16 :: v_dual_add_f32 v41, v41, v15
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v15, v158
	v_cvt_f32_i32_e32 v16, v157
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v43, v43, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v154
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v99, v99, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v155
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v39, v39, v15 :: v_dual_add_f32 v38, v38, v16
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v16, v160
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v98, v98, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v159
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v97, v97, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v156
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v17, v17, v16 :: v_dual_add_f32 v96, v96, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v1, v2
	v_cvt_f32_i32_e32 v2, v4
	v_cvt_f32_i32_e32 v3, v3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v32, v32, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v4, v6
	v_cvt_f32_i32_e32 v5, v7
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v40, v40, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v14, v163
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v37, v37, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v162
	v_cvt_f32_i32_e32 v15, v161
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v31, v31, v2 :: v_dual_add_f32 v30, v30, v3
	v_add_f32_e32 v29, v29, v1
	v_dual_add_f32 v95, v95, v4 :: v_dual_add_f32 v94, v94, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v1, v8
	v_cvt_f32_i32_e32 v2, v12
	v_cvt_f32_i32_e32 v3, v11
	v_cvt_f32_i32_e32 v4, v10
	v_cvt_f32_i32_e32 v5, v9
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v20, v20, v14 :: v_dual_add_f32 v19, v19, v13
	v_dual_add_f32 v18, v18, v15 :: v_dual_add_f32 v93, v93, v1
	v_dual_add_f32 v64, v64, v2 :: v_dual_add_f32 v63, v63, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v62, v62, v4 :: v_dual_add_f32 v61, v61, v5
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s16, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v148, s23 :: v_dual_add_nc_u32 v69, s1, v113
	v_dual_mov_b32 v147, s22 :: v_dual_add_nc_u32 v82, s0, v114
	v_dual_mov_b32 v146, s21 :: v_dual_add_nc_u32 v65, s1, v112
	v_dual_mov_b32 v144, s19 :: v_dual_add_nc_u32 v83, s1, v111
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	ds_load_b128 v[1:4], v69 offset:1024
	ds_load_b128 v[70:73], v69
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v84, v82 offset:3328
	ds_load_u8 v111, v82 offset:3072
	ds_load_u8 v112, v82 offset:3840
	ds_load_u8 v113, v82 offset:3584
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[5:8], v65 offset:3072
	ds_load_b128 v[9:12], v65 offset:2048
	ds_load_b128 v[13:16], v65 offset:1024
	ds_load_b128 v[74:77], v65
	ds_load_b128 v[65:68], v83 offset:1024
	ds_load_b128 v[78:81], v83
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v114, v82 offset:2304
	ds_load_u8 v115, v82 offset:2048
	ds_load_u8 v116, v82 offset:2816
	ds_load_u8 v117, v82 offset:2560
	ds_load_u8 v118, v82 offset:1280
	ds_load_u8 v119, v82 offset:1024
	ds_load_u8 v120, v82 offset:1792
	ds_load_u8 v121, v82 offset:1536
	ds_load_u8 v122, v82 offset:3968
	ds_load_u8 v123, v82 offset:3712
	ds_load_u8 v124, v82 offset:3456
	ds_load_u8 v125, v82 offset:3200
	ds_load_u8 v205, v82 offset:15616
	ds_load_u8 v206, v82 offset:15360
	ds_load_u8 v136, v82 offset:1920
	ds_load_u8 v149, v82 offset:1664
	ds_load_u8 v150, v82 offset:1408
	ds_load_u8 v151, v82 offset:1152
	v_dual_mov_b32 v145, s20 :: v_dual_add_nc_u32 v110, s1, v110
	ds_load_u8 v165, v82 offset:6016
	ds_load_u8 v166, v82 offset:5760
	ds_load_u8 v167, v82 offset:5504
	ds_load_u8 v168, v82 offset:5248
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[137:140], v110 offset:1024
	ds_load_b128 v[129:132], v110
	ds_load_b128 v[189:192], v83 offset:3072
	ds_load_b128 v[193:196], v83 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	v_perm_b32 v84, v111, v84, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v115, v117, v116, 0xc0c0004
	v_perm_b32 v111, v113, v112, 0xc0c0004
	ds_load_u8 v112, v82 offset:256
	ds_load_u8 v113, v82
	ds_load_u8 v126, v82 offset:768
	ds_load_u8 v127, v82 offset:512
	ds_load_u8 v128, v82 offset:2944
	ds_load_u8 v133, v82 offset:2688
	ds_load_u8 v134, v82 offset:2432
	ds_load_u8 v135, v82 offset:2176
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v116, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v117, v121, v120, 0xc0c0004
	v_lshl_or_b32 v183, v115, 16, v114
	v_lshl_or_b32 v184, v111, 16, v84
	ds_load_u8 v84, v82 offset:896
	ds_load_u8 v111, v82 offset:640
	ds_load_u8 v121, v82 offset:384
	ds_load_u8 v152, v82 offset:128
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	v_lshl_or_b32 v182, v117, 16, v116
	ds_load_u8 v114, v82 offset:7424
	ds_load_u8 v115, v82 offset:7168
	ds_load_u8 v116, v82 offset:7936
	ds_load_u8 v117, v82 offset:7680
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v224, v206, v205, 0xc0c0004
	ds_load_u8 v205, v82 offset:12544
	ds_load_u8 v206, v82 offset:12288
	v_perm_b32 v122, v123, v122, 0xc0c0004
	v_dual_mov_b32 v143, s18 :: v_dual_mov_b32 v142, s17
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	v_mov_b32_e32 v141, s16
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v113, v127, v126, 0xc0c0004
	ds_load_u8 v226, v82 offset:15232
	ds_load_u8 v227, v82 offset:14976
	ds_load_u8 v228, v82 offset:14720
	ds_load_u8 v229, v82 offset:14464
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v125, v133, v128, 0xc0c0004
	v_perm_b32 v128, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v123, v135, v134, 0xc0c0004
	v_lshl_or_b32 v181, v113, 16, v112
	ds_load_u8 v112, v82 offset:6400
	ds_load_u8 v113, v82 offset:6144
	ds_load_u8 v118, v82 offset:6912
	ds_load_u8 v119, v82 offset:6656
	ds_load_u8 v120, v82 offset:5376
	ds_load_u8 v126, v82 offset:5120
	ds_load_u8 v127, v82 offset:5888
	ds_load_u8 v153, v82 offset:5632
	ds_load_u8 v154, v82 offset:8064
	ds_load_u8 v155, v82 offset:7808
	ds_load_u8 v156, v82 offset:7552
	ds_load_u8 v157, v82 offset:7296
	v_perm_b32 v133, v149, v136, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v84, v111, v84, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v121, v152, v121, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v158, v115, v114, 0xc0c0004
	v_perm_b32 v136, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v159, v117, v116, 0xc0c0004
	ds_load_u8 v114, v82 offset:4352
	ds_load_u8 v115, v82 offset:4096
	ds_load_u8 v116, v82 offset:4864
	ds_load_u8 v117, v82 offset:4608
	ds_load_u8 v160, v82 offset:7040
	ds_load_u8 v161, v82 offset:6784
	ds_load_u8 v162, v82 offset:6528
	ds_load_u8 v163, v82 offset:6272
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v239, v206, v205, 0xc0c0004
	v_lshl_or_b32 v206, v133, 16, v128
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	v_lshl_or_b32 v188, v159, 16, v158
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v164, v119, v118, 0xc0c0004
	v_lshl_or_b32 v205, v84, 16, v121
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v126, v126, v120, 0xc0c0004
	v_perm_b32 v149, v166, v165, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v127, v153, v127, 0xc0c0004
	ds_load_u8 v153, v82 offset:11520
	ds_load_u8 v169, v82 offset:11264
	ds_load_u8 v170, v82 offset:12032
	ds_load_u8 v171, v82 offset:11776
	ds_load_u8 v172, v82 offset:4992
	ds_load_u8 v177, v82 offset:4736
	ds_load_u8 v178, v82 offset:4480
	ds_load_u8 v179, v82 offset:4224
	v_lshl_or_b32 v187, v164, 16, v112
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v133, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v84, v157, v156, 0xc0c0004
	v_lshl_or_b32 v186, v127, 16, v126
	ds_load_u8 v112, v82 offset:10496
	ds_load_u8 v126, v82 offset:10240
	ds_load_u8 v127, v82 offset:11008
	ds_load_u8 v158, v82 offset:10752
	ds_load_u8 v159, v82 offset:12160
	ds_load_u8 v164, v82 offset:11904
	ds_load_u8 v180, v82 offset:11648
	ds_load_u8 v213, v82 offset:11392
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v173, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v174, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v135, v161, v160, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[113:120], v[181:184], v[129:132], v[141:148] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v134, v163, v162, 0xc0c0004
	v_lshl_or_b32 v185, v174, 16, v173
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v153, v169, v153, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v169, v171, v170, 0xc0c0004
	ds_load_u8 v170, v82 offset:9472
	ds_load_u8 v171, v82 offset:9216
	ds_load_u8 v173, v82 offset:9984
	ds_load_u8 v174, v82 offset:9728
	ds_load_u8 v175, v82 offset:8448
	ds_load_u8 v176, v82 offset:8192
	ds_load_u8 v197, v82 offset:8960
	ds_load_u8 v198, v82 offset:8704
	ds_load_u8 v214, v82 offset:11136
	ds_load_u8 v215, v82 offset:10880
	ds_load_u8 v216, v82 offset:10624
	ds_load_u8 v217, v82 offset:10368
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v151, v177, v172, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v112, v126, v112, 0xc0c0004
	v_perm_b32 v150, v179, v178, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v126, v158, v127, 0xc0c0004
	v_lshl_or_b32 v200, v169, 16, v153
	v_wmma_i32_16x16x16_iu8 v[113:120], v[185:188], v[78:81], v[113:120] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v199, v126, 16, v112
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v126, v171, v170, 0xc0c0004
	ds_load_u8 v83, v82 offset:10112
	ds_load_u8 v112, v82 offset:9856
	ds_load_u8 v153, v82 offset:9600
	ds_load_u8 v158, v82 offset:9344
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v127, v174, v173, 0xc0c0004
	ds_load_u8 v169, v82 offset:9088
	ds_load_u8 v170, v82 offset:8832
	ds_load_u8 v171, v82 offset:8576
	ds_load_u8 v218, v82 offset:8320
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v173, v176, v175, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v174, v198, v197, 0xc0c0004
	v_lshl_or_b32 v198, v127, 16, v126
	ds_load_u8 v126, v82 offset:16128
	ds_load_u8 v127, v82 offset:15872
	v_lshl_or_b32 v197, v174, 16, v173
	ds_load_u8 v207, v82 offset:14592
	ds_load_u8 v208, v82 offset:14336
	ds_load_u8 v209, v82 offset:15104
	ds_load_u8 v210, v82 offset:14848
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[201:204], v110 offset:3072
	ds_load_b128 v[173:176], v110 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v110, v82 offset:13568
	ds_load_u8 v211, v82 offset:13312
	ds_load_u8 v212, v82 offset:14080
	ds_load_u8 v219, v82 offset:13824
	ds_load_u8 v220, v82 offset:16256
	ds_load_u8 v221, v82 offset:16000
	ds_load_u8 v222, v82 offset:15744
	ds_load_u8 v223, v82 offset:15488
	v_wmma_i32_16x16x16_iu8 v[113:120], v[197:200], v[74:77], v[113:120] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v83, v112, v83, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v112, v218, v171, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v110, v211, v110, 0xc0c0004
	v_perm_b32 v225, v127, v126, 0xc0c0004
	ds_load_u8 v126, v82 offset:13056
	ds_load_u8 v127, v82 offset:12800
	ds_load_u8 v232, v82 offset:14208
	ds_load_u8 v233, v82 offset:13952
	ds_load_u8 v234, v82 offset:13696
	ds_load_u8 v235, v82 offset:13440
	v_perm_b32 v230, v208, v207, 0xc0c0004
	v_lshl_or_b32 v208, v122, 16, v124
	v_lshl_or_b32 v207, v125, 16, v123
	v_perm_b32 v231, v210, v209, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v219, v219, v212, 0xc0c0004
	ds_load_u8 v236, v82 offset:13184
	ds_load_u8 v237, v82 offset:12928
	ds_load_u8 v238, v82 offset:12672
	ds_load_u8 v82, v82 offset:12416
	v_lshl_or_b32 v212, v133, 16, v84
	v_lshl_or_b32 v211, v135, 16, v134
	v_lshl_or_b32 v210, v149, 16, v136
	v_lshl_or_b32 v209, v151, 16, v150
	v_perm_b32 v84, v213, v180, 0xc0c0004
	v_perm_b32 v133, v170, v169, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[165:172], v[205:208], v[173:176], v[141:148] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v111, v127, v126, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[121:128], v[205:208], v[129:132], v[141:148] neg_lo:[1,1,0]
	v_perm_b32 v129, v164, v159, 0xc0c0004
	v_perm_b32 v130, v217, v216, 0xc0c0004
	v_perm_b32 v131, v215, v214, 0xc0c0004
	v_perm_b32 v132, v158, v153, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[121:128], v[209:212], v[78:81], v[121:128] neg_lo:[1,1,0]
	v_lshl_or_b32 v81, v129, 16, v84
	v_lshl_or_b32 v78, v133, 16, v112
	v_lshl_or_b32 v80, v131, 16, v130
	v_lshl_or_b32 v79, v83, 16, v132
	v_lshl_or_b32 v216, v225, 16, v224
	v_lshl_or_b32 v214, v219, 16, v110
	v_wmma_i32_16x16x16_iu8 v[129:136], v[181:184], v[137:140], v[141:148] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[121:128], v[78:81], v[74:77], v[121:128] neg_lo:[1,1,0]
	v_perm_b32 v74, v223, v222, 0xc0c0004
	v_perm_b32 v75, v221, v220, 0xc0c0004
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[217:220], v69 offset:3072
	ds_load_b128 v[221:224], v69 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[149:156], v[205:208], v[137:140], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[157:164], v[181:184], v[173:176], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[173:180], v[181:184], v[201:204], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[205:208], v[201:204], v[141:148] neg_lo:[1,1,0]
	v_lshl_or_b32 v213, v111, 16, v239
	v_perm_b32 v76, v229, v228, 0xc0c0004
	v_perm_b32 v83, v227, v226, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v84, v235, v234, 0xc0c0004
	v_perm_b32 v110, v233, v232, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v82, v82, v238, 0xc0c0004
	v_perm_b32 v111, v237, v236, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[129:136], v[185:188], v[65:68], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[209:212], v[65:68], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[157:164], v[185:188], v[193:196], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[165:172], v[209:212], v[193:196], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[173:180], v[185:188], v[189:192], v[173:180] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[209:212], v[189:192], v[141:148] neg_lo:[1,1,0]
	v_lshl_or_b32 v215, v231, 16, v230
	v_lshl_or_b32 v77, v75, 16, v74
	v_lshl_or_b32 v76, v83, 16, v76
	v_lshl_or_b32 v75, v110, 16, v84
	v_lshl_or_b32 v74, v111, 16, v82
	v_wmma_i32_16x16x16_iu8 v[129:136], v[197:200], v[13:16], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[78:81], v[13:16], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[157:164], v[197:200], v[9:12], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[165:172], v[78:81], v[9:12], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[173:180], v[197:200], v[5:8], v[173:180] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[78:81], v[5:8], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[213:216], v[70:73], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[74:77], v[70:73], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[213:216], v[1:4], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[74:77], v[1:4], v[149:156] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[157:164], v[213:216], v[221:224], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[165:172], v[74:77], v[221:224], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[173:180], v[213:216], v[217:220], v[173:180] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[74:77], v[217:220], v[141:148] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v78, v113
	v_cvt_f32_i32_e32 v81, v114
	v_cvt_f32_i32_e32 v84, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v74, v117
	v_cvt_f32_i32_e32 v77, v118
	v_cvt_f32_i32_e32 v80, v119
	v_cvt_f32_i32_e32 v83, v120
	v_cvt_f32_i32_e32 v1, v121
	v_cvt_f32_i32_e32 v82, v122
	v_cvt_f32_i32_e32 v115, v123
	v_cvt_f32_i32_e32 v118, v124
	v_cvt_f32_i32_e32 v121, v125
	v_cvt_f32_i32_e32 v2, v126
	v_cvt_f32_i32_e32 v3, v127
	v_cvt_f32_i32_e32 v4, v128
	v_cvt_f32_i32_e32 v117, v129
	v_cvt_f32_i32_e32 v119, v130
	v_cvt_f32_i32_e32 v122, v131
	v_cvt_f32_i32_e32 v124, v132
	v_cvt_f32_i32_e32 v70, v133
	v_cvt_f32_i32_e32 v73, v134
	v_cvt_f32_i32_e32 v76, v135
	v_cvt_f32_i32_e32 v79, v136
	v_cvt_f32_i32_e32 v5, v149
	v_cvt_f32_i32_e32 v120, v150
	v_cvt_f32_i32_e32 v123, v151
	v_cvt_f32_i32_e32 v126, v152
	v_cvt_f32_i32_e32 v129, v153
	v_cvt_f32_i32_e32 v6, v154
	v_cvt_f32_i32_e32 v7, v155
	v_cvt_f32_i32_e32 v8, v156
	v_cvt_f32_i32_e32 v125, v157
	v_cvt_f32_i32_e32 v127, v158
	v_cvt_f32_i32_e32 v130, v159
	v_cvt_f32_i32_e32 v132, v160
	v_cvt_f32_i32_e32 v67, v161
	v_cvt_f32_i32_e32 v69, v162
	v_cvt_f32_i32_e32 v72, v163
	v_cvt_f32_i32_e32 v75, v164
	v_cvt_f32_i32_e32 v9, v165
	v_cvt_f32_i32_e32 v128, v166
	v_cvt_f32_i32_e32 v131, v167
	v_cvt_f32_i32_e32 v134, v168
	v_cvt_f32_i32_e32 v137, v169
	v_cvt_f32_i32_e32 v10, v170
	v_cvt_f32_i32_e32 v11, v171
	v_cvt_f32_i32_e32 v12, v172
	v_cvt_f32_i32_e32 v133, v173
	v_cvt_f32_i32_e32 v135, v174
	v_cvt_f32_i32_e32 v138, v175
	v_cvt_f32_i32_e32 v140, v176
	v_cvt_f32_i32_e32 v15, v177
	v_cvt_f32_i32_e32 v66, v178
	v_cvt_f32_i32_e32 v68, v179
	v_cvt_f32_i32_e32 v71, v180
	v_cvt_f32_i32_e32 v13, v141
	v_cvt_f32_i32_e32 v136, v142
	v_cvt_f32_i32_e32 v139, v143
	v_cvt_f32_i32_e32 v141, v144
	v_cvt_f32_i32_e32 v142, v145
	v_cvt_f32_i32_e32 v14, v146
	v_cvt_f32_i32_e32 v16, v147
	v_cvt_f32_i32_e32 v65, v148
.LBB0_11:
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v110, s30, v87
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s17, s9, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_mov_b32 s16, s8
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_dual_add_f32 v81, v62, v81 :: v_dual_lshlrev_b32 v110, 1, v110
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v111, s31, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v84, v63, v84
	v_dual_add_f32 v78, v61, v78 :: v_dual_add_f32 v83, v36, v83
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_or_b32_e32 v112, 32, v110
	v_or_b32_e32 v113, 64, v110
	v_or_b32_e32 v114, 0x60, v110
	s_clause 0x3
	buffer_load_u16 v110, v110, s[16:19], 0 offen
	buffer_load_u16 v112, v112, s[16:19], 0 offen
	buffer_load_u16 v113, v113, s[16:19], 0 offen
	buffer_load_u16 v114, v114, s[16:19], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v111, 1, v111
	s_and_b32 s17, s11, 0xffff
	s_mov_b32 s16, s10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v124, v60, v124 :: v_dual_add_f32 v73, v26, v73
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v111, v111, s[16:19], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v70, v25, v70 :: v_dual_add_f32 v129, v48, v129
	v_dual_add_f32 v8, v101, v8 :: v_dual_add_f32 v75, v24, v75
	v_dual_add_f32 v13, v96, v13 :: v_dual_add_f32 v136, v29, v136
	v_dual_add_f32 v76, v27, v76 :: v_dual_add_f32 v5, v105, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v63, v63, v84, s2
	v_cndmask_b32_e64 v36, v36, v83, s2
	v_cndmask_b32_e64 v83, v60, v124, s2
	v_cndmask_b32_e64 v84, v25, v70, s2
	v_cndmask_b32_e64 v73, v26, v73, s2
	v_cndmask_b32_e64 v75, v24, v75, s2
	v_cndmask_b32_e64 v124, v29, v136, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v6, v104, v6 :: v_dual_add_f32 v127, v50, v127
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v146, v89, 2, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v105, v105, v5, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v116, v64, v116 :: v_dual_add_f32 v77, v34, v77
	v_dual_add_f32 v80, v35, v80 :: v_dual_add_f32 v1, v102, v1
	v_dual_add_f32 v74, v33, v74 :: v_dual_add_f32 v121, v56, v121
	v_dual_add_f32 v82, v53, v82 :: v_dual_add_f32 v143, v107, v3
	v_dual_add_f32 v122, v59, v122 :: v_dual_add_f32 v79, v28, v79
	v_dual_add_f32 v126, v47, v126 :: v_dual_add_f32 v123, v46, v123
	v_dual_add_f32 v120, v45, v120 :: v_dual_add_f32 v7, v103, v7
	v_dual_add_f32 v72, v23, v72 :: v_dual_add_f32 v67, v21, v67
	v_dual_add_f32 v9, v100, v9 :: v_dual_add_f32 v134, v43, v134
	v_dual_add_f32 v131, v42, v131 :: v_dual_add_f32 v10, v99, v10
	v_dual_add_f32 v11, v98, v11 :: v_dual_add_f32 v12, v97, v12
	v_dual_add_f32 v71, v20, v71 :: v_dual_add_f32 v68, v19, v68
	v_dual_add_f32 v66, v18, v66 :: v_dual_add_f32 v15, v17, v15
	v_dual_add_f32 v139, v30, v139 :: v_dual_add_f32 v14, v95, v14
	v_dual_add_f32 v16, v94, v16 :: v_dual_add_f32 v65, v93, v65
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v147, v89, 1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v104, v104, v6, s2
	v_cndmask_b32_e64 v1, v102, v1, s2
	v_cndmask_b32_e64 v102, v107, v143, s2
	v_cndmask_b32_e64 v103, v103, v7, s2
	v_cndmask_b32_e64 v101, v101, v8, s2
	v_cndmask_b32_e64 v100, v100, v9, s2
	v_cndmask_b32_e64 v99, v99, v10, s2
	v_cndmask_b32_e64 v98, v98, v11, s2
	v_cndmask_b32_e64 v97, v97, v12, s2
	v_cndmask_b32_e64 v96, v96, v13, s2
	v_cndmask_b32_e64 v95, v95, v14, s2
	v_cndmask_b32_e64 v94, v94, v16, s2
	v_cndmask_b32_e64 v34, v34, v77, s2
	v_cndmask_b32_e64 v77, v56, v121, s2
	v_cndmask_b32_e64 v59, v59, v122, s2
	v_cndmask_b32_e64 v46, v46, v123, s2
	v_cndmask_b32_e64 v107, v21, v67, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v121, v18, v66, s2
	v_cndmask_b32_e64 v122, v19, v68, s2
	v_cndmask_b32_e64 v123, v20, v71, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v118, v55, v118 :: v_dual_add_f32 v115, v54, v115
	v_dual_add_f32 v2, v108, v2 :: v_dual_add_f32 v119, v58, v119
	v_dual_add_f32 v144, v106, v4 :: v_dual_add_f32 v117, v57, v117
	v_dual_add_f32 v130, v51, v130 :: v_dual_add_f32 v125, v49, v125
	v_dual_add_f32 v132, v52, v132 :: v_dual_add_f32 v69, v22, v69
	v_dual_add_f32 v137, v44, v137 :: v_dual_add_f32 v128, v41, v128
	v_dual_add_f32 v138, v39, v138 :: v_dual_add_f32 v135, v38, v135
	v_dual_add_f32 v140, v40, v140 :: v_dual_add_f32 v133, v37, v133
	v_dual_add_f32 v142, v32, v142 :: v_dual_add_f32 v141, v31, v141
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v108, v2, s2
	v_cndmask_b32_e64 v106, v106, v144, s2
	v_cndmask_b32_e64 v65, v93, v65, s2
	v_cndmask_b32_e64 v78, v61, v78, s2
	v_cndmask_b32_e64 v62, v62, v81, s2
	v_cndmask_b32_e64 v81, v64, v116, s2
	v_cndmask_b32_e64 v33, v33, v74, s2
	v_cndmask_b32_e64 v35, v35, v80, s2
	v_cndmask_b32_e64 v74, v53, v82, s2
	v_cndmask_b32_e64 v54, v54, v115, s2
	v_cndmask_b32_e64 v55, v55, v118, s2
	v_cndmask_b32_e64 v80, v57, v117, s2
	v_cndmask_b32_e64 v82, v58, v119, s2
	v_cndmask_b32_e64 v27, v27, v76, s2
	v_cndmask_b32_e64 v28, v28, v79, s2
	v_cndmask_b32_e64 v45, v45, v120, s2
	v_cndmask_b32_e64 v76, v47, v126, s2
	v_cndmask_b32_e64 v79, v48, v129, s2
	v_cndmask_b32_e64 v93, v49, v125, s2
	v_cndmask_b32_e64 v49, v50, v127, s2
	v_cndmask_b32_e64 v50, v52, v132, s2
	v_cndmask_b32_e64 v51, v51, v130, s2
	v_cndmask_b32_e64 v22, v22, v69, s2
	v_cndmask_b32_e64 v23, v23, v72, s2
	v_cndmask_b32_e64 v108, v41, v128, s2
	v_cndmask_b32_e64 v115, v42, v131, s2
	v_cndmask_b32_e64 v116, v43, v134, s2
	v_cndmask_b32_e64 v117, v44, v137, s2
	v_cndmask_b32_e64 v118, v37, v133, s2
	v_cndmask_b32_e64 v119, v38, v135, s2
	v_cndmask_b32_e64 v120, v40, v140, s2
	v_cndmask_b32_e64 v125, v30, v139, s2
	v_cndmask_b32_e64 v126, v31, v141, s2
	v_cndmask_b32_e64 v32, v32, v142, s2
	s_mov_b32 s0, 0x76543210
.Ltmp16:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s17, s13, 0xffff
	s_mov_b32 s16, s12
.Ltmp17:
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v29, 16, v114
	v_lshlrev_b32_e32 v24, 16, v110
	v_lshlrev_b32_e32 v26, 16, v113
	v_lshlrev_b32_e32 v25, 16, v112
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v145, 5, v0
	v_and_b32_e32 v109, 28, v109
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v111
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v111, v17, v15, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_and_b32_e32 v5, 32, v145
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v5, v146, v5, v109
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v109, v39, v138, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_store_b32 v5, v6
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v147 offset:512
	ds_load_b128 v[10:13], v147 offset:528
	ds_load_b128 v[14:17], v147
	ds_load_b128 v[18:21], v147 offset:16
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp19:
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v31, v11, v24
	v_mul_f32_e32 v44, v11, v26
	v_mul_f32_e32 v48, v12, v26
	v_dual_mul_f32 v39, v6, v25 :: v_dual_and_b32 v4, 0x60, v0
	v_dual_mul_f32 v41, v12, v25 :: v_dual_and_b32 v148, 4, v0
	v_dual_mul_f32 v42, v13, v25 :: v_dual_and_b32 v149, 8, v0
	v_mul_f32_e32 v40, v11, v25
	v_mul_f32_e32 v11, v11, v29
	v_dual_mul_f32 v38, v13, v24 :: v_dual_lshlrev_b32 v3, 5, v91
	v_mul_f32_e32 v30, v6, v24
	v_mul_f32_e32 v37, v12, v24
	v_dual_mul_f32 v43, v6, v26 :: v_dual_and_b32 v150, 0x80, v0
	v_mul_f32_e32 v67, v14, v24
	v_dual_mul_f32 v68, v15, v24 :: v_dual_mul_f32 v57, v13, v26
	v_mul_f32_e32 v12, v12, v29
	v_mul_f32_e32 v66, v13, v29
	v_dual_mul_f32 v69, v17, v24 :: v_dual_mul_f32 v132, v15, v25
	v_dual_mul_f32 v70, v16, v24 :: v_dual_mul_f32 v131, v14, v25
	v_dual_mul_f32 v71, v18, v24 :: v_dual_mul_f32 v134, v16, v25
	v_dual_mul_f32 v72, v19, v24 :: v_dual_mul_f32 v133, v17, v25
	v_dual_mul_f32 v110, v20, v24 :: v_dual_mul_f32 v135, v18, v25
	v_dual_mul_f32 v112, v21, v24 :: v_dual_mul_f32 v137, v20, v25
	v_dual_mul_f32 v113, v7, v24 :: v_dual_mul_f32 v138, v21, v25
	v_dual_mul_f32 v114, v8, v24 :: v_dual_mul_f32 v139, v7, v25
	v_dual_mul_f32 v129, v9, v24 :: v_dual_mul_f32 v136, v19, v25
	v_dual_mul_f32 v130, v10, v24 :: v_dual_mul_f32 v141, v9, v25
	v_dual_mul_f32 v140, v8, v25 :: v_dual_mul_f32 v143, v14, v26
	v_dual_mul_f32 v142, v10, v25 :: v_dual_mul_f32 v145, v17, v26
	v_dual_mul_f32 v144, v15, v26 :: v_dual_mul_f32 v17, v17, v29
	v_dual_mul_f32 v146, v16, v26 :: v_dual_mul_f32 v15, v15, v29
	v_dual_mul_f32 v147, v18, v26 :: v_dual_mul_f32 v16, v16, v29
	v_dual_mul_f32 v151, v19, v26 :: v_dual_mul_f32 v14, v14, v29
	v_dual_mul_f32 v152, v20, v26 :: v_dual_mul_f32 v159, v21, v29
	v_dual_mul_f32 v153, v21, v26 :: v_dual_mul_f32 v158, v18, v29
	v_mul_f32_e32 v154, v7, v26
	v_dual_mul_f32 v155, v8, v26 :: v_dual_mul_f32 v18, v19, v29
	v_dual_mul_f32 v156, v9, v26 :: v_dual_mul_f32 v7, v7, v29
	v_dual_mul_f32 v157, v10, v26 :: v_dual_mul_f32 v160, v8, v29
	v_mul_f32_e32 v19, v20, v29
	v_dual_mul_f32 v161, v9, v29 :: v_dual_mul_f32 v58, v2, v31
	v_dual_mul_f32 v162, v10, v29 :: v_dual_mul_f32 v47, v1, v30
	v_dual_mul_f32 v6, v6, v29 :: v_dual_lshlrev_b32 v5, 1, v150
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v60, v102, v37
	v_dual_mul_f32 v61, v106, v38 :: v_dual_mul_f32 v64, v105, v39
	v_dual_mul_f32 v56, v104, v40 :: v_dual_mul_f32 v53, v103, v41
	v_dual_mul_f32 v52, v101, v42 :: v_dual_mul_f32 v9, v94, v12
	v_dual_mul_f32 v30, v100, v43 :: v_dual_mul_f32 v25, v97, v57
	v_dual_mul_f32 v26, v99, v44 :: v_dual_mul_f32 v37, v78, v67
	v_dual_mul_f32 v24, v98, v48 :: v_dual_mul_f32 v39, v63, v70
	v_dual_mul_f32 v8, v95, v11 :: v_dual_mul_f32 v57, v77, v130
	v_dual_mul_f32 v10, v65, v66 :: v_dual_mul_f32 v55, v55, v129
	v_dual_mul_f32 v40, v81, v69 :: v_dual_mul_f32 v43, v35, v110
	v_dual_mul_f32 v38, v62, v68 :: v_dual_mul_f32 v41, v33, v71
	v_dual_mul_f32 v44, v36, v112 :: v_dual_mul_f32 v69, v83, v133
	v_dual_mul_f32 v42, v34, v72 :: v_dual_mul_f32 v65, v80, v131
	v_dual_mul_f32 v54, v54, v114 :: v_dual_mul_f32 v71, v27, v137
	v_dual_mul_f32 v48, v74, v113 :: v_dual_mul_f32 v73, v73, v136
	v_dual_mul_f32 v68, v59, v134 :: v_dual_mul_f32 v63, v46, v140
	v_dual_mul_f32 v66, v82, v132 :: v_dual_mul_f32 v59, v79, v142
	v_dual_mul_f32 v70, v28, v138 :: v_dual_mul_f32 v67, v45, v139
	v_dual_mul_f32 v72, v84, v135 :: v_dual_mul_f32 v45, v51, v146
	v_dual_mul_f32 v62, v76, v141 :: v_dual_mul_f32 v49, v49, v144
	v_dual_mul_f32 v46, v50, v145 :: v_dual_mul_f32 v29, v115, v155
	v_dual_mul_f32 v50, v93, v143 :: v_dual_mul_f32 v33, v75, v153
	v_dual_mul_f32 v34, v23, v152 :: v_dual_mul_f32 v35, v22, v151
	v_dual_mul_f32 v36, v107, v147 :: v_dual_mul_f32 v27, v117, v157
	v_dual_mul_f32 v28, v116, v156 :: v_dual_mul_f32 v23, v118, v14
	v_dual_mul_f32 v31, v108, v154 :: v_dual_mul_f32 v22, v119, v15
	v_dual_mul_f32 v21, v109, v16 :: v_dual_mul_f32 v20, v120, v17
	v_dual_mul_f32 v15, v123, v159 :: v_dual_mul_f32 v18, v121, v18
	v_dual_mul_f32 v16, v122, v19 :: v_dual_mul_f32 v19, v111, v158
	v_dual_mul_f32 v11, v32, v162 :: v_dual_mul_f32 v12, v126, v161
	v_dual_mul_f32 v14, v125, v160 :: v_dual_mul_f32 v17, v124, v7
	v_mul_f32_e32 v13, v96, v6
.Ltmp20:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v1, |v37|, |v38|
	v_max3_f32 v2, |v40|, |v41|, |v42|
	v_max3_f32 v7, |v48|, |v54|, |v55|
	v_max3_f32 v32, |v57|, |v58|, |v60|
	v_max_f32_e64 v51, |v65|, |v66|
	v_max3_f32 v74, |v69|, |v72|, |v73|
	v_max3_f32 v76, |v67|, |v63|, |v62|
	v_max3_f32 v77, |v59|, |v56|, |v53|
	v_max_f32_e64 v78, |v50|, |v49|
	v_max3_f32 v79, |v46|, |v36|, |v35|
	v_max3_f32 v81, |v31|, |v29|, |v28|
	v_max3_f32 v82, |v27|, |v26|, |v24|
	v_max_f32_e64 v83, |v23|, |v22|
	v_max3_f32 v84, |v20|, |v19|, |v18|
	v_max3_f32 v94, |v17|, |v14|, |v12|
	v_max3_f32 v95, |v11|, |v8|, |v9|
	v_max3_f32 v6, |v43|, |v44|, |v47|
	v_max3_f32 v75, |v71|, |v70|, |v64|
	v_max3_f32 v80, |v34|, |v33|, |v30|
	v_max3_f32 v93, |v16|, |v15|, |v13|
	v_max3_f32 v1, v1, |v39|, v2
	v_max3_f32 v2, v7, v32, |v61|
	v_max3_f32 v7, v51, |v68|, v74
	v_max3_f32 v32, v76, v77, |v52|
	v_max3_f32 v51, v78, |v45|, v79
	v_max3_f32 v74, v81, v82, |v25|
	v_max3_f32 v76, v83, |v21|, v84
	v_max3_f32 v77, v94, v95, |v10|
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v91, v91, 9, 0
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v1, v1, v6, v2
	v_max3_f32 v2, v7, v75, v32
	v_max3_f32 v6, v51, v80, v74
	v_max3_f32 v7, v76, v93, v77
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v91, v148, 2, v91
	v_and_or_b32 v92, 0x680, v92, v3
	v_permlanex16_b32 v51, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v74, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v75, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v76, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_xor_b32_e32 v127, v3, v4
	v_lshrrev_b32_e32 v128, 3, v150
	v_lshl_add_u32 v78, v148, 6, 0
	v_lshl_add_u32 v32, v149, 4, v91
	v_xor_b32_e32 v79, v92, v4
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v77, v74, v74 :: v_dual_max_f32 v80, v75, v75
	v_max_f32_e32 v51, v51, v51
	v_max_f32_e32 v81, v76, v76
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v32, v32, v5, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v75, v2, v77
	v_max_f32_e32 v76, v6, v80
	v_dual_max_f32 v74, v1, v51 :: v_dual_max_f32 v77, v7, v81
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v1, v78, v128, v79
	v_add_nc_u32_e32 v78, 0, v88
	v_lshlrev_b32_e32 v80, 5, v148
	ds_store_b128 v32, v[74:77]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[74:77], v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v1, v74 :: v_dual_mov_b32 v6, v75
	v_mov_b32_e32 v32, v76
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v2, v74, v74 :: v_dual_max_f32 v7, v75, v75
	v_max_f32_e32 v74, v76, v76
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v51, v77, v77
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v77, v77 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v32, v32 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_lshrrev_b32_e32 v76, 1, v4
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v75, v77, v77 :: v_dual_max_f32 v32, v32, v32
.Ltmp33:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v4, v85, v4
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v2, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max_f32_e32 v51, v51, v75
	v_max_f32_e32 v2, v7, v6
	v_max_f32_e32 v6, v74, v32
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v32, v1 :: v_dual_mov_b32 v7, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v32, v32 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v75, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v74, v2
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v32, v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v74, v74 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v1, v1, v32 :: v_dual_max_f32 v74, v74, v74
	v_max_f32_e32 v7, v51, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v6, v6, v75
	v_max_f32_e32 v2, v2, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v51, v7 :: v_dual_lshlrev_b32 v32, 3, v149
	v_dual_mov_b32 v74, v1 :: v_dual_mov_b32 v77, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v75, v2
	v_mov_b32_dpp v51, v51 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v74, v74 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v75, v75 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v51, v51, v51 :: v_dual_max_f32 v74, v74, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v81, v77, v77
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add_nc_u32_e32 v79, 0, v150
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v77, v7, v51 :: v_dual_max_f32 v74, v1, v74
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v1, v78, v80, v32
	v_add3_u32 v79, v79, v76, v32
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v75, v2, v75
	v_max_f32_e32 v76, v6, v81
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	ds_store_b128 v79, v[74:77]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[74:77], v1
.Ltmp48:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_max_f32_e32 v2, v75, v75
	v_dual_max_f32 v6, v76, v76 :: v_dual_max_f32 v1, v74, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v7, v77, v77 :: v_dual_max_f32 v2, 0x2b8cbccc, v2
	v_max_f32_e32 v6, 0x2b8cbccc, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v74, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v51, null, 0x40e00000, 0x40e00000, v6
	v_div_scale_f32 v82, s1, v2, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v78, v74
	v_rcp_f32_e32 v77, v51
	v_div_scale_f32 v81, s0, v6, 0x40e00000, v6
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v88, -v74, v78, 1.0
	v_max_f32_e32 v1, 0x2b8cbccc, v1
	v_fma_f32 v84, -v51, v77, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v88, v78
	v_div_scale_f32 v32, null, 0x40e00000, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v77, v84, v77
	v_div_scale_f32 v80, vcc_lo, v1, 0x40e00000, v1
	v_rcp_f32_e32 v76, v32
	v_dual_mul_f32 v88, v82, v78 :: v_dual_max_f32 v7, 0x2b8cbccc, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v84, v81, v77
	v_fma_f32 v95, -v74, v88, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v75, null, 0x40e00000, 0x40e00000, v7
	v_div_scale_f32 v92, s2, v7, 0x40e00000, v7
	v_fma_f32 v83, -v32, v76, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v79, v75
	v_fma_f32 v94, -v51, v84, v81
	v_fmac_f32_e32 v88, v95, v78
	v_fmac_f32_e32 v76, v83, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v94, v77
	v_fma_f32 v74, -v74, v88, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v83, v80, v76
	v_fma_f32 v91, -v75, v79, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v51, v84, v81
	v_fma_f32 v93, -v32, v83, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v79, v91, v79
	v_fmac_f32_e32 v83, v93, v76
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v93.h, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v91, v92, v79
	v_fma_f32 v32, -v32, v83, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v96, -v75, v91, v92
	v_div_fmas_f32 v32, v32, v76, v83
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v91, v96, v79
	v_div_fmas_f32 v51, v51, v77, v84
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v1, v32, 0x40e00000, v1
	v_div_fmas_f32 v74, v74, v78, v88
	v_fma_f32 v75, -v75, v91, v92
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v32, v51, 0x40e00000, v6
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v51.h, v93.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v2, v74, 0x40e00000, v2
	v_div_fmas_f32 v6, v75, v79, v91
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v51.l, v1.h
	v_mov_b16_e32 v93.l, v32.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v74, v6, 0x40e00000, v7
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v6.h, v93.h
	v_mov_b16_e32 v6.l, v2.h
	v_and_b32_e32 v7, 1, v51
	v_and_b32_e32 v75, 1, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v6, v1, v7, 0x7fff
	v_add3_u32 v7, v2, v75, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v75, 0xffff0000, v6
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v97, null, v75, v75, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v112, v97
	v_fma_f32 v124, -v97, v112, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v112, v124, v112
	v_div_scale_f32 v80, null, v75, v75, v39
	v_div_scale_f32 v78, null, v75, v75, v38
	v_div_scale_f32 v82, null, v75, v75, v40
	v_rcp_f32_e32 v106, v80
	v_div_scale_f32 v101, null, v75, v75, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v105, v78
	v_div_scale_f32 v84, null, v75, v75, v41
	v_div_scale_f32 v95, null, v75, v75, v44
	v_div_scale_f32 v91, null, v75, v75, v42
	v_fma_f32 v118, -v80, v106, 1.0
	.loc	1 76 13 is_stmt 1               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v51, 1, v93
	v_mov_b16_e32 v93.l, v74.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v107, v82
	v_div_scale_f32 v99, null, v75, v75, v48
	v_rcp_f32_e32 v114, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v76, 1, v93
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v93, null, v75, v75, v43
	v_rcp_f32_e32 v108, v84
	v_rcp_f32_e32 v111, v95
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v2, v74, v76, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v76, null, v75, v75, v37
	v_rcp_f32_e32 v110, v93
	v_rcp_f32_e32 v109, v91
	v_rcp_f32_e32 v113, v99
	s_delay_alu instid0(VALU_DEP_1)
	v_rcp_f32_e32 v104, v76
	v_fma_f32 v117, -v78, v105, 1.0
	v_div_scale_f32 v77, vcc_lo, v37, v75, v37
	v_fma_f32 v119, -v82, v107, 1.0
	v_div_scale_f32 v79, s0, v38, v75, v38
	v_fma_f32 v122, -v93, v110, 1.0
	v_fma_f32 v126, -v101, v114, 1.0
	v_fmac_f32_e32 v105, v117, v105
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v116, -v76, v104, 1.0
	v_fmac_f32_e32 v106, v118, v106
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v1, v32, v51, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v120, -v84, v108, 1.0
	v_div_scale_f32 v81, s1, v39, v75, v39
	v_fmac_f32_e32 v104, v116, v104
	v_fma_f32 v123, -v95, v111, 1.0
	v_fma_f32 v121, -v91, v109, 1.0
	v_fmac_f32_e32 v107, v119, v107
	v_div_scale_f32 v83, s2, v40, v75, v40
	v_dual_mul_f32 v116, v77, v104 :: v_dual_and_b32 v51, 0xffff0000, v1
	v_fmac_f32_e32 v110, v122, v110
	v_div_scale_f32 v94, s5, v43, v75, v43
	v_div_scale_f32 v98, s7, v47, v75, v47
	v_fma_f32 v125, -v99, v113, 1.0
	v_dual_fmac_f32 v114, v126, v114 :: v_dual_mul_f32 v117, v79, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v124, v98, v112
	v_div_scale_f32 v88, s3, v41, v75, v41
	v_dual_fmac_f32 v108, v120, v108 :: v_dual_fmac_f32 v111, v123, v111
	v_mul_f32_e32 v118, v81, v106
	v_div_scale_f32 v92, s4, v42, v75, v42
	v_dual_fmac_f32 v109, v121, v109 :: v_dual_mul_f32 v120, v88, v108
	v_fma_f32 v127, -v76, v116, v77
	v_div_scale_f32 v102, s9, v54, v75, v54
	v_mul_f32_e32 v119, v83, v107
	v_dual_fmac_f32 v113, v125, v113 :: v_dual_mul_f32 v122, v94, v110
	v_fma_f32 v128, -v78, v117, v79
	v_div_scale_f32 v96, s6, v44, v75, v44
	v_fma_f32 v129, -v80, v118, v81
	v_dual_mul_f32 v121, v92, v109 :: v_dual_fmac_f32 v116, v127, v104
	v_mul_f32_e32 v126, v102, v114
	v_fma_f32 v130, -v82, v119, v83
	v_fma_f32 v133, -v93, v122, v94
	v_fmac_f32_e32 v117, v128, v105
	v_div_scale_f32 v100, s8, v48, v75, v48
	v_fma_f32 v131, -v84, v120, v88
	v_dual_mul_f32 v123, v96, v111 :: v_dual_fmac_f32 v118, v129, v106
	v_fma_f32 v132, -v91, v121, v92
	v_fma_f32 v76, -v76, v116, v77
	v_fma_f32 v135, -v97, v124, v98
	v_dual_fmac_f32 v119, v130, v107 :: v_dual_fmac_f32 v122, v133, v110
	v_fma_f32 v77, -v78, v117, v79
	v_dual_mul_f32 v125, v100, v113 :: v_dual_fmac_f32 v120, v131, v108
	v_fma_f32 v134, -v95, v123, v96
	v_fma_f32 v78, -v80, v118, v81
	v_fmac_f32_e32 v121, v132, v109
	v_div_fmas_f32 v76, v76, v104, v116
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v124, v135, v112
	v_fma_f32 v79, -v82, v119, v83
	v_div_fmas_f32 v77, v77, v105, v117
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v80, -v84, v120, v88
	v_fmac_f32_e32 v123, v134, v111
	v_div_fmas_f32 v78, v78, v106, v118
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v81, -v91, v121, v92
	v_div_fixup_f32 v37, v76, v75, v37
	v_div_fmas_f32 v76, v79, v107, v119
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v82, -v93, v122, v94
	v_div_fixup_f32 v38, v77, v75, v38
	v_div_fmas_f32 v77, v80, v108, v120
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v83, -v95, v123, v96
	v_div_fixup_f32 v39, v78, v75, v39
	v_div_fmas_f32 v78, v81, v109, v121
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v103, null, v75, v75, v55
	v_div_fmas_f32 v79, v82, v110, v122
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v82, null, v75, v75, v58
	v_div_fmas_f32 v80, v83, v111, v123
	v_div_scale_f32 v91, null, v75, v75, v60
	v_rcp_f32_e32 v115, v103
	v_fma_f32 v136, -v99, v125, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v44, v80, v75, v44
	v_fma_f32 v80, -v101, v126, v102
	v_div_fixup_f32 v40, v76, v75, v40
	v_div_fixup_f32 v41, v77, v75, v41
	v_div_scale_f32 v77, null, v75, v75, v57
	v_fmac_f32_e32 v126, v80, v114
	v_rcp_f32_e32 v80, v82
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v103, v115, 1.0
	v_div_scale_f32 v93, null, v75, v75, v61
	v_fma_f32 v84, -v97, v124, v98
	v_div_fixup_f32 v43, v79, v75, v43
	v_div_scale_f32 v81, s0, v55, v75, v55
	v_rcp_f32_e32 v95, v93
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v82, v80, 1.0
	v_div_fixup_f32 v42, v78, v75, v42
	v_div_fmas_f32 v78, v84, v112, v124
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v92, s2, v58, v75, v58
	v_fmac_f32_e32 v80, v88, v80
	v_rcp_f32_e32 v88, v91
	v_div_fixup_f32 v47, v78, v75, v47
	v_fma_f32 v78, -v101, v126, v102
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v74, 0xffff0000, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v94, v92, v80
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v32, 0xffff0000, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v96, -v91, v88, 1.0
	v_fmac_f32_e32 v88, v96, v88
	v_fmac_f32_e32 v125, v136, v113
	v_fmac_f32_e32 v115, v76, v115
	v_rcp_f32_e32 v76, v77
	v_fma_f32 v96, -v93, v95, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v79, -v99, v125, v100
	v_fmac_f32_e32 v95, v96, v95
	v_div_scale_f32 v96, null, v74, v74, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v79, v79, v113, v125
	v_fma_f32 v84, -v77, v76, 1.0
	v_mul_f32_e32 v83, v81, v115
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v48, v79, v75, v48
	v_fmac_f32_e32 v76, v84, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v103, v83, v81
	v_div_scale_f32 v84, s1, v57, v75, v57
	v_div_fmas_f32 v78, v78, v114, v126
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v83, v79, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v79, v84, v76
	v_div_fixup_f32 v54, v78, v75, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v78, -v103, v83, v81
	v_fma_f32 v81, -v77, v79, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v78, v78, v115, v83
	v_fmac_f32_e32 v79, v81, v76
	v_fma_f32 v81, -v82, v94, v92
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v83, s0, v60, v75, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v77, -v77, v79, v84
	v_fmac_f32_e32 v94, v81, v80
	v_div_scale_f32 v84, null, v74, v74, v65
	v_div_fixup_f32 v55, v78, v75, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v76, v77, v76, v79
	v_fma_f32 v77, -v82, v94, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v82, v84
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v78, v83, v88
	v_div_scale_f32 v81, s3, v61, v75, v61
	v_div_fmas_f32 v77, v77, v80, v94
	v_div_fixup_f32 v57, v76, v75, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v79, -v91, v78, v83
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v94, -v84, v82, 1.0
	v_div_fixup_f32 v58, v77, v75, v58
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v78, v79, v88
	v_rcp_f32_e32 v79, v96
	v_div_scale_f32 v77, s1, v65, v74, v65
	v_fmac_f32_e32 v82, v94, v82
	v_mul_f32_e32 v92, v81, v95
	v_fma_f32 v76, -v91, v78, v83
	v_div_scale_f32 v83, null, v74, v74, v68
	v_div_scale_f32 v91, null, v74, v74, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v93, v92, v81
	v_div_fmas_f32 v76, v76, v88, v78
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v88, s0, v66, v74, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v92, v80, v95
	v_fma_f32 v80, -v96, v79, 1.0
	v_div_fixup_f32 v60, v76, v75, v60
	v_div_scale_f32 v76, s2, v68, v74, v68
	v_fma_f32 v78, -v93, v92, v81
	v_mul_f32_e32 v81, v77, v82
	v_fmac_f32_e32 v79, v80, v79
	v_rcp_f32_e32 v80, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v78, v78, v95, v92
	v_fma_f32 v92, -v84, v81, v77
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v95, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v61, v78, v75, v61
	v_fmac_f32_e32 v81, v92, v82
	v_div_scale_f32 v78, null, v74, v74, v72
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v94, -v83, v80, 1.0
	v_fma_f32 v77, -v84, v81, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v84, v78
	v_fma_f32 v92, -v91, v95, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v94, v80
	v_div_fmas_f32 v77, v77, v82, v81
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v95, v92, v95
	v_div_scale_f32 v92, s3, v69, v74, v69
	v_div_fixup_f32 v65, v77, v74, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v78, v84, 1.0
	v_dual_mul_f32 v93, v88, v79 :: v_dual_fmac_f32 v84, v94, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v96, v93, v88
	v_fmac_f32_e32 v93, v75, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v81, -v96, v93, v88
	v_div_scale_f32 v96, null, v74, v74, v73
	v_div_fmas_f32 v79, v81, v79, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v81, v96
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v93, s0, v72, v74, v72
	v_div_fixup_f32 v66, v79, v74, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v96, v81, 1.0
	v_fmac_f32_e32 v81, v79, v81
	v_mul_f32_e32 v75, v76, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v83, v75, v76
	v_dual_mul_f32 v88, v92, v95 :: v_dual_fmac_f32 v75, v82, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v82, -v91, v88, v92
	v_fma_f32 v76, -v83, v75, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v88, v82, v95
	v_div_scale_f32 v82, null, v74, v74, v71
	v_div_scale_f32 v83, s1, v73, v74, v73
	v_div_fmas_f32 v75, v76, v80, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v76, -v91, v88, v92
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v79, v82
	v_div_scale_f32 v91, null, v74, v74, v70
	v_div_fmas_f32 v76, v76, v95, v88
	v_mul_f32_e32 v88, v83, v81
	v_div_fixup_f32 v68, v75, v74, v68
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v69, v76, v74, v69
	v_fma_f32 v76, -v96, v88, v83
	v_mul_f32_e32 v77, v93, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v92, -v82, v79, 1.0
	v_fmac_f32_e32 v88, v76, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v78, v77, v93
	v_fmac_f32_e32 v79, v92, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v80, v84
	v_rcp_f32_e32 v80, v91
	v_fma_f32 v75, -v78, v77, v93
	v_div_scale_f32 v93, null, v74, v74, v64
	v_div_scale_f32 v78, s2, v71, v74, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v75, v75, v84, v77
	v_fma_f32 v92, -v91, v80, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v77, v93
	v_div_scale_f32 v84, s0, v70, v74, v70
	v_mul_f32_e32 v76, v78, v79
	v_fmac_f32_e32 v80, v92, v80
	v_div_scale_f32 v92, null, v74, v74, v67
	v_div_fixup_f32 v72, v75, v74, v72
	v_fma_f32 v75, -v96, v88, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v94, v84, v80
	v_rcp_f32_e32 v95, v92
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v83, -v82, v76, v78
	v_fma_f32 v96, -v93, v77, 1.0
	v_div_fmas_f32 v75, v75, v81, v88
	v_fma_f32 v81, -v91, v94, v84
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v76, v83, v79
	v_div_scale_f32 v83, s1, v64, v74, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v92, v95, 1.0
	v_fmac_f32_e32 v94, v81, v80
	v_div_scale_f32 v81, s3, v67, v74, v67
	v_div_fixup_f32 v73, v75, v74, v73
	v_fmac_f32_e32 v95, v88, v95
	v_fmac_f32_e32 v77, v96, v77
	v_fma_f32 v75, -v82, v76, v78
	v_div_scale_f32 v82, null, v74, v74, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v88, v81, v95
	v_mul_f32_e32 v78, v83, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v75, v75, v79, v76
	v_fma_f32 v76, -v91, v94, v84
	v_div_scale_f32 v91, null, v74, v74, v62
	v_fma_f32 v79, -v93, v78, v83
	v_rcp_f32_e32 v84, v82
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v71, v75, v74, v71
	v_div_fmas_f32 v76, v76, v80, v94
	v_fmac_f32_e32 v78, v79, v77
	v_rcp_f32_e32 v79, v91
	v_fma_f32 v80, -v92, v88, v81
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v70, v76, v74, v70
	v_fma_f32 v75, -v93, v78, v83
	v_fma_f32 v94, -v82, v84, 1.0
	v_fmac_f32_e32 v88, v80, v95
	v_div_scale_f32 v83, null, v74, v74, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v75, v75, v77, v78
	v_fma_f32 v80, -v91, v79, 1.0
	v_fmac_f32_e32 v84, v94, v84
	v_fma_f32 v77, -v92, v88, v81
	v_div_scale_f32 v92, null, v74, v74, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v79, v80, v79
	v_rcp_f32_e32 v80, v83
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v76, s0, v63, v74, v63
	v_div_fmas_f32 v77, v77, v95, v88
	v_rcp_f32_e32 v95, v92
	v_div_scale_f32 v81, s1, v62, v74, v62
	v_div_fixup_f32 v64, v75, v74, v64
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v94, -v83, v80, 1.0
	v_mul_f32_e32 v93, v81, v79
	v_div_fixup_f32 v67, v77, v74, v67
	v_div_scale_f32 v77, s2, v59, v74, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v80, v94, v80
	v_fma_f32 v94, -v92, v95, 1.0
	v_mul_f32_e32 v78, v76, v84
	v_fma_f32 v75, -v91, v93, v81
	v_div_scale_f32 v96, null, v74, v74, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v95, v94, v95
	v_fma_f32 v88, -v82, v78, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v93, v75, v79
	v_mul_f32_e32 v75, v77, v80
	v_div_scale_f32 v94, s3, v56, v74, v56
	v_fmac_f32_e32 v78, v88, v84
	v_div_scale_f32 v88, null, v74, v74, v53
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v76, -v82, v78, v76
	v_rcp_f32_e32 v82, v88
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v76, v76, v84, v78
	v_fma_f32 v78, -v91, v93, v81
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v81, -v83, v75, v77
	v_mul_f32_e32 v84, v94, v95
	v_div_fixup_f32 v63, v76, v74, v63
	v_div_fmas_f32 v78, v78, v79, v93
	v_rcp_f32_e32 v79, v96
	v_fma_f32 v91, -v88, v82, 1.0
	v_fmac_f32_e32 v75, v81, v80
	v_fma_f32 v81, -v92, v84, v94
	v_div_fixup_f32 v62, v78, v74, v62
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v63, v63
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v76, -v83, v75, v77
	v_div_scale_f32 v83, s1, v52, v74, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v96, v79, 1.0
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v91, s0, v53, v74, v53
	v_div_fmas_f32 v75, v76, v80, v75
	v_fmac_f32_e32 v79, v78, v79
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v77, v91, v82
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v62, v62
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v59, v75, v74, v59
	v_fma_f32 v80, -v88, v77, v91
	v_fmac_f32_e32 v84, v81, v95
	v_div_scale_f32 v81, null, v51, v51, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v59, v59
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v77, v80, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v76, -v92, v84, v94
	v_div_scale_f32 v92, null, v51, v51, v49
	v_rcp_f32_e32 v78, v81
	v_fma_f32 v75, -v88, v77, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v76, v76, v95, v84
	v_rcp_f32_e32 v80, v92
	v_mul_f32_e32 v84, v83, v79
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v88, s2, v50, v51, v50
	v_div_fixup_f32 v56, v76, v74, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v76, -v96, v84, v83
	v_fma_f32 v93, -v81, v78, 1.0
	v_div_fmas_f32 v75, v75, v82, v77
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v92, v80, 1.0
	v_fmac_f32_e32 v84, v76, v79
	v_fmac_f32_e32 v78, v93, v78
	v_div_scale_f32 v93, null, v51, v51, v45
	v_fmac_f32_e32 v80, v91, v80
	v_div_scale_f32 v91, null, v51, v51, v46
	v_div_fixup_f32 v53, v75, v74, v53
	v_fma_f32 v75, -v96, v84, v83
	v_mul_f32_e32 v76, v88, v78
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v95, v91
	v_rcp_f32_e32 v77, v93
	v_div_scale_f32 v82, s0, v49, v51, v49
	v_div_fmas_f32 v75, v75, v79, v84
	v_fma_f32 v83, -v81, v76, v88
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v53, v53
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v52, v75, v74, v52
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v84, -v91, v95, 1.0
	v_fma_f32 v96, -v93, v77, 1.0
	v_fmac_f32_e32 v76, v83, v78
	v_div_scale_f32 v83, s1, v45, v51, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v95, v84, v95 :: v_dual_mul_f32 v94, v82, v80
	v_fmac_f32_e32 v77, v96, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v81, v76, v88
	v_div_scale_f32 v81, null, v51, v51, v36
	v_fma_f32 v79, -v92, v94, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v75, v83, v77
	v_div_fmas_f32 v74, v74, v78, v76
	v_div_scale_f32 v88, null, v51, v51, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v94, v79, v80
	v_div_scale_f32 v79, s3, v46, v51, v46
	v_fma_f32 v78, -v93, v75, v83
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v76, -v92, v94, v82
	v_rcp_f32_e32 v82, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v84, v79, v95 :: v_dual_fmac_f32 v75, v78, v77
	v_rcp_f32_e32 v78, v88
	v_div_fmas_f32 v76, v76, v80, v94
	v_div_fixup_f32 v50, v74, v51, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v80, -v91, v84, v79
	v_fma_f32 v74, -v93, v75, v83
	v_div_scale_f32 v83, null, v51, v51, v34
	v_fma_f32 v92, -v81, v82, 1.0
	v_div_fixup_f32 v49, v76, v51, v49
	v_fmac_f32_e32 v84, v80, v95
	v_div_scale_f32 v76, s0, v36, v51, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v82, v92, v82
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v80, -v88, v78, 1.0
	v_div_fmas_f32 v74, v74, v77, v75
	v_fma_f32 v75, -v91, v84, v79
	v_mul_f32_e32 v77, v76, v82
	v_rcp_f32_e32 v79, v83
	v_div_scale_f32 v91, null, v51, v51, v33
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v78, v80, v78
	v_div_scale_f32 v80, s1, v35, v51, v35
	v_div_fmas_f32 v75, v75, v95, v84
	v_fma_f32 v84, -v81, v77, v76
	v_rcp_f32_e32 v94, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v92, v80, v78
	v_fma_f32 v93, -v83, v79, 1.0
	v_div_fixup_f32 v45, v74, v51, v45
	v_fmac_f32_e32 v77, v84, v82
	v_div_scale_f32 v84, null, v51, v51, v30
	v_div_fixup_f32 v46, v75, v51, v46
	v_fma_f32 v74, -v88, v92, v80
	v_fmac_f32_e32 v79, v93, v79
	v_div_scale_f32 v75, s2, v34, v51, v34
	v_fma_f32 v93, -v91, v94, 1.0
	v_fma_f32 v76, -v81, v77, v76
	v_rcp_f32_e32 v81, v84
	v_fmac_f32_e32 v92, v74, v78
	v_mul_f32_e32 v74, v75, v79
	v_fmac_f32_e32 v94, v93, v94
	v_div_scale_f32 v93, s3, v33, v51, v33
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v95, null, v51, v51, v31
	v_div_fmas_f32 v76, v76, v82, v77
	v_fma_f32 v77, -v88, v92, v80
	v_fma_f32 v80, -v83, v74, v75
	v_mul_f32_e32 v82, v93, v94
	v_fma_f32 v88, -v84, v81, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v36, v76, v51, v36
	v_div_fmas_f32 v77, v77, v78, v92
	v_fmac_f32_e32 v74, v80, v79
	v_rcp_f32_e32 v78, v95
	v_fma_f32 v80, -v91, v82, v93
	v_fmac_f32_e32 v81, v88, v81
	v_div_scale_f32 v88, s0, v30, v51, v30
	v_fma_f32 v75, -v83, v74, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v80, v94
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v76, v88, v81
	v_div_fixup_f32 v35, v77, v51, v35
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v77, -v95, v78, 1.0
	v_div_scale_f32 v80, null, v51, v51, v29
	v_div_fmas_f32 v74, v75, v79, v74
	v_fma_f32 v75, -v91, v82, v93
	v_fma_f32 v79, -v84, v76, v88
	v_div_scale_f32 v91, null, v51, v51, v28
	v_fmac_f32_e32 v78, v77, v78
	v_rcp_f32_e32 v77, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v76, v79, v81
	v_rcp_f32_e32 v79, v91
	v_div_scale_f32 v83, s1, v31, v51, v31
	v_div_fixup_f32 v34, v74, v51, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v74, -v84, v76, v88
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v84, s2, v29, v51, v29
	v_fma_f32 v92, -v80, v77, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v88, -v91, v79, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v35, v35
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v77, v92, v77
	v_div_scale_f32 v92, null, v51, v51, v27
	v_fmac_f32_e32 v79, v88, v79
	v_div_fmas_f32 v75, v75, v94, v82
	v_mul_f32_e32 v82, v83, v78
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v88, null, v51, v51, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v33, v75, v51, v33
	v_fma_f32 v75, -v95, v82, v83
	v_div_fmas_f32 v74, v74, v81, v76
	v_rcp_f32_e32 v76, v92
	v_div_scale_f32 v81, s0, v28, v51, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v82, v75, v78 :: v_dual_mul_f32 v75, v84, v77
	v_rcp_f32_e32 v94, v88
	v_div_fixup_f32 v30, v74, v51, v30
	v_mul_f32_e32 v93, v81, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v74, -v95, v82, v83
	v_fma_f32 v83, -v80, v75, v84
	v_fma_f32 v95, -v92, v76, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v30, v30
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v74, v74, v78, v82
	v_fmac_f32_e32 v75, v83, v77
	v_fma_f32 v78, -v91, v93, v81
	v_fmac_f32_e32 v76, v95, v76
	v_div_scale_f32 v82, s1, v27, v51, v27
	v_fma_f32 v83, -v88, v94, 1.0
	v_div_fixup_f32 v31, v74, v51, v31
	v_fma_f32 v74, -v80, v75, v84
	v_fmac_f32_e32 v93, v78, v79
	v_mul_f32_e32 v78, v82, v76
	v_fmac_f32_e32 v94, v83, v94
	v_div_scale_f32 v83, null, v51, v51, v24
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v80, s3, v26, v51, v26
	v_div_fmas_f32 v74, v74, v77, v75
	v_fma_f32 v75, -v91, v93, v81
	v_fma_f32 v77, -v92, v78, v82
	v_rcp_f32_e32 v81, v83
	v_div_scale_f32 v91, null, v51, v51, v25
	v_mul_f32_e32 v84, v80, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v77, v76
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v77, v91
	v_div_fmas_f32 v75, v75, v79, v93
	v_fma_f32 v79, -v88, v84, v80
	v_div_fixup_f32 v29, v74, v51, v29
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v83, v81, 1.0
	v_fma_f32 v74, -v92, v78, v82
	v_div_fixup_f32 v28, v75, v51, v28
	v_fmac_f32_e32 v84, v79, v94
	v_div_scale_f32 v75, s0, v24, v51, v24
	v_fmac_f32_e32 v81, v93, v81
	v_fma_f32 v79, -v91, v77, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v92, null, v32, v32, v22
	v_div_fmas_f32 v74, v74, v76, v78
	v_fma_f32 v76, -v88, v84, v80
	v_mul_f32_e32 v78, v75, v81
	v_fmac_f32_e32 v77, v79, v77
	v_div_scale_f32 v79, null, v32, v32, v23
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v80, s1, v25, v51, v25
	v_div_fmas_f32 v76, v76, v94, v84
	v_rcp_f32_e32 v82, v79
	v_fma_f32 v84, -v83, v78, v75
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v88, v80, v77
	v_div_fixup_f32 v27, v74, v51, v27
	v_div_fixup_f32 v26, v76, v51, v26
	v_rcp_f32_e32 v76, v92
	v_fmac_f32_e32 v78, v84, v81
	v_fma_f32 v74, -v91, v88, v80
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v94, null, v32, v32, v20
	v_fma_f32 v84, -v79, v82, 1.0
	v_fma_f32 v75, -v83, v78, v75
	v_div_scale_f32 v83, null, v32, v32, v21
	v_fmac_f32_e32 v88, v74, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v84, v82
	v_div_scale_f32 v74, s2, v23, v32, v23
	v_rcp_f32_e32 v84, v83
	v_fma_f32 v93, -v92, v76, 1.0
	v_div_fmas_f32 v75, v75, v81, v78
	v_fma_f32 v78, -v91, v88, v80
	v_mul_f32_e32 v80, v74, v82
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v76, v93, v76
	v_div_scale_f32 v81, s0, v22, v32, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v93, -v79, v80, v74
	v_fma_f32 v91, -v83, v84, 1.0
	v_rcp_f32_e32 v96, v94
	v_div_fmas_f32 v77, v78, v77, v88
	v_mul_f32_e32 v95, v81, v76
	v_fmac_f32_e32 v80, v93, v82
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v91, s3, v21, v32, v21
	v_div_fixup_f32 v24, v75, v51, v24
	v_div_fixup_f32 v25, v77, v51, v25
	v_fma_f32 v51, -v79, v80, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v88, v91, v84
	v_div_scale_f32 v77, null, v32, v32, v19
	v_fma_f32 v78, -v92, v95, v81
	v_fma_f32 v75, -v94, v96, 1.0
	v_fma_f32 v74, -v83, v88, v91
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v29, v29
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v95, v78, v76
	v_fmac_f32_e32 v96, v75, v96
	v_fmac_f32_e32 v88, v74, v84
	v_rcp_f32_e32 v74, v77
	v_div_scale_f32 v75, s1, v20, v32, v20
	v_div_fmas_f32 v51, v51, v82, v80
	v_fma_f32 v78, -v92, v95, v81
	v_div_scale_f32 v80, null, v32, v32, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v79, v75, v96
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v23, v51, v32, v23
	v_fma_f32 v81, -v77, v74, 1.0
	v_div_fmas_f32 v76, v78, v76, v95
	v_fma_f32 v78, -v83, v88, v91
	v_rcp_f32_e32 v82, v80
	v_fma_f32 v83, -v94, v79, v75
	v_fmac_f32_e32 v74, v81, v74
	v_div_scale_f32 v81, s0, v19, v32, v19
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v79, v83, v96
	v_div_fmas_f32 v78, v78, v84, v88
	v_mul_f32_e32 v51, v81, v74
	v_div_fixup_f32 v22, v76, v32, v22
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v76, -v80, v82, 1.0
	v_fma_f32 v75, -v94, v79, v75
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v83, -v77, v51, v81
	v_div_fixup_f32 v21, v78, v32, v21
	v_div_scale_f32 v78, null, v32, v32, v16
	v_fmac_f32_e32 v82, v76, v82
	v_div_scale_f32 v76, s2, v18, v32, v18
	v_div_fmas_f32 v75, v75, v96, v79
	v_fmac_f32_e32 v51, v83, v74
	v_rcp_f32_e32 v84, v78
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v79, v76, v82
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v20, v75, v32, v20
	v_fma_f32 v75, -v77, v51, v81
	v_div_scale_f32 v83, null, v32, v32, v15
	v_fma_f32 v77, -v80, v79, v76
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v51, v75, v74, v51
	v_div_scale_f32 v74, null, v32, v32, v13
	v_fma_f32 v81, -v78, v84, 1.0
	v_rcp_f32_e32 v88, v83
	v_fmac_f32_e32 v79, v77, v82
	v_rcp_f32_e32 v77, v74
	v_div_scale_f32 v75, s0, v16, v32, v16
	v_fmac_f32_e32 v84, v81, v84
	v_div_scale_f32 v81, null, v32, v32, v17
	v_div_fixup_f32 v19, v51, v32, v19
	v_fma_f32 v76, -v80, v79, v76
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v83, v88, 1.0
	v_rcp_f32_e32 v92, v81
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v74, v77, 1.0
	v_mul_f32_e32 v80, v75, v84
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v88, v51, v88
	v_div_scale_f32 v51, s1, v15, v32, v15
	v_fmac_f32_e32 v77, v91, v77
	v_div_scale_f32 v91, null, v32, v32, v14
	v_div_fmas_f32 v76, v76, v82, v79
	v_fma_f32 v79, -v78, v80, v75
	v_mul_f32_e32 v82, v51, v88
	v_div_scale_f32 v93, s2, v13, v32, v13
	v_fma_f32 v94, -v81, v92, 1.0
	v_rcp_f32_e32 v95, v91
	v_fmac_f32_e32 v80, v79, v84
	v_fma_f32 v79, -v83, v82, v51
	v_mul_f32_e32 v96, v93, v77
	v_fmac_f32_e32 v92, v94, v92
	v_div_scale_f32 v94, s3, v17, v32, v17
	v_div_fixup_f32 v18, v76, v32, v18
	v_fma_f32 v75, -v78, v80, v75
	v_fmac_f32_e32 v82, v79, v88
	v_fma_f32 v76, -v74, v96, v93
	v_mul_f32_e32 v78, v94, v92
	v_fma_f32 v79, -v91, v95, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v51, -v83, v82, v51
	v_fmac_f32_e32 v96, v76, v77
	v_fma_f32 v76, -v81, v78, v94
	v_fmac_f32_e32 v95, v79, v95
	v_div_scale_f32 v79, s0, v14, v32, v14
	v_div_fmas_f32 v75, v75, v84, v80
	v_fma_f32 v74, -v74, v96, v93
	v_fmac_f32_e32 v78, v76, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v76, v79, v95
	v_div_scale_f32 v80, null, v32, v32, v12
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v16, v75, v32, v16
	v_div_fmas_f32 v51, v51, v88, v82
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v82, v80
	v_div_fmas_f32 v74, v74, v77, v96
	v_fma_f32 v77, -v81, v78, v94
	v_fma_f32 v81, -v91, v76, v79
	v_div_fixup_f32 v15, v51, v32, v15
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v13, v74, v32, v13
	v_div_fmas_f32 v77, v77, v92, v78
	v_fmac_f32_e32 v76, v81, v95
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v75, -v80, v82, 1.0
	v_div_scale_f32 v74, null, v32, v32, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v91, v76, v79
	v_div_fixup_f32 v17, v77, v32, v17
	v_fmac_f32_e32 v82, v75, v82
	v_div_scale_f32 v75, null, v32, v32, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v51, v51, v95, v76
	v_div_scale_f32 v78, vcc_lo, v12, v32, v12
	v_rcp_f32_e32 v76, v74
	v_rcp_f32_e32 v79, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v14, v51, v32, v14
	v_mul_f32_e32 v83, v78, v82
	v_div_scale_f32 v77, null, v32, v32, v9
	v_div_scale_f32 v84, null, v32, v32, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v92, -v80, v83, v78
	v_rcp_f32_e32 v81, v77
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v51, -v74, v76, 1.0
	v_fma_f32 v88, -v75, v79, 1.0
	v_rcp_f32_e32 v91, v84
	v_fmac_f32_e32 v83, v92, v82
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v76, v51, v76
	v_div_scale_f32 v51, s0, v11, v32, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v80, v83, v78
	v_fmac_f32_e32 v79, v88, v79
	v_div_scale_f32 v88, s1, v8, v32, v8
	v_mul_f32_e32 v94, v51, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v78, v78, v82, v83
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v96, v88, v79
	s_mov_b32 s0, 0xc1000000
	v_fma_f32 v92, -v74, v94, v51
	v_div_fixup_f32 v12, v78, v32, v12
	v_fma_f32 v93, -v77, v81, 1.0
	v_fma_f32 v80, -v75, v96, v88
	v_fma_f32 v95, -v84, v91, 1.0
	v_fmac_f32_e32 v94, v92, v76
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v12, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v81, v93, v81
	v_div_scale_f32 v93, s2, v9, v32, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v74, v94, v51
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v12, v12, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, s3, v10, v32, v10
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v100, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v96, v80, v79 :: v_dual_mul_f32 v97, v93, v81
	v_div_fmas_f32 v51, v51, v76, v94
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v75, -v75, v96, v88
	v_fma_f32 v92, -v77, v97, v93
	v_div_fixup_f32 v11, v51, v32, v11
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v51, v55
	v_rndne_f32_e32 v55, v58
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v75, v75, v79, v96
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v96, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_mul_f32 v98, v95, v91 :: v_dual_fmac_f32 v97, v92, v81
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v8, v75, v32, v8
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v58, v61
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v74, -v84, v98, v95
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v61, v66
	v_rndne_f32_e32 v66, v69
	v_rndne_f32_e32 v69, v73
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v36, v36, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v98, v74, v91
	v_fma_f32 v74, -v77, v97, v93
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v76, -v84, v98, v95
	v_div_fmas_f32 v74, v74, v81, v97
	s_mov_b32 vcc_lo, s3
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v49, v49
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v76, v76, v91, v98
	v_div_fixup_f32 v9, v74, v32, v9
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v22, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v10, v76, v32, v10
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v32, v37
	v_rndne_f32_e32 v37, v38
	v_rndne_f32_e32 v38, v39
	v_rndne_f32_e32 v39, v40
	v_rndne_f32_e32 v40, v41
	v_rndne_f32_e32 v41, v42
	v_rndne_f32_e32 v42, v43
	v_rndne_f32_e32 v43, v44
	v_rndne_f32_e32 v44, v47
	v_rndne_f32_e32 v47, v48
	v_rndne_f32_e32 v48, v54
	v_rndne_f32_e32 v54, v57
	v_rndne_f32_e32 v57, v60
	v_rndne_f32_e32 v60, v65
	v_rndne_f32_e32 v65, v68
	v_rndne_f32_e32 v68, v72
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_cvt_i32_f32_e32 v72, v36
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v20, v20
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_cvt_i32_f32_e32 v44, v44
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v14, v14
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v95, v16
	v_and_b32_e32 v16, 15, v44
	v_and_b32_e32 v44, 15, v72
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v72, 16, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v10, v10
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v73, v35
	v_cvt_i32_f32_e32 v76, v30
	v_cvt_i32_f32_e32 v78, v29
	v_cvt_i32_f32_e32 v79, v28
	v_and_b32_e32 v28, 15, v68
	v_and_b32_e32 v29, 15, v69
	v_and_b32_e32 v30, 15, v71
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v68, 10, v90
	v_lshlrev_b32_e32 v69, 6, v72
	v_lshlrev_b32_e32 v71, 6, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v18, v18
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v84, v23
	v_cvt_i32_f32_e32 v88, v22
	v_cvt_i32_f32_e32 v91, v21
	v_cvt_i32_f32_e32 v92, v20
	v_cvt_i32_f32_e32 v99, v14
	v_and_b32_e32 v14, 15, v42
	v_and_b32_e32 v42, 15, v45
	v_and_b32_e32 v45, 15, v73
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v73, 0, v68, v69
	v_and_or_b32 v3, 0x1b00, v71, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v77, v31
	v_cvt_i32_f32_e32 v97, v13
	v_cvt_i32_f32_e32 v98, v17
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v80, v27
	v_cvt_i32_f32_e32 v81, v26
	v_cvt_i32_f32_e32 v82, v24
	v_cvt_i32_f32_e32 v83, v25
	v_cvt_i32_f32_e32 v101, v11
	v_cvt_i32_f32_e32 v102, v8
	v_cvt_i32_f32_e32 v103, v9
	v_cvt_i32_f32_e32 v104, v10
	v_and_b32_e32 v8, 15, v32
	v_and_b32_e32 v9, 15, v37
	v_and_b32_e32 v10, 15, v38
	v_and_b32_e32 v11, 15, v39
	v_and_b32_e32 v12, 15, v40
	v_and_b32_e32 v13, 15, v41
	v_and_b32_e32 v15, 15, v43
	v_and_b32_e32 v22, 15, v57
	v_and_b32_e32 v23, 15, v58
	v_and_b32_e32 v24, 15, v60
	v_and_b32_e32 v25, 15, v61
	v_and_b32_e32 v26, 15, v65
	v_and_b32_e32 v27, 15, v66
	v_and_b32_e32 v36, 15, v59
	v_and_b32_e32 v37, 15, v56
	v_and_b32_e32 v40, 15, v50
	v_and_b32_e32 v41, 15, v49
	v_and_b32_e32 v43, 15, v46
	v_and_b32_e32 v56, 15, v84
	v_and_b32_e32 v57, 15, v88
	v_and_b32_e32 v58, 15, v91
	v_and_b32_e32 v59, 15, v92
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v4, v73, v4, v5
	v_xad_u32 v3, v3, v89, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v74, v34
	v_cvt_i32_f32_e32 v75, v33
	v_cvt_i32_f32_e32 v93, v19
	v_cvt_i32_f32_e32 v94, v18
	v_and_b32_e32 v17, 15, v47
	v_and_b32_e32 v18, 15, v48
	v_and_b32_e32 v19, 15, v51
	v_and_b32_e32 v20, 15, v54
	v_and_b32_e32 v21, 15, v55
	v_and_b32_e32 v32, 15, v64
	v_and_b32_e32 v33, 15, v67
	v_and_b32_e32 v34, 15, v63
	v_and_b32_e32 v35, 15, v62
	v_and_b32_e32 v48, 15, v76
	v_and_b32_e32 v49, 15, v77
	v_and_b32_e32 v50, 15, v78
	v_and_b32_e32 v51, 15, v79
	v_and_b32_e32 v64, 15, v97
	v_and_b32_e32 v65, 15, v98
	v_and_b32_e32 v66, 15, v99
	v_and_b32_e32 v67, 15, v100
	v_and_b32_e32 v31, 15, v70
	v_and_b32_e32 v38, 15, v53
	v_and_b32_e32 v39, 15, v52
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v4, v[8:11]
	ds_store_b128 v4, v[16:19] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v3
	ds_load_b128 v[16:19], v3 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v4, v[24:27]
	ds_store_b128 v4, v[32:35] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[24:27], v3
	ds_load_b128 v[32:35], v3 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v4, v[40:43]
	ds_store_b128 v4, v[48:51] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[40:43], v3
	ds_load_b128 v[48:51], v3 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v4, v[56:59]
	ds_store_b128 v4, v[64:67] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[56:59], v3
	ds_load_b128 v[64:67], v3 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v4, v[12:15]
	ds_store_b128 v4, v[20:23] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[12:15], v3
	ds_load_b128 v[20:23], v3 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v4, v[28:31]
	ds_store_b128 v4, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[28:31], v3
	ds_load_b128 v[36:39], v3 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v46, 15, v74
	v_and_b32_e32 v47, 15, v75
	v_and_b32_e32 v52, 15, v80
	v_and_b32_e32 v53, 15, v81
	v_and_b32_e32 v54, 15, v82
	v_and_b32_e32 v55, 15, v83
	v_and_b32_e32 v60, 15, v93
	v_and_b32_e32 v61, 15, v94
	v_and_b32_e32 v62, 15, v95
	v_and_b32_e32 v63, 15, v96
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v4, v[44:47]
	ds_store_b128 v4, v[52:55] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[44:47], v3
	ds_load_b128 v[52:55], v3 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v68, 15, v101
	v_and_b32_e32 v69, 15, v102
	v_and_b32_e32 v70, 15, v103
	v_and_b32_e32 v71, 15, v104
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s29, 31
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_barrier
	ds_store_b128 v4, v[60:63]
	ds_store_b128 v4, v[68:71] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v3
	ds_load_b128 v[68:71], v3 offset:1024
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v4, v16, 4, v8
	v_lshl_or_b32 v3, v17, 4, v9
	v_lshl_or_b32 v5, v18, 4, v10
	v_lshl_or_b32 v8, v19, 4, v11
	v_lshl_or_b32 v9, v20, 4, v12
	v_lshl_or_b32 v10, v21, 4, v13
	v_lshl_or_b32 v11, v22, 4, v14
	v_lshl_or_b32 v12, v23, 4, v15
	v_lshl_or_b32 v16, v35, 4, v27
	.loc	1 85 46                         ; generate_amdgcn.py:85:46 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v35, 3, v87
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v17, v36, 4, v28
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v36, s0, v86
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s28, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s30, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v13, v32, 4, v24
	v_lshl_or_b32 v14, v33, 4, v25
	v_lshl_or_b32 v15, v34, 4, v26
	v_lshl_or_b32 v18, v37, 4, v29
	v_lshl_or_b32 v19, v38, 4, v30
	v_lshl_or_b32 v20, v39, 4, v31
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v38, s2, s1, v35
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v8.l
	v_and_b16 v2.l, 0xff, v5.l
	v_lshlrev_b16 v3.l, 8, v3.l
	v_and_b16 v3.h, 0xff, v4.l
	v_lshlrev_b16 v4.l, 8, v12.l
	v_and_b16 v4.h, 0xff, v11.l
	v_lshlrev_b16 v5.l, 8, v10.l
	v_and_b16 v5.h, 0xff, v9.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v21, v48, 4, v40
	v_lshl_or_b32 v22, v49, 4, v41
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v40, v38, v36
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v3.h, v3.l
	v_or_b16 v9.h, v4.h, v4.l
	v_or_b16 v9.l, v5.h, v5.l
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
	v_lshl_or_b32 v25, v52, 4, v44
	v_lshl_or_b32 v26, v53, 4, v45
	v_lshl_or_b32 v29, v64, 4, v56
	v_lshl_or_b32 v30, v65, 4, v57
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v41, v36, s1, v38
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[8:9], v40, s[16:19], 0 offen
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v3.h, v3.l
	v_or_b16 v9.h, v4.h, v4.l
	v_or_b16 v9.l, v5.h, v5.l
	v_lshlrev_b16 v3.l, 8, v22.l
	v_and_b16 v3.h, 0xff, v21.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v23, v50, 4, v42
	v_lshl_or_b32 v24, v51, 4, v43
	v_lshl_or_b32 v27, v54, 4, v46
	v_lshl_or_b32 v28, v55, 4, v47
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v33, v68, 4, v60
	v_lshl_or_b32 v34, v69, 4, v61
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v5.l, 8, v26.l
	v_and_b16 v5.h, 0xff, v25.l
	buffer_store_b64 v[8:9], v41, s[16:19], 0 offen
	v_or_b16 v8.l, v3.h, v3.l
	v_lshlrev_b16 v3.l, 8, v30.l
	v_and_b16 v3.h, 0xff, v29.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v31, v66, 4, v58
	v_lshl_or_b32 v32, v67, 4, v59
	v_lshl_or_b32 v37, v70, 4, v62
	v_lshl_or_b32 v39, v71, 4, v63
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v24.l
	v_and_b16 v2.l, 0xff, v23.l
	v_lshlrev_b16 v4.l, 8, v28.l
	v_and_b16 v4.h, 0xff, v27.l
	v_or_b16 v9.l, v5.h, v5.l
	v_lshlrev_b16 v5.l, 8, v34.l
	v_and_b16 v5.h, 0xff, v33.l
	v_or_b16 v10.l, v3.h, v3.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v3, 2, v72
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v9.h, v4.h, v4.l
	v_lshlrev_b16 v1.l, 8, v32.l
	v_and_b16 v2.l, 0xff, v31.l
	v_lshlrev_b16 v4.l, 8, v39.l
	v_and_b16 v4.h, 0xff, v37.l
	v_or_b16 v11.l, v5.h, v5.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v5, 2, v86
	v_add_nc_u32_e32 v3, 0, v3
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s2, s0, 5
	s_mul_i32 s0, s0, 48
	v_add3_u32 v42, v36, s2, v38
	v_add3_u32 v36, v36, s0, v38
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s29, 31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v10.h, v2.l, v1.l
	v_or_b16 v11.h, v4.h, v4.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v4, 0, v35
	v_mov_b16_e32 v2.l, v7.h
	v_mov_b16_e32 v1.l, v6.h
	v_add3_u32 v3, v3, v5, v35
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v6, v0, 63, s30
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_clause 0x1
	buffer_store_b64 v[8:9], v42, s[16:19], 0 offen
	buffer_store_b64 v[10:11], v36, s[16:19], 0 offen
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
.Ltmp49:
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp50:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 242
		.amdhsa_next_free_sgpr 37
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 242
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 37
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 22940
; TotalNumSgprs: 39
; NumVgprs: 242
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 39
; NumVGPRsForWavesPerEU: 242
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
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     39
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     242
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
