	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 309 0                         ; generate_amdgcn.py:309:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 319 16 prologue_end           ; generate_amdgcn.py:319:16
	s_abs_i32 s7, s2
	.loc	1 327 14                        ; generate_amdgcn.py:327:14
	v_lshlrev_b32_e32 v42, 4, v0
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 327 14                        ; generate_amdgcn.py:327:14
	v_lshlrev_b32_e32 v41, 3, v0
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_and_b32_e32 v43, 15, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 327 14                        ; generate_amdgcn.py:327:14
	v_and_b32_e32 v5, 56, v41
	.loc	1 326 32                        ; generate_amdgcn.py:326:32
	v_or_b32_e32 v4, 0xc0, v2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:317:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s8, s28, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_lshr_b32 s10, s10, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 318 24 is_stmt 1              ; generate_amdgcn.py:318:24
	s_lshl_b32 s4, s4, 2
	s_mov_b64 s[24:25], s[22:23]
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
	s_abs_i32 s5, s4
	s_mov_b32 s23, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_mov_b32 s27, s23
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_mov_b32 s26, s22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
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
	s_load_b32 s10, s[0:1], 0x38
	s_xor_b32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s9
	.loc	1 320 19                        ; generate_amdgcn.py:320:19
	s_lshl_b32 s6, s5, 2
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_mul_i32 s5, s5, s4
	.loc	1 321 31                        ; generate_amdgcn.py:321:31
	s_sub_i32 s7, s8, s6
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_sub_i32 s2, s2, s5
	.loc	1 321 20                        ; generate_amdgcn.py:321:20
	s_min_i32 s7, s7, 4
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v3, s10, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	v_readfirstlane_b32 s9, v1
	.loc	1 327 14                        ; generate_amdgcn.py:327:14
	v_and_b32_e32 v1, 48, v42
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_mad_u64_u32 v[9:10], null, s10, v2, v[1:2]
	v_mad_u64_u32 v[10:11], null, s10, v4, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s11, s11, s9
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_lshl_add_u32 v52, s10, 6, v9
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_mul_hi_u32 s4, s9, s11
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_lshl_add_u32 v53, s10, 7, v9
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s11, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s5, s12, s5
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	.loc	1 368 22                        ; generate_amdgcn.py:368:22
	s_lshl_b32 s31, s3, 6
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_xor_b32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s9
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_mul_i32 s5, s4, s7
	.loc	1 326 14                        ; generate_amdgcn.py:326:14
	s_lshl_b32 s14, s4, 8
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_sub_i32 s2, s2, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s5, s10, 0x1ff
.Ltmp13:
	.loc	1 322 13                        ; generate_amdgcn.py:322:13
	s_add_i32 s2, s2, s6
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	s_mul_i32 s15, s14, s10
	.loc	1 325 14                        ; generate_amdgcn.py:325:14
	s_lshl_b32 s28, s2, 5
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s5, 0x1ff
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	s_mul_i32 s2, s28, s10
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s3, -1, 0
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_add3_u32 v54, v3, v5, s2
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	s_add_i32 s4, s15, s31
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s5, 0x3ff
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v1, s31, v54
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v2, s4, v9
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s2, -1, 0
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_addk_i32 s31, 0x200
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v5, s4, v10
	v_add_nc_u32_e32 v3, s4, v52
	v_add_nc_u32_e32 v4, s4, v53
	s_addk_i32 s4, 0x200
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 374 30 is_stmt 0              ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v6, s31, v54
	.loc	1 376 22 is_stmt 1              ; generate_amdgcn.py:376:22
	v_cndmask_b32_e64 v12, 0x80000000, v2, s3
	.loc	1 376 30 is_stmt 0              ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v2, 0x200, v2
	v_add_nc_u32_e32 v11, s4, v52
	v_add_nc_u32_e32 v23, s4, v53
	v_add_nc_u32_e32 v24, 0x200, v5
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_cndmask_b32_e64 v15, 0x80000000, v4, s3
	.loc	1 374 22 is_stmt 1              ; generate_amdgcn.py:374:22
	buffer_load_b64 v[7:8], v1, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v6, s2
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_cndmask_b32_e64 v13, 0x80000000, v3, s3
	v_cndmask_b32_e64 v19, 0x80000000, v5, s3
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v27, 0x80000000, v11, s2
	v_cndmask_b32_e64 v31, 0x80000000, v23, s2
	v_cndmask_b32_e64 v35, 0x80000000, v24, s2
	s_clause 0x3
	buffer_load_b128 v[3:6], v12, s[24:27], 0 offen
	buffer_load_b128 v[11:14], v13, s[24:27], 0 offen
	buffer_load_b128 v[15:18], v15, s[24:27], 0 offen
	buffer_load_b128 v[19:22], v19, s[24:27], 0 offen
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	buffer_load_b64 v[39:40], v1, s[20:23], 0 offen
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_clause 0x3
	buffer_load_b128 v[23:26], v2, s[24:27], 0 offen
	buffer_load_b128 v[27:30], v27, s[24:27], 0 offen
	buffer_load_b128 v[31:34], v31, s[24:27], 0 offen
	buffer_load_b128 v[35:38], v35, s[24:27], 0 offen
	v_lshlrev_b32_e32 v1, 1, v0
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_and_b32_e32 v2, 48, v0
	s_mov_b32 s4, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s5, 0x5ff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_and_b32_e32 v1, 48, v1
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_xor_b32_e32 v55, v41, v2
	v_and_b32_e32 v2, 48, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_xor_b32_e32 v56, v42, v1
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v42, 0, v55
	v_lshlrev_b32_e32 v1, 5, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v44, 0, v56
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt vmcnt(9)
	ds_store_b64 v42, v[7:8] offset:32768
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v44, v[3:6]
	s_waitcnt vmcnt(7)
	ds_store_b128 v44, v[11:14] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v44, v[15:18] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v44, v[19:22] offset:12288
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v42, v[39:40] offset:34816
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v44, v[23:26] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v44, v[27:30] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v44, v[31:34] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v44, v[35:38] offset:28672
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_lshl_or_b32 v44, v43, 6, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_and_or_b32 v48, 0x1c00, v1, v44
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_xor_b32_e32 v45, 16, v44
	v_xor_b32_e32 v47, 32, v44
	v_xor_b32_e32 v46, 48, v44
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_xor_b32_e32 v49, 16, v48
	v_xor_b32_e32 v51, 32, v48
	v_xor_b32_e32 v50, 48, v48
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v18, 0
	s_add_i32 s30, 0, 0x8000
	s_add_i32 s0, 0, 0x8800
	s_add_i32 s1, 0, 0x4000
	s_branch .LBB0_6
.LBB0_3:
                                        ; implicit-def: $vgpr44
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr50
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_lshl_or_b32 v44, v43, 6, v2
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_lshr_b32 s33, s5, 9
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_and_or_b32 v48, 0x1c00, v1, v44
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v1, s4
	v_xor_b32_e32 v45, 16, v44
	v_xor_b32_e32 v47, 32, v44
	v_xor_b32_e32 v46, 48, v44
	v_xor_b32_e32 v49, 16, v48
	v_xor_b32_e32 v51, 32, v48
	v_xor_b32_e32 v50, 48, v48
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v8, s11 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	s_addk_i32 s31, 0x200
	s_add_i32 s30, 0, 0x8000
	s_add_i32 s0, 0, 0x8800
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s33, s33, -3
	s_mov_b32 s34, 1
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 334 14                        ; generate_amdgcn.py:334:14
	s_lshl_b32 s6, s5, 9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_add_i32 s6, s31, s6
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	s_add_i32 s7, s6, s15
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v57, s6, v54
	.loc	1 376 30                        ; generate_amdgcn.py:376:30
	v_add_nc_u32_e32 v58, s7, v9
	v_add_nc_u32_e32 v59, s7, v52
	v_add_nc_u32_e32 v60, s7, v53
	v_add_nc_u32_e32 v61, s7, v10
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	buffer_load_b64 v[161:162], v57, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_clause 0x3
	buffer_load_b128 v[89:92], v58, s[24:27], 0 offen
	buffer_load_b128 v[93:96], v59, s[24:27], 0 offen
	buffer_load_b128 v[97:100], v60, s[24:27], 0 offen
	buffer_load_b128 v[101:104], v61, s[24:27], 0 offen
	s_mov_b32 s6, s30
	s_mov_b32 s30, s0
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v57, s6, v44
	v_add_nc_u32_e32 v58, s6, v45
	s_mov_b32 s0, s4
	v_add_nc_u32_e32 v59, s6, v47
	v_add_nc_u32_e32 v60, s6, v46
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v61, s0, v48
	v_add_nc_u32_e32 v62, s0, v49
	v_add_nc_u32_e32 v63, s0, v51
	v_add_nc_u32_e32 v64, s0, v50
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[73:76], v57
	ds_load_b128 v[105:108], v57 offset:1024
	ds_load_b128 v[109:112], v58
	ds_load_b128 v[113:116], v58 offset:1024
	ds_load_b128 v[117:120], v59
	ds_load_b128 v[121:124], v59 offset:1024
	ds_load_b128 v[125:128], v60
	ds_load_b128 v[129:132], v60 offset:1024
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[81:84], v61
	ds_load_b128 v[133:136], v61 offset:8192
	ds_load_b128 v[137:140], v62
	ds_load_b128 v[141:144], v62 offset:8192
	ds_load_b128 v[145:148], v63
	ds_load_b128 v[149:152], v63 offset:8192
	ds_load_b128 v[153:156], v64
	ds_load_b128 v[157:160], v64 offset:8192
	s_mov_b32 s4, s1
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_add_i32 s1, s34, 1
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmp_lt_i32 s1, 2
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_barrier
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s34, s1, 0
	s_add_i32 s6, s5, 1
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_lshl_b32 s0, s34, 11
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_lshl_b32 s1, s34, 14
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_add_i32 s7, s0, 0
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_add_i32 s1, s1, 0
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_add_i32 s0, s7, 0x8000
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[57:64], v[81:84], v[73:76], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[133:136], v[73:76], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[81:84], v[105:108], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[133:136], v[105:108], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[137:140], v[109:112], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[141:144], v[109:112], v[65:72] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[137:140], v[113:116], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[141:144], v[113:116], v[81:88] neg_lo:[1,1,0]
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmp_lg_u32 s5, s33
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[57:64], v[145:148], v[117:120], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[149:152], v[117:120], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[145:148], v[121:124], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[149:152], v[121:124], v[81:88] neg_lo:[1,1,0]
	s_mov_b32 s5, s6
	v_wmma_i32_16x16x16_iu8 v[57:64], v[153:156], v[125:128], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[157:160], v[125:128], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[153:156], v[129:132], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[157:160], v[129:132], v[81:88] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v30, v30, v70 :: v_dual_add_nc_u32 v163, s7, v55
	v_dual_add_f32 v31, v31, v69 :: v_dual_add_nc_u32 v164, s1, v56
	v_add_f32_e32 v18, v18, v57
	v_dual_add_f32 v42, v42, v58 :: v_dual_add_f32 v41, v41, v59
	v_dual_add_f32 v40, v40, v60 :: v_dual_add_f32 v39, v39, v61
	v_dual_add_f32 v38, v38, v62 :: v_dual_add_f32 v37, v37, v63
	v_dual_add_f32 v36, v36, v64 :: v_dual_add_f32 v35, v35, v65
	v_dual_add_f32 v34, v34, v66 :: v_dual_add_f32 v33, v33, v67
	v_dual_add_f32 v32, v32, v68 :: v_dual_add_f32 v29, v29, v71
	v_dual_add_f32 v28, v28, v72 :: v_dual_add_f32 v27, v27, v73
	v_dual_add_f32 v26, v26, v74 :: v_dual_add_f32 v25, v25, v75
	v_dual_add_f32 v24, v24, v76 :: v_dual_add_f32 v23, v23, v77
	v_dual_add_f32 v22, v22, v78 :: v_dual_add_f32 v21, v21, v79
	v_dual_add_f32 v20, v20, v80 :: v_dual_add_f32 v19, v19, v81
	v_dual_add_f32 v17, v17, v82 :: v_dual_add_f32 v16, v16, v83
	v_dual_add_f32 v15, v15, v84 :: v_dual_add_f32 v14, v14, v85
	v_dual_add_f32 v13, v13, v86 :: v_dual_add_f32 v12, v12, v87
	v_add_f32_e32 v11, v11, v88
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt vmcnt(4)
	ds_store_b64 v163, v[161:162] offset:32768
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v164, v[89:92]
	s_waitcnt vmcnt(2)
	ds_store_b128 v164, v[93:96] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v164, v[97:100] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v164, v[101:104] offset:12288
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v9, s4, v51
	v_add_nc_u32_e32 v1, s4, v49
	v_add_nc_u32_e32 v10, s4, v50
	v_add_nc_u32_e32 v2, s4, v48
	s_mov_b32 s4, 0
	ds_load_b128 v[76:79], v9
	ds_load_b128 v[80:83], v1 offset:8192
	ds_load_b128 v[84:87], v1
	ds_load_b128 v[88:91], v2 offset:8192
	ds_load_b128 v[92:95], v2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v3, s30, v44
	v_add_nc_u32_e32 v1, s30, v45
	ds_load_b128 v[96:99], v3 offset:1024
	ds_load_b128 v[68:71], v3
	v_add_nc_u32_e32 v52, s30, v47
	ds_load_b128 v[100:103], v1 offset:1024
	ds_load_b128 v[104:107], v1
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_mov_b32_e32 v1, s4
	v_dual_mov_b32 v5, s8 :: v_dual_add_nc_u32 v60, s30, v46
	v_mov_b32_e32 v7, s10
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[108:111], v52
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[112:115], v10
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v6, s9
	v_mov_b32_e32 v8, s11
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[116:119], v60
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[120:123], v9 offset:8192
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[124:127], v52 offset:1024
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[128:131], v10 offset:8192
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[132:135], v60 offset:1024
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[92:95], v[68:71], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[60:67], v[88:91], v[68:71], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[92:95], v[96:99], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[84:87], v[104:107], v[52:59] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[60:67], v[80:83], v[104:107], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[88:91], v[96:99], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[84:87], v[100:103], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[76:79], v[108:111], v[52:59] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[120:123], v[108:111], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[80:83], v[100:103], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[76:79], v[124:127], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[112:115], v[116:119], v[52:59] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[128:131], v[116:119], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[120:123], v[124:127], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[112:115], v[132:135], v[68:75] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v53
	v_cvt_f32_i32_e32 v10, v54
	v_cvt_f32_i32_e32 v53, v57
	v_cvt_f32_i32_e32 v54, v58
	v_wmma_i32_16x16x16_iu8 v[1:8], v[128:131], v[132:135], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v42, v42, v9 :: v_dual_add_f32 v41, v41, v10
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v9, v55
	v_cvt_f32_i32_e32 v10, v56
	v_cvt_f32_i32_e32 v55, v59
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v38, v38, v53 :: v_dual_add_f32 v37, v37, v54
	v_dual_add_f32 v40, v40, v9 :: v_dual_add_f32 v39, v39, v10
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v9, v60
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v36, v36, v55
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v10, v61
	v_cvt_f32_i32_e32 v54, v63
	v_cvt_f32_i32_e32 v55, v64
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v35, v35, v9
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v9, v65
	v_cvt_f32_i32_e32 v53, v62
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v34, v34, v10
	v_dual_add_f32 v32, v32, v54 :: v_dual_add_f32 v31, v31, v55
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v10, v66
	v_cvt_f32_i32_e32 v55, v69
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v30, v30, v9
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v9, v70
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v33, v33, v53
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v53, v67
	v_cvt_f32_i32_e32 v54, v68
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v26, v26, v55 :: v_dual_add_f32 v25, v25, v9
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v9, v75
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v29, v29, v10 :: v_dual_add_f32 v28, v28, v53
	v_add_f32_e32 v27, v27, v54
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v10, v71
	v_cvt_f32_i32_e32 v53, v72
	v_cvt_f32_i32_e32 v54, v73
	v_cvt_f32_i32_e32 v55, v74
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v20, v20, v9 :: v_dual_add_f32 v17, v17, v2
	v_dual_add_f32 v19, v19, v1 :: v_dual_add_f32 v16, v16, v3
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v1, v5
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v15, v15, v4
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v2, v6
	v_cvt_f32_i32_e32 v3, v7
	v_cvt_f32_i32_e32 v4, v8
	v_cvt_f32_i32_e32 v5, v52
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v24, v24, v10 :: v_dual_add_f32 v23, v23, v53
	v_dual_add_f32 v22, v22, v54 :: v_dual_add_f32 v21, v21, v55
	v_dual_add_f32 v14, v14, v1 :: v_dual_add_f32 v13, v13, v2
	v_dual_add_f32 v12, v12, v3 :: v_dual_add_f32 v11, v11, v4
	v_add_f32_e32 v18, v18, v5
.LBB0_8:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
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
	.loc	1 379 19 is_stmt 1              ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 376 22 is_stmt 1              ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v1, s1, v51
	v_add_nc_u32_e32 v2, s1, v49
	v_add_nc_u32_e32 v4, s1, v48
	ds_load_b128 v[68:71], v1 offset:8192
	ds_load_b128 v[72:75], v1
	ds_load_b128 v[76:79], v2 offset:8192
	ds_load_b128 v[80:83], v2
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v1, s0, v44
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[84:87], v4 offset:8192
	ds_load_b128 v[88:91], v4
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v4, s0, v45
	ds_load_b128 v[92:95], v1 offset:1024
	ds_load_b128 v[60:63], v1
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	v_add_nc_u32_e32 v3, s1, v50
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v2, s0, v47
	v_add_nc_u32_e32 v1, s0, v46
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_mov_b32_e32 v51, s11
	v_mov_b32_e32 v45, s5
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[104:107], v4 offset:1024
	ds_load_b128 v[108:111], v4
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_mov_b32_e32 v47, s7
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[96:99], v2 offset:1024
	ds_load_b128 v[100:103], v2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_dual_mov_b32 v50, s10 :: v_dual_mov_b32 v49, s9
	v_mov_b32_e32 v48, s8
	v_mov_b32_e32 v46, s6
	v_mov_b32_e32 v44, s4
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[112:115], v1
	.loc	1 376 22                        ; generate_amdgcn.py:376:22
	ds_load_b128 v[116:119], v3
	ds_load_b128 v[120:123], v3 offset:8192
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[124:127], v1 offset:1024
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[88:91], v[60:63], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[84:87], v[60:63], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[60:67], v[88:91], v[92:95], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[44:51], v[84:87], v[92:95], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[80:83], v[108:111], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[76:79], v[108:111], v[52:59] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[60:67], v[80:83], v[104:107], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[44:51], v[76:79], v[104:107], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[72:75], v[100:103], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[68:71], v[100:103], v[52:59] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[60:67], v[72:75], v[96:99], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[44:51], v[68:71], v[96:99], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[116:119], v[112:115], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[120:123], v[112:115], v[52:59] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[116:119], v[124:127], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[44:51], v[120:123], v[124:127], v[44:51] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v52
	v_cvt_f32_i32_e32 v10, v53
	v_cvt_f32_i32_e32 v52, v54
	v_cvt_f32_i32_e32 v53, v55
	v_cvt_f32_i32_e32 v54, v56
	v_cvt_f32_i32_e32 v55, v57
	v_cvt_f32_i32_e32 v56, v58
	v_cvt_f32_i32_e32 v57, v59
	v_cvt_f32_i32_e32 v58, v60
	v_cvt_f32_i32_e32 v59, v61
	v_cvt_f32_i32_e32 v60, v62
	v_cvt_f32_i32_e32 v61, v63
	v_cvt_f32_i32_e32 v62, v64
	v_cvt_f32_i32_e32 v63, v65
	v_cvt_f32_i32_e32 v64, v66
	v_cvt_f32_i32_e32 v65, v67
	v_cvt_f32_i32_e32 v66, v44
	v_cvt_f32_i32_e32 v67, v45
	v_cvt_f32_i32_e32 v68, v46
	v_cvt_f32_i32_e32 v69, v47
	v_cvt_f32_i32_e32 v70, v48
	v_cvt_f32_i32_e32 v71, v49
	v_cvt_f32_i32_e32 v72, v50
	v_cvt_f32_i32_e32 v73, v51
.LBB0_10:
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_or_b32_e32 v43, s28, v43
	.loc	1 404 14 is_stmt 0              ; generate_amdgcn.py:404:14
	s_and_b32 s5, s17, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s16
	.loc	1 399 13 is_stmt 1              ; generate_amdgcn.py:399:13
	v_dual_add_f32 v1, v18, v1 :: v_dual_lshlrev_b32 v44, 1, v43
	.loc	1 326 14                        ; generate_amdgcn.py:326:14
	v_or_b32_e32 v43, s14, v0
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v48, v32, v53 :: v_dual_add_f32 v51, v29, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 404 14                        ; generate_amdgcn.py:404:14
	v_or_b32_e32 v45, 32, v44
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v5, v39, v5 :: v_dual_lshlrev_b32 v46, 1, v43
	v_dual_add_f32 v50, v30, v55 :: v_dual_add_f32 v53, v27, v58
	.loc	1 404 14                        ; generate_amdgcn.py:404:14
	s_clause 0x1
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	.loc	1 405 14                        ; generate_amdgcn.py:405:14
	s_and_b32 s5, s19, 0xffff
	s_mov_b32 s4, s18
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_add_f32_e32 v56, v24, v61
	.loc	1 405 14                        ; generate_amdgcn.py:405:14
	buffer_load_u16 v46, v46, s[4:7], 0 offen
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v58, v22, v63 :: v_dual_add_f32 v61, v19, v66
	v_dual_add_f32 v2, v42, v2 :: v_dual_add_f32 v3, v41, v3
	v_dual_add_f32 v8, v36, v8 :: v_dual_add_f32 v49, v31, v54
	v_dual_add_f32 v10, v34, v10 :: v_dual_add_f32 v47, v33, v52
	v_dual_add_f32 v52, v28, v57 :: v_dual_add_f32 v55, v25, v60
	v_dual_add_f32 v54, v26, v59 :: v_dual_add_f32 v57, v23, v62
	v_dual_add_f32 v59, v21, v64 :: v_dual_add_f32 v60, v20, v65
	v_dual_add_f32 v65, v14, v70 :: v_dual_add_f32 v62, v17, v67
	v_dual_add_f32 v63, v16, v68 :: v_dual_add_f32 v64, v15, v69
	v_dual_add_f32 v67, v12, v72 :: v_dual_add_f32 v66, v13, v71
	v_dual_add_f32 v68, v11, v73 :: v_dual_and_b32 v69, 0xf0, v0
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_and_b32_e32 v71, 1, v0
	v_bfe_i32 v72, v0, 0, 1
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v29, v29, v51, s2
	v_cndmask_b32_e64 v51, v19, v61, s2
	v_cndmask_b32_e64 v41, v41, v3, s2
	v_cndmask_b32_e64 v33, v33, v47, s2
	v_cndmask_b32_e64 v28, v28, v52, s2
	v_cndmask_b32_e64 v47, v27, v53, s2
	v_cndmask_b32_e64 v52, v17, v62, s2
	v_cndmask_b32_e64 v53, v16, v63, s2
	v_cndmask_b32_e64 v18, v18, v1, s2
	v_cndmask_b32_e64 v42, v42, v2, s2
	v_cndmask_b32_e64 v31, v31, v49, s2
	v_cndmask_b32_e64 v49, v23, v57, s2
	v_cndmask_b32_e64 v57, v12, v67, s2
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_lshl_add_u32 v12, v69, 1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_add_f32 v4, v40, v4 :: v_dual_add_f32 v7, v37, v7
	v_dual_add_f32 v6, v38, v6 :: v_dual_add_f32 v9, v35, v9
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v39, v39, v5, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v40, v40, v4, s2
	v_cndmask_b32_e64 v36, v36, v8, s2
	v_cndmask_b32_e64 v38, v38, v6, s2
	v_cndmask_b32_e64 v37, v37, v7, s2
	v_cndmask_b32_e64 v35, v35, v9, s2
	v_cndmask_b32_e64 v34, v34, v10, s2
	v_cndmask_b32_e64 v32, v32, v48, s2
	v_cndmask_b32_e64 v26, v26, v54, s2
	v_cndmask_b32_e64 v48, v25, v55, s2
	v_cndmask_b32_e64 v24, v24, v56, s2
	v_cndmask_b32_e64 v54, v15, v64, s2
	v_cndmask_b32_e64 v55, v14, v65, s2
	v_cndmask_b32_e64 v56, v13, v66, s2
	v_cndmask_b32_e64 v30, v30, v50, s2
	v_cndmask_b32_e64 v50, v21, v59, s2
	v_cndmask_b32_e64 v22, v22, v58, s2
	v_cndmask_b32_e64 v20, v20, v60, s2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s1, s29, 3
	s_mul_i32 s3, s29, 5
	s_mul_i32 s4, s29, 6
	s_mul_i32 s5, s29, 7
	s_mul_i32 s8, s29, 9
	s_mul_i32 s9, s29, 10
	s_mul_i32 s10, s29, 11
	s_mul_i32 s11, s29, 12
	s_mul_i32 s16, s29, 13
	s_mul_i32 s17, s29, 14
	s_mul_i32 s18, s29, 15
	s_mul_i32 s19, s29, 17
	s_mul_i32 s20, s29, 18
	s_mul_i32 s21, s29, 19
	s_mul_i32 s22, s29, 20
	s_mul_i32 s23, s29, 21
	s_mul_i32 s24, s29, 22
	s_mul_i32 s25, s29, 23
	s_mul_i32 s26, s29, 24
	s_mul_i32 s27, s29, 25
	s_mul_i32 s30, s29, 26
	.loc	1 418 9 is_stmt 0               ; generate_amdgcn.py:418:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s31, s29, 27
	s_mul_i32 s33, s29, 28
	s_mul_i32 s34, s29, 29
	s_mul_i32 s35, s29, 30
	s_mul_i32 s0, s29, 31
	.loc	1 404 14 is_stmt 1              ; generate_amdgcn.py:404:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v19, 16, v44
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_and_b32_e32 v70, 14, v0
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshlrev_b32_e32 v0, 2, v0
	v_and_b32_e32 v3, 0x840, v72
	.loc	1 418 23 is_stmt 0              ; generate_amdgcn.py:418:23
	v_mad_u64_u32 v[16:17], null, s28, s29, v[43:44]
	.loc	1 406 16 is_stmt 1              ; generate_amdgcn.py:406:16
	v_lshlrev_b32_e32 v1, 2, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_and_b32_e32 v0, 0x3f8, v0
	v_lshlrev_b32_e32 v5, 2, v70
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v43, v11, v68, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xor_b32_e32 v0, v3, v0
	v_add_lshl_u32 v59, v16, s29, 2
	v_add_lshl_u32 v60, v16, s1, 2
	v_add_lshl_u32 v61, v16, s3, 2
	v_add_lshl_u32 v62, v16, s4, 2
	v_lshl_or_b32 v17, v70, 11, v0
	.loc	1 405 14                        ; generate_amdgcn.py:405:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v46
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v63, v16, s5, 2
	v_add_lshl_u32 v64, v16, s8, 2
	v_add_lshl_u32 v65, v16, s9, 2
	v_add_nc_u32_e32 v100, 0, v17
	v_xad_u32 v101, v17, 8, 0
	v_xad_u32 v102, v17, 16, 0
	v_xad_u32 v103, v17, 24, 0
	v_xad_u32 v104, v17, 32, 0
	v_xad_u32 v105, v17, 40, 0
	v_xad_u32 v106, v17, 48, 0
	v_xad_u32 v44, v17, 56, 0
	.loc	1 404 14                        ; generate_amdgcn.py:404:14
	v_lshlrev_b32_e32 v17, 16, v45
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_lshlrev_b32_e32 v2, 5, v71
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v66, v16, s10, 2
	v_add_lshl_u32 v67, v16, s11, 2
	v_add_lshl_u32 v68, v16, s16, 2
	v_add_lshl_u32 v72, v16, s19, 2
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_add3_u32 v1, 0, v1, v2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v73, v16, s20, 2
	v_add_lshl_u32 v74, v16, s21, 2
	v_add_lshl_u32 v75, v16, s22, 2
	v_add_lshl_u32 v76, v16, s23, 2
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_lshl_add_u32 v1, v70, 1, v1
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v77, v16, s24, 2
	v_add_lshl_u32 v78, v16, s25, 2
	v_add_lshl_u32 v79, v16, s26, 2
	v_add_lshl_u32 v80, v16, s27, 2
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	ds_store_b32 v1, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v12
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshlrev_b32_e32 v4, 3, v69
	v_lshlrev_b32_e32 v6, 6, v71
	v_add_lshl_u32 v69, v16, s17, 2
	v_add_lshl_u32 v71, v16, s18, 2
	v_add_lshl_u32 v81, v16, s30, 2
	v_add_lshl_u32 v82, v16, s31, 2
	v_or3_b32 v8, v4, v6, v5
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	ds_load_b128 v[4:7], v12 offset:16
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v83, v16, s33, 2
	v_add_lshl_u32 v84, v16, s34, 2
	v_add_lshl_u32 v85, v16, s35, 2
	v_xad_u32 v86, 0x840, v8, 0
	v_xad_u32 v87, 0x1008, v8, 0
	v_xad_u32 v88, 0x1848, v8, 0
	v_xad_u32 v89, 0x2010, v8, 0
	v_xad_u32 v90, 0x2850, v8, 0
	v_xad_u32 v91, 0x3018, v8, 0
	v_xad_u32 v92, 0x3858, v8, 0
	v_xad_u32 v93, 0x4020, v8, 0
	v_xad_u32 v94, 0x4860, v8, 0
	v_xad_u32 v46, 0x5028, v8, 0
	v_xad_u32 v95, 0x5868, v8, 0
	v_xad_u32 v96, 0x6030, v8, 0
	v_xad_u32 v97, 0x6870, v8, 0
	v_xad_u32 v98, 0x7038, v8, 0
	v_xad_u32 v99, 0x7878, v8, 0
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v118, v0, v17
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v107, v5, v19 :: v_dual_add_nc_u32 v70, 0, v8
	ds_load_b128 v[8:11], v12 offset:512
	ds_load_b128 v[12:15], v12 offset:528
	v_mul_f32_e32 v21, v0, v19
	v_dual_mul_f32 v109, v7, v19 :: v_dual_lshlrev_b32 v58, 2, v16
	v_mul_f32_e32 v45, v4, v19
	v_mul_f32_e32 v23, v1, v19
	v_mul_f32_e32 v27, v3, v19
	v_mul_f32_e32 v25, v2, v19
	v_mul_f32_e32 v108, v6, v19
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 406 16                        ; generate_amdgcn.py:406:16
	v_mul_f32_e32 v110, v8, v19
	v_mul_f32_e32 v114, v12, v19
	v_dual_mul_f32 v126, v8, v17 :: v_dual_mul_f32 v111, v9, v19
	v_dual_mul_f32 v115, v13, v19 :: v_dual_mul_f32 v122, v4, v17
	v_mul_f32_e32 v119, v1, v17
	v_mul_f32_e32 v125, v7, v17
	v_dual_mul_f32 v127, v9, v17 :: v_dual_mul_f32 v112, v10, v19
	v_dual_mul_f32 v113, v11, v19 :: v_dual_mul_f32 v120, v2, v17
	v_dual_mul_f32 v116, v14, v19 :: v_dual_mul_f32 v123, v5, v17
	v_mul_f32_e32 v128, v10, v17
	v_mul_f32_e32 v121, v3, v17
	v_dual_mul_f32 v129, v11, v17 :: v_dual_mul_f32 v10, v38, v107
	v_dual_mul_f32 v117, v15, v19 :: v_dual_mul_f32 v124, v6, v17
	v_dual_mul_f32 v130, v12, v17 :: v_dual_mul_f32 v19, v34, v111
	v_mul_f32_e32 v131, v13, v17
	v_mul_f32_e32 v132, v14, v17
	v_dual_mul_f32 v133, v15, v17 :: v_dual_mul_f32 v12, v37, v108
	.loc	1 406 9 is_stmt 0               ; generate_amdgcn.py:406:9
	v_dual_mul_f32 v0, v18, v21 :: v_dual_mul_f32 v29, v29, v116
	v_dual_mul_f32 v14, v36, v109 :: v_dual_mul_f32 v1, v47, v118
	v_mul_f32_e32 v17, v35, v110
	v_mul_f32_e32 v18, v51, v126
	v_mul_f32_e32 v2, v42, v23
	v_mul_f32_e32 v6, v40, v27
	v_dual_mul_f32 v8, v39, v45 :: v_dual_mul_f32 v3, v26, v119
	v_mul_f32_e32 v9, v49, v122
	v_mul_f32_e32 v15, v20, v125
	v_mul_f32_e32 v20, v52, v127
	v_dual_mul_f32 v4, v41, v25 :: v_dual_mul_f32 v27, v30, v115
	v_mul_f32_e32 v21, v33, v112
	v_mul_f32_e32 v23, v32, v113
	v_mul_f32_e32 v5, v48, v120
	v_dual_mul_f32 v11, v22, v123 :: v_dual_mul_f32 v32, v43, v133
	v_dual_mul_f32 v22, v53, v128 :: v_dual_mul_f32 v25, v31, v114
	v_dual_mul_f32 v7, v24, v121 :: v_dual_mul_f32 v30, v57, v132
	v_mul_f32_e32 v24, v54, v129
	v_dual_mul_f32 v31, v28, v117 :: v_dual_mul_f32 v26, v55, v130
	v_dual_mul_f32 v13, v50, v124 :: v_dual_mul_f32 v28, v56, v131
	.loc	1 418 9 is_stmt 1               ; generate_amdgcn.py:418:9
	ds_store_2addr_stride64_b64 v100, v[0:1], v[17:18] offset1:2
	ds_store_2addr_stride64_b64 v101, v[2:3], v[19:20] offset1:2
	ds_store_2addr_stride64_b64 v102, v[4:5], v[21:22] offset1:2
	ds_store_2addr_stride64_b64 v103, v[6:7], v[23:24] offset1:2
	ds_store_2addr_stride64_b64 v104, v[8:9], v[25:26] offset1:2
	ds_store_2addr_stride64_b64 v105, v[10:11], v[27:28] offset1:2
	ds_store_2addr_stride64_b64 v106, v[12:13], v[29:30] offset1:2
	ds_store_2addr_stride64_b64 v44, v[14:15], v[31:32] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[0:1], v70
	ds_load_b64 v[2:3], v86
	ds_load_b64 v[4:5], v87
	ds_load_b64 v[6:7], v88
	ds_load_b64 v[8:9], v89
	ds_load_b64 v[10:11], v90
	ds_load_b64 v[12:13], v91
	ds_load_b64 v[14:15], v92
	ds_load_b64 v[17:18], v93
	ds_load_b64 v[19:20], v94
	ds_load_b64 v[21:22], v46
	ds_load_b64 v[23:24], v95
	ds_load_b64 v[25:26], v96
	ds_load_b64 v[27:28], v97
	ds_load_b64 v[29:30], v98
	ds_load_b64 v[31:32], v99
	v_lshl_add_u32 v33, s29, 3, v58
	v_lshl_add_u32 v34, s29, 4, v58
	v_lshl_add_u32 v35, s29, 5, v58
	v_lshl_add_u32 v36, s29, 6, v58
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v58, s[12:15], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v2, v59, s[12:15], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v4, v33, s[12:15], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v6, v60, s[12:15], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v8, v34, s[12:15], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v10, v61, s[12:15], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v12, v62, s[12:15], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v14, v63, s[12:15], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v17, v35, s[12:15], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v19, v64, s[12:15], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v21, v65, s[12:15], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v23, v66, s[12:15], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v25, v67, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v27, v68, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v29, v69, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0xb
	buffer_atomic_add_f32 v31, v71, s[12:15], 0 offen
	buffer_atomic_add_f32 v1, v36, s[12:15], 0 offen
	buffer_atomic_add_f32 v3, v72, s[12:15], 0 offen
	buffer_atomic_add_f32 v5, v73, s[12:15], 0 offen
	buffer_atomic_add_f32 v7, v74, s[12:15], 0 offen
	buffer_atomic_add_f32 v9, v75, s[12:15], 0 offen
	buffer_atomic_add_f32 v11, v76, s[12:15], 0 offen
	buffer_atomic_add_f32 v13, v77, s[12:15], 0 offen
	buffer_atomic_add_f32 v15, v78, s[12:15], 0 offen
	buffer_atomic_add_f32 v18, v79, s[12:15], 0 offen
	buffer_atomic_add_f32 v20, v80, s[12:15], 0 offen
	buffer_atomic_add_f32 v22, v81, s[12:15], 0 offen
	v_add_lshl_u32 v0, v16, s0, 2
	s_clause 0x4
	buffer_atomic_add_f32 v24, v82, s[12:15], 0 offen
	buffer_atomic_add_f32 v26, v83, s[12:15], 0 offen
	buffer_atomic_add_f32 v28, v84, s[12:15], 0 offen
	buffer_atomic_add_f32 v30, v85, s[12:15], 0 offen
	buffer_atomic_add_f32 v32, v0, s[12:15], 0 offen
	.loc	1 309 1                         ; generate_amdgcn.py:309:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
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
		.amdhsa_inst_pref_size 45
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_vgpr, 165
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5732
; TotalNumSgprs: 38
; NumVgprs: 165
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
	.short	317                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	316                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	333                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     165
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
