	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 3, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v13, 4, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v8, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v65, 15, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v66, 0xe0, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v4, 56, v8
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s14, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_mov_b64 s[24:25], s[18:19]
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b32 s19, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s27, s19
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s26, s18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
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
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s8, s6
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s10, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	v_readfirstlane_b32 s9, v1
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v1, 48, v13
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mad_u64_u32 v[9:10], null, s10, v3, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s11, s11, s9
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v10, s10, 6, v9
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s9, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
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
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s36, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s9
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s28, s4, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s5
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s14, s28, s15
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s6, s10, 63
.Ltmp13:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s29, s2, 5
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s34, s28, s10
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s2, s29, s10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s6, 63
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v11, v2, v4, s2
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_mul_i32 s35, s14, s10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s2, s34, s36
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v1, s36, v11
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s4, s35, s36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s6, 0x7f
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v2, s2, v9
	v_add_nc_u32_e32 v3, s2, v10
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v4, s4, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s36, s36, 64
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v5, s4, v10
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v12, s36, v11
	.loc	1 350 30 is_stmt 1              ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v26, 64, v2
	v_add_nc_u32_e32 v27, 64, v3
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v28, 64, v4
	v_add_nc_u32_e32 v29, 64, v5
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v14, 0x80000000, v2, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[6:7], v1, s[16:19], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v12, s2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v15, 0x80000000, v3, s3
	v_cndmask_b32_e64 v12, 0x80000000, v26, s2
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v18, 0x80000000, v4, s3
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v30, 0x80000000, v27, s2
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v22, 0x80000000, v5, s3
	v_cndmask_b32_e64 v34, 0x80000000, v28, s2
	v_cndmask_b32_e64 v38, 0x80000000, v29, s2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[2:5], v14, s[24:27], 0 offen
	buffer_load_b128 v[14:17], v15, s[24:27], 0 offen
	buffer_load_b128 v[18:21], v18, s[24:27], 0 offen
	buffer_load_b128 v[22:25], v22, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[42:43], v1, s[16:19], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[26:29], v12, s[24:27], 0 offen
	buffer_load_b128 v[30:33], v30, s[24:27], 0 offen
	buffer_load_b128 v[34:37], v34, s[24:27], 0 offen
	buffer_load_b128 v[38:41], v38, s[24:27], 0 offen
	v_lshlrev_b32_e32 v1, 1, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v12, 48, v0
	s_mov_b32 s5, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s6, 0xbf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v1, 48, v1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v12, v8, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v13, v13, v1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v44, 0, v12
	v_and_b32_e32 v1, 48, v8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v45, 0, v13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(9)
	ds_store_b64 v44, v[6:7] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v45, v[2:5]
	s_waitcnt vmcnt(7)
	ds_store_b128 v45, v[14:17] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(6)
	ds_store_b128 v45, v[18:21] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v45, v[22:25] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v44, v[42:43] offset:34816
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v45, v[26:29] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v45, v[30:33] offset:12288
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v45, v[34:37] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v45, v[38:41] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v71, v65, 6, v1
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshl_or_b32 v67, v66, 5, v71
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v72, 16, v71
	v_xor_b32_e32 v73, 32, v71
	v_xor_b32_e32 v74, 48, v71
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v69, 16, v67
	v_xor_b32_e32 v68, 32, v67
	v_xor_b32_e32 v70, 48, v67
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr71
                                        ; implicit-def: $vgpr72
                                        ; implicit-def: $vgpr73
                                        ; implicit-def: $vgpr74
                                        ; implicit-def: $vgpr67
                                        ; implicit-def: $vgpr69
                                        ; implicit-def: $vgpr68
                                        ; implicit-def: $vgpr70
.LBB0_3:                                ; %Flow176
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_lshl_or_b32 v71, v65, 6, v1
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s37, s6, 6
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_lshl_or_b32 v67, v66, 5, v71
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v4, s7
	v_xor_b32_e32 v72, 16, v71
	v_xor_b32_e32 v73, 32, v71
	v_xor_b32_e32 v74, 48, v71
	v_xor_b32_e32 v69, 16, v67
	v_xor_b32_e32 v68, 32, v67
	v_xor_b32_e32 v70, 48, v67
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	s_add_i32 s36, s36, 64
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s31, 0, 0x8800
	s_add_i32 s30, 0, 0x2000
	s_add_i32 s33, 0, 0x4000
	s_add_i32 s1, 0, 0x6000
	s_add_i32 s37, s37, -3
	s_mov_b32 s38, 1
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	s_mov_b32 s5, 0
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s6, s5, 6
	s_mov_b32 s8, s33
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s6, s36, s6
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v22, s8, v67
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s7, s6, s34
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v14, s6, v11
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s6, s6, s35
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v15, s7, v9
	v_add_nc_u32_e32 v16, s7, v10
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v17, s6, v9
	v_add_nc_u32_e32 v18, s6, v10
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[30:31], v14, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[91:94], v15, s[24:27], 0 offen
	buffer_load_b128 v[95:98], v16, s[24:27], 0 offen
	buffer_load_b128 v[99:102], v17, s[24:27], 0 offen
	buffer_load_b128 v[103:106], v18, s[24:27], 0 offen
	s_mov_b32 s6, s0
	s_mov_b32 s7, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v14, s6, v71
	v_add_nc_u32_e32 v15, s6, v72
	v_add_nc_u32_e32 v16, s6, v73
	v_add_nc_u32_e32 v17, s6, v74
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v18, s7, v67
	v_add_nc_u32_e32 v19, s7, v69
	v_add_nc_u32_e32 v20, s7, v68
	v_add_nc_u32_e32 v21, s7, v70
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v23, s8, v69
	v_add_nc_u32_e32 v24, s8, v68
	v_add_nc_u32_e32 v25, s8, v70
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[83:86], v14
	ds_load_b128 v[107:110], v14 offset:1024
	ds_load_b128 v[111:114], v15
	ds_load_b128 v[115:118], v15 offset:1024
	ds_load_b128 v[119:122], v16
	ds_load_b128 v[123:126], v16 offset:1024
	ds_load_b128 v[127:130], v17
	ds_load_b128 v[131:134], v17 offset:1024
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[75:78], v18
	ds_load_b128 v[135:138], v19
	ds_load_b128 v[139:142], v20
	ds_load_b128 v[143:146], v21
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[147:150], v22
	ds_load_b128 v[151:154], v23
	ds_load_b128 v[155:158], v24
	ds_load_b128 v[159:162], v25
	s_mov_b32 s33, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s38, 1
	s_mov_b32 s4, s30
	s_cmp_lt_i32 s1, 2
	s_mov_b32 s0, s31
	s_cselect_b32 s38, s1, 0
	s_add_i32 s6, s5, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s1, s38, 11
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s7, s38, 13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s1, s1, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s30, s7, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s31, s1, 0x8000
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[14:21], v[75:78], v[83:86], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[22:29], v[75:78], v[107:110], v[1:8] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[147:150], v[83:86], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[147:150], v[107:110], v[1:8] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[14:21], v[135:138], v[111:114], v[14:21] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[151:154], v[111:114], v[75:82] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[22:29], v[135:138], v[115:118], v[22:29] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[83:90], v[151:154], v[115:118], v[83:90] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[14:21], v[139:142], v[119:122], v[14:21] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[75:82], v[155:158], v[119:122], v[75:82] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[22:29], v[139:142], v[123:126], v[22:29] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[83:90], v[155:158], v[123:126], v[83:90] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[14:21], v[143:146], v[127:130], v[14:21] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[75:82], v[159:162], v[127:130], v[75:82] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[22:29], v[143:146], v[131:134], v[22:29] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[83:90], v[159:162], v[131:134], v[83:90] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v49, v49, v77 :: v_dual_add_nc_u32 v32, s1, v12
	v_dual_add_f32 v54, v54, v76 :: v_dual_add_nc_u32 v163, s30, v13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v58, v58, v15 :: v_dual_add_f32 v57, v57, v14
	v_dual_add_f32 v52, v52, v17 :: v_dual_add_f32 v51, v51, v16
	v_dual_add_f32 v42, v42, v19 :: v_dual_add_f32 v41, v41, v18
	v_dual_add_f32 v34, v34, v21 :: v_dual_add_f32 v33, v33, v20
	v_dual_add_f32 v64, v64, v23 :: v_dual_add_f32 v63, v63, v22
	v_dual_add_f32 v60, v60, v25 :: v_dual_add_f32 v59, v59, v24
	v_dual_add_f32 v48, v48, v27 :: v_dual_add_f32 v47, v47, v26
	v_dual_add_f32 v36, v36, v29 :: v_dual_add_f32 v35, v35, v28
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v53, v53, v75 :: v_dual_add_f32 v50, v50, v78
	v_dual_add_f32 v43, v43, v79 :: v_dual_add_f32 v44, v44, v80
	v_dual_add_f32 v37, v37, v81 :: v_dual_add_f32 v38, v38, v82
	v_dual_add_f32 v61, v61, v83 :: v_dual_add_f32 v62, v62, v84
	v_dual_add_f32 v55, v55, v85 :: v_dual_add_f32 v56, v56, v86
	v_dual_add_f32 v45, v45, v87 :: v_dual_add_f32 v46, v46, v88
	v_dual_add_f32 v39, v39, v89 :: v_dual_add_f32 v40, v40, v90
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_add_i32 s1, s30, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s5, s37
	s_mov_b32 s5, s6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(4)
	ds_store_b64 v32, v[30:31] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v163, v[91:94]
	s_waitcnt vmcnt(2)
	ds_store_b128 v163, v[95:98] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v163, v[99:102] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v163, v[103:106] offset:20480
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s5, s4
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v53, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s31, 0, 0x8800
	s_add_i32 s30, 0, 0x2000
	s_add_i32 s33, 0, 0x4000
	v_mov_b32_e32 v54, v53
	v_mov_b32_e32 v43, v53
	v_mov_b32_e32 v41, v53
	v_mov_b32_e32 v49, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v51, v53 :: v_dual_mov_b32 v52, v54
	v_dual_mov_b32 v58, v54 :: v_dual_mov_b32 v57, v53
	v_mov_b32_e32 v44, v54
	v_mov_b32_e32 v42, v54
	v_dual_mov_b32 v50, v54 :: v_dual_mov_b32 v37, v53
	v_dual_mov_b32 v38, v54 :: v_dual_mov_b32 v33, v53
	v_mov_b32_e32 v34, v54
	v_dual_mov_b32 v62, v54 :: v_dual_mov_b32 v61, v53
	v_dual_mov_b32 v64, v54 :: v_dual_mov_b32 v63, v53
	v_dual_mov_b32 v45, v53 :: v_dual_mov_b32 v46, v54
	v_dual_mov_b32 v47, v53 :: v_dual_mov_b32 v48, v54
	v_dual_mov_b32 v56, v54 :: v_dual_mov_b32 v55, v53
	v_dual_mov_b32 v60, v54 :: v_dual_mov_b32 v59, v53
	v_dual_mov_b32 v39, v53 :: v_dual_mov_b32 v40, v54
	v_dual_mov_b32 v35, v53 :: v_dual_mov_b32 v36, v54
	s_add_i32 s1, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v5, s0, v72
	v_add_nc_u32_e32 v6, s0, v73
	v_add_nc_u32_e32 v1, s0, v71
	v_add_nc_u32_e32 v7, s0, v74
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v5
	ds_load_b128 v[17:20], v5 offset:1024
	ds_load_b128 v[21:24], v6
	ds_load_b128 v[9:12], v6 offset:1024
	ds_load_b128 v[13:16], v7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[5:8], v7 offset:1024
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[29:32], v1
	ds_load_b128 v[1:4], v1 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v75, 0, 1, s3
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s0, 1, v75
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v75, s5, v67
	v_add_nc_u32_e32 v76, s5, v69
	ds_load_b128 v[91:94], v75
	ds_load_b128 v[95:98], v76
	v_add_nc_u32_e32 v76, s5, v68
	v_add_nc_u32_e32 v75, s5, v70
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[99:102], v76
	ds_load_b128 v[103:106], v75
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v82, s11 :: v_dual_mov_b32 v77, s6
	v_dual_mov_b32 v81, s10 :: v_dual_mov_b32 v80, s9
	v_dual_mov_b32 v79, s8 :: v_dual_mov_b32 v78, s7
	v_dual_mov_b32 v76, s5 :: v_dual_mov_b32 v75, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[91:94], v[29:32], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[91:94], v[1:4], v[75:82] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[95:98], v[25:28], v[83:90] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[95:98], v[17:20], v[75:82] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[99:102], v[21:24], v[83:90] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[99:102], v[9:12], v[75:82] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[103:106], v[13:16], v[83:90] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[103:106], v[5:8], v[75:82] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v85, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v75, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v64, v64, v76 :: v_dual_add_f32 v63, v63, v75
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v75, v84
	v_cvt_f32_i32_e32 v76, v83
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v52, v52, v86 :: v_dual_add_f32 v51, v51, v85
	v_dual_add_f32 v42, v42, v88 :: v_dual_add_f32 v41, v41, v87
	v_dual_add_f32 v34, v34, v90 :: v_dual_add_f32 v33, v33, v89
	v_dual_add_f32 v60, v60, v78 :: v_dual_add_f32 v59, v59, v77
	v_dual_add_f32 v48, v48, v80 :: v_dual_add_f32 v47, v47, v79
	v_dual_add_f32 v36, v36, v82 :: v_dual_add_f32 v35, v35, v81
	v_dual_add_f32 v58, v58, v75 :: v_dual_add_f32 v57, v57, v76
.LBB0_10:
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 356 31 is_stmt 1              ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v75, s33, v67
	v_add_nc_u32_e32 v76, s33, v69
	ds_load_b128 v[91:94], v75
	ds_load_b128 v[95:98], v76
	v_add_nc_u32_e32 v76, s33, v68
	v_add_nc_u32_e32 v75, s33, v70
	ds_load_b128 v[99:102], v76
	ds_load_b128 v[103:106], v75
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v82, s11 :: v_dual_mov_b32 v77, s6
	v_dual_mov_b32 v81, s10 :: v_dual_mov_b32 v80, s9
	v_dual_mov_b32 v79, s8 :: v_dual_mov_b32 v78, s7
	v_dual_mov_b32 v76, s5 :: v_dual_mov_b32 v75, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[91:94], v[29:32], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[91:94], v[1:4], v[75:82] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[95:98], v[25:28], v[83:90] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[95:98], v[17:20], v[75:82] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[99:102], v[21:24], v[83:90] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[99:102], v[9:12], v[75:82] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[103:106], v[13:16], v[83:90] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[103:106], v[5:8], v[75:82] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v86
	v_cvt_f32_i32_e32 v3, v87
	v_cvt_f32_i32_e32 v4, v88
	v_cvt_f32_i32_e32 v5, v89
	v_cvt_f32_i32_e32 v6, v90
	v_cvt_f32_i32_e32 v7, v75
	v_cvt_f32_i32_e32 v8, v76
	v_cvt_f32_i32_e32 v9, v77
	v_cvt_f32_i32_e32 v10, v78
	v_cvt_f32_i32_e32 v11, v79
	v_cvt_f32_i32_e32 v12, v80
	v_cvt_f32_i32_e32 v13, v81
	v_cvt_f32_i32_e32 v14, v82
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v50, v50, v2 :: v_dual_add_f32 v49, v49, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v84
	v_cvt_f32_i32_e32 v2, v83
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v44, v44, v4 :: v_dual_add_f32 v43, v43, v3
	v_dual_add_f32 v38, v38, v6 :: v_dual_add_f32 v37, v37, v5
	v_dual_add_f32 v62, v62, v8 :: v_dual_add_f32 v61, v61, v7
	v_dual_add_f32 v56, v56, v10 :: v_dual_add_f32 v55, v55, v9
	v_dual_add_f32 v46, v46, v12 :: v_dual_add_f32 v45, v45, v11
	v_dual_add_f32 v40, v40, v14 :: v_dual_add_f32 v39, v39, v13
	v_dual_add_f32 v54, v54, v1 :: v_dual_add_f32 v53, v53, v2
.LBB0_12:
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v1, s31, v71
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v2, s31, v72
	v_add_nc_u32_e32 v13, s31, v73
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v72, 0, 1, s2
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v14, s31, v74
	v_mov_b32_e32 v74, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[25:28], v13
	ds_load_b128 v[17:20], v13 offset:1024
	ds_load_b128 v[21:24], v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[13:16], v14 offset:1024
	v_cmp_ne_u32_e64 s0, 1, v72
	v_mov_b32_e32 v72, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[29:32], v1
	ds_load_b128 v[5:8], v1 offset:1024
	ds_load_b128 v[9:12], v2
	ds_load_b128 v[1:4], v2 offset:1024
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v86, 0
	v_mov_b32_e32 v83, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v80, s30, v70
	v_add_nc_u32_e32 v81, s30, v68
	v_add_nc_u32_e32 v72, s30, v67
	v_add_nc_u32_e32 v76, s30, v69
	ds_load_b128 v[101:104], v80
	ds_load_b128 v[97:100], v81
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v88, s11 :: v_dual_mov_b32 v81, s4
	v_mov_b32_e32 v87, s10
	v_mov_b32_e32 v85, s8
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[72:75], v72
	ds_load_b128 v[76:79], v76
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v86, s9
	v_dual_mov_b32 v84, s7 :: v_dual_mov_b32 v83, s6
	v_mov_b32_e32 v82, s5
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[89:96], v[72:75], v[29:32], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[72:75], v[5:8], v[81:88] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[89:96], v[76:79], v[9:12], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[81:88], v[76:79], v[1:4], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[97:100], v[25:28], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[81:88], v[97:100], v[17:20], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[101:104], v[21:24], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[81:88], v[101:104], v[13:16], v[81:88] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v73, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v76, v92
	v_cvt_f32_i32_e32 v72, v93
	v_cvt_f32_i32_e32 v74, v94
	v_cvt_f32_i32_e32 v75, v95
	v_cvt_f32_i32_e32 v77, v96
	v_cvt_f32_i32_e32 v78, v81
	v_cvt_f32_i32_e32 v79, v82
	v_cvt_f32_i32_e32 v81, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v80, v85
	v_cvt_f32_i32_e32 v82, v86
	v_cvt_f32_i32_e32 v83, v87
	v_cvt_f32_i32_e32 v86, v88
	v_cvt_f32_i32_e32 v85, v89
	v_cvt_f32_i32_e32 v87, v90
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	v_mov_b32_e32 v102, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 356 31 is_stmt 1              ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v67, s1, v67
	v_add_nc_u32_e32 v69, s1, v69
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v105, s11 :: v_dual_mov_b32 v104, s10
	v_mov_b32_e32 v102, s8
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[106:109], v67
	ds_load_b128 v[110:113], v69
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v98, s4 :: v_dual_add_nc_u32 v67, s1, v68
	v_dual_mov_b32 v100, s6 :: v_dual_add_nc_u32 v71, s1, v70
	v_mov_b32_e32 v103, s9
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[67:70], v67
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_mov_b32_e32 v101, s7
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[114:117], v71
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_mov_b32_e32 v99, s5
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[90:97], v[106:109], v[29:32], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[106:109], v[5:8], v[98:105] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[90:97], v[110:113], v[9:12], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[98:105], v[110:113], v[1:4], v[98:105] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[90:97], v[67:70], v[25:28], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[98:105], v[67:70], v[17:20], v[98:105] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[90:97], v[114:117], v[21:24], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[98:105], v[114:117], v[13:16], v[98:105] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v71, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v88, v91
	v_cvt_f32_i32_e32 v90, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v89, v94
	v_cvt_f32_i32_e32 v91, v95
	v_cvt_f32_i32_e32 v92, v96
	v_cvt_f32_i32_e32 v94, v97
	v_cvt_f32_i32_e32 v95, v98
	v_cvt_f32_i32_e32 v96, v99
	v_cvt_f32_i32_e32 v98, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v97, v102
	v_cvt_f32_i32_e32 v99, v103
	v_cvt_f32_i32_e32 v100, v104
	v_cvt_f32_i32_e32 v102, v105
.LBB0_16:
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b32_e32 v1, 4, v0
	v_lshrrev_b32_e32 v2, 1, v66
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v3, s29, v65
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_and_b32 s17, s21, 0xffff
	s_mov_b32 s19, 0x31027000
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_add_f32_e32 v32, v51, v73
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v12, v1, 1, v2
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_lshlrev_b32_e32 v1, 1, v3
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_mov_b32 s16, s20
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v14, 1, v0
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v8, s28, v12
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v7, 32, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v6, 2, v12
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x1
	buffer_load_u16 v13, v1, s[16:19], 0 offen
	buffer_load_u16 v19, v7, s[16:19], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v15, v57, v85 :: v_dual_lshlrev_b32 v8, 1, v8
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s17, s23, 0xffff
	s_mov_b32 s16, s22
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v4, 6, v12
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v9, s14, v12, 1
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v20, v8, s[16:19], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v5, 4, v12
	v_or_b32_e32 v2, 10, v12
	v_or_b32_e32 v3, 8, v12
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v1, s28, v6
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v6, s14, v6, 1
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v10, s28, v4
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	buffer_load_u16 v21, v9, s[16:19], 0 offen
	v_add_lshl_u32 v4, s14, v4, 1
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v7, s28, v5
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v5, s14, v5, 1
	v_add_lshl_u32 v8, s14, v2, 1
	v_add_lshl_u32 v9, s14, v3, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v16, v58, v87 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_clause 0x5
	buffer_load_u16 v22, v6, s[16:19], 0 offen
	buffer_load_u16 v23, v4, s[16:19], 0 offen
	buffer_load_u16 v24, v5, s[16:19], 0 offen
	buffer_load_u16 v25, v8, s[16:19], 0 offen
	buffer_load_u16 v26, v9, s[16:19], 0 offen
	buffer_load_u16 v27, v1, s[16:19], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v1, 1, v7
	.loc	1 379 22 is_stmt 0              ; generate_amdgcn.py:379:22
	v_or_b32_e32 v2, s28, v2
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_dual_add_f32 v17, v52, v76 :: v_dual_lshlrev_b32 v4, 1, v10
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v3, s28, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v10, v42, v74
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_clause 0x1
	buffer_load_u16 v28, v1, s[16:19], 0 offen
	buffer_load_u16 v29, v4, s[16:19], 0 offen
	v_lshlrev_b32_e32 v1, 1, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v11, v41, v72 :: v_dual_lshlrev_b32 v2, 1, v3
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_clause 0x1
	buffer_load_u16 v30, v1, s[16:19], 0 offen
	buffer_load_u16 v31, v2, s[16:19], 0 offen
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v65, s15, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v67, v60, v84 :: v_dual_add_f32 v68, v59, v81
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v57, v15, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v15, 12, v12
	v_or_b32_e32 v12, 14, v12
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s0, s29, s15
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v71, v53, v71 :: v_dual_add_f32 v72, v54, v88
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s0, s0, s28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v59, v68, s2
	v_cndmask_b32_e64 v60, v60, v67, s2
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v67, s28, v12
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v68, s14, v12, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v51, v32, s2
	v_cndmask_b32_e64 v51, v52, v17, s2
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v17, s28, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v69, v48, v82 :: v_dual_add_f32 v70, v47, v80
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v53, v71, s2
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v15, s14, v15, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v8, v39, v100 :: v_dual_lshlrev_b32 v17, 1, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v54, v72, s2
	v_cndmask_b32_e64 v47, v47, v70, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v66, v64, v79 :: v_dual_add_f32 v73, v50, v93
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v6, v37, v92 :: v_dual_add_f32 v79, v56, v101
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v1, v34, v77 :: v_dual_add_f32 v18, v63, v78
	v_add_f32_e32 v2, v33, v75
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v74, v49, v90 :: v_dual_add_f32 v75, v44, v91
	v_dual_add_f32 v77, v61, v95 :: v_dual_add_f32 v78, v62, v96
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v56, v56, v79, s2
	v_cndmask_b32_e64 v48, v48, v69, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v80, v55, v98 :: v_dual_add_f32 v81, v46, v99
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v62, v78, s2
	v_cndmask_b32_e64 v61, v61, v77, s2
	v_cndmask_b32_e64 v49, v49, v74, s2
	v_cndmask_b32_e64 v50, v50, v73, s2
	v_cndmask_b32_e64 v44, v44, v75, s2
	v_cndmask_b32_e64 v55, v55, v80, s2
	v_cndmask_b32_e64 v46, v46, v81, s2
	v_cndmask_b32_e64 v64, v64, v66, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v76, v43, v89 :: v_dual_add_f32 v7, v38, v94
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v63, v63, v18, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v82, v45, v97 :: v_dual_add_f32 v9, v40, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v43, v76, s2
	v_cndmask_b32_e64 v58, v58, v16, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v3, v36, v86 :: v_dual_add_f32 v4, v35, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v45, v82, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.h, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v41, v11, s2
	v_cndmask_b32_e64 v10, v42, v10, s2
	v_cndmask_b32_e64 v9, v40, v9, s2
	v_cndmask_b32_e64 v8, v39, v8, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.h, v5.h
	v_mov_b16_e32 v52.h, v5.h
	v_mov_b16_e32 v18.h, v5.h
	v_mov_b16_e32 v66.h, v5.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v37, v6, s2
	v_cndmask_b32_e64 v7, v38, v7, s2
	v_cndmask_b32_e64 v3, v36, v3, s2
	v_cndmask_b32_e64 v4, v35, v4, s2
	v_cndmask_b32_e64 v2, v33, v2, s2
	v_cndmask_b32_e64 v1, v34, v1, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_lshl_b32 s15, s15, 4
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s18
	v_and_b32_e32 v0, 16, v0
	.loc	1 379 14 is_stmt 1              ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v14, 0x78, v14
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v12, s0, v14, v65
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v14, 16, v13
	v_lshlrev_b32_e32 v13, 16, v19
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v19, 16, v21
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v21, 16, v22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v22, 16, v23
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v71, v13, v22
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v22, v14, v22 :: v_dual_lshlrev_b32 v23, 16, v24
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v24, 16, v25
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v25, 16, v26
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v56, v56, v71
	v_mul_f32_e32 v22, v50, v22
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v72, v13, v25
	v_mul_f32_e32 v70, v13, v23
	v_mul_f32_e32 v26, v13, v19
	v_mul_f32_e32 v19, v14, v19
	.loc	1 379 14 is_stmt 1              ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v67, 1, v67
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_clause 0x3
	buffer_load_u16 v65, v15, s[16:19], 0 offen
	buffer_load_u16 v68, v68, s[16:19], 0 offen
	buffer_load_u16 v15, v17, s[16:19], 0 offen
	buffer_load_u16 v17, v67, s[16:19], 0 offen
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v67, v13, v20
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v69, v13, v21 :: v_dual_mul_f32 v20, v14, v20
	v_mul_f32_e32 v21, v14, v21
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v26, v61, v26 :: v_dual_lshlrev_b32 v27, 16, v27
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v23, v14, v23 :: v_dual_lshlrev_b32 v30, 16, v30
	v_mul_f32_e32 v73, v13, v24
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v62, v62, v69 :: v_dual_lshlrev_b32 v31, 16, v31
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v24, v14, v24
	v_mul_f32_e32 v25, v14, v25
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v19, v53, v19
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v20, v57, v20 :: v_dual_mul_f32 v21, v54, v21
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v54, v13, v28
	v_dual_mul_f32 v28, v14, v28 :: v_dual_mul_f32 v57, v13, v29
	v_mul_f32_e32 v53, v13, v27
	v_dual_mul_f32 v27, v14, v27 :: v_dual_mul_f32 v24, v44, v24
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v23, v49, v23
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v49, v13, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v44, 0xbfb8aa3b, v19 :: v_dual_mul_f32 v57, v60, v57
	v_dual_mul_f32 v60, 0xbfb8aa3b, v56 :: v_dual_mul_f32 v55, v55, v70
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v46, v46, v73
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v53, v64, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v44
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v60
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v61, v63, v67 :: v_dual_mul_f32 v50, v13, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v64, 0xbfb8aa3b, v46 :: v_dual_mul_f32 v25, v43, v25
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v28, v32, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v60, 0, 0x42800000, s4
	v_cndmask_b32_e64 v44, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v64
	v_mul_f32_e32 v63, 0xbfb8aa3b, v62
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v56
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v19
	v_cndmask_b32_e64 v64, 0, 0x42800000, s8
	v_mul_f32_e32 v67, 0xbfb8aa3b, v25
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v63
	v_exp_f32_e32 v60, v60
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v27, v58, v27 :: v_dual_mul_f32 v48, v48, v50
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v63, 0, 0x42800000, s1
	v_mul_f32_e32 v58, 0xbfb8aa3b, v21
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, s8
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v45, v45, v72 :: v_dual_mul_f32 v32, 0xbfb8aa3b, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v64, v64
	v_ldexp_f32 v60, v60, v74
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v43, 0xbfb8aa3b, v26 :: v_dual_mul_f32 v50, 0xbfb8aa3b, v45
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v58
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v60, 1.0, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v63, v63
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_ldexp_f32 v64, v64, v78
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v78, null, v60, v60, v56
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v58, 0, 0x42800000, s3
	v_exp_f32_e32 v44, v44
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v29, v14, v29 :: v_dual_mul_f32 v54, v59, v54
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v98, v78
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v59, 0xbfb8aa3b, v55 :: v_dual_fmac_f32 v58, 0xbfb8aa3b, v21
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s0
	v_ldexp_f32 v63, v63, v72
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v50
	v_exp_f32_e32 v58, v58
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v32
	v_ldexp_f32 v44, v44, v71
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v110, -v78, v98, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v50, 0, 0x42800000, s9
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v43, v43
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v98, v110, v98
	v_div_scale_f32 v74, null, v63, v63, v62
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0x42800000, s7
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v29, v51, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v51, 0xbfb8aa3b, v22 :: v_dual_fmac_f32 v50, 0xbfb8aa3b, v45
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v58, v58, v73
	v_mul_f32_e32 v69, 0xbfb8aa3b, v24
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v96, v74
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v51
	v_exp_f32_e32 v50, v50
	v_ldexp_f32 v43, v43, v70
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v58, 1.0, v58
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v69
	v_cndmask_b32_e64 v51, 0, 0x42800000, s6
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s9
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v64, 1.0, v64
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v23
	v_cndmask_b32_e64 v69, 0, 0x42800000, s10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v108, -v74, v96, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v22
	v_ldexp_f32 v50, v50, v79
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v96, v108, v96
	v_div_scale_f32 v70, null, v43, v43, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v51, v51
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v69, v69
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v86, null, v64, v64, v46
	v_rcp_f32_e32 v94, v70
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v59
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v67
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, s10
	v_exp_f32_e32 v32, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v102, v86
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v59, 0, 0x42800000, s5
	v_cndmask_b32_e64 v67, 0, 0x42800000, s11
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s7
	v_ldexp_f32 v51, v51, v76
	v_ldexp_f32 v69, v69, v80
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v106, -v70, v94, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, vcc_lo, v26, v43, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v32, v77
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v55
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v114, -v86, v102, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v51, 1.0, v51 :: v_dual_fmac_f32 v94, v106, v94
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v67, v67
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v59, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v102, v114, v102
	v_div_scale_f32 v82, null, v51, v51, v22
	v_mul_f32_e32 v106, v71, v94
	v_div_scale_f32 v90, null, v69, v69, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, s11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v72, null, v44, v44, v19
	v_rcp_f32_e32 v100, v82
	v_rcp_f32_e32 v104, v90
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v59, v59, v75
	v_ldexp_f32 v67, v67, v81
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v76, null, v58, v58, v21
	v_rcp_f32_e32 v95, v72
	v_fma_f32 v118, -v70, v106, v71
	v_div_scale_f32 v84, null, v32, v32, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v97, v76
	v_fma_f32 v112, -v82, v100, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v59, 1.0, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v116, -v90, v104, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v73, s0, v19, v44, v19
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v107, -v72, v95, 1.0
	v_fmac_f32_e32 v100, v112, v100
	v_div_scale_f32 v80, null, v59, v59, v55
	v_fmac_f32_e32 v104, v116, v104
	v_div_scale_f32 v92, null, v67, v67, v25
	v_div_scale_f32 v75, s1, v62, v63, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v99, v80
	v_rcp_f32_e32 v105, v92
	v_fma_f32 v109, -v76, v97, 1.0
	v_dual_fmac_f32 v95, v107, v95 :: v_dual_fmac_f32 v106, v118, v94
	v_rcp_f32_e32 v101, v84
	v_div_scale_f32 v87, s8, v46, v64, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v97, v109, v97 :: v_dual_mul_f32 v108, v75, v96
	v_dual_mul_f32 v107, v73, v95 :: v_dual_mul_f32 v114, v87, v102
	v_fma_f32 v70, -v70, v106, v71
	v_div_scale_f32 v88, null, v50, v50, v45
	v_div_scale_f32 v83, s6, v22, v51, v22
	v_fma_f32 v111, -v80, v99, 1.0
	v_fma_f32 v117, -v92, v105, 1.0
	v_fma_f32 v119, -v72, v107, v73
	v_fma_f32 v120, -v74, v108, v75
	v_div_fmas_f32 v70, v70, v94, v106
	v_div_scale_f32 v77, s3, v21, v58, v21
	v_div_scale_f32 v79, s4, v56, v60, v56
	v_rcp_f32_e32 v103, v88
	v_fma_f32 v113, -v84, v101, 1.0
	v_div_scale_f32 v81, s5, v55, v59, v55
	v_dual_fmac_f32 v99, v111, v99 :: v_dual_fmac_f32 v108, v120, v96
	v_dual_fmac_f32 v105, v117, v105 :: v_dual_mul_f32 v112, v83, v100
	v_div_fixup_f32 v26, v70, v43, v26
	v_fmac_f32_e32 v107, v119, v95
	v_div_scale_f32 v91, s10, v24, v69, v24
	v_mul_f32_e32 v109, v77, v97
	v_dual_fmac_f32 v101, v113, v101 :: v_dual_mul_f32 v110, v79, v98
	v_fma_f32 v124, -v82, v112, v83
	v_mul_f32_e32 v111, v81, v99
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v26, v61, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v71, -v72, v107, v73
	v_fma_f32 v72, -v74, v108, v75
	v_mul_f32_e32 v116, v91, v104
	v_fma_f32 v121, -v76, v109, v77
	v_div_scale_f32 v85, s7, v23, v32, v23
	v_fma_f32 v115, -v88, v103, 1.0
	v_fma_f32 v122, -v78, v110, v79
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v112, v124, v100
	v_fma_f32 v123, -v80, v111, v81
	v_div_fmas_f32 v72, v72, v96, v108
	v_fmac_f32_e32 v109, v121, v97
	v_fma_f32 v126, -v86, v114, v87
	v_mul_f32_e32 v113, v85, v101
	v_dual_fmac_f32 v103, v115, v103 :: v_dual_fmac_f32 v110, v122, v98
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v62, v72, v63, v62
	v_fmac_f32_e32 v111, v123, v99
	v_div_fmas_f32 v43, v71, v95, v107
	v_fma_f32 v73, -v76, v109, v77
	v_fmac_f32_e32 v114, v126, v102
	v_fma_f32 v125, -v84, v113, v85
	v_fma_f32 v74, -v78, v110, v79
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v19, v43, v44, v19
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v44, v53, v62
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v75, -v80, v111, v81
	v_div_fmas_f32 v70, v73, v97, v109
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v89, s9, v45, v50, v45
	v_fmac_f32_e32 v113, v125, v101
	v_fma_f32 v76, -v82, v112, v83
	v_div_fmas_f32 v63, v74, v98, v110
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v21, v70, v58, v21
	v_div_fmas_f32 v43, v75, v99, v111
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v77, -v84, v113, v85
	v_div_fmas_f32 v53, v76, v100, v112
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v19, v20, v19
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v44.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v115, v89, v103
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v128, -v90, v116, v91
	v_div_fmas_f32 v20, v77, v101, v113
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v21, v27, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v22, v53, v51, v22
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v19.h
	v_and_b32_e32 v18, 1, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v127, -v88, v115, v89
	v_div_scale_f32 v93, s11, v25, v67, v25
	v_div_fixup_f32 v56, v63, v60, v56
	v_div_fixup_f32 v20, v20, v32, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v115, v127, v103 :: v_dual_mul_f32 v22, v29, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v29, 1, v5
	v_mov_b16_e32 v5.l, v26.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v116, v128, v104
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.l, v21.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v117, v93, v105 :: v_dual_mul_f32 v20, v28, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v51, v57, v56 :: v_dual_and_b32 v28, 1, v5
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v16, 1, v16
	v_mov_b16_e32 v5.l, v22.h
	v_cmp_o_f32_e64 s1, v19, v19
	v_cmp_o_f32_e64 s3, v21, v21
	v_add3_u32 v19, v19, v29, 0x7fff
	v_mov_b16_e32 v52.l, v20.h
	v_add3_u32 v16, v21, v16, 0x7fff
	v_and_b32_e32 v21, 1, v5
	v_mov_b16_e32 v5.l, v51.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v78, -v86, v114, v87
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v26, v26
	v_cndmask_b16 v16.l, 0x7fff, v19.h, s1
	v_add3_u32 v19, v26, v28, 0x7fff
	v_and_b32_e32 v26, 1, v52
	v_and_b32_e32 v28, 1, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v18, v44, v18, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v27, v78, v102, v114
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v79, -v88, v115, v89
	v_div_fixup_f32 v43, v43, v59, v55
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v51, v51
	v_cmp_o_f32_e64 s6, v22, v22
	v_cmp_o_f32_e64 s7, v20, v20
	v_add3_u32 v20, v20, v26, 0x7fff
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v26, v14, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v21, v22, v21, 0x7fff
	v_add3_u32 v22, v51, v28, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s9
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v23, v54, v43
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s0
	v_cndmask_b16 v21.l, 0x7fff, v20.h, s7
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v20, v79, v103, v115
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v22, v14, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v129, -v92, v117, v93
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v10, v10, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v20, v20, v50, v45
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v11, v11, v22 :: v_dual_lshlrev_b32 v22, 16, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, v23.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v117, v129, v105
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v23, v23
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s3
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s6
	v_and_b32_e32 v29, 1, v66
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v92, v117, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v23, v23, v29, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v23.h, s5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v23, -v90, v116, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v23, v23, v104, v116
	s_mov_b32 vcc_lo, s11
	v_div_fmas_f32 v28, v28, v105, v117
	v_div_fixup_f32 v23, v23, v69, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v24, v28, v67, v25
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v25, v47, v49 :: v_dual_mul_f32 v10, v10, v23
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v23, v13, v22
	v_mul_f32_e32 v22, v14, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v20, v25, v20
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v10.h
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v25, 16, v65
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v11, v11, v24
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v24, v27, v64, v46
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v9, v9, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v27, 1, v5
	v_cmp_o_f32_e64 s0, v10, v10
	v_mov_b16_e32 v23.h, v5.h
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v28, v13, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v23.l, v11.h
	v_add3_u32 v27, v10, v27, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v48, v24
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v26, 0xbfb8aa3b, v9
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v8, v8, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v11, v11
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v25, v14, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.h, 0x7fff, v27.h, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.l, v20.h
	v_mov_b16_e32 v28.h, v5.h
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v6, v6, v25 :: v_dual_mul_f32 v7, v7, v22
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v28, 1, v28
	v_mov_b16_e32 v5.l, v10.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v23, v11, v23, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v11, 0xbfb8aa3b, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v20, v28, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.l, 0x7fff, v23.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v23, v26, v23
	v_mul_f32_e32 v26, 0xbfb8aa3b, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v22, 1.0, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, null, v22, v22, v9
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v26, 0, 0x42800000, s0
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v8
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v6
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v11, v11, v25
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v25, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v26, v26, v37
	v_mul_f32_e32 v23, 0xbfb8aa3b, v7
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v11, 1.0, v11 :: v_dual_add_f32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v27, v25, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v30, null, v11, v11, v8
	v_div_scale_f32 v39, null, v26, v26, v6
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v25, v32, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v38, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v23, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v30, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v38, v32, v38
	v_div_scale_f32 v41, s1, v8, v11, v8
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v23, v23, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v29, 1, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, vcc_lo, v9, v22, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v36, v41, v38 :: v_dual_add_f32 v23, 1.0, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v29, v10, v29, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v32, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v30, v36, v41
	v_div_scale_f32 v37, null, v23, v23, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v36, v43, v38 :: v_dual_lshlrev_b32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v37
	v_fma_f32 v42, -v37, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v42, v40
	v_mul_f32_e32 v10, v31, v25
	v_fma_f32 v35, -v27, v10, v31
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v10, v35, v25
	v_div_scale_f32 v42, s0, v7, v23, v7
	v_fma_f32 v35, -v39, v32, 1.0
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v27, v10, v31
	v_mul_f32_e32 v31, v42, v40
	v_fmac_f32_e32 v32, v35, v32
	v_div_scale_f32 v35, s3, v6, v26, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v10, v27, v25, v10
	v_fma_f32 v27, -v37, v31, v42
	v_fma_f32 v25, -v30, v36, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v43, v35, v32
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v31, v27, v40
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v27, v14, v15
	v_mul_f32_e32 v14, v14, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v39, v43, v35
	v_div_fmas_f32 v25, v25, v38, v36
	s_mov_b32 vcc_lo, s0
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v2, v2, v27 :: v_dual_mul_f32 v17, v13, v17
	v_mul_f32_e32 v1, v1, v14
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v13, v13, v15
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e64 s0, 0, v0
	v_mov_b32_e32 v0, 0x5410
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v4, v4, v13 :: v_dual_fmac_f32 v43, v30, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v37, v31, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v39, v43, v35
	v_div_fmas_f32 v30, v30, v40, v31
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_lshl_or_b32 v0, v0, 8, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v31, v33, v32, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v7, v30, v23, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_and_b32_e32 v0, 0x540054, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v31, v26, v6
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v10, v22, v9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_lshl_or_b32 v0, v0, 4, v0
	v_cndmask_b16 v29.l, 0x7fff, v28.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v6
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v25, v11, v8
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v3, v3, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v1.h
	v_mov_b16_e32 v8.h, v5.h
	v_mov_b16_e32 v8.l, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v4, v4, v6 :: v_dual_mul_f32 v3, v3, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v10, 0x5040504, v0
	v_and_b32_e32 v6, 1, v5
	v_and_b32_e32 v7, 1, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v8.l, v4.h
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_mov_b16_e32 v5.l, v3.h
	v_add3_u32 v6, v1, v6, 0x7fff
	v_add3_u32 v1, v2, v7, 0x7fff
	v_and_b32_e32 v7, 1, v8
	v_cmp_o_f32_e64 s2, v4, v4
	v_and_b32_e32 v5, 1, v5
	v_cndmask_b16 v6.h, 0x7fff, v6.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_add3_u32 v2, v4, v7, 0x7fff
	v_mov_b32_e32 v7, 0x7632
	v_add3_u32 v5, v3, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v3, v3
	v_cndmask_b16 v6.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s2
	v_cndmask_b32_e64 v4, 0x3276, v7, s0
	v_cndmask_b32_e64 v8, v18, v29, s0
	v_cndmask_b16 v1.h, 0x7fff, v5.h, s1
	v_cndmask_b32_e64 v5, v6, v21, s0
	v_cndmask_b32_e64 v6, v21, v6, s0
	v_lshl_or_b32 v2, v4, 8, v4
	v_cndmask_b32_e64 v4, v16, v24, s0
	v_cndmask_b32_e64 v9, v1, v19, s0
	v_cndmask_b32_e64 v1, v19, v1, s0
	s_mov_b32 s1, 0x76543210
	v_and_b32_e32 v2, 0x760076, v2
	v_cndmask_b32_e64 v3, v24, v16, s0
	v_cndmask_b32_e64 v7, v29, v18, s0
	v_permlanex16_b32 v4, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v2, 4, v2
	v_permlanex16_b32 v8, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v4, v3, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v11, 0x7060706, v2
	v_perm_b32 v2, v6, v5, v10
	v_perm_b32 v1, v4, v3, v11
	v_perm_b32 v3, v6, v5, v11
	v_perm_b32 v4, v8, v7, v10
	v_perm_b32 v5, v8, v7, v11
	v_lshlrev_b32_e32 v8, 1, v12
	v_perm_b32 v6, v13, v9, v10
	v_perm_b32 v7, v13, v9, v11
	v_add_lshl_u32 v9, v12, s15, 1
	s_mov_b32 s15, s19
	s_clause 0x1
	buffer_store_b128 v[0:3], v8, s[12:15], 0 offen
	buffer_store_b128 v[4:7], v9, s[12:15], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 39
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 164
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8744
; TotalNumSgprs: 41
; NumVgprs: 164
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 41
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
	.short	291                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	290                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	307                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     164
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
