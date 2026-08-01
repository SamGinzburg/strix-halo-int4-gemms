	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	s_load_b32 s13, s[0:1], 0x38
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v34, 15, v0
	v_lshrrev_b32_e32 v33, 4, v0
	v_and_b32_e32 v36, 3, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v37, 1, v0
	s_mov_b32 s12, 0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v29, 4, v34
	v_lshlrev_b32_e32 v106, 6, v34
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v35, 4, v36
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
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[30:31], null, s29, v33, v[29:30]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_mov_b64 s[24:25], s[22:23]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[31:32], null, s29, 48, v[30:31]
	v_lshl_add_u32 v103, s29, 4, v30
	v_lshl_add_u32 v104, s29, 5, v30
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
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
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v1, 2, v0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v1, s13, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s10, s10, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s10
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s10, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s4, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s33, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s28, s4, s9
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s4, s28, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s31, s28, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 352 13 is_stmt 0              ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 355 14 is_stmt 1              ; generate_amdgcn.py:355:14
	s_lshl_b32 s30, s2, 6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s2, s30, s13
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s13, s13, 63
.Ltmp13:
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v105, v1, v35, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s2, s29, s33
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s13, 63
	s_cselect_b32 s3, -1, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s31, s2
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 404 30 is_stmt 1              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v1, s33, v105
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0x7f
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s4, v30
	v_add_nc_u32_e32 v3, s4, v103
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s5, s29, 6
	v_add_nc_u32_e32 v4, s4, v104
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s33, s33, 64
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s4, v31
	s_add_i32 s4, s4, s5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 404 30 is_stmt 0              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v7, s33, v105
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v23, s4, v30
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v11, 0x80000000, v3, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v24, s4, v103
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v15, 0x80000000, v4, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v25, s4, v104
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v19, 0x80000000, v5, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v26, s4, v31
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	buffer_load_b128 v[3:6], v1, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v7, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[7:10], v2, s[24:27], 0 offen
	buffer_load_b128 v[11:14], v11, s[24:27], 0 offen
	buffer_load_b128 v[15:18], v15, s[24:27], 0 offen
	buffer_load_b128 v[19:22], v19, s[24:27], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v23, s2
	v_cndmask_b32_e64 v27, 0x80000000, v24, s2
	v_cndmask_b32_e64 v28, 0x80000000, v25, s2
	v_cndmask_b32_e64 v32, 0x80000000, v26, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[23:26], v1, s[20:23], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[38:41], v2, s[24:27], 0 offen
	buffer_load_b128 v[42:45], v27, s[24:27], 0 offen
	buffer_load_b128 v[46:49], v28, s[24:27], 0 offen
	buffer_load_b128 v[50:53], v32, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v32, 4, v0
	v_and_b32_e32 v1, 48, v37
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0xbf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v27, 0, v32
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v107, v32, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v107
	s_waitcnt vmcnt(9)
	ds_store_b128 v1, v[3:6] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v27, v[7:10]
	s_waitcnt vmcnt(7)
	ds_store_b128 v27, v[11:14] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v27, v[15:18] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v27, v[19:22] offset:12288
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v1, v[23:26] offset:36864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v27, v[38:41] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v27, v[42:45] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v27, v[46:49] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v27, v[50:53] offset:28672
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v1, 6, v34
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v102, 0x70, v2
	s_load_b256 s[4:11], s[0:1], 0x10
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
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
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v95, 0
	s_add_i32 s35, 0, 0x8000
	s_add_i32 s1, 0, 0x9000
	s_add_i32 s0, 0, 0x4000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr102
	s_load_b256 s[4:11], s[0:1], 0x10
.LBB0_4:                                ; %.lr.ph
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s34, s13, 6
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_lshlrev_b32_e32 v1, 3, v0
	v_dual_mov_b32 v95, 0 :: v_dual_and_b32 v102, 0x70, v2
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v98, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_or_b32 v108, v1, 48, v106
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_mov_b32_e32 v6, s17
	v_xor_b32_e32 v109, 16, v108
	v_xor_b32_e32 v110, 32, v108
	v_xor_b32_e32 v111, 48, v108
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	s_add_i32 s33, s33, 64
	s_mov_b32 s36, 1
	s_add_i32 s35, 0, 0x8000
	s_add_i32 s1, 0, 0x9000
	s_add_i32 s0, 0, 0x4000
	s_add_i32 s34, s34, -3
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s14, s13, 6
	s_mov_b32 s15, s12
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s12, s33, s14
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add3_u32 v176, s15, v102, v34
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v9, s12, v105
	.loc	1 404 22 is_stmt 0              ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v168, s35, v108
	v_add_nc_u32_e32 v172, s35, v109
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	s_mul_i32 s12, s12, s29
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s12, s12, s31
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[9:12], v9, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v13, v176 offset:3328
	ds_load_u8 v14, v176 offset:3072
	ds_load_u8 v15, v176 offset:3840
	ds_load_u8 v16, v176 offset:3584
	ds_load_u8 v17, v176 offset:2304
	ds_load_u8 v18, v176 offset:2048
	ds_load_u8 v19, v176 offset:2816
	ds_load_u8 v20, v176 offset:2560
	ds_load_u8 v21, v176 offset:1280
	ds_load_u8 v22, v176 offset:1024
	ds_load_u8 v23, v176 offset:1792
	ds_load_u8 v24, v176 offset:1536
	ds_load_u8 v25, v176 offset:256
	ds_load_u8 v26, v176
	ds_load_u8 v27, v176 offset:768
	ds_load_u8 v28, v176 offset:512
	ds_load_u8 v112, v176 offset:7424
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[128:131], v168 offset:1024
	ds_load_b128 v[132:135], v172 offset:1024
	ds_load_b128 v[144:147], v168 offset:2048
	ds_load_b128 v[148:151], v172 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v176 offset:7168
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v176 offset:7936
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v18, v20, v19, 0xc0c0004
	v_lshl_or_b32 v155, v15, 16, v13
	ds_load_u8 v13, v176 offset:7680
	ds_load_u8 v15, v176 offset:6400
	ds_load_u8 v20, v176 offset:6912
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v19, v24, v23, 0xc0c0004
	v_lshl_or_b32 v154, v18, 16, v17
	v_perm_b32 v17, v22, v21, 0xc0c0004
	ds_load_u8 v18, v176 offset:6144
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v21, v26, v25, 0xc0c0004
	ds_load_u8 v22, v176 offset:5120
	ds_load_u8 v24, v176 offset:5888
	ds_load_u8 v25, v176 offset:5632
	v_lshl_or_b32 v153, v19, 16, v17
	ds_load_u8 v17, v176 offset:6656
	ds_load_u8 v19, v176 offset:5376
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v23, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v14, v14, v112, 0xc0c0004
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[112:115], v168
	ds_load_b128 v[116:119], v172
	ds_load_b128 v[168:171], v168 offset:3072
	ds_load_b128 v[172:175], v172 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v152, v23, 16, v21
	ds_load_u8 v21, v176 offset:3968
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v13, v13, v16, 0xc0c0004
	ds_load_u8 v16, v176 offset:4352
	v_lshl_or_b32 v159, v13, 16, v14
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v15, v18, v15, 0xc0c0004
	ds_load_u8 v13, v176 offset:4608
	ds_load_u8 v14, v176 offset:3456
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v17, v17, v20, 0xc0c0004
	ds_load_u8 v20, v176 offset:4864
	ds_load_u8 v18, v176 offset:4096
	v_lshl_or_b32 v158, v17, 16, v15
	ds_load_u8 v17, v176 offset:3200
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v15, v22, v19, 0xc0c0004
	v_perm_b32 v19, v25, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v157, v19, 16, v15
	ds_load_u8 v15, v176 offset:3712
	ds_load_u8 v19, v176 offset:2432
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v13, v13, v20, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v16, v18, v16, 0xc0c0004
	ds_load_u8 v18, v176 offset:2176
	ds_load_u8 v20, v176 offset:2944
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v14, v17, v14, 0xc0c0004
	ds_load_u8 v17, v176 offset:2688
	v_lshl_or_b32 v156, v13, 16, v16
	ds_load_u8 v16, v176 offset:128
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v15, v15, v21, 0xc0c0004
	ds_load_u8 v21, v176 offset:1408
	v_lshl_or_b32 v163, v15, 16, v14
	ds_load_u8 v13, v176 offset:1664
	ds_load_u8 v14, v176 offset:384
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v17, v17, v20, 0xc0c0004
	ds_load_u8 v20, v176 offset:1920
	v_perm_b32 v18, v18, v19, 0xc0c0004
	ds_load_u8 v19, v176 offset:1152
	v_lshl_or_b32 v162, v17, 16, v18
	ds_load_u8 v17, v176 offset:896
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v14, v16, v14, 0xc0c0004
	ds_load_u8 v16, v176 offset:7296
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v13, v13, v20, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v19, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v161, v13, 16, v15
	ds_load_u8 v13, v176 offset:640
	ds_load_u8 v15, v176 offset:7552
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v13, v13, v17, 0xc0c0004
	ds_load_u8 v17, v176 offset:8064
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v176 offset:6272
	v_lshl_or_b32 v160, v13, 16, v14
	ds_load_u8 v13, v176 offset:7808
	ds_load_u8 v14, v176 offset:6528
	v_wmma_i32_16x16x16_iu8 v[21:28], v[160:163], v[112:115], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[120:127], v[160:163], v[128:131], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[160:163], v[144:147], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v13, v13, v17, 0xc0c0004
	ds_load_u8 v17, v176 offset:7040
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v14, v16, v14, 0xc0c0004
	ds_load_u8 v16, v176 offset:6784
	v_lshl_or_b32 v167, v13, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v16, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v166, v16, 16, v14
	ds_load_u8 v13, v176 offset:5504
	ds_load_u8 v14, v176 offset:5248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v176 offset:6016
	ds_load_u8 v15, v176 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v14, 16, v13
	ds_load_u8 v13, v176 offset:4480
	ds_load_u8 v14, v176 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v176 offset:4992
	ds_load_u8 v15, v176 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v164, v14, 16, v13
	v_wmma_i32_16x16x16_iu8 v[13:20], v[152:155], v[112:115], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[21:28], v[164:167], v[116:119], v[21:28] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[156:159], v[116:119], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[152:155], v[128:131], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[120:127], v[164:167], v[132:135], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[164:167], v[148:151], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[156:159], v[132:135], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[128:135], v[152:155], v[144:147], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[128:135], v[156:159], v[148:151], v[128:135] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[152:155], v[168:171], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[156:159], v[172:175], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[152:159], v[160:163], v[168:171], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v160, v176 offset:11520
	ds_load_u8 v161, v176 offset:11264
	v_wmma_i32_16x16x16_iu8 v[152:159], v[164:167], v[172:175], v[152:159] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v172, s35, v110
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v176 offset:12032
	ds_load_u8 v162, v176 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	ds_load_u8 v162, v176 offset:10496
	ds_load_u8 v163, v176 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v176 offset:11008
	ds_load_u8 v164, v176 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v164, v163, 0xc0c0004
	v_lshl_or_b32 v163, v161, 16, v160
	ds_load_u8 v160, v176 offset:9472
	ds_load_u8 v161, v176 offset:9216
	v_lshl_or_b32 v162, v164, 16, v162
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v176 offset:9984
	ds_load_u8 v164, v176 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v164, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v161, v161, 16, v160
	ds_load_u8 v160, v176 offset:8448
	ds_load_u8 v164, v176 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v164, v160, 0xc0c0004
	ds_load_u8 v164, v176 offset:8960
	ds_load_u8 v165, v176 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v160, v164, 16, v160
	ds_load_u8 v164, v176 offset:11648
	ds_load_u8 v165, v176 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	ds_load_u8 v165, v176 offset:12160
	ds_load_u8 v166, v176 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v176 offset:10624
	ds_load_u8 v167, v176 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v176 offset:11136
	ds_load_u8 v168, v176 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v168, v167, 0xc0c0004
	v_lshl_or_b32 v167, v165, 16, v164
	ds_load_u8 v164, v176 offset:9600
	ds_load_u8 v165, v176 offset:9344
	v_lshl_or_b32 v166, v168, 16, v166
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	ds_load_u8 v165, v176 offset:10112
	ds_load_u8 v168, v176 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v168, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v165, 16, v164
	ds_load_u8 v164, v176 offset:8576
	ds_load_u8 v168, v176 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v168, v164, 0xc0c0004
	ds_load_u8 v168, v176 offset:9088
	ds_load_u8 v169, v176 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v164, v168, 16, v164
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[168:171], v172
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[160:163], v[168:171], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[21:28], v[164:167], v[168:171], v[21:28] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[168:171], v172 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[112:119], v[160:163], v[168:171], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[120:127], v[164:167], v[168:171], v[120:127] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[168:171], v172 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[128:135], v[160:163], v[168:171], v[128:135] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[164:167], v[168:171], v[136:143] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[168:171], v172 offset:3072
	v_add_nc_u32_e32 v172, s35, v111
	s_mov_b32 s35, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s1, s36, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s1, 2
	s_cselect_b32 s36, s1, 0
	s_add_i32 s14, s13, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s1, s36, 14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[144:151], v[160:163], v[168:171], v[144:151] neg_lo:[1,1,0]
	ds_load_u8 v160, v176 offset:15616
	ds_load_u8 v161, v176 offset:15360
	v_wmma_i32_16x16x16_iu8 v[152:159], v[164:167], v[168:171], v[152:159] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v176 offset:16128
	ds_load_u8 v162, v176 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	ds_load_u8 v162, v176 offset:14592
	ds_load_u8 v163, v176 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v176 offset:15104
	ds_load_u8 v164, v176 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v164, v163, 0xc0c0004
	v_lshl_or_b32 v163, v161, 16, v160
	ds_load_u8 v160, v176 offset:13568
	ds_load_u8 v161, v176 offset:13312
	v_lshl_or_b32 v162, v164, 16, v162
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v176 offset:14080
	ds_load_u8 v164, v176 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v164, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v161, v161, 16, v160
	ds_load_u8 v160, v176 offset:12544
	ds_load_u8 v164, v176 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v164, v160, 0xc0c0004
	ds_load_u8 v164, v176 offset:13056
	ds_load_u8 v165, v176 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v160, v164, 16, v160
	ds_load_u8 v164, v176 offset:15744
	ds_load_u8 v165, v176 offset:15488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	ds_load_u8 v165, v176 offset:16256
	ds_load_u8 v166, v176 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v176 offset:14720
	ds_load_u8 v167, v176 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v176 offset:15232
	ds_load_u8 v168, v176 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v168, v167, 0xc0c0004
	v_lshl_or_b32 v167, v165, 16, v164
	ds_load_u8 v164, v176 offset:13696
	ds_load_u8 v165, v176 offset:13440
	v_lshl_or_b32 v166, v168, 16, v166
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	ds_load_u8 v165, v176 offset:14208
	ds_load_u8 v168, v176 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v168, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v165, 16, v164
	ds_load_u8 v164, v176 offset:12672
	ds_load_u8 v168, v176 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v168, v164, 0xc0c0004
	ds_load_u8 v168, v176 offset:13184
	ds_load_u8 v169, v176 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v164, v168, 16, v164
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[168:171], v172
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[160:163], v[168:171], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[21:28], v[164:167], v[168:171], v[21:28] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v21, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v97, v97, v18
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[168:171], v172 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v95, v95, v13
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v13, s12, v30
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v98, v98, v17 :: v_dual_add_nc_u32 v17, s12, v103
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v96, v96, v19 :: v_dual_add_f32 v93, v93, v21
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v94, v94, v20 :: v_dual_add_f32 v89, v89, v25
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[112:119], v[160:163], v[168:171], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[120:127], v[164:167], v[168:171], v[120:127] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[168:171], v172 offset:2048
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v101, v101, v14 :: v_dual_add_f32 v100, v100, v15
	v_add_f32_e32 v99, v99, v16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v17, s[24:27], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v114, v114
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v92, v92, v22 :: v_dual_add_f32 v87, v87, v27
	v_dual_add_f32 v91, v91, v23 :: v_dual_add_f32 v90, v90, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v83, v83, v114
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v118, v118
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v86, v86, v28
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[128:135], v[160:163], v[168:171], v[128:135] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[164:167], v[168:171], v[136:143] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[168:171], v172 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v58, v58, v139
	v_add_f32_e32 v56, v56, v141
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[144:151], v[160:163], v[168:171], v[144:151] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v160, v112
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v88, v88, v26
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[152:159], v[164:167], v[168:171], v[152:159] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v161, v113
	v_cvt_f32_i32_e32 v145, v145
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v21, s12, v104
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v149, v149
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v25, s12, v31
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v137, v137
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v52, v52, v145
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[21:24], v21, s[24:27], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v48, v48, v149
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[25:28], v25, s[24:27], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v113, v158
	v_cvt_f32_i32_e32 v112, v159
	s_mov_b32 s12, s0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s0, s36, 12
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v85, v85, v160
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s15, s0, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s0, s1, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v84, v84, v161 :: v_dual_add_f32 v81, v81, v116
	v_dual_add_f32 v82, v82, v115 :: v_dual_add_f32 v77, v77, v120
	v_dual_add_f32 v80, v80, v117 :: v_dual_add_f32 v75, v75, v122
	v_dual_add_f32 v79, v79, v118 :: v_dual_add_f32 v78, v78, v119
	v_dual_add_f32 v73, v73, v124 :: v_dual_add_f32 v76, v76, v121
	v_dual_add_f32 v71, v71, v126 :: v_dual_add_f32 v74, v74, v123
	v_dual_add_f32 v69, v69, v128 :: v_dual_add_f32 v72, v72, v125
	v_dual_add_f32 v67, v67, v130 :: v_dual_add_f32 v70, v70, v127
	v_dual_add_f32 v65, v65, v132 :: v_dual_add_f32 v68, v68, v129
	v_dual_add_f32 v63, v63, v134 :: v_dual_add_f32 v66, v66, v131
	v_dual_add_f32 v61, v61, v136 :: v_dual_add_f32 v64, v64, v133
	v_dual_add_f32 v59, v59, v138 :: v_dual_add_f32 v62, v62, v135
	v_dual_add_f32 v57, v57, v140 :: v_dual_add_f32 v60, v60, v137
	v_dual_add_f32 v55, v55, v142 :: v_dual_add_f32 v54, v54, v143
	v_add_f32_e32 v53, v53, v144
	v_dual_add_f32 v51, v51, v146 :: v_dual_add_f32 v50, v50, v147
	v_dual_add_f32 v49, v49, v148 :: v_dual_add_f32 v46, v46, v151
	v_dual_add_f32 v47, v47, v150 :: v_dual_add_f32 v44, v44, v153
	v_dual_add_f32 v45, v45, v152 :: v_dual_add_f32 v42, v42, v155
	v_dual_add_f32 v43, v43, v154 :: v_dual_add_f32 v40, v40, v157
	v_add_f32_e32 v41, v41, v156
	v_dual_add_f32 v39, v39, v113 :: v_dual_add_f32 v38, v38, v112
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v113, s15, v107
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v112, s0, v32
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s1, s15, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s34
	s_mov_b32 s13, s14
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v113, v[9:12] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v112, v[13:16]
	s_waitcnt vmcnt(2)
	ds_store_b128 v112, v[17:20] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v112, v[21:24] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v112, v[25:28] offset:12288
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v106
.LBB0_7:                                ; %Flow72
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_and_b32_e32 v31, 6, v0
	v_and_b32_e32 v30, 0xf0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v102, v102, v34
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v103, v31, 3, v1
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v104, 16, v103
	v_xor_b32_e32 v105, 32, v103
	v_xor_b32_e32 v106, 48, v103
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v116, s12, v102
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v107, s35, v106
	v_add_nc_u32_e32 v1, s35, v105
	v_add_nc_u32_e32 v117, s35, v104
	ds_load_b128 v[9:12], v107 offset:1024
	ds_load_b128 v[132:135], v107
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v2, v116 offset:3328
	ds_load_u8 v3, v116 offset:3072
	ds_load_u8 v4, v116 offset:3840
	ds_load_u8 v5, v116 offset:3584
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[13:16], v1 offset:3072
	ds_load_b128 v[17:20], v1 offset:2048
	ds_load_b128 v[21:24], v1 offset:1024
	ds_load_b128 v[124:127], v1
	ds_load_b128 v[25:28], v117 offset:1024
	ds_load_b128 v[128:131], v117
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v1, v116 offset:2304
	ds_load_u8 v6, v116 offset:2048
	ds_load_u8 v7, v116 offset:2816
	ds_load_u8 v8, v116 offset:2560
	ds_load_u8 v108, v116 offset:1280
	ds_load_u8 v109, v116 offset:1024
	ds_load_u8 v110, v116 offset:1792
	ds_load_u8 v111, v116 offset:1536
	ds_load_u8 v119, v116 offset:3968
	ds_load_u8 v120, v116 offset:3712
	ds_load_u8 v121, v116 offset:3456
	ds_load_u8 v122, v116 offset:3200
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v118, s35, v103
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v6, v1, 0xc0c0004
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	v_perm_b32 v3, v5, v4, 0xc0c0004
	ds_load_u8 v4, v116 offset:256
	ds_load_u8 v5, v116
	ds_load_u8 v112, v116 offset:768
	ds_load_u8 v113, v116 offset:512
	ds_load_u8 v123, v116 offset:2944
	ds_load_u8 v144, v116 offset:2688
	ds_load_u8 v145, v116 offset:2432
	ds_load_u8 v146, v116 offset:2176
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v7, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v8, v111, v110, 0xc0c0004
	v_lshl_or_b32 v166, v6, 16, v1
	v_lshl_or_b32 v167, v3, 16, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v165, v8, 16, v7
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v113, v112, 0xc0c0004
	v_lshl_or_b32 v164, v2, 16, v1
	v_mov_b32_e32 v1, s12
	ds_load_u8 v108, v116 offset:7424
	ds_load_u8 v109, v116 offset:7168
	ds_load_u8 v110, v116 offset:7936
	ds_load_u8 v111, v116 offset:7680
	ds_load_u8 v112, v116 offset:6400
	ds_load_u8 v113, v116 offset:6144
	ds_load_u8 v114, v116 offset:6912
	ds_load_u8 v115, v116 offset:6656
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
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v3, s14
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[140:143], v118 offset:1024
	ds_load_b128 v[136:139], v118
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v147, v116 offset:1920
	ds_load_u8 v148, v116 offset:1664
	ds_load_u8 v149, v116 offset:1408
	ds_load_u8 v150, v116 offset:1152
	ds_load_u8 v151, v116 offset:896
	ds_load_u8 v152, v116 offset:640
	ds_load_u8 v153, v116 offset:384
	ds_load_u8 v154, v116 offset:128
	ds_load_u8 v196, v116 offset:6016
	ds_load_u8 v197, v116 offset:5760
	ds_load_u8 v198, v116 offset:5504
	ds_load_u8 v199, v116 offset:5248
	ds_load_u8 v215, v116 offset:9088
	ds_load_u8 v216, v116 offset:8832
	ds_load_u8 v217, v116 offset:8576
	ds_load_u8 v218, v116 offset:8320
	ds_load_u8 v231, v116 offset:15232
	ds_load_u8 v232, v116 offset:14976
	ds_load_u8 v233, v116 offset:14720
	ds_load_u8 v234, v116 offset:14464
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v169, v113, v112, 0xc0c0004
	v_mov_b32_e32 v2, s13
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v170, v115, v114, 0xc0c0004
	v_mov_b32_e32 v4, s15
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v8, s19
	v_perm_b32 v159, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v156, v158, v157, 0xc0c0004
	v_perm_b32 v168, v111, v110, 0xc0c0004
	ds_load_u8 v108, v116 offset:4352
	ds_load_u8 v109, v116 offset:4096
	ds_load_u8 v110, v116 offset:4864
	ds_load_u8 v111, v116 offset:4608
	ds_load_u8 v192, v116 offset:7040
	ds_load_u8 v193, v116 offset:6784
	ds_load_u8 v194, v116 offset:6528
	ds_load_u8 v195, v116 offset:6272
	v_lshl_or_b32 v170, v170, 16, v169
	ds_load_u8 v157, v116 offset:11520
	ds_load_u8 v158, v116 offset:11264
	ds_load_u8 v172, v116 offset:12032
	ds_load_u8 v173, v116 offset:11776
	ds_load_u8 v200, v116 offset:4992
	ds_load_u8 v201, v116 offset:4736
	ds_load_u8 v202, v116 offset:4480
	ds_load_u8 v203, v116 offset:4224
	v_lshl_or_b32 v169, v156, 16, v155
	v_lshl_or_b32 v171, v168, 16, v159
	v_mov_b32_e32 v7, s18
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v174, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v175, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v158, v173, v172, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[108:115], v[164:167], v[136:139], v[1:8] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu8 v[108:115], v[168:171], v[128:131], v[108:115] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu8 v[108:115], v[180:183], v[124:127], v[108:115] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v222, v222, v118, 0xc0c0004
	v_perm_b32 v118, v120, v119, 0xc0c0004
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
	ds_load_u8 v224, v116 offset:13184
	ds_load_u8 v238, v116 offset:12928
	ds_load_u8 v239, v116 offset:12672
	ds_load_u8 v240, v116 offset:12416
	v_perm_b32 v116, v122, v121, 0xc0c0004
	v_perm_b32 v119, v146, v145, 0xc0c0004
	v_perm_b32 v120, v144, v123, 0xc0c0004
	v_perm_b32 v121, v150, v149, 0xc0c0004
	v_perm_b32 v122, v148, v147, 0xc0c0004
	v_perm_b32 v123, v154, v153, 0xc0c0004
	v_perm_b32 v144, v152, v151, 0xc0c0004
	v_perm_b32 v219, v219, v191, 0xc0c0004
	v_perm_b32 v241, v189, v188, 0xc0c0004
	v_lshl_or_b32 v191, v118, 16, v116
	v_lshl_or_b32 v189, v122, 16, v121
	v_lshl_or_b32 v188, v144, 16, v123
	v_perm_b32 v144, v163, v162, 0xc0c0004
	v_perm_b32 v146, v161, v160, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v145, v190, v117, 0xc0c0004
	v_lshl_or_b32 v190, v120, 16, v119
	v_perm_b32 v147, v195, v194, 0xc0c0004
	v_perm_b32 v148, v193, v192, 0xc0c0004
	v_perm_b32 v149, v199, v198, 0xc0c0004
	v_perm_b32 v150, v197, v196, 0xc0c0004
	v_perm_b32 v151, v203, v202, 0xc0c0004
	v_perm_b32 v152, v201, v200, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[116:123], v[188:191], v[136:139], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v195, v146, 16, v144
	v_lshl_or_b32 v194, v148, 16, v147
	v_lshl_or_b32 v193, v150, 16, v149
	v_lshl_or_b32 v192, v152, 16, v151
	v_perm_b32 v136, v207, v206, 0xc0c0004
	v_perm_b32 v137, v205, v204, 0xc0c0004
	v_perm_b32 v138, v211, v210, 0xc0c0004
	v_perm_b32 v139, v209, v208, 0xc0c0004
	v_perm_b32 v144, v214, v213, 0xc0c0004
	v_perm_b32 v146, v212, v155, 0xc0c0004
	v_perm_b32 v147, v218, v217, 0xc0c0004
	v_perm_b32 v148, v216, v215, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[116:123], v[192:195], v[128:131], v[116:123] neg_lo:[1,1,0]
	v_lshl_or_b32 v199, v137, 16, v136
	v_lshl_or_b32 v198, v139, 16, v138
	v_lshl_or_b32 v197, v146, 16, v144
	v_lshl_or_b32 v196, v148, 16, v147
	v_lshl_or_b32 v200, v145, 16, v241
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
	v_lshl_or_b32 v203, v230, 16, v229
	v_lshl_or_b32 v202, v220, 16, v219
	v_lshl_or_b32 v201, v223, 16, v222
	v_wmma_i32_16x16x16_iu8 v[116:123], v[196:199], v[124:127], v[116:123] neg_lo:[1,1,0]
	v_lshl_or_b32 v207, v137, 16, v136
	v_lshl_or_b32 v206, v139, 16, v138
	v_lshl_or_b32 v205, v145, 16, v144
	v_lshl_or_b32 v204, v147, 16, v146
	v_wmma_i32_16x16x16_iu8 v[124:131], v[164:167], v[140:143], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[200:203], v[132:135], v[108:115] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[208:211], v107 offset:3072
	ds_load_b128 v[212:215], v107 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[116:123], v[204:207], v[132:135], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[132:139], v[188:191], v[140:143], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[124:131], v[168:171], v[25:28], v[124:131] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[132:139], v[192:195], v[25:28], v[132:139] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[124:131], v[180:183], v[21:24], v[124:131] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[132:139], v[196:199], v[21:24], v[132:139] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[124:131], v[200:203], v[9:12], v[124:131] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[132:139], v[204:207], v[9:12], v[132:139] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v10, v110
	v_cvt_f32_i32_e32 v9, v109
	v_cvt_f32_i32_e32 v11, v111
	v_cvt_f32_i32_e32 v12, v112
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v100, v100, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[140:147], v[164:167], v[156:159], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[148:155], v[188:191], v[156:159], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[156:163], v[164:167], v[184:187], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[188:191], v[184:187], v[1:8] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v101, v101, v9 :: v_dual_add_f32 v98, v98, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[156:163], v[168:171], v[172:175], v[156:163] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v113
	v_wmma_i32_16x16x16_iu8 v[1:8], v[192:195], v[172:175], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v10, v114
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v99, v99, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[156:163], v[180:183], v[13:16], v[156:163] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v11, v115
	v_wmma_i32_16x16x16_iu8 v[1:8], v[196:199], v[13:16], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v12, v116
	v_cvt_f32_i32_e32 v13, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v97, v97, v9 :: v_dual_add_f32 v94, v94, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v118
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v96, v96, v10 :: v_dual_add_f32 v93, v93, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add_f32_e32 v92, v92, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v119
	v_cvt_f32_i32_e32 v11, v120
	v_cvt_f32_i32_e32 v12, v121
	v_cvt_f32_i32_e32 v13, v122
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v91, v91, v9 :: v_dual_add_f32 v90, v90, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v123
	v_wmma_i32_16x16x16_iu8 v[140:147], v[168:171], v[176:179], v[140:147] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v89, v89, v11 :: v_dual_add_f32 v88, v88, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v124
	v_cvt_f32_i32_e32 v11, v125
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v87, v87, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v126
	v_cvt_f32_i32_e32 v13, v127
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v86, v86, v9 :: v_dual_add_f32 v85, v85, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v128
	v_wmma_i32_16x16x16_iu8 v[148:155], v[192:195], v[176:179], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[180:183], v[17:20], v[140:147] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v84, v84, v11 :: v_dual_add_f32 v83, v83, v12
	v_add_f32_e32 v82, v82, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v129
	v_cvt_f32_i32_e32 v11, v130
	v_cvt_f32_i32_e32 v12, v131
	v_cvt_f32_i32_e32 v13, v132
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v81, v81, v9 :: v_dual_add_f32 v80, v80, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v133
	v_wmma_i32_16x16x16_iu8 v[148:155], v[196:199], v[17:20], v[148:155] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[140:147], v[200:203], v[212:215], v[140:147] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v79, v79, v11 :: v_dual_add_f32 v78, v78, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v134
	v_cvt_f32_i32_e32 v11, v135
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v77, v77, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v136
	v_cvt_f32_i32_e32 v13, v137
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v76, v76, v9 :: v_dual_add_f32 v75, v75, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v138
	v_wmma_i32_16x16x16_iu8 v[148:155], v[204:207], v[212:215], v[148:155] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v74, v74, v11 :: v_dual_add_f32 v73, v73, v12
	v_add_f32_e32 v72, v72, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v139
	v_cvt_f32_i32_e32 v11, v140
	v_cvt_f32_i32_e32 v12, v141
	v_cvt_f32_i32_e32 v13, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v71, v71, v9 :: v_dual_add_f32 v70, v70, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v143
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v69, v69, v11 :: v_dual_add_f32 v68, v68, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v144
	v_cvt_f32_i32_e32 v11, v145
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v67, v67, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v146
	v_cvt_f32_i32_e32 v13, v147
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v66, v66, v9 :: v_dual_add_f32 v65, v65, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v148
	v_wmma_i32_16x16x16_iu8 v[156:163], v[200:203], v[208:211], v[156:163] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v64, v64, v11 :: v_dual_add_f32 v63, v63, v12
	v_add_f32_e32 v62, v62, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v149
	v_cvt_f32_i32_e32 v11, v150
	v_cvt_f32_i32_e32 v12, v151
	v_cvt_f32_i32_e32 v13, v152
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v61, v61, v9 :: v_dual_add_f32 v60, v60, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v153
	v_wmma_i32_16x16x16_iu8 v[1:8], v[204:207], v[208:211], v[1:8] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v59, v59, v11 :: v_dual_add_f32 v58, v58, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v154
	v_cvt_f32_i32_e32 v11, v155
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v57, v57, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v156
	v_cvt_f32_i32_e32 v13, v157
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v56, v56, v9 :: v_dual_add_f32 v55, v55, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v53, v53, v12 :: v_dual_add_f32 v52, v52, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v159
	v_cvt_f32_i32_e32 v13, v162
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v51, v51, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v163
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v54, v54, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v160
	v_cvt_f32_i32_e32 v12, v161
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v47, v47, v13 :: v_dual_add_f32 v44, v44, v2
	v_dual_add_f32 v46, v46, v9 :: v_dual_add_f32 v43, v43, v3
	v_dual_add_f32 v45, v45, v1 :: v_dual_add_f32 v42, v42, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v1, v5
	v_cvt_f32_i32_e32 v2, v6
	v_cvt_f32_i32_e32 v3, v7
	v_cvt_f32_i32_e32 v4, v8
	v_cvt_f32_i32_e32 v5, v108
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v50, v50, v10 :: v_dual_add_f32 v49, v49, v11
	v_dual_add_f32 v48, v48, v12 :: v_dual_add_f32 v41, v41, v1
	v_dual_add_f32 v40, v40, v2 :: v_dual_add_f32 v39, v39, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v38, v38, v4 :: v_dual_add_f32 v95, v95, v5
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v142, s19 :: v_dual_add_nc_u32 v21, s1, v106
	v_dual_mov_b32 v141, s18 :: v_dual_add_nc_u32 v26, s0, v102
	v_dual_mov_b32 v140, s17 :: v_dual_add_nc_u32 v17, s1, v105
	v_dual_mov_b32 v138, s15 :: v_dual_add_nc_u32 v27, s1, v104
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	ds_load_b128 v[1:4], v21 offset:1024
	ds_load_b128 v[22:25], v21
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v28, v26 offset:3328
	ds_load_u8 v102, v26 offset:3072
	ds_load_u8 v104, v26 offset:3840
	ds_load_u8 v105, v26 offset:3584
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[5:8], v17 offset:3072
	ds_load_b128 v[9:12], v17 offset:2048
	ds_load_b128 v[13:16], v17 offset:1024
	ds_load_b128 v[118:121], v17
	ds_load_b128 v[17:20], v27 offset:1024
	ds_load_b128 v[122:125], v27
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v139, s16 :: v_dual_add_nc_u32 v110, s1, v103
	ds_load_u8 v103, v26 offset:2304
	ds_load_u8 v106, v26 offset:2048
	ds_load_u8 v107, v26 offset:2816
	ds_load_u8 v108, v26 offset:2560
	ds_load_u8 v109, v26 offset:1280
	ds_load_u8 v111, v26 offset:1024
	ds_load_u8 v112, v26 offset:1792
	ds_load_u8 v113, v26 offset:1536
	ds_load_u8 v114, v26 offset:3968
	ds_load_u8 v115, v26 offset:3712
	ds_load_u8 v116, v26 offset:3456
	ds_load_u8 v117, v26 offset:3200
	ds_load_u8 v191, v26 offset:15616
	ds_load_u8 v192, v26 offset:15360
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[143:146], v110 offset:1024
	ds_load_b128 v[126:129], v110
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v148, v26 offset:1920
	ds_load_u8 v149, v26 offset:1664
	ds_load_u8 v150, v26 offset:1408
	ds_load_u8 v151, v26 offset:1152
	ds_load_u8 v195, v26 offset:6016
	ds_load_u8 v196, v26 offset:5760
	ds_load_u8 v197, v26 offset:5504
	ds_load_u8 v198, v26 offset:5248
	ds_load_u8 v211, v26 offset:9088
	ds_load_u8 v212, v26 offset:8832
	ds_load_u8 v213, v26 offset:8576
	ds_load_u8 v214, v26 offset:8320
	v_dual_mov_b32 v137, s14 :: v_dual_mov_b32 v136, s13
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v28, v102, v28, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v103, v106, v103, 0xc0c0004
	v_perm_b32 v102, v105, v104, 0xc0c0004
	ds_load_u8 v104, v26 offset:256
	ds_load_u8 v105, v26
	ds_load_u8 v130, v26 offset:768
	ds_load_u8 v131, v26 offset:512
	ds_load_u8 v132, v26 offset:2944
	ds_load_u8 v133, v26 offset:2688
	ds_load_u8 v134, v26 offset:2432
	ds_load_u8 v147, v26 offset:2176
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v106, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v107, v111, v109, 0xc0c0004
	v_mov_b32_e32 v135, s12
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v108, v113, v112, 0xc0c0004
	v_lshl_or_b32 v170, v102, 16, v28
	v_lshl_or_b32 v169, v106, 16, v103
	ds_load_u8 v28, v26 offset:896
	ds_load_u8 v111, v26 offset:640
	ds_load_u8 v112, v26 offset:384
	ds_load_u8 v113, v26 offset:128
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	v_lshl_or_b32 v168, v108, 16, v107
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v224, v192, v191, 0xc0c0004
	ds_load_u8 v191, v26 offset:12544
	ds_load_u8 v192, v26 offset:12288
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v102, v105, v104, 0xc0c0004
	ds_load_u8 v104, v26 offset:7424
	ds_load_u8 v105, v26 offset:7168
	ds_load_u8 v106, v26 offset:7936
	ds_load_u8 v107, v26 offset:7680
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v103, v131, v130, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v115, v147, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v167, v103, 16, v102
	ds_load_u8 v102, v26 offset:6400
	ds_load_u8 v103, v26 offset:6144
	ds_load_u8 v108, v26 offset:6912
	ds_load_u8 v109, v26 offset:6656
	ds_load_u8 v130, v26 offset:5376
	ds_load_u8 v131, v26 offset:5120
	ds_load_u8 v152, v26 offset:5888
	ds_load_u8 v153, v26 offset:5632
	ds_load_u8 v154, v26 offset:8064
	ds_load_u8 v155, v26 offset:7808
	ds_load_u8 v156, v26 offset:7552
	ds_load_u8 v157, v26 offset:7296
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v28, v111, v28, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v234, v192, v191, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v160, v103, v102, 0xc0c0004
	v_perm_b32 v158, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v161, v109, v108, 0xc0c0004
	v_perm_b32 v159, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v104, v26 offset:4352
	ds_load_u8 v105, v26 offset:4096
	ds_load_u8 v106, v26 offset:4864
	ds_load_u8 v107, v26 offset:4608
	ds_load_u8 v163, v26 offset:7040
	ds_load_u8 v164, v26 offset:6784
	ds_load_u8 v165, v26 offset:6528
	ds_load_u8 v166, v26 offset:6272
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v131, v153, v152, 0xc0c0004
	ds_load_u8 v152, v26 offset:11520
	ds_load_u8 v153, v26 offset:11264
	ds_load_u8 v162, v26 offset:12032
	ds_load_u8 v175, v26 offset:11776
	ds_load_u8 v199, v26 offset:4992
	ds_load_u8 v200, v26 offset:4736
	ds_load_u8 v201, v26 offset:4480
	ds_load_u8 v202, v26 offset:4224
	v_lshl_or_b32 v174, v159, 16, v158
	v_lshl_or_b32 v173, v161, 16, v160
	v_lshl_or_b32 v191, v28, 16, v112
	v_lshl_or_b32 v172, v131, 16, v130
	ds_load_u8 v130, v26 offset:10496
	ds_load_u8 v131, v26 offset:10240
	ds_load_u8 v158, v26 offset:11008
	ds_load_u8 v159, v26 offset:10752
	ds_load_u8 v203, v26 offset:12160
	ds_load_u8 v204, v26 offset:11904
	ds_load_u8 v205, v26 offset:11648
	ds_load_u8 v206, v26 offset:11392
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v28, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v171, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	v_perm_b32 v176, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v153, v175, v162, 0xc0c0004
	ds_load_u8 v160, v26 offset:9472
	ds_load_u8 v161, v26 offset:9216
	ds_load_u8 v162, v26 offset:9984
	ds_load_u8 v183, v26 offset:9728
	ds_load_u8 v184, v26 offset:8448
	ds_load_u8 v187, v26 offset:8192
	ds_load_u8 v188, v26 offset:8960
	ds_load_u8 v189, v26 offset:8704
	ds_load_u8 v207, v26 offset:11136
	ds_load_u8 v208, v26 offset:10880
	ds_load_u8 v209, v26 offset:10624
	ds_load_u8 v210, v26 offset:10368
	v_perm_b32 v134, v166, v165, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	v_lshl_or_b32 v171, v176, 16, v171
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v131, v159, v158, 0xc0c0004
	v_lshl_or_b32 v186, v153, 16, v152
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[175:178], v27 offset:3072
	ds_load_b128 v[179:182], v27 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v147, v164, v163, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[102:109], v[167:170], v[126:129], v[135:142] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v153, v161, v160, 0xc0c0004
	v_lshl_or_b32 v185, v131, 16, v130
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v158, v183, v162, 0xc0c0004
	ds_load_u8 v27, v26 offset:10112
	ds_load_u8 v130, v26 offset:9856
	ds_load_u8 v131, v26 offset:9600
	ds_load_u8 v152, v26 offset:9344
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v159, v187, v184, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[102:109], v[171:174], v[122:125], v[102:109] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v160, v189, v188, 0xc0c0004
	v_lshl_or_b32 v184, v158, 16, v153
	ds_load_u8 v153, v26 offset:16128
	ds_load_u8 v158, v26 offset:15872
	v_lshl_or_b32 v183, v160, 16, v159
	ds_load_u8 v193, v26 offset:14592
	ds_load_u8 v194, v26 offset:14336
	ds_load_u8 v215, v26 offset:15104
	ds_load_u8 v216, v26 offset:14848
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[187:190], v110 offset:3072
	ds_load_b128 v[159:162], v110 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v110, v26 offset:13568
	ds_load_u8 v217, v26 offset:13312
	ds_load_u8 v218, v26 offset:14080
	ds_load_u8 v219, v26 offset:13824
	ds_load_u8 v220, v26 offset:16256
	ds_load_u8 v221, v26 offset:16000
	ds_load_u8 v222, v26 offset:15744
	ds_load_u8 v223, v26 offset:15488
	v_wmma_i32_16x16x16_iu8 v[102:109], v[183:186], v[118:121], v[102:109] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v27, v130, v27, 0xc0c0004
	v_perm_b32 v130, v214, v213, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v217, v217, v110, 0xc0c0004
	v_perm_b32 v228, v194, v193, 0xc0c0004
	v_perm_b32 v153, v158, v153, 0xc0c0004
	v_perm_b32 v215, v216, v215, 0xc0c0004
	ds_load_u8 v193, v26 offset:13056
	ds_load_u8 v194, v26 offset:12800
	ds_load_u8 v216, v26 offset:14208
	ds_load_u8 v229, v26 offset:13952
	ds_load_u8 v230, v26 offset:13696
	ds_load_u8 v231, v26 offset:13440
	ds_load_u8 v158, v26 offset:15232
	ds_load_u8 v225, v26 offset:14976
	ds_load_u8 v226, v26 offset:14720
	ds_load_u8 v227, v26 offset:14464
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v218, v219, v218, 0xc0c0004
	ds_load_u8 v219, v26 offset:13184
	ds_load_u8 v232, v26 offset:12928
	ds_load_u8 v233, v26 offset:12672
	ds_load_u8 v26, v26 offset:12416
	v_perm_b32 v110, v117, v116, 0xc0c0004
	v_perm_b32 v116, v133, v132, 0xc0c0004
	v_perm_b32 v117, v151, v150, 0xc0c0004
	v_perm_b32 v132, v149, v148, 0xc0c0004
	v_perm_b32 v148, v198, v197, 0xc0c0004
	v_perm_b32 v149, v196, v195, 0xc0c0004
	v_perm_b32 v150, v202, v201, 0xc0c0004
	v_perm_b32 v151, v200, v199, 0xc0c0004
	v_lshl_or_b32 v192, v132, 16, v117
	v_perm_b32 v132, v155, v154, 0xc0c0004
	v_lshl_or_b32 v197, v147, 16, v134
	v_lshl_or_b32 v196, v149, 16, v148
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v133, v194, v193, 0xc0c0004
	v_lshl_or_b32 v194, v114, 16, v110
	v_lshl_or_b32 v193, v116, 16, v115
	v_lshl_or_b32 v198, v132, 16, v28
	v_lshl_or_b32 v195, v151, 16, v150
	v_perm_b32 v28, v206, v205, 0xc0c0004
	v_lshl_or_b32 v205, v215, 16, v228
	v_wmma_i32_16x16x16_iu8 v[110:117], v[191:194], v[126:129], v[135:142] neg_lo:[1,1,0]
	v_perm_b32 v126, v204, v203, 0xc0c0004
	v_perm_b32 v127, v210, v209, 0xc0c0004
	v_perm_b32 v128, v208, v207, 0xc0c0004
	v_perm_b32 v129, v152, v131, 0xc0c0004
	v_perm_b32 v131, v212, v211, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[110:117], v[195:198], v[122:125], v[110:117] neg_lo:[1,1,0]
	v_lshl_or_b32 v202, v126, 16, v28
	v_lshl_or_b32 v201, v128, 16, v127
	v_lshl_or_b32 v200, v27, 16, v129
	v_lshl_or_b32 v199, v131, 16, v130
	v_lshl_or_b32 v204, v218, 16, v217
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v126, v227, v226, 0xc0c0004
	v_perm_b32 v127, v225, v158, 0xc0c0004
	v_perm_b32 v128, v231, v230, 0xc0c0004
	v_perm_b32 v129, v229, v216, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v26, v233, 0xc0c0004
	v_perm_b32 v130, v232, v219, 0xc0c0004
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[211:214], v21 offset:3072
	ds_load_b128 v[215:218], v21 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v206, v153, 16, v224
	v_lshl_or_b32 v203, v133, 16, v234
	v_wmma_i32_16x16x16_iu8 v[110:117], v[199:202], v[118:121], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[167:170], v[143:146], v[135:142] neg_lo:[1,1,0]
	v_lshl_or_b32 v209, v127, 16, v126
	v_lshl_or_b32 v208, v129, 16, v128
	v_lshl_or_b32 v207, v130, 16, v26
	v_wmma_i32_16x16x16_iu8 v[126:133], v[191:194], v[143:146], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[167:170], v[159:162], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[191:194], v[159:162], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[159:166], v[167:170], v[187:190], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[191:194], v[187:190], v[135:142] neg_lo:[1,1,0]
	v_perm_b32 v27, v223, v222, 0xc0c0004
	v_perm_b32 v28, v221, v220, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[118:125], v[171:174], v[17:20], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[195:198], v[17:20], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[171:174], v[179:182], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[195:198], v[179:182], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[159:166], v[171:174], v[175:178], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[195:198], v[175:178], v[135:142] neg_lo:[1,1,0]
	v_lshl_or_b32 v210, v28, 16, v27
	v_wmma_i32_16x16x16_iu8 v[118:125], v[183:186], v[13:16], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[199:202], v[13:16], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[183:186], v[9:12], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[199:202], v[9:12], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[159:166], v[183:186], v[5:8], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[199:202], v[5:8], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[203:206], v[22:25], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[207:210], v[22:25], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[203:206], v[1:4], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[207:210], v[1:4], v[126:133] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[143:150], v[203:206], v[215:218], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[207:210], v[215:218], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[159:166], v[203:206], v[211:214], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[207:210], v[211:214], v[135:142] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v102
	v_cvt_f32_i32_e32 v2, v103
	v_cvt_f32_i32_e32 v3, v104
	v_cvt_f32_i32_e32 v4, v105
	v_cvt_f32_i32_e32 v5, v106
	v_cvt_f32_i32_e32 v6, v107
	v_cvt_f32_i32_e32 v7, v108
	v_cvt_f32_i32_e32 v8, v109
	v_cvt_f32_i32_e32 v9, v110
	v_cvt_f32_i32_e32 v10, v111
	v_cvt_f32_i32_e32 v11, v112
	v_cvt_f32_i32_e32 v12, v113
	v_cvt_f32_i32_e32 v13, v114
	v_cvt_f32_i32_e32 v14, v115
	v_cvt_f32_i32_e32 v15, v116
	v_cvt_f32_i32_e32 v16, v117
	v_cvt_f32_i32_e32 v17, v118
	v_cvt_f32_i32_e32 v18, v119
	v_cvt_f32_i32_e32 v19, v120
	v_cvt_f32_i32_e32 v20, v121
	v_cvt_f32_i32_e32 v21, v122
	v_cvt_f32_i32_e32 v22, v123
	v_cvt_f32_i32_e32 v23, v124
	v_cvt_f32_i32_e32 v24, v125
	v_cvt_f32_i32_e32 v25, v126
	v_cvt_f32_i32_e32 v26, v127
	v_cvt_f32_i32_e32 v27, v128
	v_cvt_f32_i32_e32 v28, v129
	v_cvt_f32_i32_e32 v107, v130
	v_cvt_f32_i32_e32 v108, v131
	v_cvt_f32_i32_e32 v109, v132
	v_cvt_f32_i32_e32 v110, v133
	v_cvt_f32_i32_e32 v111, v143
	v_cvt_f32_i32_e32 v112, v144
	v_cvt_f32_i32_e32 v113, v145
	v_cvt_f32_i32_e32 v114, v146
	v_cvt_f32_i32_e32 v115, v147
	v_cvt_f32_i32_e32 v116, v148
	v_cvt_f32_i32_e32 v117, v149
	v_cvt_f32_i32_e32 v118, v150
	v_cvt_f32_i32_e32 v119, v151
	v_cvt_f32_i32_e32 v120, v152
	v_cvt_f32_i32_e32 v121, v153
	v_cvt_f32_i32_e32 v122, v154
	v_cvt_f32_i32_e32 v123, v155
	v_cvt_f32_i32_e32 v124, v156
	v_cvt_f32_i32_e32 v125, v157
	v_cvt_f32_i32_e32 v126, v158
	v_cvt_f32_i32_e32 v127, v159
	v_cvt_f32_i32_e32 v128, v160
	v_cvt_f32_i32_e32 v129, v161
	v_cvt_f32_i32_e32 v130, v162
	v_cvt_f32_i32_e32 v131, v163
	v_cvt_f32_i32_e32 v132, v164
	v_cvt_f32_i32_e32 v133, v165
	v_cvt_f32_i32_e32 v134, v166
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
.LBB0_11:
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v102, s30, v34
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v103, s31, v0
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_and_b32 s13, s5, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v1, v95, v1 :: v_dual_lshlrev_b32 v102, 1, v102
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s12, s4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v2, v101, v2 :: v_dual_lshlrev_b32 v103, 1, v103
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_or_b32_e32 v104, 32, v102
	v_or_b32_e32 v105, 64, v102
	v_or_b32_e32 v106, 0x60, v102
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v27, v75, v27 :: v_dual_add_f32 v28, v74, v28
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_clause 0x3
	buffer_load_u16 v102, v102, s[12:15], 0 offen
	buffer_load_u16 v104, v104, s[12:15], 0 offen
	buffer_load_u16 v105, v105, s[12:15], 0 offen
	buffer_load_u16 v106, v106, s[12:15], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s13, s7, 0xffff
	s_mov_b32 s12, s6
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v143, 5, v0
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v103, v103, s[12:15], 0 offen
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_and_b32_e32 v37, 28, v37
	v_lshl_add_u32 v144, v30, 2, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v95, v95, v1, s2
	v_cndmask_b32_e64 v28, v74, v28, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v3, v100, v3 :: v_dual_add_f32 v4, v99, v4
	v_dual_add_f32 v5, v98, v5 :: v_dual_add_f32 v6, v97, v6
	v_dual_add_f32 v7, v96, v7 :: v_dual_add_f32 v8, v94, v8
	v_dual_add_f32 v9, v93, v9 :: v_dual_add_f32 v10, v92, v10
	v_dual_add_f32 v11, v91, v11 :: v_dual_add_f32 v12, v90, v12
	v_dual_add_f32 v13, v89, v13 :: v_dual_add_f32 v14, v88, v14
	v_dual_add_f32 v15, v87, v15 :: v_dual_add_f32 v16, v86, v16
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v145, v30, 1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v101, v101, v2, s2
	v_cndmask_b32_e64 v100, v100, v3, s2
	v_cndmask_b32_e64 v99, v99, v4, s2
	v_cndmask_b32_e64 v98, v98, v5, s2
	v_cndmask_b32_e64 v97, v97, v6, s2
	v_cndmask_b32_e64 v96, v96, v7, s2
	v_cndmask_b32_e64 v94, v94, v8, s2
	v_cndmask_b32_e64 v93, v93, v9, s2
	v_cndmask_b32_e64 v92, v92, v10, s2
	v_cndmask_b32_e64 v91, v91, v11, s2
	v_cndmask_b32_e64 v90, v90, v12, s2
	v_cndmask_b32_e64 v89, v89, v13, s2
	v_cndmask_b32_e64 v88, v88, v14, s2
	v_cndmask_b32_e64 v87, v87, v15, s2
	v_cndmask_b32_e64 v86, v86, v16, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v129, v51, v129 :: v_dual_add_f32 v130, v50, v130
	v_dual_add_f32 v17, v85, v17 :: v_dual_add_f32 v18, v84, v18
	v_dual_add_f32 v19, v83, v19 :: v_dual_add_f32 v20, v82, v20
	v_dual_add_f32 v21, v81, v21 :: v_dual_add_f32 v22, v80, v22
	v_dual_add_f32 v23, v79, v23 :: v_dual_add_f32 v24, v78, v24
	v_dual_add_f32 v25, v77, v25 :: v_dual_add_f32 v26, v76, v26
	v_dual_add_f32 v107, v73, v107 :: v_dual_add_f32 v108, v72, v108
	v_dual_add_f32 v123, v57, v123 :: v_dual_add_f32 v124, v56, v124
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v27, v75, v27, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v109, v71, v109 :: v_dual_add_f32 v110, v70, v110
	v_dual_add_f32 v111, v69, v111 :: v_dual_add_f32 v112, v68, v112
	v_dual_add_f32 v113, v67, v113 :: v_dual_add_f32 v114, v66, v114
	v_dual_add_f32 v115, v65, v115 :: v_dual_add_f32 v116, v64, v116
	v_dual_add_f32 v117, v63, v117 :: v_dual_add_f32 v118, v62, v118
	v_dual_add_f32 v119, v61, v119 :: v_dual_add_f32 v120, v60, v120
	v_dual_add_f32 v121, v59, v121 :: v_dual_add_f32 v122, v58, v122
	v_dual_add_f32 v125, v55, v125 :: v_dual_add_f32 v126, v54, v126
	v_dual_add_f32 v127, v53, v127 :: v_dual_add_f32 v128, v52, v128
	v_dual_add_f32 v131, v49, v131 :: v_dual_add_f32 v132, v48, v132
	v_dual_add_f32 v133, v47, v133 :: v_dual_add_f32 v134, v46, v134
	v_dual_add_f32 v135, v45, v135 :: v_dual_add_f32 v136, v44, v136
	v_dual_add_f32 v137, v43, v137 :: v_dual_add_f32 v138, v42, v138
	v_dual_add_f32 v139, v41, v139 :: v_dual_add_f32 v140, v40, v140
	v_dual_add_f32 v141, v39, v141 :: v_dual_add_f32 v142, v38, v142
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v85, v17, s2
	v_cndmask_b32_e64 v18, v84, v18, s2
	v_cndmask_b32_e64 v19, v83, v19, s2
	v_cndmask_b32_e64 v20, v82, v20, s2
	v_cndmask_b32_e64 v21, v81, v21, s2
	v_cndmask_b32_e64 v22, v80, v22, s2
	v_cndmask_b32_e64 v23, v79, v23, s2
	v_cndmask_b32_e64 v24, v78, v24, s2
	v_cndmask_b32_e64 v25, v77, v25, s2
	v_cndmask_b32_e64 v26, v76, v26, s2
	v_cndmask_b32_e64 v73, v73, v107, s2
	v_cndmask_b32_e64 v56, v56, v124, s2
	v_cndmask_b32_e64 v72, v72, v108, s2
	v_cndmask_b32_e64 v71, v71, v109, s2
	v_cndmask_b32_e64 v70, v70, v110, s2
	v_cndmask_b32_e64 v69, v69, v111, s2
	v_cndmask_b32_e64 v68, v68, v112, s2
	v_cndmask_b32_e64 v67, v67, v113, s2
	v_cndmask_b32_e64 v66, v66, v114, s2
	v_cndmask_b32_e64 v65, v65, v115, s2
	v_cndmask_b32_e64 v64, v64, v116, s2
	v_cndmask_b32_e64 v63, v63, v117, s2
	v_cndmask_b32_e64 v62, v62, v118, s2
	v_cndmask_b32_e64 v61, v61, v119, s2
	v_cndmask_b32_e64 v60, v60, v120, s2
	v_cndmask_b32_e64 v59, v59, v121, s2
	v_cndmask_b32_e64 v58, v58, v122, s2
	v_cndmask_b32_e64 v57, v57, v123, s2
	v_cndmask_b32_e64 v55, v55, v125, s2
	v_cndmask_b32_e64 v54, v54, v126, s2
	v_cndmask_b32_e64 v53, v53, v127, s2
	v_cndmask_b32_e64 v52, v52, v128, s2
	v_cndmask_b32_e64 v50, v50, v130, s2
	v_cndmask_b32_e64 v49, v49, v131, s2
	v_cndmask_b32_e64 v48, v48, v132, s2
	v_cndmask_b32_e64 v47, v47, v133, s2
	v_cndmask_b32_e64 v46, v46, v134, s2
	v_cndmask_b32_e64 v45, v45, v135, s2
	v_cndmask_b32_e64 v44, v44, v136, s2
	v_cndmask_b32_e64 v43, v43, v137, s2
	v_cndmask_b32_e64 v41, v41, v139, s2
	v_cndmask_b32_e64 v40, v40, v140, s2
	v_cndmask_b32_e64 v39, v39, v141, s2
	v_cndmask_b32_e64 v38, v38, v142, s2
	v_cndmask_b32_e64 v42, v42, v138, s2
	s_mov_b32 s0, 0x76543210
.Ltmp16:
	.loc	1 85 46                         ; generate_amdgcn.py:85:46 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v34, 3, v34
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s13, s9, 0xffff
	s_mov_b32 s12, s8
.Ltmp17:
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v74, 16, v104
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_and_b32_e32 v1, 32, v143
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v103
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_add3_u32 v1, v144, v1, v37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v51, v129, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_store_b32 v1, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v145
	ds_load_b128 v[5:8], v145 offset:16
	ds_load_b128 v[9:12], v145 offset:512
	ds_load_b128 v[13:16], v145 offset:528
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v75, 16, v105
	v_lshlrev_b32_e32 v51, 16, v102
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp19:
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v124, v2, v75
	v_dual_mul_f32 v79, v3, v51 :: v_dual_lshlrev_b32 v76, 16, v106
	v_mul_f32_e32 v77, v1, v51
	v_mul_f32_e32 v78, v2, v51
	v_mul_f32_e32 v80, v4, v51
	v_dual_mul_f32 v81, v5, v51 :: v_dual_mul_f32 v114, v7, v74
	v_mul_f32_e32 v82, v6, v51
	v_dual_mul_f32 v83, v7, v51 :: v_dual_mul_f32 v108, v1, v74
	v_dual_mul_f32 v84, v8, v51 :: v_dual_mul_f32 v109, v2, v74
	v_dual_mul_f32 v85, v9, v51 :: v_dual_mul_f32 v118, v11, v74
	v_dual_mul_f32 v102, v10, v51 :: v_dual_mul_f32 v115, v8, v74
	v_dual_mul_f32 v103, v11, v51 :: v_dual_mul_f32 v112, v5, v74
	v_dual_mul_f32 v104, v12, v51 :: v_dual_mul_f32 v113, v6, v74
	v_dual_mul_f32 v105, v13, v51 :: v_dual_mul_f32 v122, v15, v74
	v_dual_mul_f32 v106, v14, v51 :: v_dual_mul_f32 v119, v12, v74
	v_dual_mul_f32 v107, v15, v51 :: v_dual_mul_f32 v116, v9, v74
	v_dual_mul_f32 v51, v16, v51 :: v_dual_mul_f32 v120, v13, v74
	v_mul_f32_e32 v110, v3, v74
	v_mul_f32_e32 v111, v4, v74
	v_dual_mul_f32 v117, v10, v74 :: v_dual_mul_f32 v126, v4, v75
	v_dual_mul_f32 v121, v14, v74 :: v_dual_mul_f32 v130, v8, v75
	v_dual_mul_f32 v74, v16, v74 :: v_dual_mul_f32 v123, v1, v75
	v_dual_mul_f32 v125, v3, v75 :: v_dual_mul_f32 v2, v2, v76
	v_dual_mul_f32 v127, v5, v75 :: v_dual_mul_f32 v4, v4, v76
	v_dual_mul_f32 v128, v6, v75 :: v_dual_mul_f32 v1, v1, v76
	v_dual_mul_f32 v129, v7, v75 :: v_dual_mul_f32 v6, v6, v76
	v_dual_mul_f32 v131, v9, v75 :: v_dual_mul_f32 v8, v8, v76
	v_dual_mul_f32 v132, v10, v75 :: v_dual_mul_f32 v3, v3, v76
	v_dual_mul_f32 v133, v11, v75 :: v_dual_mul_f32 v10, v10, v76
	v_dual_mul_f32 v134, v12, v75 :: v_dual_mul_f32 v5, v5, v76
	v_dual_mul_f32 v135, v13, v75 :: v_dual_mul_f32 v12, v12, v76
	v_dual_mul_f32 v136, v14, v75 :: v_dual_mul_f32 v7, v7, v76
	v_dual_mul_f32 v137, v15, v75 :: v_dual_mul_f32 v14, v14, v76
	v_mul_f32_e32 v75, v16, v75
	v_mul_f32_e32 v9, v9, v76
	v_mul_f32_e32 v11, v11, v76
	v_mul_f32_e32 v13, v13, v76
	v_mul_f32_e32 v15, v15, v76
	v_mul_f32_e32 v16, v16, v76
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v76, v95, v77 :: v_dual_mul_f32 v77, v101, v78
	v_dual_mul_f32 v78, v100, v79 :: v_dual_mul_f32 v79, v99, v80
	v_mul_f32_e32 v88, v88, v106
	v_dual_mul_f32 v80, v98, v81 :: v_dual_mul_f32 v81, v97, v82
	v_mul_f32_e32 v90, v90, v104
	v_dual_mul_f32 v82, v96, v83 :: v_dual_mul_f32 v83, v94, v84
	v_mul_f32_e32 v20, v20, v111
	v_dual_mul_f32 v84, v93, v85 :: v_dual_mul_f32 v85, v92, v102
	v_dual_mul_f32 v18, v18, v109 :: v_dual_mul_f32 v91, v91, v103
	v_mul_f32_e32 v22, v22, v113
	v_dual_mul_f32 v89, v89, v105 :: v_dual_mul_f32 v24, v24, v115
	v_dual_mul_f32 v87, v87, v107 :: v_dual_mul_f32 v26, v26, v117
	v_dual_mul_f32 v51, v86, v51 :: v_dual_mul_f32 v72, v72, v121
	v_dual_mul_f32 v17, v17, v108 :: v_dual_mul_f32 v28, v28, v119
	v_dual_mul_f32 v21, v21, v112 :: v_dual_mul_f32 v70, v70, v74
	v_dual_mul_f32 v23, v23, v114 :: v_dual_mul_f32 v64, v64, v128
	v_dual_mul_f32 v25, v25, v116 :: v_dual_mul_f32 v66, v66, v126
	v_dual_mul_f32 v27, v27, v118 :: v_dual_mul_f32 v60, v60, v132
	v_dual_mul_f32 v73, v73, v120 :: v_dual_mul_f32 v62, v62, v130
	v_dual_mul_f32 v69, v69, v123 :: v_dual_mul_f32 v58, v58, v134
	v_dual_mul_f32 v67, v67, v125 :: v_dual_mul_f32 v54, v54, v75
	v_dual_mul_f32 v65, v65, v127 :: v_dual_mul_f32 v2, v52, v2
	v_dual_mul_f32 v63, v63, v129 :: v_dual_mul_f32 v4, v50, v4
	v_dual_mul_f32 v59, v59, v133 :: v_dual_mul_f32 v8, v46, v8
	v_dual_mul_f32 v57, v57, v135 :: v_dual_mul_f32 v10, v44, v10
	v_dual_mul_f32 v55, v55, v137 :: v_dual_mul_f32 v12, v42, v12
	v_dual_mul_f32 v1, v53, v1 :: v_dual_mul_f32 v14, v40, v14
	v_dual_mul_f32 v3, v37, v3 :: v_dual_mul_f32 v16, v38, v16
	v_dual_mul_f32 v5, v49, v5 :: v_dual_max_f32 v40, 0, v79
	v_dual_mul_f32 v7, v47, v7 :: v_dual_max_f32 v38, 0, v77
	v_dual_mul_f32 v11, v43, v11 :: v_dual_max_f32 v44, 0, v81
	v_dual_mul_f32 v13, v41, v13 :: v_dual_max_f32 v74, 0, v90
	v_dual_mul_f32 v15, v39, v15 :: v_dual_max_f32 v52, 0, v85
	.loc	1 443 15 is_stmt 1              ; generate_amdgcn.py:443:15
	v_max_f32_e32 v37, 0, v76
	v_dual_max_f32 v39, 0, v78 :: v_dual_max_f32 v76, 0, v88
	v_dual_max_f32 v41, 0, v80 :: v_dual_max_f32 v18, 0, v18
	v_dual_max_f32 v53, 0, v91 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v75, 0, v89 :: v_dual_max_f32 v26, 0, v26
	v_dual_max_f32 v77, 0, v87 :: v_dual_max_f32 v28, 0, v28
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v19, v19, v110 :: v_dual_mul_f32 v68, v68, v124
	v_dual_mul_f32 v71, v71, v122 :: v_dual_mul_f32 v56, v56, v136
	v_dual_mul_f32 v61, v61, v131 :: v_dual_mul_f32 v6, v48, v6
	v_dual_mul_f32 v9, v45, v9 :: v_dual_max_f32 v48, 0, v83
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v45, 0, v82 :: v_dual_max_f32 v20, 0, v20
	v_dual_max_f32 v49, 0, v84 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v78, 0, v51 :: v_dual_max_f32 v21, 0, v21
	v_dual_max_f32 v86, 0, v68 :: v_dual_max_f32 v23, 0, v23
	v_dual_max_f32 v88, 0, v66 :: v_dual_max_f32 v25, 0, v25
	v_dual_max_f32 v90, 0, v64 :: v_dual_max_f32 v27, 0, v27
	v_dual_max_f32 v62, 0, v62 :: v_dual_max_f32 v79, 0, v73
	v_dual_max_f32 v94, 0, v59 :: v_dual_max_f32 v85, 0, v69
	v_max_f32_e32 v98, 0, v55
	v_dual_max_f32 v87, 0, v67 :: v_dual_max_f32 v96, 0, v57
	v_dual_max_f32 v89, 0, v65 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v91, 0, v63 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v95, 0, v58 :: v_dual_max_f32 v8, 0, v8
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v102, 0, v15
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v100, 0, v13
	v_dual_max_f32 v5, 0, v5 :: v_dual_mul_f32 v80, v38, v38
	v_dual_max_f32 v7, 0, v7 :: v_dual_mul_f32 v46, v41, v41
	v_dual_max_f32 v103, 0, v16 :: v_dual_mul_f32 v58, v53, v53
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v81, v37, v37 :: v_dual_mul_f32 v64, v76, v76
	v_dual_mul_f32 v43, v40, v40 :: v_dual_mul_f32 v68, v78, v78
	v_mul_f32_e32 v47, v44, v44
	v_mul_f32_e32 v55, v52, v52
	v_dual_mul_f32 v59, v74, v74 :: v_dual_mul_f32 v76, v20, v20
	v_dual_mul_f32 v63, v75, v75 :: v_dual_mul_f32 v74, v24, v24
	v_dual_mul_f32 v67, v77, v77 :: v_dual_mul_f32 v66, v28, v28
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v82, 0, v72
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v84, 0, v70
	v_dual_max_f32 v83, 0, v71 :: v_dual_max_f32 v92, 0, v61
	v_dual_max_f32 v99, 0, v54 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v9, 0, v9 :: v_dual_mul_f32 v42, v39, v39
	v_dual_max_f32 v11, 0, v11 :: v_dual_mul_f32 v50, v45, v45
	v_dual_max_f32 v101, 0, v14 :: v_dual_mul_f32 v54, v49, v49
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v51, v48, v48 :: v_dual_mul_f32 v78, v21, v21
	v_mul_f32_e32 v72, v18, v18
	v_dual_mul_f32 v77, v22, v22 :: v_dual_mul_f32 v52, v85, v85
	v_dual_mul_f32 v73, v23, v23 :: v_dual_mul_f32 v44, v89, v89
	v_mul_f32_e32 v70, v26, v26
	v_dual_mul_f32 v45, v90, v90 :: v_dual_mul_f32 v22, v3, v3
	v_dual_mul_f32 v41, v62, v62 :: v_dual_mul_f32 v20, v4, v4
	v_mul_f32_e32 v23, v1, v1
	v_mul_f32_e32 v21, v2, v2
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v81, v80
	v_max3_f32 v2, v43, v46, v47
	v_max3_f32 v3, v55, v58, v59
	v_max3_f32 v4, v63, v64, v67
.Ltmp21:
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v93, 0, v60 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v97, 0, v56 :: v_dual_max_f32 v10, 0, v10
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v71, v17, v17 :: v_dual_mul_f32 v60, v79, v79
	v_dual_mul_f32 v75, v19, v19 :: v_dual_mul_f32 v56, v84, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v65, v27, v27 :: v_dual_mul_f32 v38, v93, v93
	v_dual_mul_f32 v61, v82, v82 :: v_dual_mul_f32 v40, v91, v91
	v_dual_mul_f32 v57, v83, v83 :: v_dual_mul_f32 v28, v94, v94
	v_mul_f32_e32 v19, v5, v5
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v5, v50, v51, v54
	v_max3_f32 v1, v1, v42, v2
	v_max3_f32 v2, v3, v4, v68
.Ltmp23:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v69, v25, v25 :: v_dual_mul_f32 v48, v87, v87
	v_dual_mul_f32 v53, v86, v86 :: v_dual_mul_f32 v26, v97, v97
	v_dual_mul_f32 v49, v88, v88 :: v_dual_mul_f32 v24, v98, v98
	v_dual_mul_f32 v37, v95, v95 :: v_dual_mul_f32 v16, v9, v9
	v_dual_mul_f32 v27, v96, v96 :: v_dual_mul_f32 v14, v7, v7
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v3, v71, v72
	v_max3_f32 v4, v76, v78, v77
	v_max3_f32 v7, v70, v65, v66
	v_max3_f32 v1, v1, v5, v2
.Ltmp25:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v13, v11, v11
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v11, v60, v61, v57
.Ltmp27:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v39, v92, v92 :: v_dual_mul_f32 v18, v6, v6
	v_mul_f32_e32 v25, v99, v99
	v_dual_mul_f32 v17, v10, v10 :: v_dual_mul_f32 v10, v101, v101
	v_mul_f32_e32 v15, v8, v8
	v_mul_f32_e32 v8, v12, v12
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v6, v73, v74, v69
	v_max_f32_e32 v12, v52, v53
	v_max3_f32 v62, v49, v44, v45
	v_max3_f32 v79, v38, v28, v37
	v_max3_f32 v82, v27, v26, v24
	v_max3_f32 v3, v3, v75, v4
	v_max3_f32 v4, v7, v11, v56
.Ltmp29:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v9, v100, v100
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v7, v40, v41, v39
	v_max3_f32 v62, v12, v48, v62
	v_max3_f32 v79, v79, v82, v25
.Ltmp31:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v11, v102, v102
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v2, v3, v6, v4
.Ltmp33:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v12, v103, v103
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v4, v23, v21
	v_max3_f32 v3, v62, v7, v79
	v_max3_f32 v7, v17, v13, v8
	v_max3_f32 v62, v9, v10, v11
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v79, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v6, v14, v15, v16
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v82, v3, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v7, v7, v62, v12
	v_max_f32_e32 v62, v79, v79
	v_max3_f32 v5, v20, v19, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v79, v82, v82
	v_max_f32_e32 v83, v2, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max3_f32 v4, v4, v22, v5
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v5, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v84, v3, v79
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v2, 4, v0
	v_lshl_add_u32 v3, v36, 9, 0
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v85, v4, v6, v7
	v_dual_max_f32 v5, v5, v5 :: v_dual_lshlrev_b32 v4, 5, v36
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v7, 0x60, v0
	v_and_b32_e32 v36, 8, v0
	v_lshl_add_u32 v3, v2, 2, v3
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v82, v1, v5
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v1, v85, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v5, 0x80, v0
	v_and_or_b32 v32, 0x680, v32, v4
	v_xor_b32_e32 v62, v4, v7
	v_lshl_add_u32 v3, v36, 4, v3
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v6, 1, v5
	v_lshrrev_b32_e32 v79, 3, v5
	v_xor_b32_e32 v32, v32, v7
	v_lshl_add_u32 v86, v2, 6, 0
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v85, v85, v1
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v1, v3, v6, v62
	v_lshlrev_b32_e32 v36, 3, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v3, v86, v79, v32
	ds_store_b128 v1, v[82:85]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[82:85], v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v1, v82 :: v_dual_mov_b32 v32, v84
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v62, v82, v82
	v_dual_max_f32 v82, v85, v85 :: v_dual_max_f32 v79, v83, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v32, v32 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v85, v85 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v32, v32, v32
	v_dual_max_f32 v1, v62, v1 :: v_dual_max_f32 v62, v84, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v3, v83 :: v_dual_max_f32 v32, v62, v32
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v3, v79, v3
	v_max_f32_e32 v79, v85, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v62, v82, v79 :: v_dual_mov_b32 v79, v32
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v82, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v79, v79, v79 :: v_dual_max_f32 v82, v82, v82
	v_max_f32_e32 v32, v32, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v62, v62, v82
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v84, v3 :: v_dual_mov_b32 v79, v32
	v_add_nc_u32_e32 v5, 0, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v85, v62
	v_mov_b32_dpp v84, v84 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v85, v85 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v84, v84, v84
	v_max_f32_e32 v3, v3, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v84, v3 :: v_dual_mov_b32 v83, v1
	v_mov_b32_dpp v84, v84 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v83, v83 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v83, v83, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v83
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v83, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v83, v83 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v82, v83, v83 :: v_dual_max_f32 v83, v84, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v82, v1, v82 :: v_dual_max_f32 v1, v79, v79
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v79, 1, v7
.Ltmp64:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v7, v29, v7
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v84, v32, v1 :: v_dual_lshlrev_b32 v29, 6, v0
	v_max_f32_e32 v83, v3, v83
	v_max_f32_e32 v3, v85, v85
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v1, 5, v2
	v_add_nc_u32_e32 v2, 0, v35
.Ltmp67:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v4, 0x1b00, v29, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v85, v62, v3
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v3, v5, v79, v36
	v_add3_u32 v1, v2, v1, v36
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp70:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xad_u32 v4, v4, v30, 0
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	ds_store_b128 v3, v[82:85]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[82:85], v1
.Ltmp72:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_dual_max_f32 v1, v82, v82 :: v_dual_max_f32 v32, v84, v84
	v_dual_max_f32 v82, v83, v83 :: v_dual_max_f32 v83, v85, v85
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v85.h, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_dual_max_f32 v1, 0x2b8cbccc, v1 :: v_dual_max_f32 v32, 0x2b8cbccc, v32
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v88.h, v85.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v2, null, 0x40e00000, 0x40e00000, v1
	v_div_scale_f32 v36, null, 0x40e00000, 0x40e00000, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v3, v2
	v_rcp_f32_e32 v79, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v5, -v2, v3, 1.0
	v_fmac_f32_e32 v3, v5, v3
	v_div_scale_f32 v5, vcc_lo, v1, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v35, v5, v3
	v_fma_f32 v62, -v2, v35, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v35, v62, v3 :: v_dual_max_f32 v62, 0x2b8cbccc, v82
	v_max_f32_e32 v82, 0x2b8cbccc, v83
	v_fma_f32 v2, -v2, v35, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v5, -v36, v79, 1.0
	v_div_scale_f32 v83, null, 0x40e00000, 0x40e00000, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v2, v2, v3, v35
	v_fmac_f32_e32 v79, v5, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v5, v83
	v_div_scale_f32 v35, null, 0x40e00000, 0x40e00000, v82
	v_div_scale_f32 v3, vcc_lo, v32, 0x40e00000, v32
	v_div_fixup_f32 v1, v2, 0x40e00000, v1
	v_rcp_f32_e32 v84, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v2, v3, v79
	v_fma_f32 v86, -v83, v5, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v88.l, v1.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v87, -v36, v2, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v5, v86, v5
	v_div_scale_f32 v86, s0, v62, 0x40e00000, v62
	v_fma_f32 v89, -v35, v84, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v2, v87, v79 :: v_dual_and_b32 v87, 1, v88
	v_mul_f32_e32 v88, v86, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v89, v84
	v_div_scale_f32 v89, s1, v82, 0x40e00000, v82
	v_fma_f32 v36, -v36, v2, v3
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v3, v1, v87, 0x7fff
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v1, -v83, v88, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v87, v89, v84
	v_div_fmas_f32 v2, v36, v79, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v90, 0xffff0000, v3
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v88, v1, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v1, -v35, v87, v89
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v2, v2, 0x40e00000, v32
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v36, null, v90, v90, v81
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v32, -v83, v88, v86
	v_fmac_f32_e32 v87, v1, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v85.l, v2.h
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v83, v36
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v79.h, v85.h
	.loc	1 76 14 is_stmt 0               ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v1, v32, v5, v88
	v_fma_f32 v5, -v35, v87, v89
	s_mov_b32 vcc_lo, s1
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v89, null, v90, v90, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v32, v1, 0x40e00000, v62
	v_div_fmas_f32 v1, v5, v84, v87
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v87, null, v90, v90, v42
	v_div_scale_f32 v84, null, v90, v90, v80
	v_fma_f32 v35, -v36, v83, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v88, v87
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v62, v1, 0x40e00000, v82
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v82, v84
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v79.l, v32.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v83, v35, v83
	v_div_scale_f32 v35, vcc_lo, v81, v90, v81
	v_div_scale_f32 v91, s0, v80, v90, v80
	v_div_scale_f32 v95, null, v90, v90, v46
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v87, v88, 1.0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v5, 1, v85
	v_mov_b16_e32 v85.l, v62.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v86, v35, v83
	v_div_scale_f32 v96, null, v90, v90, v47
	v_fmac_f32_e32 v88, v93, v88
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v1, v2, v5, 0x7fff
	v_and_b32_e32 v2, 1, v79
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v79, -v84, v82, 1.0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v85, 1, v85
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v93, s1, v42, v90, v42
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v5, v32, v2, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v32, -v36, v86, v35
	v_fmac_f32_e32 v82, v79, v82
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v2, v62, v85, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v85, v89
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v62, 0xffff0000, v1
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v86, v32, v83
	v_mul_f32_e32 v92, v91, v82
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v32, 0xffff0000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v35, -v36, v86, v35
	v_fma_f32 v36, -v84, v92, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v94, -v89, v85, 1.0
	v_div_fmas_f32 v35, v35, v83, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v92, v36, v82 :: v_dual_mul_f32 v83, v93, v88
	v_fmac_f32_e32 v85, v94, v85
	v_rcp_f32_e32 v86, v95
	v_div_scale_f32 v94, s2, v43, v90, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v36, -v84, v92, v91
	v_rcp_f32_e32 v91, v96
	v_div_fixup_f32 v35, v35, v90, v81
	v_fma_f32 v81, -v87, v83, v93
	v_mul_f32_e32 v84, v94, v85
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v97, -v95, v86, 1.0
	v_div_fmas_f32 v36, v36, v82, v92
	v_fmac_f32_e32 v83, v81, v88
	v_fma_f32 v81, -v89, v84, v94
	v_fma_f32 v92, -v96, v91, 1.0
	v_fmac_f32_e32 v86, v97, v86
	v_div_scale_f32 v82, s0, v46, v90, v46
	v_div_fixup_f32 v36, v36, v90, v80
	v_fma_f32 v80, -v87, v83, v93
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v84, v81, v85 :: v_dual_mul_f32 v81, v82, v86
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, null, v90, v90, v50
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v87, s3, v47, v90, v47
	v_div_fmas_f32 v80, v80, v88, v83
	v_fma_f32 v83, -v89, v84, v94
	v_rcp_f32_e32 v89, v92
	v_div_scale_f32 v94, null, v90, v90, v51
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v88, -v95, v81, v82
	v_mul_f32_e32 v93, v87, v91
	v_div_fmas_f32 v83, v83, v85, v84
	v_rcp_f32_e32 v84, v94
	v_div_fixup_f32 v42, v80, v90, v42
	v_fmac_f32_e32 v81, v88, v86
	v_fma_f32 v85, -v96, v93, v87
	v_fma_f32 v88, -v92, v89, 1.0
	v_div_fixup_f32 v43, v83, v90, v43
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v80, -v95, v81, v82
	v_fmac_f32_e32 v93, v85, v91
	v_fmac_f32_e32 v89, v88, v89
	v_div_scale_f32 v82, s1, v50, v90, v50
	v_fma_f32 v83, -v94, v84, 1.0
	v_div_scale_f32 v85, null, v90, v90, v54
	v_div_fmas_f32 v80, v80, v86, v81
	v_fma_f32 v81, -v96, v93, v87
	v_mul_f32_e32 v86, v82, v89
	v_fmac_f32_e32 v84, v83, v84
	v_rcp_f32_e32 v83, v85
	v_div_scale_f32 v88, null, v90, v90, v55
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v87, s0, v51, v90, v51
	v_div_fmas_f32 v81, v81, v91, v93
	v_fma_f32 v91, -v92, v86, v82
	v_rcp_f32_e32 v96, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v93, v87, v84
	v_fma_f32 v95, -v85, v83, 1.0
	v_div_fixup_f32 v46, v80, v90, v46
	v_fmac_f32_e32 v86, v91, v89
	v_div_scale_f32 v91, null, v90, v90, v58
	v_div_fixup_f32 v47, v81, v90, v47
	v_fma_f32 v80, -v94, v93, v87
	v_fmac_f32_e32 v83, v95, v83
	v_div_scale_f32 v81, s2, v54, v90, v54
	v_fma_f32 v95, -v88, v96, 1.0
	v_fma_f32 v82, -v92, v86, v82
	v_rcp_f32_e32 v92, v91
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v79, 0xffff0000, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v93, v80, v84 :: v_dual_mul_f32 v80, v81, v83
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s3, v55, v90, v55
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v97, null, v90, v90, v59
	v_div_fmas_f32 v82, v82, v89, v86
	v_fma_f32 v86, -v94, v93, v87
	v_fma_f32 v87, -v85, v80, v81
	v_mul_f32_e32 v89, v95, v96
	v_fma_f32 v94, -v91, v92, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v50, v82, v90, v50
	v_div_fmas_f32 v84, v86, v84, v93
	v_fmac_f32_e32 v80, v87, v83
	v_rcp_f32_e32 v86, v97
	v_fma_f32 v87, -v88, v89, v95
	v_fmac_f32_e32 v92, v94, v92
	v_div_scale_f32 v93, s0, v58, v90, v58
	v_fma_f32 v81, -v85, v80, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v89, v87, v96
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v82, v93, v92
	v_div_fixup_f32 v51, v84, v90, v51
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v84, -v97, v86, 1.0
	v_div_scale_f32 v85, null, v90, v90, v63
	v_div_fmas_f32 v80, v81, v83, v80
	v_fma_f32 v81, -v88, v89, v95
	v_fma_f32 v83, -v91, v82, v93
	v_div_scale_f32 v88, null, v90, v90, v64
	v_fmac_f32_e32 v86, v84, v86
	v_rcp_f32_e32 v84, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v83, v92
	v_rcp_f32_e32 v83, v88
	v_div_scale_f32 v87, s1, v59, v90, v59
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v54, v80, v90, v54
	v_div_fmas_f32 v81, v81, v96, v89
	v_mul_f32_e32 v89, v87, v86
	v_fma_f32 v80, -v91, v82, v93
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v94, -v85, v84, 1.0
	v_div_scale_f32 v91, s2, v63, v90, v63
	v_fma_f32 v93, -v88, v83, 1.0
	v_div_fixup_f32 v55, v81, v90, v55
	v_fma_f32 v81, -v97, v89, v87
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v94, null, v90, v90, v67
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v93, null, v90, v90, v68
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v89, v81, v86
	v_div_fmas_f32 v80, v80, v92, v82
	v_mul_f32_e32 v81, v91, v84
	v_rcp_f32_e32 v82, v94
	v_div_scale_f32 v92, s0, v64, v90, v64
	v_rcp_f32_e32 v96, v93
	v_div_fixup_f32 v58, v80, v90, v58
	v_fma_f32 v80, -v97, v89, v87
	v_fma_f32 v87, -v85, v81, v91
	v_mul_f32_e32 v95, v92, v83
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v94, v82, 1.0
	v_div_fmas_f32 v80, v80, v86, v89
	v_fmac_f32_e32 v81, v87, v84
	v_fma_f32 v86, -v88, v95, v92
	v_fma_f32 v89, -v93, v96, 1.0
	v_fmac_f32_e32 v82, v97, v82
	v_div_scale_f32 v87, s1, v67, v90, v67
	v_div_fixup_f32 v59, v80, v90, v59
	v_fma_f32 v80, -v85, v81, v91
	v_dual_fmac_f32 v95, v86, v83 :: v_dual_fmac_f32 v96, v89, v96
	v_div_scale_f32 v89, null, v79, v79, v71
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v85, v87, v82
	v_div_scale_f32 v86, s3, v68, v90, v68
	v_div_fmas_f32 v80, v80, v84, v81
	v_fma_f32 v81, -v88, v95, v92
	v_rcp_f32_e32 v88, v89
	v_div_scale_f32 v92, null, v79, v79, v72
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v84, -v94, v85, v87
	v_mul_f32_e32 v91, v86, v96
	v_div_fmas_f32 v81, v81, v83, v95
	v_rcp_f32_e32 v83, v92
	v_div_fixup_f32 v63, v80, v90, v63
	v_fmac_f32_e32 v85, v84, v82
	v_fma_f32 v84, -v93, v91, v86
	v_fma_f32 v95, -v89, v88, 1.0
	v_div_fixup_f32 v64, v81, v90, v64
	v_div_scale_f32 v81, s0, v71, v79, v71
	v_fma_f32 v80, -v94, v85, v87
	v_fmac_f32_e32 v91, v84, v96
	v_fmac_f32_e32 v88, v95, v88
	v_fma_f32 v84, -v92, v83, 1.0
	v_div_scale_f32 v87, null, v79, v79, v75
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v80, v80, v82, v85
	v_fma_f32 v82, -v93, v91, v86
	v_mul_f32_e32 v85, v81, v88
	v_fmac_f32_e32 v83, v84, v83
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v93, null, v79, v79, v76
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v86, s1, v72, v79, v72
	v_div_fmas_f32 v82, v82, v96, v91
	v_fma_f32 v91, -v89, v85, v81
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v94, v86, v83
	v_fma_f32 v95, -v87, v84, 1.0
	v_div_fixup_f32 v67, v80, v90, v67
	v_div_fixup_f32 v68, v82, v90, v68
	v_fmac_f32_e32 v85, v91, v88
	v_div_scale_f32 v90, null, v79, v79, v78
	v_fma_f32 v80, -v92, v94, v86
	v_fmac_f32_e32 v84, v95, v84
	v_div_scale_f32 v82, s2, v75, v79, v75
	v_fma_f32 v91, -v93, v96, 1.0
	v_fma_f32 v81, -v89, v85, v81
	v_rcp_f32_e32 v89, v90
	v_fmac_f32_e32 v94, v80, v83
	v_mul_f32_e32 v80, v82, v84
	v_fmac_f32_e32 v96, v91, v96
	v_div_scale_f32 v91, s3, v76, v79, v76
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v95, null, v79, v79, v77
	v_div_fmas_f32 v81, v81, v88, v85
	v_fma_f32 v85, -v92, v94, v86
	v_fma_f32 v86, -v87, v80, v82
	v_mul_f32_e32 v88, v91, v96
	v_fma_f32 v92, -v90, v89, 1.0
	v_div_fixup_f32 v71, v81, v79, v71
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v80, v86, v84
	v_fma_f32 v86, -v93, v88, v91
	v_fmac_f32_e32 v89, v92, v89
	v_div_scale_f32 v92, s0, v78, v79, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v87, v80, v82
	v_fmac_f32_e32 v88, v86, v96
	v_div_fmas_f32 v83, v85, v83, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v82, v92, v89
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v85, v95
	v_div_fmas_f32 v80, v81, v84, v80
	v_fma_f32 v81, -v93, v88, v91
	v_fma_f32 v84, -v90, v82, v92
	v_div_scale_f32 v91, null, v79, v79, v74
	v_div_fixup_f32 v72, v83, v79, v72
	v_div_scale_f32 v86, null, v79, v79, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v84, v89
	v_rcp_f32_e32 v84, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v83, -v95, v85, 1.0
	v_div_fixup_f32 v75, v80, v79, v75
	v_div_scale_f32 v87, s1, v77, v79, v77
	v_fma_f32 v80, -v90, v82, v92
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v90, s2, v73, v79, v73
	v_div_fmas_f32 v81, v81, v96, v88
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v91, v84, 1.0
	v_fmac_f32_e32 v85, v83, v85
	v_rcp_f32_e32 v83, v86
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v76, v81, v79, v76
	v_fmac_f32_e32 v84, v92, v84
	v_mul_f32_e32 v88, v87, v85
	v_div_fmas_f32 v80, v80, v89, v82
	v_div_scale_f32 v92, null, v79, v79, v70
	v_div_scale_f32 v89, s0, v74, v79, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v93, -v86, v83, 1.0
	v_fma_f32 v81, -v95, v88, v87
	v_div_fixup_f32 v78, v80, v79, v78
	v_mul_f32_e32 v94, v89, v84
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v93, null, v79, v79, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v88, v81, v85 :: v_dual_mul_f32 v81, v90, v83
	v_rcp_f32_e32 v82, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v95, v88, v87
	v_rcp_f32_e32 v95, v92
	v_fma_f32 v87, -v86, v81, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v80, v80, v85, v88
	v_fma_f32 v85, -v91, v94, v89
	v_fmac_f32_e32 v81, v87, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v96, -v93, v82, 1.0
	v_div_scale_f32 v87, s1, v69, v79, v69
	v_fma_f32 v88, -v92, v95, 1.0
	v_div_fixup_f32 v77, v80, v79, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v96, v82
	v_fma_f32 v80, -v86, v81, v90
	v_dual_fmac_f32 v94, v85, v84 :: v_dual_fmac_f32 v95, v88, v95
	v_div_scale_f32 v88, null, v79, v79, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v85, v87, v82
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v86, s3, v70, v79, v70
	v_div_fmas_f32 v80, v80, v83, v81
	v_fma_f32 v81, -v91, v94, v89
	v_fma_f32 v83, -v93, v85, v87
	v_rcp_f32_e32 v89, v88
	v_div_scale_f32 v91, null, v79, v79, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v90, v86, v95 :: v_dual_fmac_f32 v85, v83, v82
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v83, v91
	v_div_fmas_f32 v81, v81, v84, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v84, -v92, v90, v86
	v_div_fixup_f32 v73, v80, v79, v73
	v_fma_f32 v94, -v88, v89, 1.0
	v_fma_f32 v80, -v93, v85, v87
	v_div_fixup_f32 v74, v81, v79, v74
	v_fmac_f32_e32 v90, v84, v95
	v_div_scale_f32 v81, s0, v65, v79, v65
	v_fmac_f32_e32 v89, v94, v89
	v_fma_f32 v84, -v91, v83, 1.0
	v_div_scale_f32 v87, null, v79, v79, v60
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v96, null, v79, v79, v56
	v_div_fmas_f32 v80, v80, v82, v85
	v_fma_f32 v82, -v92, v90, v86
	v_mul_f32_e32 v85, v81, v89
	v_fmac_f32_e32 v83, v84, v83
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v86, s1, v66, v79, v66
	v_div_scale_f32 v92, null, v79, v79, v61
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v93, v86, v83
	v_div_fmas_f32 v82, v82, v95, v90
	v_fma_f32 v90, -v88, v85, v81
	v_rcp_f32_e32 v95, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v87, v84, 1.0
	v_div_fixup_f32 v69, v80, v79, v69
	v_fma_f32 v80, -v91, v93, v86
	v_fmac_f32_e32 v85, v90, v89
	v_div_fixup_f32 v70, v82, v79, v70
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v82, s2, v60, v79, v60
	v_div_scale_f32 v90, null, v79, v79, v57
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v92, v95, 1.0
	v_fma_f32 v81, -v88, v85, v81
	v_fmac_f32_e32 v93, v80, v83
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v80, v82, v84
	v_rcp_f32_e32 v88, v90
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s3, v61, v79, v61
	v_div_fmas_f32 v81, v81, v89, v85
	v_fma_f32 v85, -v91, v93, v86
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v86, -v87, v80, v82
	v_mul_f32_e32 v89, v94, v95
	v_div_fixup_f32 v65, v81, v79, v65
	v_div_fmas_f32 v83, v85, v83, v93
	v_rcp_f32_e32 v85, v96
	v_fma_f32 v91, -v90, v88, 1.0
	v_fmac_f32_e32 v80, v86, v84
	v_fma_f32 v86, -v92, v89, v94
	v_div_fixup_f32 v66, v83, v79, v66
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v88, v91, v88
	v_div_scale_f32 v91, s0, v57, v79, v57
	v_fmac_f32_e32 v89, v86, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v96, v85, 1.0
	v_div_scale_f32 v86, null, v62, v62, v52
	v_fma_f32 v81, -v87, v80, v82
	v_mul_f32_e32 v82, v91, v88
	v_fmac_f32_e32 v85, v83, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v87, s1, v56, v79, v56
	v_div_fmas_f32 v80, v81, v84, v80
	v_fma_f32 v81, -v92, v89, v94
	v_fma_f32 v84, -v90, v82, v91
	v_div_scale_f32 v92, null, v62, v62, v53
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v60, v80, v79, v60
	v_fmac_f32_e32 v82, v84, v88
	v_rcp_f32_e32 v84, v92
	v_fma_f32 v93, -v86, v83, 1.0
	v_div_fmas_f32 v81, v81, v95, v89
	v_mul_f32_e32 v89, v87, v85
	v_fma_f32 v80, -v90, v82, v91
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v93, null, v62, v62, v48
	v_div_fixup_f32 v61, v81, v79, v61
	v_fma_f32 v81, -v96, v89, v87
	v_div_scale_f32 v90, s2, v52, v62, v52
	v_fma_f32 v91, -v92, v84, 1.0
	v_div_fmas_f32 v80, v80, v88, v82
	v_rcp_f32_e32 v82, v93
	v_fmac_f32_e32 v89, v81, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v81, v90, v83 :: v_dual_fmac_f32 v84, v91, v84
	v_div_scale_f32 v88, s0, v53, v62, v53
	v_div_scale_f32 v91, null, v62, v62, v49
	v_div_fixup_f32 v57, v80, v79, v57
	v_fma_f32 v80, -v96, v89, v87
	v_fma_f32 v87, -v86, v81, v90
	v_mul_f32_e32 v94, v88, v84
	v_rcp_f32_e32 v95, v91
	v_fma_f32 v96, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v81, v87, v83
	v_div_fmas_f32 v80, v80, v85, v89
	v_fma_f32 v85, -v92, v94, v88
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v87, s1, v48, v62, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v56, v80, v79, v56
	v_fma_f32 v89, -v91, v95, 1.0
	v_fma_f32 v79, -v86, v81, v90
	v_fmac_f32_e32 v94, v85, v84
	v_mul_f32_e32 v80, v87, v82
	v_div_scale_f32 v86, null, v62, v62, v44
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v95, v89, v95
	v_div_scale_f32 v85, s3, v49, v62, v49
	v_div_fmas_f32 v79, v79, v83, v81
	v_fma_f32 v81, -v92, v94, v88
	v_fma_f32 v83, -v93, v80, v87
	v_rcp_f32_e32 v88, v86
	v_div_scale_f32 v90, null, v62, v62, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v89, v85, v95 :: v_dual_fmac_f32 v80, v83, v82
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v83, v90
	v_div_fmas_f32 v81, v81, v84, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v84, -v91, v89, v85
	v_div_fixup_f32 v52, v79, v62, v52
	v_fma_f32 v92, -v86, v88, 1.0
	v_fma_f32 v79, -v93, v80, v87
	v_div_fixup_f32 v53, v81, v62, v53
	v_fmac_f32_e32 v89, v84, v95
	v_div_scale_f32 v81, s0, v44, v62, v44
	v_fmac_f32_e32 v88, v92, v88
	v_fma_f32 v84, -v90, v83, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v87, null, v62, v62, v40
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v91, v89, v85
	v_dual_mul_f32 v82, v81, v88 :: v_dual_fmac_f32 v83, v84, v83
	v_div_scale_f32 v85, s1, v45, v62, v45
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v48, v79, v62, v48
	v_div_fmas_f32 v80, v80, v95, v89
	v_fma_f32 v89, -v86, v82, v81
	v_mul_f32_e32 v92, v85, v83
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v91, null, v62, v62, v41
	v_fmac_f32_e32 v82, v89, v88
	v_fma_f32 v79, -v90, v92, v85
	v_div_scale_f32 v95, null, v62, v62, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v94, v91
	v_fma_f32 v81, -v86, v82, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v92, v79, v83
	v_fma_f32 v93, -v87, v84, 1.0
	v_div_scale_f32 v89, null, v62, v62, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v81, v81, v88, v82
	v_fma_f32 v82, -v90, v92, v85
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v49, v80, v62, v49
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v80, s2, v40, v62, v40
	v_div_fmas_f32 v82, v82, v83, v92
	v_rcp_f32_e32 v83, v95
	v_fma_f32 v93, -v91, v94, 1.0
	v_rcp_f32_e32 v86, v89
	v_div_fixup_f32 v44, v81, v62, v44
	v_div_fixup_f32 v45, v82, v62, v45
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v94, v93, v94
	v_div_scale_f32 v93, s3, v41, v62, v41
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v82, -v95, v83, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v57, v57
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v88, v93, v94
	v_fma_f32 v90, -v89, v86, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v45, v45
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v83, v82, v83
	v_mul_f32_e32 v79, v80, v84
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v65, v65
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v90, s0, v39, v62, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v87, v79, v80
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v52, v52
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v81, v90, v86
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v53, v53
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v79, v85, v84
	v_fma_f32 v85, -v91, v88, v93
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v44, v44
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v80, -v87, v79, v80
	v_fmac_f32_e32 v88, v85, v94
	v_div_scale_f32 v85, null, v62, v62, v28
	v_div_scale_f32 v87, s1, v38, v62, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v79, v80, v84, v79
	v_fma_f32 v80, -v91, v88, v93
	v_fma_f32 v84, -v89, v81, v90
	v_div_scale_f32 v91, null, v62, v62, v37
	v_rcp_f32_e32 v82, v85
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v81, v84, v86
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v80, v80, v94, v88
	v_mul_f32_e32 v88, v87, v83
	v_div_fixup_f32 v40, v79, v62, v40
	v_fma_f32 v79, -v89, v81, v90
	v_div_scale_f32 v89, s2, v28, v62, v28
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v92, -v85, v82, 1.0
	v_div_fixup_f32 v41, v80, v62, v41
	v_fma_f32 v80, -v95, v88, v87
	v_fma_f32 v90, -v91, v84, 1.0
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v82, v92, v82
	v_div_fmas_f32 v79, v79, v86, v81
	v_fmac_f32_e32 v88, v80, v83
	v_fmac_f32_e32 v84, v90, v84
	v_div_scale_f32 v90, null, v62, v62, v26
	v_mul_f32_e32 v80, v89, v82
	v_div_scale_f32 v86, s0, v37, v62, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v94, v90
	v_div_fixup_f32 v39, v79, v62, v39
	v_fma_f32 v79, -v95, v88, v87
	v_fma_f32 v87, -v85, v80, v89
	v_mul_f32_e32 v93, v86, v84
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v92, null, v62, v62, v27
	v_div_fmas_f32 v79, v79, v83, v88
	v_fmac_f32_e32 v80, v87, v82
	v_fma_f32 v83, -v91, v93, v86
	v_fma_f32 v88, -v90, v94, 1.0
	v_rcp_f32_e32 v81, v92
	v_div_fixup_f32 v38, v79, v62, v38
	v_fma_f32 v79, -v85, v80, v89
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v93, v83, v84 :: v_dual_fmac_f32 v94, v88, v94
	v_div_scale_f32 v88, null, v62, v62, v24
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v87, s1, v27, v62, v27
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v91, v93, v86
	v_rcp_f32_e32 v86, v88
	v_fma_f32 v95, -v92, v81, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v85, s3, v26, v62, v26
	v_div_fmas_f32 v80, v80, v84, v93
	v_div_scale_f32 v91, null, v62, v62, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v89, v85, v94
	v_div_fixup_f32 v28, v79, v62, v28
	v_fma_f32 v93, -v88, v86, 1.0
	v_fmac_f32_e32 v81, v95, v81
	v_div_fixup_f32 v37, v80, v62, v37
	v_fma_f32 v84, -v90, v89, v85
	v_div_scale_f32 v80, s0, v24, v62, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v93, v86 :: v_dual_mul_f32 v83, v87, v81
	v_fmac_f32_e32 v89, v84, v94
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v28, v28
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v82, -v92, v83, v87
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v56, v56
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v83, v82, v81
	v_rcp_f32_e32 v82, v91
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v60, v60
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v79, -v92, v83, v87
	v_div_scale_f32 v92, null, v32, v32, v21
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v41, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v79, v79, v81, v83
	v_fma_f32 v84, -v91, v82, 1.0
	v_fma_f32 v81, -v90, v89, v85
	v_mul_f32_e32 v83, v80, v86
	v_div_scale_f32 v85, s1, v25, v62, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v82, v84, v82
	v_div_scale_f32 v84, null, v32, v32, v23
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v27, v79, v62, v27
	v_div_fmas_f32 v81, v81, v94, v89
	v_rcp_f32_e32 v87, v84
	v_fma_f32 v89, -v88, v83, v80
	v_mul_f32_e32 v90, v85, v82
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v26, v81, v62, v26
	v_rcp_f32_e32 v81, v92
	v_fmac_f32_e32 v83, v89, v86
	v_fma_f32 v79, -v91, v90, v85
	v_div_scale_f32 v94, null, v32, v32, v20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v84, v87, 1.0
	v_fma_f32 v80, -v88, v83, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v90, v79, v82
	v_div_scale_f32 v79, s2, v23, v32, v23
	v_fmac_f32_e32 v87, v89, v87
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v92, v81, 1.0
	v_div_fmas_f32 v80, v80, v86, v83
	v_fma_f32 v83, -v91, v90, v85
	v_div_scale_f32 v86, s0, v21, v32, v21
	v_mul_f32_e32 v85, v79, v87
	v_fmac_f32_e32 v81, v93, v81
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v24, v80, v62, v24
	v_div_fmas_f32 v82, v83, v82, v90
	v_fma_f32 v93, -v84, v85, v79
	v_mul_f32_e32 v95, v86, v81
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v88, null, v32, v32, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v93, v87
	v_fma_f32 v83, -v92, v95, v86
	v_div_fixup_f32 v25, v82, v62, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v89, v88
	v_rcp_f32_e32 v96, v94
	v_fma_f32 v62, -v84, v85, v79
	v_fmac_f32_e32 v95, v83, v81
	v_div_scale_f32 v82, null, v32, v32, v19
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v62, v62, v87, v85
	v_div_scale_f32 v85, null, v32, v32, v18
	v_fma_f32 v83, -v92, v95, v86
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v91, -v88, v89, 1.0
	v_rcp_f32_e32 v87, v85
	v_fma_f32 v80, -v94, v96, 1.0
	v_div_fmas_f32 v81, v83, v81, v95
	v_div_fixup_f32 v23, v62, v32, v23
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v24, v24
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v96, v80, v96
	v_div_fixup_f32 v21, v81, v32, v21
	v_div_scale_f32 v80, s1, v20, v32, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v85, v87, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v84, v80, v96
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v25, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v87, v81, v87
	v_fmac_f32_e32 v89, v91, v89
	v_div_scale_f32 v91, s3, v22, v32, v22
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v81, s2, v18, v32, v18
	v_mul_f32_e32 v90, v91, v89
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v79, -v88, v90, v91
	v_fmac_f32_e32 v90, v79, v89
	v_rcp_f32_e32 v79, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v83, -v88, v90, v91
	v_fma_f32 v88, -v94, v84, v80
	v_div_fmas_f32 v83, v83, v89, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v86, -v82, v79, 1.0
	v_fmac_f32_e32 v84, v88, v96
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v83, v32, v22
	v_fmac_f32_e32 v79, v86, v79
	v_div_scale_f32 v86, s0, v19, v32, v19
	v_fma_f32 v80, -v94, v84, v80
	v_div_scale_f32 v83, null, v32, v32, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v62, v86, v79
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v22, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v80, v80, v96, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v89, v83
	v_mul_f32_e32 v84, v81, v87
	v_fma_f32 v88, -v82, v62, v86
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v20, v80, v32, v20
	v_fmac_f32_e32 v62, v88, v79
	v_div_scale_f32 v88, null, v32, v32, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v20, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v80, -v82, v62, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v90, v88
	v_fma_f32 v82, -v85, v84, v81
	v_fma_f32 v86, -v83, v89, 1.0
	v_div_fmas_f32 v62, v80, v79, v62
	v_div_scale_f32 v80, s0, v14, v32, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v82, v87
	v_fmac_f32_e32 v89, v86, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v19, v62, v32, v19
	v_fma_f32 v62, -v88, v90, 1.0
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v81, -v85, v84, v81
	v_mul_f32_e32 v85, v80, v89
	v_div_scale_f32 v79, null, v32, v32, v16
	v_fmac_f32_e32 v90, v62, v90
	v_div_scale_f32 v62, s1, v15, v32, v15
	v_div_fmas_f32 v81, v81, v87, v84
	v_fma_f32 v84, -v83, v85, v80
	v_rcp_f32_e32 v82, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v87, v62, v90
	v_div_scale_f32 v86, null, v32, v32, v17
	v_fmac_f32_e32 v85, v84, v89
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v84, -v88, v87, v62
	v_rcp_f32_e32 v92, v86
	v_div_scale_f32 v93, s2, v16, v32, v16
	v_fma_f32 v80, -v83, v85, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v87, v84, v90
	v_fma_f32 v91, -v79, v82, 1.0
	v_div_fixup_f32 v18, v81, v32, v18
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v19, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v80, v80, v89, v85
	v_fma_f32 v62, -v88, v87, v62
	v_div_scale_f32 v85, null, v32, v32, v8
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v91, null, v32, v32, v13
	v_div_fmas_f32 v62, v62, v90, v87
	v_rcp_f32_e32 v87, v85
	v_fma_f32 v94, -v86, v92, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v95, v91
	v_mul_f32_e32 v96, v93, v82
	v_div_fixup_f32 v14, v80, v32, v14
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v92, v94, v92
	v_div_scale_f32 v94, s3, v17, v32, v17
	v_fma_f32 v81, -v79, v96, v93
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v80, -v85, v87, 1.0
	v_div_fixup_f32 v15, v62, v32, v15
	v_fma_f32 v84, -v91, v95, 1.0
	v_div_scale_f32 v89, null, v32, v32, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v87, v80, v87
	v_dual_mul_f32 v83, v94, v92 :: v_dual_fmac_f32 v96, v81, v82
	v_fmac_f32_e32 v95, v84, v95
	v_div_scale_f32 v84, s0, v13, v32, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v86, v83, v94
	v_fma_f32 v79, -v79, v96, v93
	v_div_scale_f32 v80, null, v32, v32, v10
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v83, v81, v92
	v_mul_f32_e32 v81, v84, v95
	v_div_fmas_f32 v79, v79, v82, v96
	s_mov_b32 vcc_lo, s3
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v82, -v86, v83, v94
	v_fma_f32 v86, -v91, v81, v84
	v_div_fixup_f32 v16, v79, v32, v16
	v_div_scale_f32 v79, null, v32, v32, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v82, v82, v92, v83
	v_fmac_f32_e32 v81, v86, v95
	s_mov_b32 vcc_lo, s0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v18, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v17, v82, v32, v17
	v_fma_f32 v62, -v91, v81, v84
	v_rcp_f32_e32 v84, v80
	v_div_scale_f32 v82, null, v32, v32, v11
	v_rcp_f32_e32 v91, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v62, v62, v95, v81
	v_rcp_f32_e32 v81, v79
	v_div_scale_f32 v83, vcc_lo, v8, v32, v8
	v_rcp_f32_e32 v86, v82
	v_div_fixup_f32 v13, v62, v32, v13
	v_fma_f32 v90, -v80, v84, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_mul_f32_e32 v88, v83, v87
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v95, -v89, v91, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v62, -v79, v81, 1.0
	v_fma_f32 v92, -v85, v88, v83
	v_fmac_f32_e32 v84, v90, v84
	v_div_scale_f32 v90, s1, v10, v32, v10
	v_fmac_f32_e32 v81, v62, v81
	v_div_scale_f32 v62, s0, v9, v32, v9
	v_fmac_f32_e32 v88, v92, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v96, v90, v84
	v_fma_f32 v93, -v82, v86, 1.0
	v_mul_f32_e32 v94, v62, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v85, v88, v83
	v_fma_f32 v85, -v80, v96, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v93, v86
	v_fma_f32 v92, -v79, v94, v62
	v_div_scale_f32 v93, s2, v11, v32, v11
	v_div_fmas_f32 v83, v83, v87, v88
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v94, v92, v81
	s_mov_b32 s0, 0xc1000000
	v_fmac_f32_e32 v96, v85, v84
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v74, v74, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v62, -v79, v94, v62
	v_mul_f32_e32 v97, v93, v86
	v_fma_f32 v80, -v80, v96, v90
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v74, v74
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, s3, v12, v32, v12
	v_div_fmas_f32 v62, v62, v81, v94
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v92, -v82, v97, v93
	v_div_fmas_f32 v80, v80, v84, v96
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v84, v38
	v_and_b32_e32 v38, 15, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_mul_f32 v98, v95, v91 :: v_dual_fmac_f32 v97, v92, v86
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v8, v83, v32, v8
	v_div_fixup_f32 v9, v62, v32, v9
	v_fma_f32 v79, -v89, v98, v95
	v_div_fixup_f32 v10, v80, v32, v10
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v57, v57, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v8, v8
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v28, v28, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v98, v79, v91
	v_fma_f32 v79, -v82, v97, v93
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v62, v64
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v8, v8, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v64, v68
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v81, -v89, v98, v95
	v_div_fmas_f32 v79, v79, v86, v97
	s_mov_b32 vcc_lo, s3
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v68, v72
	v_rndne_f32_e32 v72, v76
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v81, v81, v91, v98
	v_div_fixup_f32 v11, v79, v32, v11
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v28, v28
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v12, v81, v32, v12
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v32, v35
	v_rndne_f32_e32 v35, v36
	v_rndne_f32_e32 v36, v42
	v_rndne_f32_e32 v42, v43
	v_rndne_f32_e32 v43, v46
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v32, v32, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v46, v47
	v_rndne_f32_e32 v47, v50
	v_rndne_f32_e32 v50, v51
	v_rndne_f32_e32 v51, v54
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v32, v32
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v54, v55
	v_rndne_f32_e32 v55, v58
	v_rndne_f32_e32 v58, v59
	v_rndne_f32_e32 v59, v63
	v_rndne_f32_e32 v63, v67
	v_rndne_f32_e32 v67, v71
	v_rndne_f32_e32 v71, v75
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v101, v8
	v_and_b32_e32 v8, 15, v32
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v32, 16, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v75, v78
	v_rndne_f32_e32 v76, v77
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v12, v12
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v72, v72, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_cvt_i32_f32_e32 v80, v45
	v_and_b32_e32 v45, 15, v57
	v_and_b32_e32 v57, 15, v28
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v28, 10, v31
	v_lshlrev_b32_e32 v31, 6, v32
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v73, v73, s0, 0x40e00000
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v75, v75, s0, 0x40e00000
	v_med3_f32 v76, v76, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v77, v48
	v_cvt_i32_f32_e32 v78, v49
	v_cvt_i32_f32_e32 v79, v44
	v_cvt_i32_f32_e32 v90, v23
	v_cvt_i32_f32_e32 v91, v21
	v_cvt_i32_f32_e32 v92, v22
	v_cvt_i32_f32_e32 v93, v20
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v28, 0, v28, v31
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v83, v39
	v_cvt_i32_f32_e32 v85, v37
	v_cvt_i32_f32_e32 v98, v16
	v_cvt_i32_f32_e32 v99, v17
	v_cvt_i32_f32_e32 v100, v13
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v82, v41
	v_cvt_i32_f32_e32 v86, v27
	v_cvt_i32_f32_e32 v87, v26
	v_cvt_i32_f32_e32 v88, v24
	v_cvt_i32_f32_e32 v89, v25
	v_cvt_i32_f32_e32 v96, v14
	v_cvt_i32_f32_e32 v97, v15
	v_cvt_i32_f32_e32 v102, v9
	v_cvt_i32_f32_e32 v103, v10
	v_cvt_i32_f32_e32 v104, v11
	v_cvt_i32_f32_e32 v105, v12
	v_and_b32_e32 v9, 15, v35
	v_and_b32_e32 v10, 15, v36
	v_and_b32_e32 v11, 15, v42
	v_and_b32_e32 v12, 15, v43
	v_and_b32_e32 v13, 15, v46
	v_and_b32_e32 v14, 15, v47
	v_and_b32_e32 v15, 15, v50
	v_and_b32_e32 v16, 15, v51
	v_and_b32_e32 v22, 15, v63
	v_and_b32_e32 v23, 15, v64
	v_and_b32_e32 v24, 15, v67
	v_and_b32_e32 v25, 15, v68
	v_and_b32_e32 v26, 15, v71
	v_and_b32_e32 v27, 15, v72
	v_and_b32_e32 v41, 15, v65
	v_and_b32_e32 v42, 15, v66
	v_and_b32_e32 v47, 15, v52
	v_and_b32_e32 v48, 15, v53
	v_and_b32_e32 v49, 15, v77
	v_and_b32_e32 v50, 15, v78
	v_and_b32_e32 v51, 15, v79
	v_and_b32_e32 v63, 15, v90
	v_and_b32_e32 v64, 15, v91
	v_and_b32_e32 v65, 15, v92
	v_and_b32_e32 v66, 15, v93
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v79, v28, v7, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v81, v40
	v_cvt_i32_f32_e32 v94, v19
	v_cvt_i32_f32_e32 v95, v18
	v_and_b32_e32 v17, 15, v54
	v_and_b32_e32 v18, 15, v55
	v_and_b32_e32 v19, 15, v58
	v_and_b32_e32 v20, 15, v59
	v_and_b32_e32 v21, 15, v62
	v_and_b32_e32 v37, 15, v73
	v_and_b32_e32 v39, 15, v69
	v_and_b32_e32 v40, 15, v70
	v_and_b32_e32 v46, 15, v56
	v_and_b32_e32 v55, 15, v83
	v_and_b32_e32 v56, 15, v84
	v_and_b32_e32 v58, 15, v85
	v_and_b32_e32 v71, 15, v98
	v_and_b32_e32 v72, 15, v99
	v_and_b32_e32 v73, 15, v100
	v_and_b32_e32 v74, 15, v101
	v_and_b32_e32 v35, 15, v75
	v_and_b32_e32 v36, 15, v76
	v_and_b32_e32 v43, 15, v60
	v_and_b32_e32 v44, 15, v61
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v79, v[8:11]
	ds_store_b128 v79, v[16:19] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v4
	ds_load_b128 v[16:19], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v79, v[24:27]
	ds_store_b128 v79, v[39:42] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[24:27], v4
	ds_load_b128 v[28:31], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v79, v[47:50]
	ds_store_b128 v79, v[55:58] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[39:42], v4
	ds_load_b128 v[47:50], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v79, v[63:66]
	ds_store_b128 v79, v[71:74] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[55:58], v4
	ds_load_b128 v[63:66], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v79, v[12:15]
	ds_store_b128 v79, v[20:23] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v4
	ds_load_b128 v[20:23], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v79, v[35:38]
	ds_store_b128 v79, v[43:46] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[35:38], v4
	ds_load_b128 v[43:46], v4 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v52, 15, v80
	v_and_b32_e32 v53, 15, v81
	v_and_b32_e32 v54, 15, v82
	v_and_b32_e32 v59, 15, v86
	v_and_b32_e32 v60, 15, v87
	v_and_b32_e32 v61, 15, v88
	v_and_b32_e32 v62, 15, v89
	v_and_b32_e32 v67, 15, v94
	v_and_b32_e32 v68, 15, v95
	v_and_b32_e32 v69, 15, v96
	v_and_b32_e32 v70, 15, v97
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v79, v[51:54]
	ds_store_b128 v79, v[59:62] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[51:54], v4
	ds_load_b128 v[59:62], v4 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v75, 15, v102
	v_and_b32_e32 v76, 15, v103
	v_and_b32_e32 v77, 15, v104
	v_and_b32_e32 v78, 15, v105
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v79, v[67:70]
	ds_store_b128 v79, v[75:78] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[67:70], v4
	ds_load_b128 v[71:74], v4 offset:1024
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s29, 31
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v4, v16, 4, v6
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v6, v17, 4, v7
	v_lshl_or_b32 v7, v18, 4, v8
	v_lshl_or_b32 v8, v19, 4, v9
	v_lshl_or_b32 v9, v20, 4, v10
	v_lshl_or_b32 v10, v21, 4, v11
	v_lshl_or_b32 v11, v22, 4, v12
	v_lshl_or_b32 v12, v23, 4, v13
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v20, v46, 4, v38
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v38, s0, v33
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s28, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s30, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v13, v28, 4, v24
	v_lshl_or_b32 v14, v29, 4, v25
	v_lshl_or_b32 v15, v30, 4, v26
	v_lshl_or_b32 v16, v31, 4, v27
	v_lshl_or_b32 v17, v43, 4, v35
	v_lshl_or_b32 v18, v44, 4, v36
	v_lshl_or_b32 v19, v45, 4, v37
	v_lshl_or_b32 v22, v48, 4, v40
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v40, s2, s1, v34
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v8.l
	v_and_b16 v2.l, 0xff, v7.l
	v_lshlrev_b16 v3.l, 8, v6.l
	v_and_b16 v4.l, 0xff, v4.l
	v_lshlrev_b16 v4.h, 8, v12.l
	v_and_b16 v5.l, 0xff, v11.l
	v_lshlrev_b16 v6.l, 8, v10.l
	v_and_b16 v6.h, 0xff, v9.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v21, v47, 4, v39
	v_lshl_or_b32 v24, v50, 4, v42
	v_lshl_or_b32 v27, v61, 4, v53
	v_lshl_or_b32 v28, v62, 4, v54
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v42, v40, v38
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.h, v5.l, v4.h
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v1.l, 8, v16.l
	v_and_b16 v2.l, 0xff, v15.l
	v_lshlrev_b16 v3.l, 8, v14.l
	v_and_b16 v4.l, 0xff, v13.l
	v_lshlrev_b16 v4.h, 8, v20.l
	v_and_b16 v5.l, 0xff, v19.l
	v_lshlrev_b16 v6.l, 8, v18.l
	v_and_b16 v6.h, 0xff, v17.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s0, 4
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v23, v49, 4, v41
	v_lshl_or_b32 v25, v59, 4, v51
	v_lshl_or_b32 v26, v60, 4, v52
	v_lshl_or_b32 v29, v63, 4, v55
	v_lshl_or_b32 v30, v64, 4, v56
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v39, v73, 4, v69
	v_lshl_or_b32 v41, v74, 4, v70
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v43, v38, s1, v40
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[7:8], v42, s[12:15], 0 offen
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.h, v5.l, v4.h
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v3.l, 8, v22.l
	v_and_b16 v4.l, 0xff, v21.l
	v_lshlrev_b16 v4.h, 8, v28.l
	v_and_b16 v5.l, 0xff, v27.l
	v_lshlrev_b16 v1.l, 8, v24.l
	v_and_b16 v2.l, 0xff, v23.l
	v_lshlrev_b16 v6.l, 8, v26.l
	v_and_b16 v6.h, 0xff, v25.l
	buffer_store_b64 v[7:8], v43, s[12:15], 0 offen
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.h, v5.l, v4.h
	v_lshlrev_b16 v3.l, 8, v30.l
	v_and_b16 v4.l, 0xff, v29.l
	v_lshlrev_b16 v4.h, 8, v41.l
	v_and_b16 v5.l, 0xff, v39.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s2, s0, 5
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v31, v65, 4, v57
	v_lshl_or_b32 v35, v66, 4, v58
	v_lshl_or_b32 v36, v71, 4, v67
	v_lshl_or_b32 v37, v72, 4, v68
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v44, v38, s2, v40
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v8.l, v6.h, v6.l
	v_or_b16 v9.l, v4.l, v3.l
	v_or_b16 v10.h, v5.l, v4.h
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v4, 2, v32
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v35.l
	v_and_b16 v2.l, 0xff, v31.l
	v_lshlrev_b16 v6.l, 8, v37.l
	v_and_b16 v6.h, 0xff, v36.l
	buffer_store_b64 v[7:8], v44, s[12:15], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v7, 2, v33
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s0, s0, 48
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v9.h, v2.l, v1.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v38, v38, s0, v40
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s29, 31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v10.l, v6.h, v6.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v6, 0, v34
	v_mov_b16_e32 v2.l, v5.h
	v_mov_b16_e32 v1.l, v3.h
	v_add3_u32 v4, v4, v7, v34
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v3, v0, 63, s30
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[9:10], v38, s[12:15], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v6, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v4
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v2, v3, s0
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
.Ltmp73:
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp74:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 242
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 37
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 23356
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
	.quad	.Ltmp73-.Lfunc_begin0
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
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
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
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     39
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
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
