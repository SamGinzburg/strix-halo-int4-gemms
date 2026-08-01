	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	v_and_b32_e32 v151, 15, v0
	v_lshrrev_b32_e32 v150, 4, v0
	v_and_b32_e32 v153, 3, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_lshlrev_b32_e32 v154, 4, v0
	v_or_b32_e32 v143, 0x3f0, v0
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v149, 4, v151
	v_or_b32_e32 v144, 0x7f0, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v152, 4, v153
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v42, 0, v154
	v_or_b32_e32 v145, 0xbf0, v0
	v_or_b32_e32 v146, 0xff0, v0
	s_mov_b32 s17, 0
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
	v_mad_u64_u32 v[137:138], null, s29, v150, v[149:150]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s9, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[138:139], null, s29, 48, v[137:138]
	v_lshl_add_u32 v141, s29, 4, v137
	v_lshl_add_u32 v142, s29, 5, v137
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
	s_load_b128 s[4:7], s[0:1], 0x0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s12, s11
	s_abs_i32 s8, s2
	s_cvt_f32_u32 s13, s12
	s_xor_b32 s9, s2, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s9, s9, 31
	v_rcp_iflag_f32_e32 v1, s13
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s13, v1
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v1, 2, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s7, 0, s12
	s_mul_f32 s13, s13, 0x4f7ffffe
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v1, s28, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s6, s13
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s6, s8, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s27, s7
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_i32 s13, s6, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s13
	s_add_i32 s13, s6, 1
	s_sub_i32 s14, s8, s12
	s_cmp_ge_u32 s8, s12
	s_cselect_b32 s13, s13, s6
	s_cselect_b32 s6, s14, s8
	s_add_i32 s8, s13, 1
	s_cmp_ge_u32 s6, s12
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s8, s8, s13
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s18, s18, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s8, s8, s9
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s35, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s30, s8, s9
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s26, s6
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s8, s30, s11
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s33, s30, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s8
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s8, s28, s35
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s31, s2, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s2, s29, s35
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v139, v1, v152, s31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s18, 63
	s_cselect_b32 s3, -1, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s9, s33, s2
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v1, s8, v139
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s18, 0x7f
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s9, v137
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s11, s29, 6
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_lshl_b32 s10, s28, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s9, v141
	v_add_nc_u32_e32 v4, s9, v142
	v_add_nc_u32_e32 v5, s9, v138
	s_add_i32 s9, s9, s11
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 402 30 is_stmt 0              ; generate_amdgcn.py:402:30
	v_add3_u32 v6, s8, s10, v139
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v22, s9, v137
	v_add_nc_u32_e32 v23, s9, v141
	v_add_nc_u32_e32 v24, s9, v142
	v_add_nc_u32_e32 v25, s9, v138
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v7, 0x80000000, v2, s3
	v_cndmask_b32_e64 v10, 0x80000000, v3, s3
	v_cndmask_b32_e64 v14, 0x80000000, v4, s3
	v_cndmask_b32_e64 v18, 0x80000000, v5, s3
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	buffer_load_b128 v[2:5], v1, s[4:7], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v6, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v26, 0x80000000, v22, s2
	v_cndmask_b32_e64 v30, 0x80000000, v23, s2
	v_cndmask_b32_e64 v34, 0x80000000, v24, s2
	v_cndmask_b32_e64 v38, 0x80000000, v25, s2
	s_clause 0x3
	buffer_load_b128 v[6:9], v7, s[24:27], 0 offen
	buffer_load_b128 v[10:13], v10, s[24:27], 0 offen
	buffer_load_b128 v[14:17], v14, s[24:27], 0 offen
	buffer_load_b128 v[18:21], v18, s[24:27], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[22:25], v1, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[26:29], v26, s[24:27], 0 offen
	buffer_load_b128 v[30:33], v30, s[24:27], 0 offen
	buffer_load_b128 v[34:37], v34, s[24:27], 0 offen
	buffer_load_b128 v[38:41], v38, s[24:27], 0 offen
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s18, 0xbf
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(9)
	ds_store_b128 v42, v[2:5] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v42, v[6:9]
	s_waitcnt vmcnt(7)
	ds_store_b128 v42, v[10:13] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v42, v[14:17] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v42, v[18:21] offset:12288
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v42, v[22:25] offset:36864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v42, v[26:29] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v42, v[30:33] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v42, v[34:37] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v42, v[38:41] offset:28672
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v125, 0x3f0, v0
	v_or_b32_e32 v126, 0x7f0, v0
	v_or_b32_e32 v127, 0xbf0, v0
	v_or_b32_e32 v128, 0xff0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v140, 0x70, v1
	s_load_b256 s[8:15], s[0:1], 0x10
	s_mov_b32 s16, 0
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_mov_b32_e32 v65, 0
	s_add_i32 s34, 0, 0x8000
	s_add_i32 s1, 0, 0x9000
	s_add_i32 s0, 0, 0x4000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v68, v65
	v_mov_b32_e32 v66, v65
	v_mov_b32_e32 v67, v65
	v_mov_b32_e32 v155, v65
	v_mov_b32_e32 v156, v65
	v_mov_b32_e32 v72, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v76, v68 :: v_dual_mov_b32 v75, v67
	v_dual_mov_b32 v84, v68 :: v_dual_mov_b32 v83, v67
	v_dual_mov_b32 v112, v68 :: v_dual_mov_b32 v111, v67
	v_dual_mov_b32 v104, v68 :: v_dual_mov_b32 v103, v67
	v_dual_mov_b32 v108, v68 :: v_dual_mov_b32 v107, v67
	v_dual_mov_b32 v96, v68 :: v_dual_mov_b32 v95, v67
	v_dual_mov_b32 v100, v68 :: v_dual_mov_b32 v99, v67
	v_dual_mov_b32 v92, v68 :: v_dual_mov_b32 v91, v67
	v_dual_mov_b32 v88, v68 :: v_dual_mov_b32 v87, v67
	v_dual_mov_b32 v80, v68 :: v_dual_mov_b32 v79, v67
	v_dual_mov_b32 v71, v67 :: v_dual_mov_b32 v70, v66
	v_dual_mov_b32 v69, v65 :: v_dual_mov_b32 v74, v66
	v_dual_mov_b32 v73, v65 :: v_dual_mov_b32 v82, v66
	v_dual_mov_b32 v81, v65 :: v_dual_mov_b32 v110, v66
	v_dual_mov_b32 v109, v65 :: v_dual_mov_b32 v102, v66
	v_dual_mov_b32 v101, v65 :: v_dual_mov_b32 v106, v66
	v_dual_mov_b32 v105, v65 :: v_dual_mov_b32 v94, v66
	v_dual_mov_b32 v93, v65 :: v_dual_mov_b32 v98, v66
	v_dual_mov_b32 v97, v65 :: v_dual_mov_b32 v90, v66
	v_dual_mov_b32 v89, v65 :: v_dual_mov_b32 v86, v66
	v_dual_mov_b32 v85, v65 :: v_dual_mov_b32 v78, v66
	v_mov_b32_e32 v77, v65
	v_mov_b32_e32 v157, v65
	v_mov_b32_e32 v158, v65
	v_mov_b32_e32 v159, v65
	v_mov_b32_e32 v160, v65
	v_mov_b32_e32 v161, v65
	v_mov_b32_e32 v162, v65
	v_mov_b32_e32 v163, v65
	v_mov_b32_e32 v165, v65
	v_mov_b32_e32 v166, v65
	v_mov_b32_e32 v167, v65
	v_mov_b32_e32 v168, v65
	v_mov_b32_e32 v169, v65
	v_mov_b32_e32 v170, v65
	v_mov_b32_e32 v164, v65
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr125
                                        ; implicit-def: $vgpr126
                                        ; implicit-def: $vgpr127
                                        ; implicit-def: $vgpr128
                                        ; implicit-def: $vgpr140
	s_load_b256 s[8:15], s[0:1], 0x10
	s_mov_b32 s16, 0
.LBB0_4:                                ; %.lr.ph
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s37, s18, 6
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v140, 0x70, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	s_addk_i32 s35, 0x80
	s_mov_b32 s36, 1
	s_add_i32 s34, 0, 0x8000
	s_add_i32 s1, 0, 0x9000
	s_add_i32 s0, 0, 0x4000
	s_add_i32 s37, s37, -3
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
	s_add_i32 s16, s35, s18
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v147, s34, v151
	.loc	1 402 30 is_stmt 0              ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s16, s28, v[139:140]
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add3_u32 v148, s19, v140, v151
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_mul_i32 s16, s16, s29
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s16, s16, s33
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	buffer_load_b128 v[113:116], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v9, v147 offset:832
	ds_load_u8 v10, v147 offset:768
	ds_load_u8 v11, v147 offset:960
	ds_load_u8 v12, v147 offset:896
	ds_load_u8 v13, v147 offset:576
	ds_load_u8 v14, v147 offset:512
	ds_load_u8 v15, v147 offset:704
	ds_load_u8 v16, v147 offset:640
	ds_load_u8 v17, v147 offset:320
	ds_load_u8 v18, v147 offset:256
	ds_load_u8 v19, v147 offset:448
	ds_load_u8 v20, v147 offset:384
	ds_load_u8 v21, v147 offset:64
	ds_load_u8 v22, v147
	ds_load_u8 v23, v147 offset:192
	ds_load_u8 v24, v147 offset:128
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v148 offset:3328
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v148 offset:3072
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v14, v16, v15, 0xc0c0004
	v_lshl_or_b32 v28, v11, 16, v9
	ds_load_u8 v9, v148 offset:3840
	ds_load_u8 v11, v148 offset:3584
	ds_load_u8 v16, v148 offset:2048
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v15, v20, v19, 0xc0c0004
	v_lshl_or_b32 v27, v14, 16, v13
	v_perm_b32 v13, v18, v17, 0xc0c0004
	ds_load_u8 v14, v148 offset:2304
	ds_load_u8 v18, v148 offset:1280
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v17, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v19, v24, v23, 0xc0c0004
	v_lshl_or_b32 v26, v15, 16, v13
	ds_load_u8 v13, v148 offset:2816
	ds_load_u8 v15, v148 offset:2560
	v_lshl_or_b32 v25, v19, 16, v17
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v148 offset:1792
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v148 offset:1536
	ds_load_u8 v20, v148 offset:1024
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v14, v16, v14, 0xc0c0004
	ds_load_u8 v16, v148 offset:256
	v_lshl_or_b32 v128, v9, 16, v10
	ds_load_u8 v9, v148 offset:768
	ds_load_u8 v10, v148 offset:512
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v15, v13, 0xc0c0004
	ds_load_u8 v15, v148
	v_lshl_or_b32 v127, v13, 16, v14
	ds_load_u8 v14, v147 offset:1856
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v13, v20, v18, 0xc0c0004
	ds_load_u8 v12, v147 offset:1792
	v_lshl_or_b32 v126, v11, 16, v13
	ds_load_u8 v11, v147 offset:1984
	ds_load_u8 v13, v147 offset:1920
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v15, v15, v16, 0xc0c0004
	ds_load_u8 v16, v147 offset:1600
	v_lshl_or_b32 v125, v9, 16, v15
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[125:128], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v147 offset:1664
	v_perm_b32 v12, v12, v14, 0xc0c0004
	ds_load_u8 v14, v147 offset:1728
	ds_load_u8 v10, v147 offset:1536
	v_lshl_or_b32 v32, v11, 16, v12
	ds_load_u8 v12, v147 offset:1088
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v10, v16, 0xc0c0004
	ds_load_u8 v16, v147 offset:1344
	v_perm_b32 v13, v13, v14, 0xc0c0004
	ds_load_u8 v14, v147 offset:1280
	v_lshl_or_b32 v31, v13, 16, v10
	ds_load_u8 v9, v147 offset:1472
	ds_load_u8 v10, v147 offset:1408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v14, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v147 offset:1024
	v_lshl_or_b32 v30, v9, 16, v11
	ds_load_u8 v9, v147 offset:1216
	ds_load_u8 v11, v147 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v10, v12, 0xc0c0004
	ds_load_u8 v12, v148 offset:7424
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v148 offset:7168
	v_lshl_or_b32 v29, v9, 16, v10
	ds_load_u8 v9, v148 offset:7936
	ds_load_u8 v10, v148 offset:7680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v148 offset:6400
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v148 offset:6144
	v_lshl_or_b32 v132, v9, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v12, 0xc0c0004
	ds_load_u8 v12, v148 offset:6912
	ds_load_u8 v13, v148 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v131, v12, 16, v10
	ds_load_u8 v9, v148 offset:5376
	ds_load_u8 v10, v148 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v148 offset:5888
	ds_load_u8 v11, v148 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v130, v10, 16, v9
	ds_load_u8 v9, v148 offset:4352
	ds_load_u8 v10, v148 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v148 offset:4864
	ds_load_u8 v11, v148 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v129, v10, 16, v9
	ds_load_u8 v9, v148 offset:3456
	ds_load_u8 v10, v148 offset:3200
	v_wmma_i32_16x16x16_iu8 v[17:24], v[129:132], v[29:32], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v148 offset:3968
	ds_load_u8 v11, v148 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v148 offset:2432
	ds_load_u8 v12, v148 offset:2176
	v_lshl_or_b32 v120, v10, 16, v9
	ds_load_u8 v9, v148 offset:1408
	ds_load_u8 v10, v148 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v148 offset:2944
	ds_load_u8 v13, v148 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v119, v12, 16, v11
	ds_load_u8 v10, v148 offset:1920
	ds_load_u8 v11, v148 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v118, v10, 16, v9
	ds_load_u8 v9, v148 offset:384
	ds_load_u8 v10, v148 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v148 offset:896
	ds_load_u8 v11, v148 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v10, 16, v9
	ds_load_u8 v9, v148 offset:7552
	ds_load_u8 v10, v148 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v148 offset:8064
	ds_load_u8 v11, v148 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v148 offset:6528
	ds_load_u8 v12, v148 offset:6272
	v_lshl_or_b32 v124, v10, 16, v9
	ds_load_u8 v9, v148 offset:5504
	ds_load_u8 v10, v148 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v148 offset:7040
	ds_load_u8 v13, v148 offset:6784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v123, v12, 16, v11
	ds_load_u8 v10, v148 offset:6016
	ds_load_u8 v11, v148 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v122, v10, 16, v9
	ds_load_u8 v9, v148 offset:4480
	ds_load_u8 v10, v148 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v148 offset:4992
	ds_load_u8 v11, v148 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v121, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[117:120], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v147 offset:848
	ds_load_u8 v26, v147 offset:784
	v_wmma_i32_16x16x16_iu8 v[9:16], v[121:124], v[29:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v147 offset:976
	ds_load_u8 v27, v147 offset:912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v147 offset:592
	ds_load_u8 v28, v147 offset:528
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v147 offset:336
	ds_load_u8 v26, v147 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v147 offset:720
	ds_load_u8 v29, v147 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v28, 16, v27
	ds_load_u8 v26, v147 offset:464
	ds_load_u8 v27, v147 offset:400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v147 offset:16
	ds_load_u8 v26, v147 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	ds_load_u8 v26, v147 offset:208
	ds_load_u8 v27, v147 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v26, 16, v25
	ds_load_u8 v25, v147 offset:1872
	ds_load_u8 v26, v147 offset:1808
	v_wmma_i32_16x16x16_iu8 v[33:40], v[117:120], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v147 offset:2000
	ds_load_u8 v27, v147 offset:1936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v147 offset:1616
	ds_load_u8 v28, v147 offset:1552
	v_lshl_or_b32 v48, v26, 16, v25
	ds_load_u8 v25, v147 offset:1360
	ds_load_u8 v26, v147 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v147 offset:1744
	ds_load_u8 v29, v147 offset:1680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v28, 16, v27
	ds_load_u8 v26, v147 offset:1488
	ds_load_u8 v27, v147 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v46, v26, 16, v25
	ds_load_u8 v25, v147 offset:1104
	ds_load_u8 v26, v147 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v147 offset:1232
	ds_load_u8 v27, v147 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[125:128], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v147 offset:864
	ds_load_u8 v42, v147 offset:800
	v_wmma_i32_16x16x16_iu8 v[33:40], v[121:124], v[45:48], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[129:132], v[45:48], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v147 offset:992
	ds_load_u8 v43, v147 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v147 offset:608
	ds_load_u8 v44, v147 offset:544
	v_lshl_or_b32 v60, v42, 16, v41
	ds_load_u8 v41, v147 offset:352
	ds_load_u8 v42, v147 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v147 offset:736
	ds_load_u8 v45, v147 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v44, 16, v43
	ds_load_u8 v42, v147 offset:480
	ds_load_u8 v43, v147 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v58, v42, 16, v41
	ds_load_u8 v41, v147 offset:32
	ds_load_u8 v42, v147 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v42, 0xc0c0004
	ds_load_u8 v42, v147 offset:224
	ds_load_u8 v43, v147 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v42, 16, v41
	ds_load_u8 v41, v147 offset:1888
	ds_load_u8 v42, v147 offset:1824
	v_wmma_i32_16x16x16_iu8 v[49:56], v[117:120], v[57:60], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v147 offset:2016
	ds_load_u8 v43, v147 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v147 offset:1632
	ds_load_u8 v44, v147 offset:1568
	v_lshl_or_b32 v64, v42, 16, v41
	ds_load_u8 v41, v147 offset:1376
	ds_load_u8 v42, v147 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v147 offset:1760
	ds_load_u8 v45, v147 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v63, v44, 16, v43
	ds_load_u8 v42, v147 offset:1504
	ds_load_u8 v43, v147 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v62, v42, 16, v41
	ds_load_u8 v41, v147 offset:1120
	ds_load_u8 v42, v147 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v147 offset:1248
	ds_load_u8 v43, v147 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[125:128], v[57:60], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v57, v147 offset:880
	ds_load_u8 v58, v147 offset:816
	v_wmma_i32_16x16x16_iu8 v[49:56], v[121:124], v[61:64], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[129:132], v[61:64], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v58, s34, v143
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v58, v58
	ds_load_u8 v59, v147 offset:944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v147 offset:624
	ds_load_u8 v60, v147 offset:560
	v_lshl_or_b32 v136, v58, 16, v57
	ds_load_u8 v57, v147 offset:368
	ds_load_u8 v58, v147 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v147 offset:752
	ds_load_u8 v61, v147 offset:688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v135, v60, 16, v59
	ds_load_u8 v58, v147 offset:496
	ds_load_u8 v59, v147 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_lshl_or_b32 v134, v58, 16, v57
	ds_load_u8 v57, v147 offset:48
	ds_load_u8 v58, v147 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v57, v58, 0xc0c0004
	ds_load_u8 v58, v147 offset:240
	ds_load_u8 v59, v147 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v133, v58, 16, v57
	ds_load_u8 v57, v147 offset:1904
	ds_load_u8 v58, v147 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v58, s34, v144
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v58, v58
	ds_load_u8 v59, v147 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v147 offset:1648
	ds_load_u8 v60, v147 offset:1584
	v_lshl_or_b32 v174, v58, 16, v57
	ds_load_u8 v57, v147 offset:1392
	ds_load_u8 v58, v147 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v147 offset:1776
	ds_load_u8 v61, v147 offset:1712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v173, v60, 16, v59
	ds_load_u8 v58, v147 offset:1520
	ds_load_u8 v59, v147 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_lshl_or_b32 v172, v58, 16, v57
	ds_load_u8 v57, v147 offset:1136
	ds_load_u8 v58, v147 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v147 offset:1264
	ds_load_u8 v59, v147 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v171, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[125:128], v[133:136], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[129:132], v[171:174], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[117:120], v[133:136], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v117, v147 offset:2880
	ds_load_u8 v118, v147 offset:2816
	v_wmma_i32_16x16x16_iu8 v[125:132], v[121:124], v[171:174], v[125:132] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v147 offset:3008
	ds_load_u8 v119, v147 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v147 offset:2624
	ds_load_u8 v120, v147 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v147 offset:2752
	ds_load_u8 v121, v147 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v121, v120, 0xc0c0004
	v_lshl_or_b32 v120, v118, 16, v117
	ds_load_u8 v117, v147 offset:2368
	ds_load_u8 v118, v147 offset:2304
	v_lshl_or_b32 v119, v121, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v147 offset:2496
	ds_load_u8 v121, v147 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v121, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v118, 16, v117
	ds_load_u8 v117, v147 offset:2112
	ds_load_u8 v121, v147 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v121, v117, 0xc0c0004
	ds_load_u8 v121, v147 offset:2240
	ds_load_u8 v122, v147 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v121, 16, v117
	ds_load_u8 v121, v148 offset:11520
	ds_load_u8 v122, v148 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v148 offset:12032
	ds_load_u8 v123, v148 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v148 offset:10496
	ds_load_u8 v124, v148 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v148 offset:11008
	ds_load_u8 v133, v148 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v133, v124, 0xc0c0004
	v_lshl_or_b32 v124, v122, 16, v121
	ds_load_u8 v121, v148 offset:9472
	ds_load_u8 v122, v148 offset:9216
	v_lshl_or_b32 v123, v133, 16, v123
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v148 offset:9984
	ds_load_u8 v133, v148 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v133, v122, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v122, v122, 16, v121
	ds_load_u8 v121, v148 offset:8448
	ds_load_u8 v133, v148 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v133, v121, 0xc0c0004
	ds_load_u8 v133, v148 offset:8960
	ds_load_u8 v134, v148 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v121, v133, 16, v121
	ds_load_u8 v133, v148 offset:11648
	ds_load_u8 v134, v148 offset:11392
	v_wmma_i32_16x16x16_iu8 v[17:24], v[121:124], v[117:120], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v148 offset:12160
	ds_load_u8 v135, v148 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v148 offset:10624
	ds_load_u8 v136, v148 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v148 offset:11136
	ds_load_u8 v171, v148 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v171, v136, 0xc0c0004
	v_lshl_or_b32 v136, v134, 16, v133
	ds_load_u8 v133, v148 offset:9600
	ds_load_u8 v134, v148 offset:9344
	v_lshl_or_b32 v135, v171, 16, v135
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v148 offset:10112
	ds_load_u8 v171, v148 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v171, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v134, v134, 16, v133
	ds_load_u8 v133, v148 offset:8576
	ds_load_u8 v171, v148 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v171, v133, 0xc0c0004
	ds_load_u8 v171, v148 offset:9088
	ds_load_u8 v172, v148 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v133, v171, 16, v133
	v_wmma_i32_16x16x16_iu8 v[9:16], v[133:136], v[117:120], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v147 offset:2896
	ds_load_u8 v118, v147 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v147 offset:3024
	ds_load_u8 v119, v147 offset:2960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v147 offset:2640
	ds_load_u8 v120, v147 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v147 offset:2768
	ds_load_u8 v171, v147 offset:2704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v171, v120, 0xc0c0004
	v_lshl_or_b32 v120, v118, 16, v117
	ds_load_u8 v117, v147 offset:2384
	ds_load_u8 v118, v147 offset:2320
	v_lshl_or_b32 v119, v171, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v147 offset:2512
	ds_load_u8 v171, v147 offset:2448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v171, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v118, 16, v117
	ds_load_u8 v117, v147 offset:2128
	ds_load_u8 v171, v147 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v171, v117, 0xc0c0004
	ds_load_u8 v171, v147 offset:2256
	ds_load_u8 v172, v147 offset:2192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v171, 16, v117
	v_wmma_i32_16x16x16_iu8 v[25:32], v[121:124], v[117:120], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[133:136], v[117:120], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v117, v147 offset:2912
	ds_load_u8 v118, v147 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v147 offset:3040
	ds_load_u8 v119, v147 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v147 offset:2656
	ds_load_u8 v120, v147 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v147 offset:2784
	ds_load_u8 v171, v147 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v171, v120, 0xc0c0004
	v_lshl_or_b32 v120, v118, 16, v117
	ds_load_u8 v117, v147 offset:2400
	ds_load_u8 v118, v147 offset:2336
	v_lshl_or_b32 v119, v171, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v147 offset:2528
	ds_load_u8 v171, v147 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v171, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v118, 16, v117
	ds_load_u8 v117, v147 offset:2144
	ds_load_u8 v171, v147 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v171, v117, 0xc0c0004
	ds_load_u8 v171, v147 offset:2272
	ds_load_u8 v172, v147 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v171, 16, v117
	v_wmma_i32_16x16x16_iu8 v[41:48], v[121:124], v[117:120], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[133:136], v[117:120], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v117, v147 offset:2928
	ds_load_u8 v118, v147 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v118, s34, v145
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v118, v118
	ds_load_u8 v119, v147 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v147 offset:2672
	ds_load_u8 v120, v147 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v147 offset:2800
	ds_load_u8 v171, v147 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v171, v120, 0xc0c0004
	v_lshl_or_b32 v120, v118, 16, v117
	ds_load_u8 v117, v147 offset:2416
	ds_load_u8 v118, v147 offset:2352
	v_lshl_or_b32 v119, v171, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v147 offset:2544
	ds_load_u8 v171, v147 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v171, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v118, 16, v117
	ds_load_u8 v117, v147 offset:2160
	ds_load_u8 v171, v147 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v171, v117, 0xc0c0004
	ds_load_u8 v171, v147 offset:2288
	ds_load_u8 v172, v147 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v171, 16, v117
	v_wmma_i32_16x16x16_iu8 v[57:64], v[121:124], v[117:120], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[133:136], v[117:120], v[125:132] neg_lo:[1,1,0]
	ds_load_u8 v117, v147 offset:3904
	ds_load_u8 v118, v147 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v147 offset:4032
	ds_load_u8 v119, v147 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v147 offset:3648
	ds_load_u8 v120, v147 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v147 offset:3776
	ds_load_u8 v121, v147 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v121, v120, 0xc0c0004
	v_lshl_or_b32 v120, v118, 16, v117
	ds_load_u8 v117, v147 offset:3392
	ds_load_u8 v118, v147 offset:3328
	v_lshl_or_b32 v119, v121, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v147 offset:3520
	ds_load_u8 v121, v147 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v121, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v118, 16, v117
	ds_load_u8 v117, v147 offset:3136
	ds_load_u8 v121, v147 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v121, v117, 0xc0c0004
	ds_load_u8 v121, v147 offset:3264
	ds_load_u8 v122, v147 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v121, 16, v117
	ds_load_u8 v121, v148 offset:15616
	ds_load_u8 v122, v148 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v148 offset:16128
	ds_load_u8 v123, v148 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v148 offset:14592
	ds_load_u8 v124, v148 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v148 offset:15104
	ds_load_u8 v133, v148 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v133, v124, 0xc0c0004
	v_lshl_or_b32 v124, v122, 16, v121
	ds_load_u8 v121, v148 offset:13568
	ds_load_u8 v122, v148 offset:13312
	v_lshl_or_b32 v123, v133, 16, v123
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v148 offset:14080
	ds_load_u8 v133, v148 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v133, v122, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v122, v122, 16, v121
	ds_load_u8 v121, v148 offset:12544
	ds_load_u8 v133, v148 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v133, v121, 0xc0c0004
	ds_load_u8 v133, v148 offset:13056
	ds_load_u8 v134, v148 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v121, v133, 16, v121
	ds_load_u8 v133, v148 offset:15744
	ds_load_u8 v134, v148 offset:15488
	v_wmma_i32_16x16x16_iu8 v[17:24], v[121:124], v[117:120], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v112, v112, v20
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v109, v109, v17
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v17, s16, v142
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v148 offset:16256
	ds_load_u8 v135, v148 offset:16000
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v111, v111, v19
	v_add_f32_e32 v83, v83, v23
	v_add_f32_e32 v81, v81, v21
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v148 offset:14720
	ds_load_u8 v136, v148 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v148 offset:15232
	ds_load_u8 v171, v148 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v171, v136, 0xc0c0004
	v_lshl_or_b32 v136, v134, 16, v133
	ds_load_u8 v133, v148 offset:13696
	ds_load_u8 v134, v148 offset:13440
	v_lshl_or_b32 v135, v171, 16, v135
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v148 offset:14208
	ds_load_u8 v171, v148 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v171, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v134, v134, 16, v133
	ds_load_u8 v133, v148 offset:12672
	ds_load_u8 v171, v148 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v171, v133, 0xc0c0004
	ds_load_u8 v171, v148 offset:13184
	ds_load_u8 v148, v148 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v148, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v133, v148, 16, v133
	v_wmma_i32_16x16x16_iu8 v[9:16], v[133:136], v[117:120], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v117, v147 offset:3920
	ds_load_u8 v118, v147 offset:3856
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v110, v110, v18 :: v_dual_add_f32 v103, v103, v12
	v_dual_add_f32 v84, v84, v24 :: v_dual_add_f32 v101, v101, v10
	v_dual_add_f32 v82, v82, v22 :: v_dual_add_f32 v169, v169, v15
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[17:20], v17, s[24:27], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v147 offset:4048
	ds_load_u8 v119, v147 offset:3984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v147 offset:3664
	ds_load_u8 v120, v147 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v147 offset:3792
	ds_load_u8 v148, v147 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v148, v120, 0xc0c0004
	v_lshl_or_b32 v120, v118, 16, v117
	ds_load_u8 v117, v147 offset:3408
	ds_load_u8 v118, v147 offset:3344
	v_lshl_or_b32 v119, v148, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v147 offset:3536
	ds_load_u8 v148, v147 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v148, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v118, 16, v117
	ds_load_u8 v117, v147 offset:3152
	ds_load_u8 v148, v147 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v148, v117, 0xc0c0004
	ds_load_u8 v148, v147 offset:3280
	ds_load_u8 v171, v147 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v171, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v148, 16, v117
	v_wmma_i32_16x16x16_iu8 v[25:32], v[121:124], v[117:120], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[133:136], v[117:120], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v117, v147 offset:3936
	ds_load_u8 v118, v147 offset:3872
	v_cvt_f32_i32_e32 v27, v27
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v164, v164, v9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v9, s16, v137
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v104, v104, v13
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v13, s16, v141
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v25, v25
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v102, v102, v11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v170, v170, v14
	v_add_f32_e32 v168, v168, v16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v30, v30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v147 offset:4064
	ds_load_u8 v119, v147 offset:4000
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v108, v108, v28 :: v_dual_add_f32 v93, v93, v34
	v_dual_add_f32 v107, v107, v27 :: v_dual_add_f32 v106, v106, v26
	v_add_f32_e32 v95, v95, v36
	v_dual_add_f32 v105, v105, v25 :: v_dual_add_f32 v76, v76, v32
	v_add_f32_e32 v165, v165, v39
	v_dual_add_f32 v75, v75, v31 :: v_dual_add_f32 v74, v74, v30
	v_add_f32_e32 v163, v163, v40
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v147 offset:3680
	ds_load_u8 v120, v147 offset:3616
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v73, v73, v29
	v_add_f32_e32 v167, v167, v33
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v147 offset:3808
	ds_load_u8 v148, v147 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v148, v120, 0xc0c0004
	v_lshl_or_b32 v120, v118, 16, v117
	ds_load_u8 v117, v147 offset:3424
	ds_load_u8 v118, v147 offset:3360
	v_lshl_or_b32 v119, v148, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v147 offset:3552
	ds_load_u8 v148, v147 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v148, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v118, 16, v117
	ds_load_u8 v117, v147 offset:3168
	ds_load_u8 v148, v147 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v148, v117, 0xc0c0004
	ds_load_u8 v148, v147 offset:3296
	ds_load_u8 v171, v147 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v171, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v148, 16, v117
	v_wmma_i32_16x16x16_iu8 v[41:48], v[121:124], v[117:120], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[133:136], v[117:120], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v117, v147 offset:3952
	ds_load_u8 v118, v147 offset:3888
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v70, v70, v46
	v_add_f32_e32 v90, v90, v51
	v_add_f32_e32 v160, v160, v55
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v118, s34, v146
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v118, v118
	ds_load_u8 v119, v147 offset:4016
	s_mov_b32 s34, s1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s1, s36, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v54, v54
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s1, 2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v56, v56
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s36, s1, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v96, v96, v37 :: v_dual_add_f32 v99, v99, v43
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s1, s36, 14
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v94, v94, v35 :: v_dual_add_f32 v97, v97, v41
	v_dual_add_f32 v166, v166, v38 :: v_dual_add_f32 v71, v71, v47
	v_dual_add_f32 v100, v100, v44 :: v_dual_add_f32 v69, v69, v45
	v_dual_add_f32 v98, v98, v42 :: v_dual_add_f32 v91, v91, v52
	v_dual_add_f32 v72, v72, v48 :: v_dual_add_f32 v89, v89, v50
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v147 offset:3696
	ds_load_u8 v120, v147 offset:3632
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v162, v162, v49 :: v_dual_add_f32 v161, v161, v54
	v_dual_add_f32 v92, v92, v53 :: v_dual_add_f32 v159, v159, v56
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s18, s17, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v147 offset:3824
	ds_load_u8 v148, v147 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v148, v120, 0xc0c0004
	v_lshl_or_b32 v120, v118, 16, v117
	ds_load_u8 v117, v147 offset:3440
	ds_load_u8 v118, v147 offset:3376
	v_lshl_or_b32 v119, v148, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v147 offset:3568
	ds_load_u8 v148, v147 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v148, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v118, 16, v117
	ds_load_u8 v117, v147 offset:3184
	ds_load_u8 v148, v147 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v148, v117, 0xc0c0004
	ds_load_u8 v148, v147 offset:3312
	ds_load_u8 v147, v147 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v147, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v147, 16, v117
	v_wmma_i32_16x16x16_iu8 v[57:64], v[121:124], v[117:120], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[133:136], v[117:120], v[125:132] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v21, s16, v138
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v68, v68, v64
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[21:24], v21, s[24:27], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v117, v125
	v_cvt_f32_i32_e32 v118, v126
	v_cvt_f32_i32_e32 v119, v127
	v_cvt_f32_i32_e32 v120, v128
	v_cvt_f32_i32_e32 v121, v129
	v_cvt_f32_i32_e32 v122, v130
	v_cvt_f32_i32_e32 v123, v131
	v_cvt_f32_i32_e32 v124, v132
	s_mov_b32 s16, s0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s0, s36, 12
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v88, v88, v60 :: v_dual_add_f32 v87, v87, v59
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s19, s0, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s0, s1, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v86, v86, v58 :: v_dual_add_f32 v85, v85, v57
	v_dual_add_f32 v67, v67, v63 :: v_dual_add_f32 v66, v66, v62
	v_dual_add_f32 v65, v65, v61 :: v_dual_add_f32 v78, v78, v119
	v_dual_add_f32 v158, v158, v117 :: v_dual_add_f32 v79, v79, v120
	v_dual_add_f32 v80, v80, v121 :: v_dual_add_f32 v77, v77, v118
	v_dual_add_f32 v157, v157, v122 :: v_dual_add_f32 v156, v156, v123
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v25, s19, v154
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v155, v155, v124 :: v_dual_add_nc_u32 v26, s0, v154
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s1, s19, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s17, s37
	s_mov_b32 s17, s18
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v25, v[113:116] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	ds_store_b128 v26, v[9:12]
	s_waitcnt vmcnt(1)
	ds_store_b128 v26, v[13:16] offset:4096
	ds_store_b128 v26, v[17:20] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v26, v[21:24] offset:12288
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v125, v143 :: v_dual_mov_b32 v126, v144
	v_dual_mov_b32 v127, v145 :: v_dual_mov_b32 v128, v146
	s_mov_b32 s17, s16
.LBB0_7:                                ; %Flow214
	v_and_b32_e32 v171, 0xf0, v0
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_or_b32_e32 v129, v140, v151
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
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
	v_add_nc_u32_e32 v131, s17, v129
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s17, s16
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v130, s34, v151
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v1, v130 offset:832
	ds_load_u8 v2, v130 offset:768
	ds_load_u8 v3, v130 offset:960
	ds_load_u8 v4, v130 offset:896
	ds_load_u8 v5, v130 offset:576
	ds_load_u8 v6, v130 offset:512
	ds_load_u8 v7, v130 offset:704
	ds_load_u8 v8, v130 offset:640
	ds_load_u8 v9, v130 offset:320
	ds_load_u8 v10, v130 offset:256
	ds_load_u8 v11, v130 offset:448
	ds_load_u8 v12, v130 offset:384
	ds_load_u8 v13, v130 offset:64
	ds_load_u8 v14, v130
	ds_load_u8 v15, v130 offset:192
	ds_load_u8 v16, v130 offset:128
	ds_load_u8 v17, v131 offset:3328
	ds_load_u8 v18, v131 offset:3072
	ds_load_u8 v19, v131 offset:3840
	ds_load_u8 v20, v131 offset:3584
	ds_load_u8 v21, v131 offset:2304
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v8, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v9, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v10, v14, v13, 0xc0c0004
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v11, v16, v15, 0xc0c0004
	v_perm_b32 v2, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v12, v18, v17, 0xc0c0004
	v_perm_b32 v3, v6, v5, 0xc0c0004
	ds_load_u8 v4, v131 offset:2048
	ds_load_u8 v5, v131 offset:2816
	ds_load_u8 v6, v131 offset:2560
	ds_load_u8 v22, v131 offset:1280
	ds_load_u8 v23, v131 offset:1024
	ds_load_u8 v24, v131 offset:1792
	ds_load_u8 v25, v131 offset:1536
	ds_load_u8 v26, v131 offset:256
	ds_load_u8 v27, v131
	ds_load_u8 v28, v131 offset:768
	ds_load_u8 v29, v131 offset:512
	ds_load_u8 v30, v131 offset:3456
	ds_load_u8 v31, v131 offset:3200
	ds_load_u8 v32, v131 offset:3968
	ds_load_u8 v33, v131 offset:3712
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v13, v20, v19, 0xc0c0004
	v_lshl_or_b32 v20, v2, 16, v1
	v_lshl_or_b32 v18, v9, 16, v8
	v_lshl_or_b32 v19, v7, 16, v3
	v_lshl_or_b32 v17, v11, 16, v10
	v_lshl_or_b32 v120, v13, 16, v12
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v2, v4, v21, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v4, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v5, v23, v22, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v7, v25, v24, 0xc0c0004
	v_lshl_or_b32 v119, v4, 16, v2
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v8, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v29, v28, 0xc0c0004
	v_lshl_or_b32 v118, v7, 16, v5
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v31, v30, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v33, v32, 0xc0c0004
	ds_load_u8 v14, v131 offset:2432
	ds_load_u8 v16, v131 offset:2176
	ds_load_u8 v22, v131 offset:2944
	ds_load_u8 v24, v131 offset:2688
	ds_load_u8 v1, v131 offset:1408
	ds_load_u8 v3, v131 offset:1152
	ds_load_u8 v6, v131 offset:1920
	ds_load_u8 v9, v131 offset:1664
	ds_load_u8 v13, v131 offset:384
	ds_load_u8 v15, v131 offset:128
	ds_load_u8 v21, v131 offset:896
	ds_load_u8 v23, v131 offset:640
	ds_load_u8 v25, v130 offset:848
	ds_load_u8 v26, v130 offset:784
	ds_load_u8 v27, v130 offset:976
	ds_load_u8 v28, v130 offset:912
	ds_load_u8 v29, v130 offset:592
	ds_load_u8 v30, v130 offset:528
	ds_load_u8 v31, v130 offset:720
	ds_load_u8 v32, v130 offset:656
	v_lshl_or_b32 v117, v10, 16, v8
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v2, v16, v14, 0xc0c0004
	v_lshl_or_b32 v116, v12, 16, v11
	ds_load_u8 v5, v130 offset:336
	ds_load_u8 v7, v130 offset:272
	ds_load_u8 v8, v130 offset:464
	ds_load_u8 v10, v130 offset:400
	ds_load_u8 v11, v130 offset:80
	ds_load_u8 v12, v130 offset:16
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v4, v24, v22, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v3, v9, v6, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v6, v15, v13, 0xc0c0004
	v_lshl_or_b32 v115, v4, 16, v2
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v9, v23, v21, 0xc0c0004
	v_lshl_or_b32 v114, v3, 16, v1
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v13, v26, v25, 0xc0c0004
	ds_load_u8 v21, v130 offset:208
	ds_load_u8 v22, v130 offset:144
	ds_load_u8 v25, v130 offset:864
	ds_load_u8 v26, v130 offset:800
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v14, v28, v27, 0xc0c0004
	v_lshl_or_b32 v113, v9, 16, v6
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v15, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v16, v32, v31, 0xc0c0004
	v_lshl_or_b32 v24, v14, 16, v13
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v1, v7, v5, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v2, v10, v8, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v3, v12, v11, 0xc0c0004
	ds_load_u8 v4, v130 offset:992
	ds_load_u8 v5, v130 offset:928
	ds_load_u8 v6, v130 offset:608
	ds_load_u8 v7, v130 offset:544
	ds_load_u8 v8, v130 offset:736
	ds_load_u8 v9, v130 offset:672
	ds_load_u8 v10, v130 offset:352
	ds_load_u8 v11, v130 offset:288
	ds_load_u8 v12, v130 offset:480
	ds_load_u8 v13, v130 offset:416
	v_lshl_or_b32 v23, v16, 16, v15
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v14, v22, v21, 0xc0c0004
	v_lshl_or_b32 v22, v2, 16, v1
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v15, v26, v25, 0xc0c0004
	ds_load_u8 v16, v130 offset:96
	ds_load_u8 v25, v130 offset:32
	ds_load_u8 v26, v130 offset:224
	ds_load_u8 v27, v130 offset:160
	ds_load_u8 v28, v130 offset:880
	ds_load_u8 v29, v130 offset:816
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v5, s34, v125
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v21, v14, 16, v3
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v7, v9, v8, 0xc0c0004
	v_lshl_or_b32 v135, v4, 16, v15
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v8, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v9, v13, v12, 0xc0c0004
	v_lshl_or_b32 v134, v7, 16, v6
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v133, v9, 16, v8
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v1, v25, v16, 0xc0c0004
	ds_load_u8 v4, v5
	ds_load_u8 v5, v130 offset:944
	ds_load_u8 v6, v130 offset:624
	ds_load_u8 v7, v130 offset:560
	ds_load_u8 v8, v130 offset:752
	ds_load_u8 v9, v130 offset:688
	ds_load_u8 v10, v130 offset:368
	ds_load_u8 v11, v130 offset:304
	ds_load_u8 v12, v130 offset:496
	ds_load_u8 v13, v130 offset:432
	ds_load_u8 v14, v130 offset:112
	ds_load_u8 v15, v130 offset:48
	ds_load_u8 v16, v130 offset:240
	ds_load_u8 v25, v130 offset:176
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v2, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v3, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v132, v2, 16, v1
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v2, v9, v8, 0xc0c0004
	v_lshl_or_b32 v124, v4, 16, v3
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v4, v13, v12, 0xc0c0004
	v_lshl_or_b32 v123, v2, 16, v1
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v25, v16, 0xc0c0004
	v_dual_mov_b32 v9, s16 :: v_dual_mov_b32 v10, s17
	v_dual_mov_b32 v11, s18 :: v_dual_mov_b32 v14, s21
	v_dual_mov_b32 v12, s19 :: v_dual_mov_b32 v13, s20
	v_dual_mov_b32 v16, s23 :: v_dual_mov_b32 v15, s22
	v_lshl_or_b32 v122, v4, 16, v3
	v_lshl_or_b32 v121, v6, 16, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[117:120], v[17:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[113:116], v[17:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[117:120], v[21:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[113:116], v[21:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[117:120], v[132:135], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[113:116], v[132:135], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[117:120], v[121:124], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[113:116], v[121:124], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v113, v130 offset:1856
	ds_load_u8 v114, v130 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v130 offset:1984
	ds_load_u8 v115, v130 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v130 offset:1600
	ds_load_u8 v116, v130 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v130 offset:1728
	ds_load_u8 v117, v130 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v117, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v130 offset:1344
	ds_load_u8 v114, v130 offset:1280
	v_lshl_or_b32 v115, v117, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v130 offset:1472
	ds_load_u8 v117, v130 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v117, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v130 offset:1088
	ds_load_u8 v117, v130 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v117, v113, 0xc0c0004
	ds_load_u8 v117, v130 offset:1216
	ds_load_u8 v118, v130 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v113, v117, 16, v113
	ds_load_u8 v117, v131 offset:7424
	ds_load_u8 v118, v131 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v131 offset:7936
	ds_load_u8 v119, v131 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v131 offset:6400
	ds_load_u8 v120, v131 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v131 offset:6912
	ds_load_u8 v121, v131 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v121, v120, 0xc0c0004
	v_lshl_or_b32 v120, v118, 16, v117
	ds_load_u8 v117, v131 offset:5376
	ds_load_u8 v118, v131 offset:5120
	v_lshl_or_b32 v119, v121, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v131 offset:5888
	ds_load_u8 v121, v131 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v121, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v118, 16, v117
	ds_load_u8 v117, v131 offset:4352
	ds_load_u8 v121, v131 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v121, v117, 0xc0c0004
	ds_load_u8 v121, v131 offset:4864
	ds_load_u8 v122, v131 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v121, 16, v117
	ds_load_u8 v121, v131 offset:7552
	ds_load_u8 v122, v131 offset:7296
	v_wmma_i32_16x16x16_iu8 v[1:8], v[117:120], v[113:116], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v131 offset:8064
	ds_load_u8 v123, v131 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v131 offset:6528
	ds_load_u8 v124, v131 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v131 offset:7040
	ds_load_u8 v132, v131 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v132, v124, 0xc0c0004
	v_lshl_or_b32 v124, v122, 16, v121
	ds_load_u8 v121, v131 offset:5504
	ds_load_u8 v122, v131 offset:5248
	v_lshl_or_b32 v123, v132, 16, v123
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v131 offset:6016
	ds_load_u8 v132, v131 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v132, v122, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v122, v122, 16, v121
	ds_load_u8 v121, v131 offset:4480
	ds_load_u8 v132, v131 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v132, v121, 0xc0c0004
	ds_load_u8 v132, v131 offset:4992
	ds_load_u8 v133, v131 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v121, v132, 16, v121
	v_wmma_i32_16x16x16_iu8 v[57:64], v[121:124], v[113:116], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v113, v130 offset:1872
	ds_load_u8 v114, v130 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v130 offset:2000
	ds_load_u8 v115, v130 offset:1936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v130 offset:1616
	ds_load_u8 v116, v130 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v130 offset:1744
	ds_load_u8 v132, v130 offset:1680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v132, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v130 offset:1360
	ds_load_u8 v114, v130 offset:1296
	v_lshl_or_b32 v115, v132, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v130 offset:1488
	ds_load_u8 v132, v130 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v132, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v130 offset:1104
	ds_load_u8 v132, v130 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v132, v113, 0xc0c0004
	ds_load_u8 v132, v130 offset:1232
	ds_load_u8 v133, v130 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v132, 16, v113
	v_wmma_i32_16x16x16_iu8 v[49:56], v[117:120], v[113:116], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[121:124], v[113:116], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v113, v130 offset:1888
	ds_load_u8 v114, v130 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v130 offset:2016
	ds_load_u8 v115, v130 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v130 offset:1632
	ds_load_u8 v116, v130 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v130 offset:1760
	ds_load_u8 v132, v130 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v132, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v130 offset:1376
	ds_load_u8 v114, v130 offset:1312
	v_lshl_or_b32 v115, v132, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v130 offset:1504
	ds_load_u8 v132, v130 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v132, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v130 offset:1120
	ds_load_u8 v132, v130 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v132, v113, 0xc0c0004
	ds_load_u8 v132, v130 offset:1248
	ds_load_u8 v133, v130 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v132, 16, v113
	v_wmma_i32_16x16x16_iu8 v[33:40], v[117:120], v[113:116], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[121:124], v[113:116], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v113, v130 offset:1904
	ds_load_u8 v114, v130 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v114, s34, v126
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v114, v114
	ds_load_u8 v115, v130 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v130 offset:1648
	ds_load_u8 v116, v130 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v130 offset:1776
	ds_load_u8 v132, v130 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v132, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v130 offset:1392
	ds_load_u8 v114, v130 offset:1328
	v_lshl_or_b32 v115, v132, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v130 offset:1520
	ds_load_u8 v132, v130 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v132, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v130 offset:1136
	ds_load_u8 v132, v130 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v132, v113, 0xc0c0004
	ds_load_u8 v132, v130 offset:1264
	ds_load_u8 v133, v130 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v132, 16, v113
	v_wmma_i32_16x16x16_iu8 v[17:24], v[117:120], v[113:116], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[121:124], v[113:116], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v113, v130 offset:2880
	ds_load_u8 v114, v130 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v130 offset:3008
	ds_load_u8 v115, v130 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v130 offset:2624
	ds_load_u8 v116, v130 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v130 offset:2752
	ds_load_u8 v117, v130 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v117, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v130 offset:2368
	ds_load_u8 v114, v130 offset:2304
	v_lshl_or_b32 v115, v117, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v130 offset:2496
	ds_load_u8 v117, v130 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v117, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v130 offset:2112
	ds_load_u8 v117, v130 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v117, v113, 0xc0c0004
	ds_load_u8 v117, v130 offset:2240
	ds_load_u8 v118, v130 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v113, v117, 16, v113
	ds_load_u8 v117, v131 offset:11520
	ds_load_u8 v118, v131 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v131 offset:12032
	ds_load_u8 v119, v131 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v131 offset:10496
	ds_load_u8 v120, v131 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v131 offset:11008
	ds_load_u8 v121, v131 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v121, v120, 0xc0c0004
	v_lshl_or_b32 v120, v118, 16, v117
	ds_load_u8 v117, v131 offset:9472
	ds_load_u8 v118, v131 offset:9216
	v_lshl_or_b32 v119, v121, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v131 offset:9984
	ds_load_u8 v121, v131 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v121, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v118, 16, v117
	ds_load_u8 v117, v131 offset:8448
	ds_load_u8 v121, v131 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v121, v117, 0xc0c0004
	ds_load_u8 v121, v131 offset:8960
	ds_load_u8 v122, v131 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v121, 16, v117
	ds_load_u8 v121, v131 offset:11648
	ds_load_u8 v122, v131 offset:11392
	v_wmma_i32_16x16x16_iu8 v[1:8], v[117:120], v[113:116], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v131 offset:12160
	ds_load_u8 v123, v131 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v131 offset:10624
	ds_load_u8 v124, v131 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v131 offset:11136
	ds_load_u8 v132, v131 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v132, v124, 0xc0c0004
	v_lshl_or_b32 v124, v122, 16, v121
	ds_load_u8 v121, v131 offset:9600
	ds_load_u8 v122, v131 offset:9344
	v_lshl_or_b32 v123, v132, 16, v123
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v131 offset:10112
	ds_load_u8 v132, v131 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v132, v122, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v122, v122, 16, v121
	ds_load_u8 v121, v131 offset:8576
	ds_load_u8 v132, v131 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v132, v121, 0xc0c0004
	ds_load_u8 v132, v131 offset:9088
	ds_load_u8 v133, v131 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v121, v132, 16, v121
	v_wmma_i32_16x16x16_iu8 v[57:64], v[121:124], v[113:116], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v113, v130 offset:2896
	ds_load_u8 v114, v130 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v130 offset:3024
	ds_load_u8 v115, v130 offset:2960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v130 offset:2640
	ds_load_u8 v116, v130 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v130 offset:2768
	ds_load_u8 v132, v130 offset:2704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v132, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v130 offset:2384
	ds_load_u8 v114, v130 offset:2320
	v_lshl_or_b32 v115, v132, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v130 offset:2512
	ds_load_u8 v132, v130 offset:2448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v132, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v130 offset:2128
	ds_load_u8 v132, v130 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v132, v113, 0xc0c0004
	ds_load_u8 v132, v130 offset:2256
	ds_load_u8 v133, v130 offset:2192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v132, 16, v113
	v_wmma_i32_16x16x16_iu8 v[49:56], v[117:120], v[113:116], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[121:124], v[113:116], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v113, v130 offset:2912
	ds_load_u8 v114, v130 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v130 offset:3040
	ds_load_u8 v115, v130 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v130 offset:2656
	ds_load_u8 v116, v130 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v130 offset:2784
	ds_load_u8 v132, v130 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v132, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v130 offset:2400
	ds_load_u8 v114, v130 offset:2336
	v_lshl_or_b32 v115, v132, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v130 offset:2528
	ds_load_u8 v132, v130 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v132, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v130 offset:2144
	ds_load_u8 v132, v130 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v132, v113, 0xc0c0004
	ds_load_u8 v132, v130 offset:2272
	ds_load_u8 v133, v130 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v132, 16, v113
	v_wmma_i32_16x16x16_iu8 v[33:40], v[117:120], v[113:116], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[121:124], v[113:116], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v113, v130 offset:2928
	ds_load_u8 v114, v130 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v114, s34, v127
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v114, v114
	ds_load_u8 v115, v130 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v130 offset:2672
	ds_load_u8 v116, v130 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v130 offset:2800
	ds_load_u8 v132, v130 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v132, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v130 offset:2416
	ds_load_u8 v114, v130 offset:2352
	v_lshl_or_b32 v115, v132, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v130 offset:2544
	ds_load_u8 v132, v130 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v132, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v130 offset:2160
	ds_load_u8 v132, v130 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v132, v113, 0xc0c0004
	ds_load_u8 v132, v130 offset:2288
	ds_load_u8 v133, v130 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v132, 16, v113
	v_wmma_i32_16x16x16_iu8 v[17:24], v[117:120], v[113:116], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[121:124], v[113:116], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v113, v130 offset:3904
	ds_load_u8 v114, v130 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v130 offset:4032
	ds_load_u8 v115, v130 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v130 offset:3648
	ds_load_u8 v116, v130 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v130 offset:3776
	ds_load_u8 v117, v130 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v117, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v130 offset:3392
	ds_load_u8 v114, v130 offset:3328
	v_lshl_or_b32 v115, v117, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v130 offset:3520
	ds_load_u8 v117, v130 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v117, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v130 offset:3136
	ds_load_u8 v117, v130 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v117, v113, 0xc0c0004
	ds_load_u8 v117, v130 offset:3264
	ds_load_u8 v118, v130 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v113, v117, 16, v113
	ds_load_u8 v117, v131 offset:15616
	ds_load_u8 v118, v131 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v131 offset:16128
	ds_load_u8 v119, v131 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v131 offset:14592
	ds_load_u8 v120, v131 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v131 offset:15104
	ds_load_u8 v121, v131 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v121, v120, 0xc0c0004
	v_lshl_or_b32 v120, v118, 16, v117
	ds_load_u8 v117, v131 offset:13568
	ds_load_u8 v118, v131 offset:13312
	v_lshl_or_b32 v119, v121, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v131 offset:14080
	ds_load_u8 v121, v131 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v121, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v118, 16, v117
	ds_load_u8 v117, v131 offset:12544
	ds_load_u8 v121, v131 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v121, v117, 0xc0c0004
	ds_load_u8 v121, v131 offset:13056
	ds_load_u8 v122, v131 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v117, v121, 16, v117
	ds_load_u8 v121, v131 offset:15744
	ds_load_u8 v122, v131 offset:15488
	v_wmma_i32_16x16x16_iu8 v[1:8], v[117:120], v[113:116], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v81, v81, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v112, v112, v4 :: v_dual_add_f32 v83, v83, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v131 offset:16256
	ds_load_u8 v123, v131 offset:16000
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v110, v110, v2 :: v_dual_add_f32 v109, v109, v1
	v_add_f32_e32 v111, v111, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v131 offset:14720
	ds_load_u8 v124, v131 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v131 offset:15232
	ds_load_u8 v132, v131 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v132, v124, 0xc0c0004
	v_lshl_or_b32 v124, v122, 16, v121
	ds_load_u8 v121, v131 offset:13696
	ds_load_u8 v122, v131 offset:13440
	v_lshl_or_b32 v123, v132, 16, v123
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v131 offset:14208
	ds_load_u8 v132, v131 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v132, v122, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v122, v122, 16, v121
	ds_load_u8 v121, v131 offset:12672
	ds_load_u8 v132, v131 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v132, v121, 0xc0c0004
	ds_load_u8 v132, v131 offset:13184
	ds_load_u8 v131, v131 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v131, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v121, v131, 16, v121
	v_wmma_i32_16x16x16_iu8 v[57:64], v[121:124], v[113:116], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v113, v130 offset:3920
	ds_load_u8 v114, v130 offset:3856
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v82, v82, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v58, v58
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v84, v84, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v164, v164, v57 :: v_dual_add_f32 v103, v103, v60
	v_add_f32_e32 v101, v101, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v169, v169, v63
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v130 offset:4048
	ds_load_u8 v115, v130 offset:3984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v130 offset:3664
	ds_load_u8 v116, v130 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v130 offset:3792
	ds_load_u8 v131, v130 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v131, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v130 offset:3408
	ds_load_u8 v114, v130 offset:3344
	v_lshl_or_b32 v115, v131, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v130 offset:3536
	ds_load_u8 v131, v130 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v131, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v130 offset:3152
	ds_load_u8 v131, v130 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v131, v113, 0xc0c0004
	ds_load_u8 v131, v130 offset:3280
	ds_load_u8 v132, v130 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v131, 16, v113
	v_wmma_i32_16x16x16_iu8 v[49:56], v[117:120], v[113:116], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[121:124], v[113:116], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v113, v130 offset:3936
	ds_load_u8 v114, v130 offset:3872
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v104, v104, v61 :: v_dual_add_f32 v107, v107, v51
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v130 offset:4064
	ds_load_u8 v115, v130 offset:4000
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v102, v102, v59 :: v_dual_add_f32 v105, v105, v49
	v_dual_add_f32 v170, v170, v62 :: v_dual_add_f32 v75, v75, v55
	v_dual_add_f32 v168, v168, v64 :: v_dual_add_f32 v73, v73, v53
	v_dual_add_f32 v108, v108, v52 :: v_dual_add_f32 v167, v167, v41
	v_dual_add_f32 v106, v106, v50 :: v_dual_add_f32 v95, v95, v44
	v_dual_add_f32 v76, v76, v56 :: v_dual_add_f32 v93, v93, v42
	v_dual_add_f32 v74, v74, v54 :: v_dual_add_f32 v165, v165, v47
	v_dual_add_f32 v96, v96, v45 :: v_dual_add_f32 v163, v163, v48
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v130 offset:3680
	ds_load_u8 v116, v130 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v130 offset:3808
	ds_load_u8 v131, v130 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v131, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v130 offset:3424
	ds_load_u8 v114, v130 offset:3360
	v_lshl_or_b32 v115, v131, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v130 offset:3552
	ds_load_u8 v131, v130 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v131, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v130 offset:3168
	ds_load_u8 v131, v130 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v131, v113, 0xc0c0004
	ds_load_u8 v131, v130 offset:3296
	ds_load_u8 v132, v130 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v131, 16, v113
	v_wmma_i32_16x16x16_iu8 v[33:40], v[117:120], v[113:116], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[121:124], v[113:116], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v113, v130 offset:3952
	ds_load_u8 v114, v130 offset:3888
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v5, v25
	v_cvt_f32_i32_e32 v6, v29
	v_cvt_f32_i32_e32 v7, v26
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v70, v70, v38
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v27
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v89, v89, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v94, v94, v43 :: v_dual_add_f32 v97, v97, v33
	v_dual_add_f32 v166, v166, v46 :: v_dual_add_f32 v99, v99, v35
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v114, s34, v128
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v114, v114
	ds_load_u8 v115, v130 offset:4016
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v100, v100, v36 :: v_dual_add_f32 v71, v71, v39
	v_dual_add_f32 v98, v98, v34 :: v_dual_add_f32 v69, v69, v37
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v130 offset:3696
	ds_load_u8 v116, v130 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v130 offset:3824
	ds_load_u8 v131, v130 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v131, v116, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	ds_load_u8 v113, v130 offset:3440
	ds_load_u8 v114, v130 offset:3376
	v_lshl_or_b32 v115, v131, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v130 offset:3568
	ds_load_u8 v131, v130 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v131, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v114, 16, v113
	ds_load_u8 v113, v130 offset:3184
	ds_load_u8 v131, v130 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v131, v113, 0xc0c0004
	ds_load_u8 v131, v130 offset:3312
	ds_load_u8 v130, v130 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v130, v131, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v130, 16, v113
	v_wmma_i32_16x16x16_iu8 v[17:24], v[117:120], v[113:116], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[121:124], v[113:116], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v7, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v92, v92, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v162, v162, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v28
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v72, v72, v40 :: v_dual_add_f32 v87, v87, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v161, v161, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v32
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v91, v91, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v31
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v90, v90, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v159, v159, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v160, v160, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v20
	v_cvt_f32_i32_e32 v7, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v85, v85, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v23
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v88, v88, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v66, v66, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v12
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v86, v86, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v68, v68, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v9
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v67, v67, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v13
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v65, v65, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v11
	v_cvt_f32_i32_e32 v9, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v79, v79, v7 :: v_dual_add_f32 v80, v80, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v14
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v158, v158, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v78, v78, v8
	v_dual_add_f32 v156, v156, v9 :: v_dual_add_f32 v157, v157, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v77, v77, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v155, v155, v5
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v5, 0
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
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v172, s1, v151
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v1, v172 offset:832
	ds_load_u8 v2, v172 offset:768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v25, s0, v129
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v173, s1, v128
	v_add_nc_u32_e32 v174, s1, v127
	v_add_nc_u32_e32 v175, s1, v126
	v_add_nc_u32_e32 v57, s1, v125
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v172 offset:960
	ds_load_u8 v3, v172 offset:896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v2, 16, v1
	ds_load_u8 v1, v172 offset:576
	ds_load_u8 v2, v172 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v172 offset:704
	ds_load_u8 v3, v172 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v2, 16, v1
	ds_load_u8 v1, v172 offset:320
	ds_load_u8 v2, v172 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v172 offset:448
	ds_load_u8 v3, v172 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v2, 16, v1
	ds_load_u8 v1, v172 offset:64
	ds_load_u8 v2, v172
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v172 offset:192
	ds_load_u8 v3, v172 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v2, 16, v1
	ds_load_u8 v1, v25 offset:3328
	ds_load_u8 v2, v25 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:3840
	ds_load_u8 v3, v25 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v132, v2, 16, v1
	ds_load_u8 v1, v25 offset:2304
	ds_load_u8 v2, v25 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:2816
	ds_load_u8 v3, v25 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v131, v2, 16, v1
	ds_load_u8 v1, v25 offset:1280
	ds_load_u8 v2, v25 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:1792
	ds_load_u8 v3, v25 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v130, v2, 16, v1
	ds_load_u8 v1, v25 offset:256
	ds_load_u8 v2, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:768
	ds_load_u8 v3, v25 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v129, v2, 16, v1
	v_mov_b32_e32 v1, s16
	ds_load_u8 v17, v172 offset:1856
	ds_load_u8 v18, v172 offset:1792
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	v_mov_b32_e32 v8, s23
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[129:132], v[26:29], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v172 offset:1984
	ds_load_u8 v19, v172 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v18, 16, v17
	ds_load_u8 v17, v172 offset:1600
	ds_load_u8 v18, v172 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v172 offset:1728
	ds_load_u8 v19, v172 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v18, 16, v17
	ds_load_u8 v17, v172 offset:1344
	ds_load_u8 v18, v172 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v172 offset:1472
	ds_load_u8 v19, v172 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v18, 16, v17
	ds_load_u8 v17, v172 offset:1088
	ds_load_u8 v18, v172 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v172 offset:1216
	ds_load_u8 v19, v172 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v18, 16, v17
	ds_load_u8 v17, v25 offset:7424
	ds_load_u8 v18, v25 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:7936
	ds_load_u8 v19, v25 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v136, v18, 16, v17
	ds_load_u8 v17, v25 offset:6400
	ds_load_u8 v18, v25 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:6912
	ds_load_u8 v19, v25 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v135, v18, 16, v17
	ds_load_u8 v17, v25 offset:5376
	ds_load_u8 v18, v25 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:5888
	ds_load_u8 v19, v25 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v134, v18, 16, v17
	ds_load_u8 v17, v25 offset:4352
	ds_load_u8 v18, v25 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:4864
	ds_load_u8 v19, v25 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v133, v18, 16, v17
	ds_load_u8 v17, v172 offset:2880
	ds_load_u8 v18, v172 offset:2816
	v_wmma_i32_16x16x16_iu8 v[9:16], v[133:136], v[30:33], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v172 offset:3008
	ds_load_u8 v19, v172 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v18, 16, v17
	ds_load_u8 v17, v172 offset:2624
	ds_load_u8 v18, v172 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v172 offset:2752
	ds_load_u8 v19, v172 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v18, 16, v17
	ds_load_u8 v17, v172 offset:2368
	ds_load_u8 v18, v172 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v172 offset:2496
	ds_load_u8 v19, v172 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v18, 16, v17
	ds_load_u8 v17, v172 offset:2112
	ds_load_u8 v18, v172 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v172 offset:2240
	ds_load_u8 v19, v172 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v18, 16, v17
	ds_load_u8 v17, v25 offset:11520
	ds_load_u8 v18, v25 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:12032
	ds_load_u8 v19, v25 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v140, v18, 16, v17
	ds_load_u8 v17, v25 offset:10496
	ds_load_u8 v18, v25 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:11008
	ds_load_u8 v19, v25 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v139, v18, 16, v17
	ds_load_u8 v17, v25 offset:9472
	ds_load_u8 v18, v25 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:9984
	ds_load_u8 v19, v25 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v138, v18, 16, v17
	ds_load_u8 v17, v25 offset:8448
	ds_load_u8 v18, v25 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:8960
	ds_load_u8 v19, v25 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v18, 16, v17
	ds_load_u8 v17, v172 offset:3904
	ds_load_u8 v18, v172 offset:3840
	v_wmma_i32_16x16x16_iu8 v[9:16], v[137:140], v[34:37], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v172 offset:4032
	ds_load_u8 v19, v172 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v18, 16, v17
	ds_load_u8 v17, v172 offset:3648
	ds_load_u8 v18, v172 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v172 offset:3776
	ds_load_u8 v19, v172 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v18, 16, v17
	ds_load_u8 v17, v172 offset:3392
	ds_load_u8 v18, v172 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v172 offset:3520
	ds_load_u8 v19, v172 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v18, 16, v17
	ds_load_u8 v17, v172 offset:3136
	ds_load_u8 v18, v172 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v172 offset:3264
	ds_load_u8 v19, v172 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v18, 16, v17
	ds_load_u8 v17, v25 offset:15616
	ds_load_u8 v18, v25 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:16128
	ds_load_u8 v19, v25 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v144, v18, 16, v17
	ds_load_u8 v17, v25 offset:14592
	ds_load_u8 v18, v25 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:15104
	ds_load_u8 v19, v25 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v143, v18, 16, v17
	ds_load_u8 v17, v25 offset:13568
	ds_load_u8 v18, v25 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:14080
	ds_load_u8 v19, v25 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v18, 16, v17
	ds_load_u8 v17, v25 offset:12544
	ds_load_u8 v18, v25 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:13056
	ds_load_u8 v19, v25 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v141, v18, 16, v17
	ds_load_u8 v17, v25 offset:3456
	ds_load_u8 v18, v25 offset:3200
	v_wmma_i32_16x16x16_iu8 v[9:16], v[141:144], v[38:41], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:3968
	ds_load_u8 v19, v25 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v128, v18, 16, v17
	ds_load_u8 v17, v25 offset:2432
	ds_load_u8 v18, v25 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:2944
	ds_load_u8 v19, v25 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v127, v18, 16, v17
	ds_load_u8 v17, v25 offset:1408
	ds_load_u8 v18, v25 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:1920
	ds_load_u8 v19, v25 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v126, v18, 16, v17
	ds_load_u8 v17, v25 offset:384
	ds_load_u8 v18, v25 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:896
	ds_load_u8 v19, v25 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v125, v18, 16, v17
	v_wmma_i32_16x16x16_iu8 v[17:24], v[125:128], v[26:29], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v26, v25 offset:7552
	ds_load_u8 v27, v25 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:8064
	ds_load_u8 v28, v25 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v116, v27, 16, v26
	ds_load_u8 v26, v25 offset:6528
	ds_load_u8 v27, v25 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:7040
	ds_load_u8 v28, v25 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v115, v27, 16, v26
	ds_load_u8 v26, v25 offset:5504
	ds_load_u8 v27, v25 offset:5248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:6016
	ds_load_u8 v28, v25 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v27, 16, v26
	ds_load_u8 v26, v25 offset:4480
	ds_load_u8 v27, v25 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:4992
	ds_load_u8 v28, v25 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v113, v27, 16, v26
	ds_load_u8 v26, v25 offset:11648
	ds_load_u8 v27, v25 offset:11392
	v_wmma_i32_16x16x16_iu8 v[17:24], v[113:116], v[30:33], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:12160
	ds_load_u8 v28, v25 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v120, v27, 16, v26
	ds_load_u8 v26, v25 offset:10624
	ds_load_u8 v27, v25 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:11136
	ds_load_u8 v28, v25 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v119, v27, 16, v26
	ds_load_u8 v26, v25 offset:9600
	ds_load_u8 v27, v25 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:10112
	ds_load_u8 v28, v25 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v118, v27, 16, v26
	ds_load_u8 v26, v25 offset:8576
	ds_load_u8 v27, v25 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:9088
	ds_load_u8 v28, v25 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v27, 16, v26
	ds_load_u8 v26, v25 offset:15744
	ds_load_u8 v27, v25 offset:15488
	v_wmma_i32_16x16x16_iu8 v[17:24], v[117:120], v[34:37], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v33, v172 offset:1872
	ds_load_u8 v34, v172 offset:1808
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:16256
	ds_load_u8 v28, v25 offset:16000
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v172 offset:2000
	ds_load_u8 v35, v172 offset:1936
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v124, v27, 16, v26
	ds_load_u8 v26, v25 offset:14720
	ds_load_u8 v27, v25 offset:14464
	v_lshl_or_b32 v48, v34, 16, v33
	ds_load_u8 v33, v172 offset:1616
	ds_load_u8 v34, v172 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:15232
	ds_load_u8 v28, v25 offset:14976
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v172 offset:1744
	ds_load_u8 v35, v172 offset:1680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v123, v27, 16, v26
	ds_load_u8 v26, v25 offset:13696
	ds_load_u8 v27, v25 offset:13440
	v_lshl_or_b32 v47, v34, 16, v33
	ds_load_u8 v33, v172 offset:1360
	ds_load_u8 v34, v172 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:14208
	ds_load_u8 v28, v25 offset:13952
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v172 offset:1488
	ds_load_u8 v35, v172 offset:1424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v122, v27, 16, v26
	ds_load_u8 v26, v25 offset:12672
	ds_load_u8 v27, v25 offset:12416
	v_lshl_or_b32 v46, v34, 16, v33
	ds_load_u8 v33, v172 offset:1104
	ds_load_u8 v34, v172 offset:1040
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:13184
	ds_load_u8 v25, v25 offset:12928
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v172 offset:1232
	ds_load_u8 v35, v172 offset:1168
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v25, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v121, v25, 16, v26
	ds_load_u8 v25, v172 offset:848
	ds_load_u8 v26, v172 offset:784
	v_lshl_or_b32 v45, v34, 16, v33
	ds_load_u8 v33, v172 offset:2896
	ds_load_u8 v34, v172 offset:2832
	v_wmma_i32_16x16x16_iu8 v[17:24], v[121:124], v[38:41], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v172 offset:976
	ds_load_u8 v27, v172 offset:912
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v172 offset:3024
	ds_load_u8 v35, v172 offset:2960
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v172 offset:592
	ds_load_u8 v26, v172 offset:528
	v_lshl_or_b32 v52, v34, 16, v33
	ds_load_u8 v33, v172 offset:2640
	ds_load_u8 v34, v172 offset:2576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v172 offset:720
	ds_load_u8 v27, v172 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v172 offset:2768
	ds_load_u8 v35, v172 offset:2704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v43, v26, 16, v25
	ds_load_u8 v25, v172 offset:336
	ds_load_u8 v26, v172 offset:272
	v_lshl_or_b32 v51, v34, 16, v33
	ds_load_u8 v33, v172 offset:2384
	ds_load_u8 v34, v172 offset:2320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v172 offset:464
	ds_load_u8 v27, v172 offset:400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v172 offset:2512
	ds_load_u8 v35, v172 offset:2448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v172 offset:80
	ds_load_u8 v26, v172 offset:16
	v_lshl_or_b32 v50, v34, 16, v33
	ds_load_u8 v33, v172 offset:2128
	ds_load_u8 v34, v172 offset:2064
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v172 offset:208
	ds_load_u8 v27, v172 offset:144
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v172 offset:2256
	ds_load_u8 v35, v172 offset:2192
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v41, v26, 16, v25
	v_lshl_or_b32 v49, v34, 16, v33
	ds_load_u8 v33, v172 offset:3920
	ds_load_u8 v34, v172 offset:3856
	v_wmma_i32_16x16x16_iu8 v[25:32], v[129:132], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[133:136], v[45:48], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[137:140], v[49:52], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v172 offset:4048
	ds_load_u8 v35, v172 offset:3984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v34, 16, v33
	ds_load_u8 v33, v172 offset:3664
	ds_load_u8 v34, v172 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v172 offset:3792
	ds_load_u8 v35, v172 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v34, 16, v33
	ds_load_u8 v33, v172 offset:3408
	ds_load_u8 v34, v172 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v172 offset:3536
	ds_load_u8 v35, v172 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v34, 16, v33
	ds_load_u8 v33, v172 offset:3152
	ds_load_u8 v34, v172 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v172 offset:3280
	ds_load_u8 v35, v172 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v34, 16, v33
	v_wmma_i32_16x16x16_iu8 v[33:40], v[125:128], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v172 offset:864
	ds_load_u8 v42, v172 offset:800
	v_wmma_i32_16x16x16_iu8 v[25:32], v[141:144], v[53:56], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[113:116], v[45:48], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v31, v31
	v_wmma_i32_16x16x16_iu8 v[33:40], v[117:120], v[49:52], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v49, v172 offset:1888
	ds_load_u8 v50, v172 offset:1824
	v_cvt_f32_i32_e32 v32, v32
	v_wmma_i32_16x16x16_iu8 v[33:40], v[121:124], v[53:56], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_cvt_f32_i32_e32 v36, v36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v172 offset:992
	ds_load_u8 v43, v172 offset:928
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v172 offset:2016
	ds_load_u8 v51, v172 offset:1952
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v42, 16, v41
	ds_load_u8 v41, v172 offset:608
	ds_load_u8 v42, v172 offset:544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v148, v50, 16, v49
	ds_load_u8 v49, v172 offset:1632
	ds_load_u8 v50, v172 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v172 offset:736
	ds_load_u8 v43, v172 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v172 offset:1760
	ds_load_u8 v51, v172 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v60, v42, 16, v41
	ds_load_u8 v41, v172 offset:352
	ds_load_u8 v42, v172 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v147, v50, 16, v49
	ds_load_u8 v49, v172 offset:1376
	ds_load_u8 v50, v172 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v172 offset:480
	ds_load_u8 v43, v172 offset:416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v172 offset:1504
	ds_load_u8 v51, v172 offset:1440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v42, 16, v41
	ds_load_u8 v41, v172 offset:96
	ds_load_u8 v42, v172 offset:32
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v146, v50, 16, v49
	ds_load_u8 v49, v172 offset:1120
	ds_load_u8 v50, v172 offset:1056
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v172 offset:224
	ds_load_u8 v43, v172 offset:160
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v172 offset:1248
	ds_load_u8 v51, v172 offset:1184
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v58, v42, 16, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[41:48], v[129:132], v[58:61], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v145, v50, 16, v49
	ds_load_u8 v49, v172 offset:2912
	ds_load_u8 v50, v172 offset:2848
	v_wmma_i32_16x16x16_iu8 v[41:48], v[133:136], v[145:148], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v172 offset:3040
	ds_load_u8 v51, v172 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v179, v50, 16, v49
	ds_load_u8 v49, v172 offset:2656
	ds_load_u8 v50, v172 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v172 offset:2784
	ds_load_u8 v51, v172 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v178, v50, 16, v49
	ds_load_u8 v49, v172 offset:2400
	ds_load_u8 v50, v172 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v172 offset:2528
	ds_load_u8 v51, v172 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v50, 16, v49
	ds_load_u8 v49, v172 offset:2144
	ds_load_u8 v50, v172 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v172 offset:2272
	ds_load_u8 v51, v172 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v50, 16, v49
	ds_load_u8 v49, v172 offset:3936
	ds_load_u8 v50, v172 offset:3872
	v_wmma_i32_16x16x16_iu8 v[41:48], v[137:140], v[176:179], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v172 offset:4064
	ds_load_u8 v51, v172 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v183, v50, 16, v49
	ds_load_u8 v49, v172 offset:3680
	ds_load_u8 v50, v172 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v172 offset:3808
	ds_load_u8 v51, v172 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v182, v50, 16, v49
	ds_load_u8 v49, v172 offset:3424
	ds_load_u8 v50, v172 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v172 offset:3552
	ds_load_u8 v51, v172 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v181, v50, 16, v49
	ds_load_u8 v49, v172 offset:3168
	ds_load_u8 v50, v172 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v172 offset:3296
	ds_load_u8 v51, v172 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v180, v50, 16, v49
	v_wmma_i32_16x16x16_iu8 v[49:56], v[125:128], v[58:61], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v58, v172 offset:880
	ds_load_u8 v59, v172 offset:816
	v_wmma_i32_16x16x16_iu8 v[41:48], v[141:144], v[180:183], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[113:116], v[145:148], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[117:120], v[176:179], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[121:124], v[180:183], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v57, v57
	ds_load_u8 v59, v172 offset:944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v59, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v148, v57, 16, v58
	ds_load_u8 v57, v172 offset:624
	ds_load_u8 v58, v172 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v172 offset:752
	ds_load_u8 v59, v172 offset:688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v147, v58, 16, v57
	ds_load_u8 v57, v172 offset:368
	ds_load_u8 v58, v172 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v172 offset:496
	ds_load_u8 v59, v172 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v146, v58, 16, v57
	ds_load_u8 v57, v172 offset:112
	ds_load_u8 v58, v172 offset:48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v172 offset:240
	ds_load_u8 v59, v172 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v145, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[129:132], v[145:148], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v129, v172 offset:1904
	ds_load_u8 v130, v172 offset:1840
	v_wmma_i32_16x16x16_iu8 v[1:8], v[125:128], v[145:148], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v175
	ds_load_u8 v131, v172 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v132, v130, 16, v129
	ds_load_u8 v129, v172 offset:1648
	ds_load_u8 v130, v172 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v172 offset:1776
	ds_load_u8 v131, v172 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v131, v130, 16, v129
	ds_load_u8 v129, v172 offset:1392
	ds_load_u8 v130, v172 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v172 offset:1520
	ds_load_u8 v175, v172 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v175, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v130, v130, 16, v129
	ds_load_u8 v129, v172 offset:1136
	ds_load_u8 v175, v172 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v175, v129, 0xc0c0004
	ds_load_u8 v175, v172 offset:1264
	ds_load_u8 v176, v172 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v129, v175, 16, v129
	v_wmma_i32_16x16x16_iu8 v[57:64], v[133:136], v[129:132], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v133, v172 offset:2928
	ds_load_u8 v134, v172 offset:2864
	v_wmma_i32_16x16x16_iu8 v[1:8], v[113:116], v[129:132], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v115, v9
	v_cvt_f32_i32_e32 v113, v13
	v_cvt_f32_i32_e32 v114, v14
	v_cvt_f32_i32_e32 v116, v15
	v_cvt_f32_i32_e32 v9, v17
	v_cvt_f32_i32_e32 v131, v21
	v_cvt_f32_i32_e32 v130, v26
	v_cvt_f32_i32_e32 v132, v27
	v_cvt_f32_i32_e32 v26, v29
	v_cvt_f32_i32_e32 v29, v30
	v_cvt_f32_i32_e32 v13, v33
	v_cvt_f32_i32_e32 v33, v34
	v_cvt_f32_i32_e32 v34, v35
	v_cvt_f32_i32_e32 v14, v38
	v_cvt_f32_i32_e32 v15, v39
	v_cvt_f32_i32_e32 v35, v41
	v_cvt_f32_i32_e32 v39, v43
	v_cvt_f32_i32_e32 v41, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v174
	ds_load_u8 v135, v172 offset:2992
	v_cvt_f32_i32_e32 v30, v48
	v_cvt_f32_i32_e32 v17, v49
	v_cvt_f32_i32_e32 v38, v50
	v_cvt_f32_i32_e32 v43, v52
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v136, v134, 16, v133
	ds_load_u8 v133, v172 offset:2672
	ds_load_u8 v134, v172 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v172 offset:2800
	ds_load_u8 v135, v172 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v135, v134, 16, v133
	ds_load_u8 v133, v172 offset:2416
	ds_load_u8 v134, v172 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v172 offset:2544
	ds_load_u8 v174, v172 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v174, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v134, v134, 16, v133
	ds_load_u8 v133, v172 offset:2160
	ds_load_u8 v174, v172 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v174, v133, 0xc0c0004
	ds_load_u8 v174, v172 offset:2288
	ds_load_u8 v175, v172 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v133, v174, 16, v133
	v_wmma_i32_16x16x16_iu8 v[57:64], v[137:140], v[133:136], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v137, v172 offset:3952
	ds_load_u8 v138, v172 offset:3888
	v_wmma_i32_16x16x16_iu8 v[1:8], v[117:120], v[133:136], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v117, v10
	v_cvt_f32_i32_e32 v120, v11
	v_cvt_f32_i32_e32 v119, v16
	v_cvt_f32_i32_e32 v118, v18
	v_cvt_f32_i32_e32 v10, v22
	v_cvt_f32_i32_e32 v11, v23
	v_cvt_f32_i32_e32 v133, v28
	v_cvt_f32_i32_e32 v134, v37
	v_cvt_f32_i32_e32 v16, v40
	v_cvt_f32_i32_e32 v37, v42
	v_cvt_f32_i32_e32 v23, v45
	v_cvt_f32_i32_e32 v28, v47
	v_cvt_f32_i32_e32 v40, v51
	v_cvt_f32_i32_e32 v18, v54
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v173
	ds_load_u8 v139, v172 offset:4016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v140, v138, 16, v137
	ds_load_u8 v137, v172 offset:3696
	ds_load_u8 v138, v172 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v172 offset:3824
	ds_load_u8 v139, v172 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v139, v138, 16, v137
	ds_load_u8 v137, v172 offset:3440
	ds_load_u8 v138, v172 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v172 offset:3568
	ds_load_u8 v173, v172 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v173, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v138, v138, 16, v137
	ds_load_u8 v137, v172 offset:3184
	ds_load_u8 v173, v172 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v173, v137, 0xc0c0004
	ds_load_u8 v173, v172 offset:3312
	ds_load_u8 v172, v172 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v172, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v137, v172, 16, v137
	v_wmma_i32_16x16x16_iu8 v[57:64], v[141:144], v[137:140], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[121:124], v[137:140], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v122, v12
	v_cvt_f32_i32_e32 v121, v19
	v_cvt_f32_i32_e32 v124, v20
	v_cvt_f32_i32_e32 v12, v24
	v_cvt_f32_i32_e32 v123, v25
	v_cvt_f32_i32_e32 v25, v46
	v_cvt_f32_i32_e32 v46, v53
	v_cvt_f32_i32_e32 v19, v55
	v_cvt_f32_i32_e32 v20, v56
	v_cvt_f32_i32_e32 v42, v57
	v_cvt_f32_i32_e32 v44, v58
	v_cvt_f32_i32_e32 v47, v59
	v_cvt_f32_i32_e32 v49, v60
	v_cvt_f32_i32_e32 v21, v61
	v_cvt_f32_i32_e32 v22, v62
	v_cvt_f32_i32_e32 v24, v63
	v_cvt_f32_i32_e32 v27, v64
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v45, v2
	v_cvt_f32_i32_e32 v48, v3
	v_cvt_f32_i32_e32 v50, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v2, v6
	v_cvt_f32_i32_e32 v3, v7
	v_cvt_f32_i32_e32 v4, v8
.LBB0_11:
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v6, s31, v151
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s17, s9, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_mov_b32 s16, s8
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_lshlrev_b32_e32 v6, 1, v6
	.loc	1 435 22 is_stmt 1              ; generate_amdgcn.py:435:22
	v_or_b32_e32 v7, s33, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v32, v76, v32 :: v_dual_add_f32 v31, v75, v31
	v_dual_add_f32 v13, v167, v13 :: v_dual_add_f32 v34, v94, v34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_or_b32_e32 v8, 32, v6
	v_or_b32_e32 v51, 64, v6
	v_or_b32_e32 v52, 0x60, v6
	s_clause 0x3
	buffer_load_u16 v53, v6, s[16:19], 0 offen
	buffer_load_u16 v54, v8, s[16:19], 0 offen
	buffer_load_u16 v51, v51, s[16:19], 0 offen
	buffer_load_u16 v52, v52, s[16:19], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v8, v112, v122 :: v_dual_lshlrev_b32 v7, 1, v7
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s17, s11, 0xffff
	s_mov_b32 s16, s10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v37, v98, v37 :: v_dual_add_f32 v46, v92, v46
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v6, v7, s[16:19], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v35, v97, v35 :: v_dual_add_f32 v40, v90, v40
	v_dual_add_f32 v25, v70, v25 :: v_dual_add_f32 v38, v89, v38
	v_dual_add_f32 v47, v87, v47 :: v_dual_add_f32 v22, v66, v22
	v_dual_add_f32 v49, v88, v49 :: v_dual_add_f32 v24, v67, v24
	v_add_f32_e32 v7, v111, v120
	v_dual_add_f32 v9, v164, v9 :: v_dual_add_f32 v62, v103, v124
	v_dual_add_f32 v63, v102, v121 :: v_dual_add_f32 v12, v168, v12
	v_dual_add_f32 v10, v170, v10 :: v_dual_add_f32 v11, v169, v11
	v_dual_add_f32 v5, v80, v5 :: v_dual_lshlrev_b32 v120, 1, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v75, v31, s2
	v_cndmask_b32_e64 v34, v94, v34, s2
	v_cndmask_b32_e64 v35, v97, v35, s2
	v_cndmask_b32_e64 v75, v98, v37, s2
	v_cndmask_b32_e64 v94, v70, v25, s2
	v_cndmask_b32_e64 v97, v66, v22, s2
	v_cndmask_b32_e64 v98, v67, v24, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v57, v84, v119 :: v_dual_add_f32 v58, v83, v116
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v122, v171, 2, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v128, v164, v9, s2
	v_cndmask_b32_e64 v129, v170, v10, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v55, v110, v117 :: v_dual_add_f32 v56, v109, v115
	v_dual_add_f32 v115, v106, v130 :: v_dual_add_f32 v116, v105, v123
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v123, v171, 1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v111, v111, v7, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v59, v82, v114 :: v_dual_add_f32 v60, v81, v113
	v_dual_add_f32 v61, v104, v131 :: v_dual_add_f32 v64, v101, v118
	v_dual_add_f32 v113, v107, v132 :: v_dual_add_f32 v114, v108, v133
	v_dual_add_f32 v29, v74, v29 :: v_dual_add_f32 v26, v73, v26
	v_dual_add_f32 v117, v96, v134 :: v_dual_add_f32 v36, v95, v36
	v_dual_add_f32 v33, v93, v33 :: v_dual_add_f32 v14, v166, v14
	v_dual_add_f32 v15, v165, v15 :: v_dual_add_f32 v16, v163, v16
	v_dual_add_f32 v23, v69, v23 :: v_dual_add_f32 v20, v159, v20
	v_dual_add_f32 v17, v162, v17 :: v_dual_add_f32 v18, v161, v18
	v_dual_add_f32 v19, v160, v19 :: v_dual_add_f32 v42, v85, v42
	v_dual_add_f32 v21, v65, v21 :: v_dual_add_f32 v48, v78, v48
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v130, v169, v11, s2
	v_cndmask_b32_e64 v131, v168, v12, s2
	v_cndmask_b32_e64 v132, v167, v13, s2
	v_cndmask_b32_e64 v55, v110, v55, s2
	v_cndmask_b32_e64 v110, v112, v8, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v133, v166, v14, s2
	v_cndmask_b32_e64 v134, v165, v15, s2
	v_cndmask_b32_e64 v135, v163, v16, s2
	v_cndmask_b32_e64 v136, v162, v17, s2
	v_cndmask_b32_e64 v137, v161, v18, s2
	v_cndmask_b32_e64 v138, v160, v19, s2
	v_cndmask_b32_e64 v139, v159, v20, s2
	v_cndmask_b32_e64 v29, v74, v29, s2
	v_cndmask_b32_e64 v74, v96, v117, s2
	v_cndmask_b32_e64 v96, v65, v21, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v39, v99, v39 :: v_dual_add_f32 v30, v72, v30
	v_dual_add_f32 v45, v77, v45 :: v_dual_add_f32 v118, v156, v3
	v_dual_add_f32 v41, v100, v41 :: v_dual_add_f32 v28, v71, v28
	v_dual_add_f32 v43, v91, v43 :: v_dual_add_f32 v44, v86, v44
	v_dual_add_f32 v27, v68, v27 :: v_dual_add_f32 v50, v79, v50
	v_dual_add_f32 v1, v158, v1 :: v_dual_add_f32 v2, v157, v2
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v127, v153, 9, 0
.Ltmp17:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v59, v82, v59, s2
	v_cndmask_b32_e64 v82, v83, v58, s2
	v_cndmask_b32_e64 v83, v101, v64, s2
	v_cndmask_b32_e64 v101, v105, v116, s2
	v_cndmask_b32_e64 v105, v73, v26, s2
	v_cndmask_b32_e64 v33, v93, v33, s2
	v_cndmask_b32_e64 v93, v99, v39, s2
	v_cndmask_b32_e64 v85, v85, v42, s2
	v_cndmask_b32_e64 v77, v77, v45, s2
	v_cndmask_b32_e64 v1, v158, v1, s2
	v_cndmask_b32_e64 v2, v157, v2, s2
	v_cndmask_b32_e64 v118, v156, v118, s2
	v_cndmask_b32_e64 v109, v109, v56, s2
	v_cndmask_b32_e64 v81, v81, v60, s2
	v_cndmask_b32_e64 v57, v84, v57, s2
	v_cndmask_b32_e64 v63, v102, v63, s2
	v_cndmask_b32_e64 v62, v103, v62, s2
	v_cndmask_b32_e64 v84, v104, v61, s2
	v_cndmask_b32_e64 v102, v106, v115, s2
	v_cndmask_b32_e64 v103, v108, v114, s2
	v_cndmask_b32_e64 v104, v107, v113, s2
	v_cndmask_b32_e64 v32, v76, v32, s2
	v_cndmask_b32_e64 v36, v95, v36, s2
	v_cndmask_b32_e64 v76, v100, v41, s2
	v_cndmask_b32_e64 v23, v69, v23, s2
	v_cndmask_b32_e64 v28, v71, v28, s2
	v_cndmask_b32_e64 v95, v72, v30, s2
	v_cndmask_b32_e64 v89, v89, v38, s2
	v_cndmask_b32_e64 v90, v90, v40, s2
	v_cndmask_b32_e64 v91, v91, v43, s2
	v_cndmask_b32_e64 v92, v92, v46, s2
	v_cndmask_b32_e64 v86, v86, v44, s2
	v_cndmask_b32_e64 v88, v88, v49, s2
	v_cndmask_b32_e64 v87, v87, v47, s2
	v_cndmask_b32_e64 v99, v68, v27, s2
	v_cndmask_b32_e64 v78, v78, v48, s2
	v_cndmask_b32_e64 v79, v79, v50, s2
	v_cndmask_b32_e64 v80, v80, v5, s2
	s_mov_b32 s0, 0x76543210
.Ltmp18:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s17, s13, 0xffff
	s_mov_b32 s16, s12
.Ltmp19:
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v25, 16, v51
	v_lshlrev_b32_e32 v24, 16, v54
	v_lshlrev_b32_e32 v22, 16, v53
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v121, 5, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v119, v155, v4
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_and_b32_e32 v9, 28, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_and_b32_e32 v10, 32, v121
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v119, v155, v119, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_add3_u32 v7, v122, v10, v9
	ds_store_b32 v7, v6
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v123 offset:512
	ds_load_b128 v[10:13], v123 offset:528
	ds_load_b128 v[14:17], v123
	ds_load_b128 v[18:21], v123 offset:16
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp21:
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v45, v12, v25
	v_mul_f32_e32 v39, v6, v24
	v_dual_mul_f32 v38, v13, v22 :: v_dual_lshlrev_b32 v3, 5, v153
	v_dual_mul_f32 v37, v12, v22 :: v_dual_and_b32 v124, 4, v0
	v_dual_mul_f32 v49, v14, v22 :: v_dual_lshlrev_b32 v26, 16, v52
	v_mul_f32_e32 v42, v13, v24
	v_dual_mul_f32 v43, v6, v25 :: v_dual_and_b32 v126, 0x80, v0
	v_dual_mul_f32 v27, v6, v22 :: v_dual_and_b32 v4, 0x60, v0
	v_dual_mul_f32 v44, v11, v25 :: v_dual_and_b32 v125, 8, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v40, v11, v24 :: v_dual_lshlrev_b32 v5, 1, v126
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v106, v124, 2, v127
	v_and_or_b32 v108, 0x680, v154, v3
.Ltmp23:
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v30, v11, v22 :: v_dual_mul_f32 v41, v12, v24
	v_mul_f32_e32 v46, v13, v25
	v_dual_mul_f32 v6, v6, v26 :: v_dual_mul_f32 v73, v15, v24
	v_dual_mul_f32 v11, v11, v26 :: v_dual_mul_f32 v72, v14, v24
	v_dual_mul_f32 v12, v12, v26 :: v_dual_mul_f32 v115, v19, v24
	v_dual_mul_f32 v48, v13, v26 :: v_dual_mul_f32 v113, v16, v24
	v_dual_mul_f32 v50, v15, v22 :: v_dual_mul_f32 v117, v21, v24
	v_dual_mul_f32 v51, v17, v22 :: v_dual_mul_f32 v114, v18, v24
	v_dual_mul_f32 v54, v16, v22 :: v_dual_mul_f32 v123, v10, v24
	v_dual_mul_f32 v65, v18, v22 :: v_dual_mul_f32 v112, v17, v24
	v_dual_mul_f32 v66, v19, v22 :: v_dual_mul_f32 v121, v8, v24
	v_dual_mul_f32 v67, v20, v22 :: v_dual_mul_f32 v120, v7, v24
	v_dual_mul_f32 v68, v21, v22 :: v_dual_mul_f32 v127, v14, v25
	v_dual_mul_f32 v69, v7, v22 :: v_dual_mul_f32 v116, v20, v24
	v_dual_mul_f32 v70, v8, v22 :: v_dual_mul_f32 v141, v17, v25
	v_dual_mul_f32 v71, v9, v22 :: v_dual_mul_f32 v140, v15, v25
	v_dual_mul_f32 v22, v10, v22 :: v_dual_mul_f32 v145, v20, v25
	v_dual_mul_f32 v122, v9, v24 :: v_dual_mul_f32 v143, v18, v25
	v_dual_mul_f32 v142, v16, v25 :: v_dual_mul_f32 v15, v15, v26
	v_dual_mul_f32 v144, v19, v25 :: v_dual_mul_f32 v17, v17, v26
	v_dual_mul_f32 v146, v21, v25 :: v_dual_mul_f32 v155, v18, v26
	v_dual_mul_f32 v147, v7, v25 :: v_dual_mul_f32 v14, v14, v26
	v_dual_mul_f32 v148, v8, v25 :: v_dual_mul_f32 v7, v7, v26
	v_dual_mul_f32 v153, v9, v25 :: v_dual_mul_f32 v16, v16, v26
	v_mul_f32_e32 v154, v10, v25
	v_dual_mul_f32 v18, v19, v26 :: v_dual_mul_f32 v47, v128, v27
	v_mul_f32_e32 v19, v20, v26
	v_dual_mul_f32 v157, v8, v26 :: v_dual_mul_f32 v60, v130, v37
	v_dual_mul_f32 v158, v9, v26 :: v_dual_mul_f32 v9, v118, v12
	v_dual_mul_f32 v159, v10, v26 :: v_dual_mul_f32 v64, v132, v39
	v_dual_mul_f32 v156, v21, v26 :: v_dual_mul_f32 v53, v134, v41
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v58, v129, v30
	v_dual_mul_f32 v61, v131, v38 :: v_dual_mul_f32 v56, v133, v40
	v_dual_mul_f32 v52, v135, v42 :: v_dual_mul_f32 v37, v109, v49
	v_dual_mul_f32 v30, v136, v43 :: v_dual_mul_f32 v25, v139, v46
	v_dual_mul_f32 v26, v137, v44 :: v_dual_mul_f32 v39, v111, v54
	v_dual_mul_f32 v24, v138, v45 :: v_dual_mul_f32 v13, v1, v6
	v_dual_mul_f32 v8, v2, v11 :: v_dual_mul_f32 v41, v81, v65
	v_mul_f32_e32 v10, v119, v48
	v_mul_f32_e32 v40, v110, v51
	v_dual_mul_f32 v38, v55, v50 :: v_dual_mul_f32 v55, v62, v71
	v_dual_mul_f32 v44, v57, v68 :: v_dual_mul_f32 v43, v82, v67
	v_dual_mul_f32 v42, v59, v66 :: v_dual_mul_f32 v65, v101, v72
	v_mul_f32_e32 v57, v84, v22
	v_mul_f32_e32 v54, v63, v70
	v_dual_mul_f32 v48, v83, v69 :: v_dual_mul_f32 v67, v33, v120
	v_dual_mul_f32 v68, v104, v113 :: v_dual_mul_f32 v71, v31, v116
	v_dual_mul_f32 v69, v103, v112 :: v_dual_mul_f32 v66, v102, v73
	v_dual_mul_f32 v45, v93, v142 :: v_dual_mul_f32 v70, v32, v117
	v_mul_f32_e32 v49, v75, v140
	v_mul_f32_e32 v73, v29, v115
	v_dual_mul_f32 v72, v105, v114 :: v_dual_mul_f32 v63, v34, v121
	v_dual_mul_f32 v59, v74, v123 :: v_dual_mul_f32 v62, v36, v122
	v_dual_mul_f32 v46, v76, v141 :: v_dual_mul_f32 v33, v95, v146
	v_dual_mul_f32 v50, v35, v127 :: v_dual_mul_f32 v27, v92, v154
	v_dual_mul_f32 v34, v28, v145 :: v_dual_mul_f32 v29, v90, v148
	v_dual_mul_f32 v35, v94, v144 :: v_dual_mul_f32 v36, v23, v143
	v_dual_mul_f32 v23, v85, v14 :: v_dual_mul_f32 v28, v91, v153
	v_mul_f32_e32 v31, v89, v147
	v_dual_mul_f32 v21, v87, v16 :: v_dual_mul_f32 v20, v88, v17
	v_dual_mul_f32 v22, v86, v15 :: v_dual_mul_f32 v15, v99, v156
	v_mul_f32_e32 v16, v98, v19
	v_dual_mul_f32 v18, v97, v18 :: v_dual_mul_f32 v19, v96, v155
	v_dual_mul_f32 v11, v80, v159 :: v_dual_mul_f32 v12, v79, v158
	v_dual_mul_f32 v14, v78, v157 :: v_dual_mul_f32 v17, v77, v7
.Ltmp24:
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
	v_max3_f32 v86, |v17|, |v14|, |v12|
	v_max3_f32 v87, |v11|, |v8|, |v9|
	v_max3_f32 v6, |v43|, |v44|, |v47|
	v_max3_f32 v75, |v71|, |v70|, |v64|
	v_max3_f32 v80, |v34|, |v33|, |v30|
	v_max3_f32 v85, |v16|, |v15|, |v13|
	v_max3_f32 v1, v1, |v39|, v2
	v_max3_f32 v2, v7, v32, |v61|
	v_max3_f32 v7, v51, |v68|, v74
	v_max3_f32 v32, v76, v77, |v52|
	v_max3_f32 v51, v78, |v45|, v79
	v_max3_f32 v74, v81, v82, |v25|
	v_max3_f32 v76, v83, |v21|, v84
	v_max3_f32 v77, v86, v87, |v10|
	v_max3_f32 v1, v1, v6, v2
	v_max3_f32 v2, v7, v75, v32
	v_max3_f32 v6, v51, v80, v74
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v100, v3, v4
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v7, v76, v85, v77
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v51, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v74, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v75, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_lshrrev_b32_e32 v107, 3, v126
	v_permlanex16_b32 v76, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v78, v124, 6, 0
	v_lshl_add_u32 v32, v125, 4, v106
	v_xor_b32_e32 v79, v108, v4
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v77, v74, v74 :: v_dual_max_f32 v80, v75, v75
	v_max_f32_e32 v51, v51, v51
	v_max_f32_e32 v81, v76, v76
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v32, v32, v5, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v75, v2, v77
	v_max_f32_e32 v76, v6, v80
	v_dual_max_f32 v74, v1, v51 :: v_dual_max_f32 v77, v7, v81
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v1, v78, v107, v79
	v_add_nc_u32_e32 v78, 0, v152
	ds_store_b128 v32, v[74:77]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[74:77], v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v1, v74 :: v_dual_mov_b32 v6, v75
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v7, v75, v75 :: v_dual_mov_b32 v32, v76
	v_max_f32_e32 v51, v77, v77
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v77, v77 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v32, v32 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v2, v74, v74 :: v_dual_max_f32 v75, v77, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v74, v76, v76 :: v_dual_max_f32 v1, v1, v1
	v_max_f32_e32 v32, v32, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v51, v51, v75
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v76, 1, v4
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v2, v1
.Ltmp37:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v4, v149, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v2, v7, v6
	v_dual_max_f32 v6, v74, v32 :: v_dual_mov_b32 v7, v51
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v32, v1 :: v_dual_mov_b32 v75, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v74, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v32, v32 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v7, v7, v7
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v74, v74 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v32, v32, v32 :: v_dual_max_f32 v75, v75, v75
	v_dual_max_f32 v7, v51, v7 :: v_dual_max_f32 v74, v74, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v1, v1, v32 :: v_dual_max_f32 v6, v6, v75
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v51, v7 :: v_dual_max_f32 v2, v2, v74
	v_lshlrev_b32_e32 v32, 3, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v74, v1 :: v_dual_mov_b32 v77, v6
	v_mov_b32_dpp v51, v51 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v75, v2 :: v_dual_lshlrev_b32 v80, 5, v124
	v_mov_b32_dpp v74, v74 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v51, v51, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v75, v75 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v74, v74, v74 :: v_dual_max_f32 v81, v77, v77
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add_nc_u32_e32 v79, 0, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v75, v75, v75
	v_dual_max_f32 v77, v7, v51 :: v_dual_max_f32 v74, v1, v74
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v1, v78, v80, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v79, v79, v76, v32
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v75, v2, v75
	v_max_f32_e32 v76, v6, v81
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	ds_store_b128 v79, v[74:77]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[74:77], v1
.Ltmp52:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_dual_max_f32 v2, v75, v75 :: v_dual_max_f32 v7, v77, v77
	v_dual_max_f32 v1, v74, v74 :: v_dual_max_f32 v6, v76, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v2, 0x2b8cbccc, v2 :: v_dual_max_f32 v1, 0x2b8cbccc, v1
	v_max_f32_e32 v6, 0x2b8cbccc, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v74, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v32, null, 0x40e00000, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v51, null, 0x40e00000, 0x40e00000, v6
	v_rcp_f32_e32 v78, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v76, v32
	v_div_scale_f32 v81, s0, v6, 0x40e00000, v6
	v_rcp_f32_e32 v77, v51
	v_div_scale_f32 v80, vcc_lo, v1, 0x40e00000, v1
	v_div_scale_f32 v82, s1, v2, 0x40e00000, v2
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v85, -v74, v78, 1.0
	v_max_f32_e32 v7, 0x2b8cbccc, v7
	v_fma_f32 v83, -v32, v76, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v51, v77, 1.0
	v_fmac_f32_e32 v78, v85, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v75, null, 0x40e00000, 0x40e00000, v7
	v_div_scale_f32 v87, s2, v7, 0x40e00000, v7
	v_fmac_f32_e32 v76, v83, v76
	v_rcp_f32_e32 v79, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v75, v79, 1.0
	v_fmac_f32_e32 v79, v86, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v77, v84, v77 :: v_dual_mul_f32 v86, v87, v79
	v_mul_f32_e32 v84, v81, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v91, -v75, v86, v87
	v_fma_f32 v89, -v51, v84, v81
	v_mul_f32_e32 v83, v80, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v85, v82, v78 :: v_dual_fmac_f32 v86, v91, v79
	v_fmac_f32_e32 v84, v89, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v88, -v32, v83, v80
	v_fma_f32 v90, -v74, v85, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v75, v86, v87
	v_fma_f32 v51, -v51, v84, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v88, v76
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v88.h, 0
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v85, v90, v78
	v_fma_f32 v32, -v32, v83, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v74, -v74, v85, v82
	v_div_fmas_f32 v32, v32, v76, v83
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v51, v51, v77, v84
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fixup_f32 v1, v32, 0x40e00000, v1
	v_div_fmas_f32 v74, v74, v78, v85
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v32, v51, 0x40e00000, v6
	v_div_fmas_f32 v6, v75, v79, v86
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v51.h, v88.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v2, v74, 0x40e00000, v2
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v51.l, v1.h
	v_mov_b16_e32 v88.l, v32.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v74, v6, 0x40e00000, v7
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v6.h, v88.h
	v_mov_b16_e32 v6.l, v2.h
	v_and_b32_e32 v7, 1, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v75, 1, v6
	v_add3_u32 v6, v1, v7, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v7, v2, v75, 0x7fff
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v75, 0xffff0000, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v94, null, v75, v75, v48
	v_rcp_f32_e32 v108, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v120, -v94, v108, 1.0
	v_fmac_f32_e32 v108, v120, v108
	v_div_scale_f32 v82, null, v75, v75, v40
	v_div_scale_f32 v78, null, v75, v75, v38
	v_div_scale_f32 v80, null, v75, v75, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v102, v82
	v_div_scale_f32 v86, null, v75, v75, v42
	v_rcp_f32_e32 v100, v78
	v_div_scale_f32 v90, null, v75, v75, v44
	v_div_scale_f32 v84, null, v75, v75, v41
	v_div_scale_f32 v96, null, v75, v75, v54
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v114, -v82, v102, 1.0
	.loc	1 76 13 is_stmt 1               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v51, 1, v88
	v_mov_b16_e32 v88.l, v74.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v101, v80
	v_rcp_f32_e32 v104, v86
	v_rcp_f32_e32 v106, v90
	v_rcp_f32_e32 v103, v84
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v76, 1, v88
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v88, null, v75, v75, v43
	v_rcp_f32_e32 v109, v96
	v_fma_f32 v112, -v78, v100, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v2, v74, v76, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v76, null, v75, v75, v37
	v_rcp_f32_e32 v105, v88
	v_div_scale_f32 v79, s0, v38, v75, v38
	v_rcp_f32_e32 v99, v76
	v_fma_f32 v113, -v80, v101, 1.0
	v_fma_f32 v116, -v86, v104, 1.0
	v_fmac_f32_e32 v100, v112, v100
	v_div_scale_f32 v77, vcc_lo, v37, v75, v37
	v_fma_f32 v118, -v90, v106, 1.0
	v_fmac_f32_e32 v102, v114, v102
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v1, v32, v51, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v92, null, v75, v75, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v111, -v76, v99, 1.0
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v32, 0xffff0000, v2
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v87, s4, v42, v75, v42
	v_fma_f32 v115, -v84, v103, 1.0
	v_fmac_f32_e32 v99, v111, v99
	v_fma_f32 v121, -v96, v109, 1.0
	v_dual_fmac_f32 v101, v113, v101 :: v_dual_mul_f32 v112, v79, v100
	v_fmac_f32_e32 v104, v116, v104
	v_div_scale_f32 v81, s1, v39, v75, v39
	v_dual_fmac_f32 v106, v118, v106 :: v_dual_and_b32 v51, 0xffff0000, v1
	v_div_scale_f32 v91, s6, v44, v75, v44
	v_mul_f32_e32 v111, v77, v99
	v_div_scale_f32 v83, s2, v40, v75, v40
	v_rcp_f32_e32 v107, v92
	v_fma_f32 v117, -v88, v105, 1.0
	v_div_scale_f32 v85, s3, v41, v75, v41
	v_dual_fmac_f32 v109, v121, v109 :: v_dual_mul_f32 v116, v87, v104
	v_fma_f32 v122, -v78, v112, v79
	v_fmac_f32_e32 v103, v115, v103
	v_div_scale_f32 v95, s8, v48, v75, v48
	v_dual_mul_f32 v113, v81, v101 :: v_dual_mul_f32 v118, v91, v106
	v_fma_f32 v121, -v76, v111, v77
	v_dual_fmac_f32 v105, v117, v105 :: v_dual_mul_f32 v114, v83, v102
	v_div_scale_f32 v89, s5, v43, v75, v43
	v_fma_f32 v126, -v86, v116, v87
	v_dual_fmac_f32 v112, v122, v100 :: v_dual_mul_f32 v115, v85, v103
	v_div_scale_f32 v98, null, v75, v75, v55
	v_mul_f32_e32 v120, v95, v108
	v_fma_f32 v123, -v80, v113, v81
	v_fmac_f32_e32 v111, v121, v99
	v_fma_f32 v119, -v92, v107, 1.0
	v_fma_f32 v124, -v82, v114, v83
	v_fma_f32 v128, -v90, v118, v91
	v_dual_mul_f32 v117, v89, v105 :: v_dual_fmac_f32 v116, v126, v104
	v_fma_f32 v125, -v84, v115, v85
	v_rcp_f32_e32 v110, v98
	v_fmac_f32_e32 v113, v123, v101
	v_fma_f32 v76, -v76, v111, v77
	v_dual_fmac_f32 v107, v119, v107 :: v_dual_fmac_f32 v114, v124, v102
	v_div_scale_f32 v93, s7, v47, v75, v47
	v_fmac_f32_e32 v118, v128, v106
	v_fma_f32 v127, -v88, v117, v89
	v_fma_f32 v77, -v78, v112, v79
	v_fmac_f32_e32 v115, v125, v103
	v_fma_f32 v78, -v80, v113, v81
	v_div_fmas_f32 v76, v76, v99, v111
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v79, -v82, v114, v83
	v_fma_f32 v130, -v94, v120, v95
	v_mul_f32_e32 v119, v93, v107
	v_fmac_f32_e32 v117, v127, v105
	v_div_fmas_f32 v77, v77, v100, v112
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v80, -v84, v115, v85
	v_div_fmas_f32 v78, v78, v101, v113
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v81, -v86, v116, v87
	v_div_fixup_f32 v37, v76, v75, v37
	v_div_fmas_f32 v76, v79, v102, v114
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v120, v130, v108
	v_fma_f32 v129, -v92, v119, v93
	v_fma_f32 v82, -v88, v117, v89
	v_div_fixup_f32 v38, v77, v75, v38
	v_div_fmas_f32 v77, v80, v103, v115
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v83, -v90, v118, v91
	v_div_fixup_f32 v39, v78, v75, v39
	v_div_fmas_f32 v78, v81, v104, v116
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v119, v129, v107
	v_div_fmas_f32 v79, v82, v105, v117
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v41, v77, v75, v41
	v_div_fmas_f32 v80, v83, v106, v118
	v_fma_f32 v77, -v98, v110, 1.0
	v_fma_f32 v84, -v92, v119, v93
	v_div_scale_f32 v82, s0, v55, v75, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v44, v80, v75, v44
	v_fma_f32 v80, -v94, v120, v95
	v_fmac_f32_e32 v110, v77, v110
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v43, v79, v75, v43
	v_div_fmas_f32 v79, v84, v107, v119
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v84, v82, v110
	v_div_fmas_f32 v80, v80, v108, v120
	v_div_scale_f32 v97, s9, v54, v75, v54
	v_div_fixup_f32 v42, v78, v75, v42
	v_div_scale_f32 v78, null, v75, v75, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v48, v80, v75, v48
	v_fma_f32 v80, -v98, v84, v82
	v_div_scale_f32 v87, null, v75, v75, v60
	v_div_fixup_f32 v40, v76, v75, v40
	v_mul_f32_e32 v76, v97, v109
	v_rcp_f32_e32 v77, v78
	v_fmac_f32_e32 v84, v80, v110
	v_rcp_f32_e32 v80, v87
	v_div_scale_f32 v88, null, v75, v75, v61
	v_fma_f32 v81, -v96, v76, v97
	v_div_fixup_f32 v47, v79, v75, v47
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v90, v88
	v_div_scale_f32 v83, null, v75, v75, v58
	v_fmac_f32_e32 v76, v81, v109
	v_fma_f32 v85, -v78, v77, 1.0
	v_fma_f32 v91, -v87, v80, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v81, v83
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v74, 0xffff0000, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v79, -v96, v76, v97
	v_fmac_f32_e32 v80, v91, v80
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v88, v90, 1.0
	v_fmac_f32_e32 v77, v85, v77
	v_div_scale_f32 v85, s1, v57, v75, v57
	v_div_fmas_f32 v76, v79, v109, v76
	v_fmac_f32_e32 v90, v91, v90
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v79, v85, v77
	v_fma_f32 v86, -v83, v81, 1.0
	v_div_fixup_f32 v54, v76, v75, v54
	v_fma_f32 v76, -v98, v84, v82
	v_div_scale_f32 v91, null, v74, v74, v66
	v_fma_f32 v82, -v78, v79, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v76, v76, v110, v84
	v_div_scale_f32 v84, s0, v60, v75, v60
	v_fmac_f32_e32 v79, v82, v77
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v55, v76, v75, v55
	v_fma_f32 v76, -v78, v79, v85
	v_mul_f32_e32 v78, v84, v80
	v_div_scale_f32 v85, null, v74, v74, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v76, v76, v77, v79
	v_fma_f32 v79, -v87, v78, v84
	v_fmac_f32_e32 v81, v86, v81
	v_div_scale_f32 v86, s2, v58, v75, v58
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v78, v79, v80
	v_rcp_f32_e32 v79, v91
	v_mul_f32_e32 v89, v86, v81
	v_div_fixup_f32 v57, v76, v75, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v87, v78, v84
	v_div_scale_f32 v84, null, v74, v74, v68
	v_fma_f32 v82, -v83, v89, v86
	v_div_scale_f32 v87, null, v74, v74, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v89, v82, v81
	v_div_scale_f32 v82, s3, v61, v75, v61
	v_fma_f32 v77, -v83, v89, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v86, v82, v90
	v_rcp_f32_e32 v83, v85
	v_div_fmas_f32 v77, v77, v81, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v81, -v88, v86, v82
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v76, v76, v80, v78
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v86, v81, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v85, v83, 1.0
	v_fma_f32 v81, -v91, v79, 1.0
	v_div_fixup_f32 v58, v77, v75, v58
	v_div_scale_f32 v77, s1, v65, v74, v65
	v_fma_f32 v78, -v88, v86, v82
	v_fmac_f32_e32 v79, v81, v79
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v82, s0, v66, v74, v66
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v78, v78, v90, v86
	v_rcp_f32_e32 v90, v87
	v_fmac_f32_e32 v83, v89, v83
	v_div_fixup_f32 v60, v76, v75, v60
	v_div_scale_f32 v76, s2, v68, v74, v68
	v_div_fixup_f32 v61, v78, v75, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v80, v77, v83
	v_fma_f32 v89, -v84, v81, 1.0
	v_mul_f32_e32 v88, v82, v79
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v78, null, v74, v74, v72
	v_fma_f32 v86, -v85, v80, v77
	v_fmac_f32_e32 v81, v89, v81
	v_fma_f32 v75, -v91, v88, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v86, v83
	v_fma_f32 v86, -v87, v90, 1.0
	v_dual_fmac_f32 v88, v75, v79 :: v_dual_mul_f32 v75, v76, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v77, -v85, v80, v77
	v_fmac_f32_e32 v90, v86, v90
	v_div_scale_f32 v86, s3, v69, v74, v69
	v_rcp_f32_e32 v85, v78
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v77, v77, v83, v80
	v_fma_f32 v80, -v91, v88, v82
	v_div_scale_f32 v91, null, v74, v74, v73
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v82, -v84, v75, v76
	v_div_fmas_f32 v79, v80, v79, v88
	v_rcp_f32_e32 v80, v91
	v_mul_f32_e32 v83, v86, v90
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v89, -v78, v85, 1.0
	v_div_fixup_f32 v66, v79, v74, v66
	v_div_scale_f32 v88, s0, v72, v74, v72
	v_div_fixup_f32 v65, v77, v74, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v91, v80, 1.0
	v_fmac_f32_e32 v75, v82, v81
	v_fma_f32 v82, -v87, v83, v86
	v_fmac_f32_e32 v80, v79, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v76, -v84, v75, v76
	v_fmac_f32_e32 v83, v82, v90
	v_div_scale_f32 v82, null, v74, v74, v71
	v_div_scale_f32 v84, s1, v73, v74, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v75, v76, v81, v75
	v_rcp_f32_e32 v79, v82
	v_fma_f32 v76, -v87, v83, v86
	v_div_scale_f32 v86, null, v74, v74, v70
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v68, v75, v74, v68
	v_div_fmas_f32 v76, v76, v90, v83
	v_mul_f32_e32 v83, v84, v80
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v87, -v82, v79, 1.0
	v_div_fixup_f32 v69, v76, v74, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v76, -v91, v83, v84
	v_fmac_f32_e32 v79, v87, v79
	v_fmac_f32_e32 v85, v89, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v83, v76, v80
	v_mul_f32_e32 v77, v88, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v78, v77, v88
	v_fmac_f32_e32 v77, v81, v85
	v_rcp_f32_e32 v81, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v75, -v78, v77, v88
	v_div_scale_f32 v78, s2, v71, v74, v71
	v_div_scale_f32 v88, null, v74, v74, v64
	v_fma_f32 v87, -v86, v81, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v76, v78, v79
	v_div_fmas_f32 v75, v75, v85, v77
	v_div_scale_f32 v85, s0, v70, v74, v70
	v_fmac_f32_e32 v81, v87, v81
	v_div_scale_f32 v87, null, v74, v74, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v72, v75, v74, v72
	v_fma_f32 v75, -v91, v83, v84
	v_fma_f32 v84, -v82, v76, v78
	v_rcp_f32_e32 v90, v87
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v89, v85, v81
	v_div_fmas_f32 v75, v75, v80, v83
	v_fmac_f32_e32 v76, v84, v79
	v_rcp_f32_e32 v77, v88
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v80, -v86, v89, v85
	v_div_fixup_f32 v73, v75, v74, v73
	v_fma_f32 v75, -v82, v76, v78
	v_fma_f32 v84, -v87, v90, 1.0
	v_div_scale_f32 v82, null, v74, v74, v63
	v_fmac_f32_e32 v89, v80, v81
	v_div_scale_f32 v83, s1, v64, v74, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v90, v84, v90
	v_rcp_f32_e32 v84, v82
	v_div_fmas_f32 v75, v75, v79, v76
	v_fma_f32 v76, -v86, v89, v85
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v91, -v88, v77, 1.0
	v_div_scale_f32 v80, s3, v67, v74, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v76, v76, v81, v89
	v_div_scale_f32 v86, null, v74, v74, v62
	v_fma_f32 v89, -v82, v84, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v85, v80, v90
	v_div_fixup_f32 v71, v75, v74, v71
	v_div_fixup_f32 v70, v76, v74, v70
	v_div_scale_f32 v76, s0, v63, v74, v63
	v_dual_fmac_f32 v84, v89, v84 :: v_dual_fmac_f32 v77, v91, v77
	v_fma_f32 v81, -v87, v85, v80
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v91, null, v74, v74, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v78, v83, v77 :: v_dual_fmac_f32 v85, v81, v90
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v70, v70
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v79, -v88, v78, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v77
	v_rcp_f32_e32 v79, v86
	v_fma_f32 v75, -v88, v78, v83
	v_div_scale_f32 v83, null, v74, v74, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v75, v75, v77, v78
	v_fma_f32 v81, -v86, v79, 1.0
	v_fma_f32 v77, -v87, v85, v80
	v_mul_f32_e32 v78, v76, v84
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v64, v75, v74, v64
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v81, s1, v62, v74, v62
	v_div_fmas_f32 v77, v77, v90, v85
	v_fma_f32 v85, -v82, v78, v76
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v88, v81, v79
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v87, null, v74, v74, v56
	v_fmac_f32_e32 v78, v85, v84
	v_fma_f32 v75, -v86, v88, v81
	v_div_scale_f32 v85, null, v74, v74, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v90, v87
	v_fma_f32 v76, -v82, v78, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v88, v75, v79
	v_fma_f32 v89, -v83, v80, 1.0
	v_div_fixup_f32 v67, v77, v74, v67
	v_div_scale_f32 v77, s2, v59, v74, v59
	v_div_fmas_f32 v76, v76, v84, v78
	v_fma_f32 v78, -v86, v88, v81
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v80, v89, v80
	v_fma_f32 v89, -v87, v90, 1.0
	v_rcp_f32_e32 v82, v85
	v_div_fmas_f32 v78, v78, v79, v88
	v_rcp_f32_e32 v79, v91
	v_div_fixup_f32 v63, v76, v74, v63
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v64, v64
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v62, v78, v74, v62
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v63, v63
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v86, -v85, v82, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v62, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v78, -v91, v79, 1.0
	v_fmac_f32_e32 v90, v89, v90
	v_div_scale_f32 v89, s3, v56, v74, v56
	v_fmac_f32_e32 v82, v86, v82
	v_fmac_f32_e32 v79, v78, v79
	v_mul_f32_e32 v75, v77, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v84, v89, v90
	v_div_scale_f32 v86, s0, v53, v74, v53
	v_fma_f32 v81, -v83, v75, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v75, v81, v80
	v_fma_f32 v81, -v87, v84, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v76, -v83, v75, v77
	v_fmac_f32_e32 v84, v81, v90
	v_mul_f32_e32 v77, v86, v82
	v_div_scale_f32 v81, null, v51, v51, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v75, v76, v80, v75
	v_fma_f32 v76, -v87, v84, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v85, v77, v86
	v_div_scale_f32 v87, null, v51, v51, v49
	v_rcp_f32_e32 v78, v81
	v_div_scale_f32 v83, s1, v52, v74, v52
	v_fmac_f32_e32 v77, v80, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v80, v87
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v59, v75, v74, v59
	v_div_fmas_f32 v76, v76, v90, v84
	v_mul_f32_e32 v84, v83, v79
	v_fma_f32 v75, -v85, v77, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v81, v78, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v56, v76, v74, v56
	v_fma_f32 v76, -v91, v84, v83
	v_fma_f32 v86, -v87, v80, 1.0
	v_fmac_f32_e32 v78, v88, v78
	v_div_scale_f32 v88, null, v51, v51, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v76, v79
	v_fmac_f32_e32 v80, v86, v80
	v_div_fmas_f32 v75, v75, v82, v77
	v_div_scale_f32 v82, s0, v49, v51, v49
	v_div_scale_f32 v85, s2, v50, v51, v50
	v_rcp_f32_e32 v77, v88
	v_div_scale_f32 v86, null, v51, v51, v46
	v_div_fixup_f32 v53, v75, v74, v53
	v_fma_f32 v75, -v91, v84, v83
	v_mul_f32_e32 v89, v82, v80
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v90, v86
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v59, v59
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v75, v75, v79, v84
	v_fma_f32 v79, -v87, v89, v82
	v_mul_f32_e32 v76, v85, v78
	v_fma_f32 v91, -v88, v77, 1.0
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v52, v75, v74, v52
	v_fmac_f32_e32 v89, v79, v80
	v_fma_f32 v83, -v81, v76, v85
	v_fmac_f32_e32 v77, v91, v77
	v_fma_f32 v84, -v86, v90, 1.0
	v_div_scale_f32 v79, s3, v46, v51, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v76, v83, v78
	v_div_scale_f32 v83, s1, v45, v51, v45
	v_fmac_f32_e32 v90, v84, v90
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v56, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v74, -v81, v76, v85
	v_mul_f32_e32 v75, v83, v77
	v_div_scale_f32 v81, null, v51, v51, v36
	v_div_scale_f32 v85, null, v51, v51, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v74, v74, v78, v76
	v_fma_f32 v76, -v87, v89, v82
	v_fma_f32 v78, -v88, v75, v83
	v_mul_f32_e32 v84, v79, v90
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v82, v81
	v_div_fmas_f32 v76, v76, v80, v89
	v_fmac_f32_e32 v75, v78, v77
	v_fma_f32 v80, -v86, v84, v79
	v_div_fixup_f32 v50, v74, v51, v50
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v78, v85
	v_fma_f32 v74, -v88, v75, v83
	v_fmac_f32_e32 v84, v80, v90
	v_div_scale_f32 v83, null, v51, v51, v34
	v_fma_f32 v87, -v81, v82, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v74, v74, v77, v75
	v_fma_f32 v75, -v86, v84, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v79, v83
	v_div_fixup_f32 v49, v76, v51, v49
	v_div_scale_f32 v76, s0, v36, v51, v36
	v_fma_f32 v80, -v85, v78, 1.0
	v_div_scale_f32 v86, null, v51, v51, v33
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v45, v74, v51, v45
	v_fmac_f32_e32 v78, v80, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v88, -v83, v79, 1.0
	v_fmac_f32_e32 v82, v87, v82
	v_div_scale_f32 v80, s1, v35, v51, v35
	v_rcp_f32_e32 v89, v86
	v_fmac_f32_e32 v79, v88, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v77, v76, v82
	v_div_fmas_f32 v75, v75, v90, v84
	v_mul_f32_e32 v87, v80, v78
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v90, null, v51, v51, v31
	v_fma_f32 v84, -v81, v77, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v74, -v85, v87, v80
	v_fma_f32 v88, -v86, v89, 1.0
	v_div_fixup_f32 v46, v75, v51, v46
	v_div_scale_f32 v75, s2, v34, v51, v34
	v_fmac_f32_e32 v77, v84, v82
	v_div_scale_f32 v84, null, v51, v51, v30
	v_fmac_f32_e32 v89, v88, v89
	v_div_scale_f32 v88, s3, v33, v51, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v76, -v81, v77, v76
	v_fmac_f32_e32 v87, v74, v78
	v_rcp_f32_e32 v81, v84
	v_mul_f32_e32 v74, v75, v79
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v45, v45
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v76, v76, v82, v77
	v_mul_f32_e32 v82, v88, v89
	v_fma_f32 v77, -v85, v87, v80
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v80, -v83, v74, v75
	v_div_fixup_f32 v36, v76, v51, v36
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v50, v50
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v77, v77, v78, v87
	v_rcp_f32_e32 v78, v90
	v_fma_f32 v85, -v84, v81, 1.0
	v_fmac_f32_e32 v74, v80, v79
	v_fma_f32 v80, -v86, v82, v88
	v_div_fixup_f32 v35, v77, v51, v35
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v81, v85, v81
	v_div_scale_f32 v85, s0, v30, v51, v30
	v_fma_f32 v75, -v83, v74, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v77, -v90, v78, 1.0
	v_div_scale_f32 v83, s1, v31, v51, v31
	v_mul_f32_e32 v76, v85, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v74, v75, v79, v74
	v_fmac_f32_e32 v78, v77, v78
	v_fmac_f32_e32 v82, v80, v89
	v_div_scale_f32 v80, null, v51, v51, v29
	v_fma_f32 v79, -v84, v76, v85
	v_div_fixup_f32 v34, v74, v51, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fma_f32 v75, -v86, v82, v88
	v_div_scale_f32 v86, null, v51, v51, v28
	v_rcp_f32_e32 v77, v80
	v_fmac_f32_e32 v76, v79, v81
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v79, v86
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v35, v35
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v74, -v84, v76, v85
	v_div_scale_f32 v84, s2, v29, v51, v29
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v87, -v80, v77, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v53, v53
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v85, -v86, v79, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v52, v52
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v77, v87, v77
	v_div_scale_f32 v87, null, v51, v51, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v79, v85, v79
	v_div_fmas_f32 v75, v75, v89, v82
	v_mul_f32_e32 v82, v83, v78
	v_div_scale_f32 v85, null, v51, v51, v26
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v33, v75, v51, v33
	v_fma_f32 v75, -v90, v82, v83
	v_div_fmas_f32 v74, v74, v81, v76
	v_rcp_f32_e32 v76, v87
	v_div_scale_f32 v81, s0, v28, v51, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v82, v75, v78 :: v_dual_mul_f32 v75, v84, v77
	v_rcp_f32_e32 v89, v85
	v_div_fixup_f32 v30, v74, v51, v30
	v_mul_f32_e32 v88, v81, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v74, -v90, v82, v83
	v_fma_f32 v83, -v80, v75, v84
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v90, -v87, v76, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v30, v30
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v74, v74, v78, v82
	v_fmac_f32_e32 v75, v83, v77
	v_fma_f32 v78, -v86, v88, v81
	v_fma_f32 v83, -v85, v89, 1.0
	v_fmac_f32_e32 v76, v90, v76
	v_div_scale_f32 v82, s1, v27, v51, v27
	v_div_fixup_f32 v31, v74, v51, v31
	v_fma_f32 v74, -v80, v75, v84
	v_dual_fmac_f32 v88, v78, v79 :: v_dual_fmac_f32 v89, v83, v89
	v_div_scale_f32 v83, null, v51, v51, v24
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v78, v82, v76
	v_div_scale_f32 v80, s3, v26, v51, v26
	v_div_fmas_f32 v74, v74, v77, v75
	v_fma_f32 v75, -v86, v88, v81
	v_rcp_f32_e32 v81, v83
	v_fma_f32 v77, -v87, v78, v82
	v_mul_f32_e32 v84, v80, v89
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v86, null, v51, v51, v25
	v_div_fmas_f32 v75, v75, v79, v88
	v_fmac_f32_e32 v78, v77, v76
	v_fma_f32 v79, -v85, v84, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v77, v86
	v_fma_f32 v88, -v83, v81, 1.0
	v_div_fixup_f32 v29, v74, v51, v29
	v_div_fixup_f32 v28, v75, v51, v28
	v_fma_f32 v74, -v87, v78, v82
	v_fmac_f32_e32 v84, v79, v89
	v_fmac_f32_e32 v81, v88, v81
	v_div_scale_f32 v75, s0, v24, v51, v24
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v79, -v86, v77, 1.0
	v_div_fmas_f32 v74, v74, v76, v78
	v_fma_f32 v76, -v85, v84, v80
	v_mul_f32_e32 v78, v75, v81
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v77, v79, v77
	v_div_scale_f32 v79, null, v32, v32, v23
	v_div_fmas_f32 v76, v76, v89, v84
	v_fma_f32 v84, -v83, v78, v75
	v_div_scale_f32 v89, null, v32, v32, v20
	v_div_scale_f32 v80, s1, v25, v51, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v84, v81
	v_rcp_f32_e32 v82, v79
	v_rcp_f32_e32 v91, v89
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v85, v80, v77
	v_fma_f32 v75, -v83, v78, v75
	v_div_scale_f32 v87, null, v32, v32, v22
	v_div_fixup_f32 v27, v74, v51, v27
	v_div_fixup_f32 v26, v76, v51, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v75, v75, v81, v78
	v_fma_f32 v74, -v86, v85, v80
	v_rcp_f32_e32 v76, v87
	v_fma_f32 v84, -v79, v82, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v24, v75, v51, v24
	v_fma_f32 v75, -v89, v91, 1.0
	v_fmac_f32_e32 v85, v74, v77
	v_div_scale_f32 v74, s2, v23, v32, v23
	v_div_scale_f32 v81, s0, v22, v32, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v91, v75, v91
	v_div_scale_f32 v75, s1, v20, v32, v20
	v_fmac_f32_e32 v82, v84, v82
	v_fma_f32 v88, -v87, v76, 1.0
	v_fma_f32 v78, -v86, v85, v80
	v_div_scale_f32 v83, null, v32, v32, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v80, v74, v82
	v_fmac_f32_e32 v76, v88, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v77, v78, v77, v85
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v84, v83
	v_fma_f32 v88, -v79, v80, v74
	v_mul_f32_e32 v90, v81, v76
	v_div_fixup_f32 v25, v77, v51, v25
	v_div_scale_f32 v77, null, v32, v32, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v88, v82
	v_fma_f32 v78, -v87, v90, v81
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v29, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v86, -v83, v84, 1.0
	v_fma_f32 v51, -v79, v80, v74
	v_dual_fmac_f32 v90, v78, v76 :: v_dual_mul_f32 v79, v75, v91
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v31, v31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v51, v51, v82, v80
	v_div_scale_f32 v80, null, v32, v32, v18
	v_fma_f32 v78, -v87, v90, v81
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v23, v51, v32, v23
	v_rcp_f32_e32 v82, v80
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v26, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v76, v78, v76, v90
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v34, v34
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v22, v76, v32, v22
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v76, -v80, v82, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v82, v76, v82
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v86, s3, v21, v32, v21
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v76, s2, v18, v32, v18
	v_mul_f32_e32 v85, v86, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v83, v85, v86
	v_fmac_f32_e32 v85, v74, v84
	v_rcp_f32_e32 v74, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v78, -v83, v85, v86
	v_fma_f32 v83, -v89, v79, v75
	v_div_fmas_f32 v78, v78, v84, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v77, v74, 1.0
	v_fmac_f32_e32 v79, v83, v91
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v21, v78, v32, v21
	v_fmac_f32_e32 v74, v81, v74
	v_div_scale_f32 v81, s0, v19, v32, v19
	v_div_scale_f32 v78, null, v32, v32, v16
	v_fma_f32 v75, -v89, v79, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v81, v74
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v21, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v84, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v75, v75, v91, v79
	v_fma_f32 v83, -v77, v51, v81
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v20, v75, v32, v20
	v_fmac_f32_e32 v51, v83, v74
	v_div_scale_f32 v83, null, v32, v32, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v20, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v75, -v77, v51, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v78, v84, 1.0
	v_rcp_f32_e32 v85, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v51, v75, v74, v51
	v_fmac_f32_e32 v84, v81, v84
	v_div_scale_f32 v81, null, v32, v32, v17
	v_div_scale_f32 v74, null, v32, v32, v13
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v87, v81
	v_div_scale_f32 v88, s2, v13, v32, v13
	v_div_scale_f32 v75, s0, v16, v32, v16
	v_div_fixup_f32 v19, v51, v32, v19
	v_fma_f32 v51, -v83, v85, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v89, -v81, v87, 1.0
	v_fmac_f32_e32 v85, v51, v85
	v_div_scale_f32 v51, s1, v15, v32, v15
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v87, v89, v87
	v_mul_f32_e32 v79, v76, v82
	v_div_scale_f32 v89, s3, v17, v32, v17
	v_fma_f32 v77, -v80, v79, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v77, v82
	v_rcp_f32_e32 v77, v74
	v_fma_f32 v76, -v80, v79, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v76, v76, v82, v79
	v_fma_f32 v86, -v74, v77, 1.0
	v_mul_f32_e32 v82, v51, v85
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v18, v76, v32, v18
	v_fmac_f32_e32 v77, v86, v77
	v_div_scale_f32 v86, null, v32, v32, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v18, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v91, v88, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v90, v86
	v_fma_f32 v76, -v74, v91, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v91, v76, v77 :: v_dual_mul_f32 v80, v75, v84
	v_fma_f32 v74, -v74, v91, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v78, v80, v75
	v_fmac_f32_e32 v80, v79, v84
	v_fma_f32 v79, -v83, v82, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v75, -v78, v80, v75
	v_fmac_f32_e32 v82, v79, v85
	v_mul_f32_e32 v78, v89, v87
	v_fma_f32 v79, -v86, v90, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v75, v75, v84, v80
	v_fma_f32 v51, -v83, v82, v51
	v_div_scale_f32 v80, null, v32, v32, v12
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v76, -v81, v78, v89
	v_div_fmas_f32 v51, v51, v85, v82
	v_rcp_f32_e32 v82, v80
	v_fmac_f32_e32 v90, v79, v90
	v_div_scale_f32 v79, s0, v14, v32, v14
	v_div_fixup_f32 v16, v75, v32, v16
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v15, v51, v32, v15
	v_div_fmas_f32 v74, v74, v77, v91
	v_div_scale_f32 v84, null, v32, v32, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v75, -v80, v82, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v13, v74, v32, v13
	v_div_scale_f32 v74, null, v32, v32, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v75, v82
	v_fmac_f32_e32 v78, v76, v87
	v_mul_f32_e32 v76, v79, v90
	v_div_scale_f32 v75, null, v32, v32, v8
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v77, -v81, v78, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v86, v76, v79
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v77, v77, v87, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v76, v81, v90
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v17, v77, v32, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v51, -v86, v76, v79
	v_rcp_f32_e32 v86, v84
	v_div_scale_f32 v77, null, v32, v32, v9
	v_rcp_f32_e32 v79, v75
	v_div_fmas_f32 v51, v51, v90, v76
	v_rcp_f32_e32 v76, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v81, v77
	v_div_scale_f32 v78, vcc_lo, v12, v32, v12
	v_div_fixup_f32 v14, v51, v32, v14
	v_fma_f32 v90, -v84, v86, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v83, v78, v82
	v_fma_f32 v85, -v75, v79, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v14, v14
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v51, -v74, v76, 1.0
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v90, s3, v10, v32, v10
	v_fma_f32 v88, -v77, v81, 1.0
	v_fmac_f32_e32 v76, v51, v76
	v_div_scale_f32 v51, s0, v11, v32, v11
	v_fma_f32 v87, -v80, v83, v78
	v_mul_f32_e32 v93, v90, v86
	v_fmac_f32_e32 v79, v85, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v89, v51, v76
	v_div_scale_f32 v85, s1, v8, v32, v8
	v_fmac_f32_e32 v81, v88, v81
	v_div_scale_f32 v88, s2, v9, v32, v9
	v_fmac_f32_e32 v83, v87, v82
	v_fma_f32 v87, -v74, v89, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v91, v85, v79 :: v_dual_mul_f32 v92, v88, v81
	v_fma_f32 v78, -v80, v83, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v89, v87, v76
	v_fma_f32 v80, -v75, v91, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v77, v92, v88
	v_div_fmas_f32 v78, v78, v82, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v74, v89, v51
	v_fma_f32 v74, -v84, v93, v90
	v_dual_fmac_f32 v91, v80, v79 :: v_dual_fmac_f32 v92, v87, v81
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v12, v78, v32, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v93, v74, v86
	v_fma_f32 v75, -v75, v91, v85
	v_fma_f32 v74, -v77, v92, v88
	v_div_fmas_f32 v51, v51, v76, v89
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v76, -v84, v93, v90
	v_div_fmas_f32 v75, v75, v79, v91
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v11, v51, v32, v11
	v_div_fmas_f32 v74, v74, v81, v92
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v8, v75, v32, v8
	v_div_fmas_f32 v76, v76, v86, v93
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v51, v55
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v9, v74, v32, v9
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v55, v58
	v_rndne_f32_e32 v58, v61
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
	v_rndne_f32_e32 v61, v66
	v_rndne_f32_e32 v66, v69
	s_mov_b32 s0, 0xc1000000
	v_rndne_f32_e32 v47, v48
	v_rndne_f32_e32 v48, v54
	v_rndne_f32_e32 v54, v57
	v_rndne_f32_e32 v57, v60
	v_rndne_f32_e32 v60, v65
	v_rndne_f32_e32 v65, v68
	v_rndne_f32_e32 v68, v72
	v_rndne_f32_e32 v69, v73
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v72, v36
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v80, v27
	v_cvt_i32_f32_e32 v90, v16
	v_and_b32_e32 v16, 15, v44
	v_and_b32_e32 v27, 15, v66
	v_and_b32_e32 v44, 15, v72
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v66, 10, v0
	v_and_b32_e32 v72, 16, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v12, v12
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
	v_and_b32_e32 v68, 0x1800, v66
	v_lshlrev_b32_e32 v69, 6, v72
	v_lshlrev_b32_e32 v71, 6, v0
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
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
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
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v84, v23
	v_cvt_i32_f32_e32 v85, v22
	v_cvt_i32_f32_e32 v86, v21
	v_cvt_i32_f32_e32 v87, v20
	v_cvt_i32_f32_e32 v94, v14
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
	v_cvt_i32_f32_e32 v92, v13
	v_cvt_i32_f32_e32 v93, v17
	v_cvt_i32_f32_e32 v95, v12
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v81, v26
	v_cvt_i32_f32_e32 v82, v24
	v_cvt_i32_f32_e32 v83, v25
	v_cvt_i32_f32_e32 v91, v15
	v_cvt_i32_f32_e32 v96, v11
	v_cvt_i32_f32_e32 v97, v8
	v_cvt_i32_f32_e32 v98, v9
	v_cvt_i32_f32_e32 v99, v10
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
	v_and_b32_e32 v36, 15, v59
	v_and_b32_e32 v37, 15, v56
	v_and_b32_e32 v40, 15, v50
	v_and_b32_e32 v41, 15, v49
	v_and_b32_e32 v43, 15, v46
	v_and_b32_e32 v56, 15, v84
	v_and_b32_e32 v57, 15, v85
	v_and_b32_e32 v58, 15, v86
	v_and_b32_e32 v59, 15, v87
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v4, v73, v4, v5
	v_xad_u32 v3, v3, v171, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v74, v34
	v_cvt_i32_f32_e32 v75, v33
	v_cvt_i32_f32_e32 v88, v19
	v_cvt_i32_f32_e32 v89, v18
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
	v_and_b32_e32 v64, 15, v92
	v_and_b32_e32 v65, 15, v93
	v_and_b32_e32 v66, 15, v94
	v_and_b32_e32 v67, 15, v95
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
	v_and_b32_e32 v60, 15, v88
	v_and_b32_e32 v61, 15, v89
	v_and_b32_e32 v62, 15, v90
	v_and_b32_e32 v63, 15, v91
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
	v_and_b32_e32 v68, 15, v96
	v_and_b32_e32 v69, 15, v97
	v_and_b32_e32 v70, 15, v98
	v_and_b32_e32 v71, 15, v99
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
	v_lshlrev_b32_e32 v35, 3, v151
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v17, v36, 4, v28
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v36, s0, v150
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s30, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s31, s0
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
	v_and_b32_e32 v5, 2, v150
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
	v_and_or_b32 v6, v0, 63, s31
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
	v_add_lshl_u32 v2, v2, s30, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[16:19], 0 offen
.Ltmp53:
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp54:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 184
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 37280
; TotalNumSgprs: 40
; NumVgprs: 184
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     184
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
