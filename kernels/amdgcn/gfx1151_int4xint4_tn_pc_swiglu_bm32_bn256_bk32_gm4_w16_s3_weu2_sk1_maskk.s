	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[14:15], s[0:1], 0x30
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s7, s2
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_lshrrev_b32_e32 v3, 5, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v66, 15, v0
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_lshlrev_b32_e32 v34, 3, v0
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_add_nc_u32_e32 v16, 0, v0
	s_load_b32 s25, s[0:1], 0x38
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v17, 0, v34
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s14, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s10, s10, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v1, 31, v0
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
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
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s6, s5, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s5, s4
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s7, s8, s6
	s_load_b128 s[8:11], s[0:1], 0x0
	.loc	1 91 20 is_stmt 0               ; generate_amdgcn.py:91:20
	s_min_i32 s7, s7, 4
	.loc	1 92 29 is_stmt 1               ; generate_amdgcn.py:92:29
	s_sub_i32 s4, s2, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s12, s7
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s13, s12
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v2, s13
	v_readfirstlane_b32 s13, v2
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[10:11]
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v2, 3, v1
	s_mov_b32 s11, 0x31027000
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s13, s13, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	v_mad_u64_u32 v[4:5], null, s14, v3, v[1:2]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s10, s13
	s_sub_i32 s13, 0, s12
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s13, s13, s10
	s_mul_hi_u32 s2, s10, s13
	s_xor_b32 s13, s4, s7
	s_add_i32 s2, s10, s2
	s_ashr_i32 s22, s13, 31
	s_mul_hi_u32 s2, s5, s2
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s18, s2, s12
	s_add_i32 s13, s2, 1
	s_sub_i32 s5, s5, s18
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s18, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s19, s5, s12
	s_cmp_ge_u32 s5, s12
	s_cselect_b32 s2, s13, s2
	s_cselect_b32 s5, s19, s5
	s_add_i32 s13, s2, 1
	s_cmp_ge_u32 s5, s12
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s19, s11
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s2, s13, s2
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s12, s15, 1
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s27, s3, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s26, s2, s22
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_mul_i32 s13, s12, s27
	v_mad_u64_u32 v[5:6], null, s12, v3, v[2:3]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s12, s26, s22
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s5, s25, 31
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s7, s12, s7
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v7, s27, v3
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s2, s25, s5
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s4, s4, s7
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s28, s2, 1
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s4, s4, s6
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s2, s12, 8
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s28, v7
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s20, s4, 5
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s25, 1
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_add3_u32 v5, s13, s2, v5
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s23, -1, 0
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s23, vcc_lo
	s_cmp_gt_i32 s25, 33
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	s_mul_i32 s5, s14, s27
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s21, -1, 0
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	s_add_i32 s4, s27, 16
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	v_add3_u32 v4, s5, s20, v4
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	v_add_nc_u32_e32 v6, s15, v5
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v9, s4, v3
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_lshl_add_u32 v8, s15, 5, v5
	.loc	1 117 22 is_stmt 0              ; generate_amdgcn.py:117:22
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 111 22 is_stmt 1              ; generate_amdgcn.py:111:22
	v_dual_cndmask_b32 v7, 0x80000000, v4 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	.loc	1 111 30 is_stmt 0              ; generate_amdgcn.py:111:30
	s_lshl_b32 s24, s14, 4
	.loc	1 108 23 is_stmt 1              ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s28, v9
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	v_add_nc_u32_e32 v9, s24, v4
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	v_add_nc_u32_e32 v10, s15, v8
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s21, vcc_lo
	s_cmpk_gt_i32 s25, 0x41
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v12, 0x80000000, v10
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	buffer_load_u8 v14, v7, s[8:11], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b64 v[4:5], v5, s[16:19], 0 offen
	buffer_load_b64 v[6:7], v6, s[16:19], 0 offen
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	buffer_load_u8 v15, v9, s[8:11], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b64 v[10:11], v8, s[16:19], 0 offen
	buffer_load_b64 v[12:13], v12, s[16:19], 0 offen
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v8, 0x1e0, v0
	s_mov_b32 s18, 0
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt vmcnt(5)
	ds_store_b8 v16, v14 offset:16384
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(3)
	ds_store_2addr_stride64_b64 v17, v[4:5], v[6:7] offset1:16
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v67, 1, v8
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b8 v16, v15 offset:16896
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v17, v[10:11], v[12:13] offset0:8 offset1:24
	v_or_b32_e32 v9, v67, v66
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_or_b32_e32 v83, v67, v66
	s_mov_b32 s19, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v75, 0x100, v83
	v_or_b32_e32 v77, 0x200, v83
	v_or_b32_e32 v78, 0x300, v83
	v_or_b32_e32 v79, 0x400, v83
	v_or_b32_e32 v80, 0x500, v83
	v_or_b32_e32 v81, 0x600, v83
	v_or_b32_e32 v82, 0x700, v83
	v_or_b32_e32 v68, 0x800, v83
	v_or_b32_e32 v69, 0x900, v83
	v_or_b32_e32 v70, 0xa00, v83
	v_or_b32_e32 v71, 0xb00, v83
	v_or_b32_e32 v72, 0xc00, v83
	v_or_b32_e32 v73, 0xd00, v83
	v_or_b32_e32 v74, 0xe00, v83
	v_or_b32_e32 v76, 0xf00, v83
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s19, -1
                                        ; implicit-def: $vgpr83
                                        ; implicit-def: $vgpr75
                                        ; implicit-def: $vgpr77
                                        ; implicit-def: $vgpr78
                                        ; implicit-def: $vgpr79
                                        ; implicit-def: $vgpr80
                                        ; implicit-def: $vgpr81
                                        ; implicit-def: $vgpr82
                                        ; implicit-def: $vgpr68
                                        ; implicit-def: $vgpr69
                                        ; implicit-def: $vgpr70
                                        ; implicit-def: $vgpr71
                                        ; implicit-def: $vgpr72
                                        ; implicit-def: $vgpr73
                                        ; implicit-def: $vgpr74
                                        ; implicit-def: $vgpr76
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s19
	s_mov_b32 s25, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_mov_b32_e32 v10, 0
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	v_lshlrev_b32_e32 v4, 1, v3
	s_add_i32 s27, s27, 32
	v_sub_nc_u32_e32 v35, s28, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v14, v10 :: v_dual_add_nc_u32 v3, s27, v3
	v_mov_b32_e32 v11, v10
	v_lshl_or_b32 v4, s3, 5, v4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s0, s28, 15
.Ltmp13:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_mul_lo_u32 v3, s14, v3
	v_mov_b32_e32 v12, v10
	v_mov_b32_e32 v13, v10
	v_add_nc_u32_e32 v5, 0x41, v4
	v_add_nc_u32_e32 v4, 64, v4
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s0, s0, 4
.Ltmp15:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_lshl_b32 s1, s26, 8
	v_sub_nc_u32_e64 v6, s0, 3 clamp
	v_mul_lo_u32 v5, s15, v5
	v_mul_lo_u32 v4, s15, v4
	s_lshl_b32 s18, s22, 8
	v_add3_u32 v36, v3, s20, v1
	v_readfirstlane_b32 s19, v6
	v_mov_b32_e32 v15, v10
	v_mov_b32_e32 v16, v10
	v_mov_b32_e32 v17, v10
	v_add3_u32 v5, v5, s1, v2
	v_add3_u32 v2, v4, s1, v2
	v_mov_b32_e32 v1, v10
	v_mov_b32_e32 v3, v10
	v_mov_b32_e32 v4, v10
	v_subrev_nc_u32_e32 v37, s18, v5
	v_subrev_nc_u32_e32 v38, s18, v2
	v_mov_b32_e32 v2, v10
	v_mov_b32_e32 v5, v10
	v_mov_b32_e32 v6, v10
	v_mov_b32_e32 v7, v10
	v_mov_b32_e32 v8, v10
	v_mov_b32_e32 v18, v10
	v_mov_b32_e32 v19, v10
	v_mov_b32_e32 v20, v10
	v_mov_b32_e32 v21, v10
	v_mov_b32_e32 v22, v10
	v_mov_b32_e32 v23, v10
	v_mov_b32_e32 v24, v10
	v_mov_b32_e32 v25, v10
	v_mov_b32_e32 v26, v10
	v_mov_b32_e32 v27, v10
	v_mov_b32_e32 v28, v10
	v_mov_b32_e32 v29, v10
	v_mov_b32_e32 v30, v10
	v_mov_b32_e32 v31, v10
	v_mov_b32_e32 v32, v10
	v_mov_b32_e32 v33, v10
	s_mov_b32 s28, 1
	s_lshl_b32 s26, s15, 5
	s_add_i32 s0, 0, 0x4000
	s_add_i32 s22, 0, 0x4200
	s_add_i32 s3, 0, 0x1000
	s_add_i32 s14, 0, 0x2000
	s_add_i32 s29, s19, 1
	s_add_i32 s1, 0, 0x3000
	s_mov_b32 s18, s10
	s_mov_b32 s19, s11
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e32 vcc_lo, s27, v35
	s_mov_b32 s30, s0
	s_mov_b32 s0, s22
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_add_nc_u32_e32 v43, s30, v66
	s_mov_b32 s22, s25
	v_dual_cndmask_b32 v39, 0x80000000, v36 :: v_dual_cndmask_b32 v40, 0x80000000, v38
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_cndmask_b32_e32 v41, 0x80000000, v37, vcc_lo
	s_mov_b32 s25, s3
	s_mov_b32 s3, s14
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	buffer_load_u8 v59, v39, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b64 v[39:40], v40, s[16:19], 0 offen
	buffer_load_b64 v[41:42], v41, s[16:19], 0 offen
	v_add_nc_u32_e32 v44, s22, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v45, s3, v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v46, v43 offset:96
	ds_load_u8 v47, v43 offset:64
	ds_load_u8 v48, v43
	ds_load_u8 v49, v43 offset:16
	ds_load_u8 v50, v43 offset:32
	ds_load_u8 v51, v43 offset:112
	ds_load_u8 v52, v43 offset:80
	ds_load_u8 v53, v43 offset:48
	ds_load_u8 v54, v44 offset:1280
	ds_load_u8 v55, v44 offset:1792
	ds_load_u8 v56, v44 offset:1536
	ds_load_u8 v57, v44 offset:1024
	ds_load_u8 v58, v44 offset:256
	ds_load_u8 v60, v44 offset:768
	ds_load_u8 v61, v44 offset:512
	ds_load_u8 v62, v44
	ds_load_u8 v63, v44 offset:3328
	ds_load_u8 v64, v44 offset:3840
	ds_load_u8 v65, v44 offset:3584
	ds_load_u8 v68, v44 offset:3072
	ds_load_u8 v69, v44 offset:2304
	ds_load_u8 v70, v44 offset:2816
	ds_load_u8 v71, v44 offset:2560
	ds_load_u8 v44, v44 offset:2048
	ds_load_u8 v72, v43 offset:160
	ds_load_u8 v73, v43 offset:128
	ds_load_u8 v74, v43 offset:224
	ds_load_u8 v75, v43 offset:192
	ds_load_u8 v76, v43 offset:240
	ds_load_u8 v77, v43 offset:208
	ds_load_u8 v78, v43 offset:176
	ds_load_u8 v79, v43 offset:144
	ds_load_u8 v80, v43 offset:416
	ds_load_u8 v81, v43 offset:384
	ds_load_u8 v82, v43 offset:480
	ds_load_u8 v83, v43 offset:448
	ds_load_u8 v84, v43 offset:496
	ds_load_u8 v85, v43 offset:464
	ds_load_u8 v86, v43 offset:432
	ds_load_u8 v87, v43 offset:400
	ds_load_u8 v88, v43 offset:288
	ds_load_u8 v89, v43 offset:256
	ds_load_u8 v90, v43 offset:352
	ds_load_u8 v91, v43 offset:320
	ds_load_u8 v92, v43 offset:368
	ds_load_u8 v93, v43 offset:336
	ds_load_u8 v94, v43 offset:304
	ds_load_u8 v43, v43 offset:272
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v95, v45 offset:1280
	ds_load_u8 v96, v45 offset:1792
	ds_load_u8 v97, v45 offset:1536
	ds_load_u8 v98, v45 offset:1024
	ds_load_u8 v99, v45 offset:256
	ds_load_u8 v100, v45 offset:768
	ds_load_u8 v101, v45 offset:512
	ds_load_u8 v102, v45
	ds_load_u8 v103, v45 offset:3328
	ds_load_u8 v104, v45 offset:3840
	ds_load_u8 v105, v45 offset:3584
	ds_load_u8 v106, v45 offset:3072
	ds_load_u8 v107, v45 offset:2304
	ds_load_u8 v108, v45 offset:2560
	ds_load_u8 v109, v45 offset:2816
	ds_load_u8 v45, v45 offset:2048
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v73, v75, v74, 0xc0c0004
	v_perm_b32 v46, v47, v46, 0xc0c0004
	v_perm_b32 v47, v48, v50, 0xc0c0004
	v_perm_b32 v48, v57, v54, 0xc0c0004
	v_perm_b32 v50, v56, v55, 0xc0c0004
	v_perm_b32 v54, v62, v58, 0xc0c0004
	v_perm_b32 v55, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v56, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v57, v83, v82, 0xc0c0004
	v_perm_b32 v61, v68, v63, 0xc0c0004
	v_perm_b32 v62, v65, v64, 0xc0c0004
	v_perm_b32 v65, v79, v78, 0xc0c0004
	v_perm_b32 v68, v77, v76, 0xc0c0004
	v_perm_b32 v51, v52, v51, 0xc0c0004
	v_perm_b32 v53, v49, v53, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v75, v98, v95, 0xc0c0004
	v_perm_b32 v76, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v77, v102, v99, 0xc0c0004
	v_perm_b32 v78, v101, v100, 0xc0c0004
	s_mov_b32 s14, s1
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s1, s28, 1
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v58, v89, v88, 0xc0c0004
	v_perm_b32 v60, v91, v90, 0xc0c0004
	v_perm_b32 v63, v44, v69, 0xc0c0004
	v_perm_b32 v64, v71, v70, 0xc0c0004
	v_perm_b32 v69, v87, v86, 0xc0c0004
	v_perm_b32 v70, v85, v84, 0xc0c0004
	v_perm_b32 v71, v43, v94, 0xc0c0004
	v_perm_b32 v74, v93, v92, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v79, v106, v103, 0xc0c0004
	v_perm_b32 v80, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v45, v107, 0xc0c0004
	v_perm_b32 v82, v108, v109, 0xc0c0004
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v44, v73, 16, v72
	v_lshl_or_b32 v43, v46, 16, v47
	v_lshl_or_b32 v46, v50, 16, v48
	v_lshl_or_b32 v45, v55, 16, v54
	v_lshl_or_b32 v48, v57, 16, v56
	v_lshl_or_b32 v52, v68, 16, v65
	v_lshl_or_b32 v51, v51, 16, v53
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v56, v76, 16, v75
	v_lshl_or_b32 v55, v78, 16, v77
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lt_i32 s1, 2
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v47, v60, 16, v58
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s28, s1, 0
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v50, v62, 16, v61
	v_lshl_or_b32 v49, v64, 16, v63
	v_lshl_or_b32 v54, v70, 16, v69
	v_lshl_or_b32 v53, v74, 16, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v58, v80, 16, v79
	v_lshl_or_b32 v57, v82, 16, v81
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[18:25], v[45:46], v[43:44], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[45:46], v[51:52], v[26:33] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[10:17], v[55:56], v[43:44], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[55:56], v[51:52], v[1:8] neg_lo:[1,1,0]
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_lshl_b32 s1, s28, 9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_lshl_b32 s3, s28, 12
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_add_i32 s1, s1, 0
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_add_i32 s3, s3, 0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v36, s24, v36
	v_add_nc_u32_e32 v37, s26, v37
	v_add_nc_u32_e32 v38, s26, v38
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_add_nc_u32_e32 v110, s1, v0
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[18:25], v[49:50], v[47:48], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[49:50], v[53:54], v[26:33] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[10:17], v[57:58], v[47:48], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[57:58], v[53:54], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s29, s29, -1
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v43, s3, v34
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s27, s27, 16
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_add_i32 s22, s1, 0x4000
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_add_i32 s1, s3, 0x2000
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s29, 0
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b8 v110, v59 offset:16384
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v43, v[39:40], v[41:42] offset1:16
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_or_b32_e32 v75, 0x100, v9
	v_or_b32_e32 v77, 0x200, v9
	v_or_b32_e32 v78, 0x300, v9
	v_or_b32_e32 v79, 0x400, v9
	v_or_b32_e32 v80, 0x500, v9
	v_or_b32_e32 v81, 0x600, v9
	v_or_b32_e32 v82, 0x700, v9
	v_or_b32_e32 v68, 0x800, v9
	v_or_b32_e32 v69, 0x900, v9
	v_or_b32_e32 v70, 0xa00, v9
	v_or_b32_e32 v71, 0xb00, v9
	v_or_b32_e32 v72, 0xc00, v9
	v_or_b32_e32 v73, 0xd00, v9
	v_or_b32_e32 v74, 0xe00, v9
	v_or_b32_e32 v76, 0xf00, v9
	v_mov_b32_e32 v83, v9
	s_mov_b32 s18, s25
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v8, 0
	s_add_i32 s0, 0, 0x4000
	s_add_i32 s22, 0, 0x4200
	s_add_i32 s3, 0, 0x1000
	s_add_i32 s14, 0, 0x2000
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v2, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v16, v8 :: v_dual_mov_b32 v25, v9
	v_dual_mov_b32 v19, v9 :: v_dual_mov_b32 v12, v8
	v_dual_mov_b32 v27, v9 :: v_dual_mov_b32 v14, v8
	v_dual_mov_b32 v31, v9 :: v_dual_mov_b32 v10, v8
	v_dual_mov_b32 v29, v9 :: v_dual_mov_b32 v18, v8
	v_mov_b32_e32 v33, v9
	v_mov_b32_e32 v23, v9
	v_mov_b32_e32 v21, v9
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v32, v8
	s_add_i32 s1, 0, 0x3000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v49, v33 :: v_dual_add_nc_u32 v34, s0, v66
	.loc	1 111 22 is_stmt 1              ; generate_amdgcn.py:111:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v48, v32 :: v_dual_mov_b32 v45, v29
	ds_load_u8_d16 v90, v34
	ds_load_u8_d16 v9, v34 offset:16
	ds_load_u8_d16 v92, v34 offset:32
	ds_load_u8_d16 v50, v34 offset:48
	ds_load_u8_d16 v93, v34 offset:64
	ds_load_u8_d16 v94, v34 offset:96
	ds_load_u8_d16 v53, v34 offset:112
	ds_load_u8_d16 v54, v34 offset:80
	ds_load_u8_d16 v95, v34 offset:128
	ds_load_u8_d16 v96, v34 offset:160
	ds_load_u8_d16 v97, v34 offset:192
	ds_load_u8_d16 v98, v34 offset:224
	ds_load_u8_d16 v57, v34 offset:240
	ds_load_u8_d16 v59, v34 offset:208
	ds_load_u8_d16 v61, v34 offset:176
	ds_load_u8_d16 v63, v34 offset:144
	ds_load_u8_d16 v65, v34 offset:256
	ds_load_u8_d16 v84, v34 offset:288
	ds_load_u8_d16 v85, v34 offset:320
	ds_load_u8_d16 v86, v34 offset:352
	ds_load_u8_d16 v51, v34 offset:368
	ds_load_u8_d16 v52, v34 offset:336
	ds_load_u8_d16 v55, v34 offset:304
	ds_load_u8_d16 v56, v34 offset:272
	ds_load_u8_d16 v87, v34 offset:384
	ds_load_u8_d16 v88, v34 offset:416
	ds_load_u8_d16 v89, v34 offset:448
	ds_load_u8_d16 v91, v34 offset:480
	ds_load_u8_d16 v58, v34 offset:496
	ds_load_u8_d16 v60, v34 offset:464
	ds_load_u8_d16 v62, v34 offset:432
	ds_load_u8_d16 v64, v34 offset:400
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cndmask_b32_e64 v34, 0, 1, s23
	v_dual_mov_b32 v44, v28 :: v_dual_mov_b32 v47, v31
	v_dual_mov_b32 v46, v30 :: v_dual_mov_b32 v43, v27
	v_dual_mov_b32 v42, v26 :: v_dual_mov_b32 v41, v25
	v_dual_mov_b32 v40, v24 :: v_dual_mov_b32 v37, v21
	v_dual_mov_b32 v36, v20 :: v_dual_mov_b32 v39, v23
	v_cmp_ne_u32_e64 s0, 1, v34
	v_dual_mov_b32 v38, v22 :: v_dual_mov_b32 v35, v19
	v_mov_b32_e32 v34, v18
	s_and_not1_b32 vcc_lo, exec_lo, s23
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v36, s18, v80
	v_add_nc_u32_e32 v37, s18, v79
	v_add_nc_u32_e32 v34, s18, v82
	v_add_nc_u32_e32 v40, s18, v83
	v_add_nc_u32_e32 v35, s18, v81
	v_add_nc_u32_e32 v38, s18, v78
	v_add_nc_u32_e32 v39, s18, v77
	v_add_nc_u32_e32 v41, s18, v75
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v36, v36
	ds_load_u8 v37, v37
	ds_load_u8 v34, v34
	ds_load_u8 v40, v40
	ds_load_u8 v38, v38
	ds_load_u8 v39, v39
	ds_load_u8 v35, v35
	ds_load_u8 v41, v41
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v44, s18, v73
	v_add_nc_u32_e32 v45, s18, v72
	v_add_nc_u32_e32 v42, s18, v76
	v_add_nc_u32_e32 v48, s18, v69
	v_add_nc_u32_e32 v46, s18, v71
	v_add_nc_u32_e32 v47, s18, v70
	v_add_nc_u32_e32 v49, s18, v68
	v_add_nc_u32_e32 v43, s18, v74
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v44, v44
	ds_load_u8 v45, v45
	ds_load_u8 v103, v42
	ds_load_u8 v48, v48
	ds_load_u8 v49, v49
	ds_load_u8 v46, v46
	ds_load_u8 v47, v47
	ds_load_u8 v104, v43
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v99, v95, v96, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v100, v97, v98, 0xc0c0004
	v_perm_b32 v101, v90, v92, 0xc0c0004
	v_perm_b32 v102, v93, v94, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	v_perm_b32 v105, v65, v84, 0xc0c0004
	v_lshl_or_b32 v43, v100, 16, v99
	v_perm_b32 v106, v85, v86, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v37, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v35, v40, v41, 0xc0c0004
	v_lshl_or_b32 v42, v102, 16, v101
	v_perm_b32 v101, v87, v88, 0xc0c0004
	v_perm_b32 v102, v89, v91, 0xc0c0004
	v_lshl_or_b32 v100, v34, 16, v36
	v_lshl_or_b32 v99, v37, 16, v35
	v_dual_mov_b32 v41, v25 :: v_dual_mov_b32 v40, v24
	v_dual_mov_b32 v39, v23 :: v_dual_mov_b32 v38, v22
	v_dual_mov_b32 v37, v21 :: v_dual_mov_b32 v36, v20
	v_dual_mov_b32 v35, v19 :: v_dual_mov_b32 v34, v18
	v_lshl_or_b32 v102, v102, 16, v101
	v_lshl_or_b32 v101, v106, 16, v105
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v105, v45, v44, 0xc0c0004
	v_perm_b32 v44, v9, v50, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[34:41], v[99:100], v[42:43], v[34:41] neg_lo:[1,1,0]
	v_perm_b32 v42, v63, v61, 0xc0c0004
	v_perm_b32 v43, v59, v57, 0xc0c0004
	v_perm_b32 v45, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v104, v103, 0xc0c0004
	v_perm_b32 v107, v49, v48, 0xc0c0004
	v_perm_b32 v108, v47, v46, 0xc0c0004
	v_lshl_or_b32 v104, v43, 16, v42
	v_lshl_or_b32 v103, v45, 16, v44
	v_dual_mov_b32 v49, v33 :: v_dual_mov_b32 v48, v32
	v_dual_mov_b32 v47, v31 :: v_dual_mov_b32 v46, v30
	v_dual_mov_b32 v45, v29 :: v_dual_mov_b32 v44, v28
	v_dual_mov_b32 v43, v27 :: v_dual_mov_b32 v42, v26
	v_perm_b32 v109, v64, v62, 0xc0c0004
	v_perm_b32 v110, v60, v58, 0xc0c0004
	v_perm_b32 v111, v56, v55, 0xc0c0004
	v_perm_b32 v112, v52, v51, 0xc0c0004
	v_lshl_or_b32 v106, v106, 16, v105
	v_lshl_or_b32 v105, v108, 16, v107
	v_wmma_i32_16x16x16_iu4 v[42:49], v[99:100], v[103:104], v[42:49] neg_lo:[1,1,0]
	v_lshl_or_b32 v100, v110, 16, v109
	v_lshl_or_b32 v99, v112, 16, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[105:106], v[101:102], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[105:106], v[99:100], v[42:49] neg_lo:[1,1,0]
.LBB0_10:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v20, s14, v80
	v_add_nc_u32_e32 v21, s14, v79
	v_add_nc_u32_e32 v18, s14, v82
	v_add_nc_u32_e32 v24, s14, v83
	v_add_nc_u32_e32 v19, s14, v81
	v_add_nc_u32_e32 v22, s14, v78
	v_add_nc_u32_e32 v23, s14, v77
	v_add_nc_u32_e32 v25, s14, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v20, v20
	ds_load_u8 v21, v21
	ds_load_u8 v18, v18
	ds_load_u8 v24, v24
	ds_load_u8 v22, v22
	ds_load_u8 v23, v23
	ds_load_u8 v19, v19
	ds_load_u8 v25, v25
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v28, s14, v73
	v_add_nc_u32_e32 v29, s14, v72
	v_add_nc_u32_e32 v26, s14, v76
	v_add_nc_u32_e32 v33, s14, v68
	v_add_nc_u32_e32 v27, s14, v74
	v_add_nc_u32_e32 v30, s14, v71
	v_add_nc_u32_e32 v31, s14, v70
	v_add_nc_u32_e32 v32, s14, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v95, v95, v96, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v96, v97, v98, 0xc0c0004
	v_perm_b32 v90, v90, v92, 0xc0c0004
	v_perm_b32 v92, v93, v94, 0xc0c0004
	v_perm_b32 v9, v9, v50, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v21, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v24, v25, 0xc0c0004
	ds_load_u8 v23, v28
	ds_load_u8 v25, v29
	ds_load_u8 v26, v26
	ds_load_u8 v28, v33
	ds_load_u8 v29, v30
	ds_load_u8 v30, v31
	ds_load_u8 v27, v27
	ds_load_u8 v31, v32
	v_lshl_or_b32 v19, v96, 16, v95
	v_lshl_or_b32 v18, v92, 16, v90
	v_lshl_or_b32 v21, v21, 16, v20
	v_lshl_or_b32 v20, v22, 16, v24
	v_perm_b32 v22, v87, v88, 0xc0c0004
	v_perm_b32 v24, v89, v91, 0xc0c0004
	v_perm_b32 v32, v65, v84, 0xc0c0004
	v_perm_b32 v33, v85, v86, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[10:17], v[20:21], v[18:19], v[10:17] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v19, v24, 16, v22
	v_perm_b32 v22, v63, v61, 0xc0c0004
	v_lshl_or_b32 v18, v33, 16, v32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v24, v25, v23, 0xc0c0004
	v_perm_b32 v23, v59, v57, 0xc0c0004
	v_perm_b32 v25, v54, v53, 0xc0c0004
	v_dual_mov_b32 v32, v48 :: v_dual_mov_b32 v33, v49
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v31, 0xc0c0004
	v_perm_b32 v28, v30, v29, 0xc0c0004
	v_lshl_or_b32 v23, v23, 16, v22
	v_lshl_or_b32 v22, v25, 16, v9
	v_perm_b32 v9, v64, v62, 0xc0c0004
	v_perm_b32 v29, v60, v58, 0xc0c0004
	v_perm_b32 v30, v56, v55, 0xc0c0004
	v_perm_b32 v31, v52, v51, 0xc0c0004
	v_lshl_or_b32 v25, v26, 16, v24
	v_lshl_or_b32 v24, v28, 16, v27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[20:21], v[22:23], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v21, v29, 16, v9
	v_lshl_or_b32 v20, v31, 16, v30
	v_mov_b32_e32 v28, v44
	v_wmma_i32_16x16x16_iu4 v[10:17], v[24:25], v[18:19], v[10:17] neg_lo:[1,1,0]
	v_mov_b32_e32 v30, v46
	v_mov_b32_e32 v26, v42
	v_wmma_i32_16x16x16_iu4 v[1:8], v[24:25], v[20:21], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v24, v40
	v_mov_b32_e32 v20, v36
	v_mov_b32_e32 v22, v38
	v_dual_mov_b32 v18, v34 :: v_dual_mov_b32 v29, v45
	v_mov_b32_e32 v31, v47
	v_mov_b32_e32 v27, v43
	v_mov_b32_e32 v25, v41
	v_mov_b32_e32 v21, v37
	v_mov_b32_e32 v23, v39
	v_mov_b32_e32 v19, v35
.LBB0_12:                               ; %._crit_edge86
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	s_waitcnt lgkmcnt(10)
	v_dual_mov_b32 v53, v29 :: v_dual_add_nc_u32 v50, s22, v66
	s_waitcnt lgkmcnt(9)
	v_dual_mov_b32 v52, v28 :: v_dual_mov_b32 v55, v31
	s_waitcnt lgkmcnt(8)
	v_dual_mov_b32 v54, v30 :: v_dual_mov_b32 v57, v27
	.loc	1 111 22 is_stmt 1              ; generate_amdgcn.py:111:22
	ds_load_u8_d16 v106, v50
	ds_load_u8_d16 v9, v50 offset:16
	ds_load_u8_d16 v108, v50 offset:32
	ds_load_u8_d16 v84, v50 offset:48
	ds_load_u8_d16 v109, v50 offset:64
	ds_load_u8_d16 v110, v50 offset:96
	s_waitcnt lgkmcnt(13)
	ds_load_u8_d16 v87, v50 offset:112
	s_waitcnt lgkmcnt(13)
	ds_load_u8_d16 v88, v50 offset:80
	ds_load_u8_d16 v111, v50 offset:128
	ds_load_u8_d16 v112, v50 offset:160
	ds_load_u8_d16 v113, v50 offset:192
	ds_load_u8_d16 v114, v50 offset:224
	s_waitcnt lgkmcnt(16)
	ds_load_u8_d16 v91, v50 offset:240
	ds_load_u8_d16 v93, v50 offset:208
	ds_load_u8_d16 v95, v50 offset:176
	ds_load_u8_d16 v97, v50 offset:144
	ds_load_u8_d16 v99, v50 offset:256
	ds_load_u8_d16 v100, v50 offset:288
	ds_load_u8_d16 v101, v50 offset:320
	ds_load_u8_d16 v102, v50 offset:352
	ds_load_u8_d16 v85, v50 offset:368
	ds_load_u8_d16 v86, v50 offset:336
	ds_load_u8_d16 v89, v50 offset:304
	ds_load_u8_d16 v90, v50 offset:272
	ds_load_u8_d16 v103, v50 offset:384
	ds_load_u8_d16 v104, v50 offset:416
	ds_load_u8_d16 v105, v50 offset:448
	ds_load_u8_d16 v107, v50 offset:480
	ds_load_u8_d16 v92, v50 offset:496
	ds_load_u8_d16 v94, v50 offset:464
	ds_load_u8_d16 v96, v50 offset:432
	ds_load_u8_d16 v98, v50 offset:400
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cndmask_b32_e64 v50, 0, 1, s21
	s_waitcnt lgkmcnt(35)
	v_dual_mov_b32 v56, v26 :: v_dual_mov_b32 v59, v25
	s_waitcnt lgkmcnt(34)
	v_dual_mov_b32 v58, v24 :: v_dual_mov_b32 v61, v21
	s_waitcnt lgkmcnt(33)
	v_dual_mov_b32 v60, v20 :: v_dual_mov_b32 v63, v23
	s_waitcnt lgkmcnt(32)
	v_dual_mov_b32 v62, v22 :: v_dual_mov_b32 v65, v19
	v_cmp_ne_u32_e64 s0, 1, v50
	v_dual_mov_b32 v51, v33 :: v_dual_mov_b32 v50, v32
	v_mov_b32_e32 v64, v18
	s_and_not1_b32 vcc_lo, exec_lo, s21
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v54, s3, v80
	v_add_nc_u32_e32 v55, s3, v79
	v_add_nc_u32_e32 v52, s3, v82
	v_add_nc_u32_e32 v58, s3, v75
	v_add_nc_u32_e32 v53, s3, v81
	v_add_nc_u32_e32 v56, s3, v78
	v_add_nc_u32_e32 v57, s3, v77
	v_add_nc_u32_e32 v59, s3, v83
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v54, v54
	ds_load_u8 v55, v55
	ds_load_u8 v52, v52
	ds_load_u8 v58, v58
	ds_load_u8 v59, v59
	ds_load_u8 v56, v56
	ds_load_u8 v57, v57
	ds_load_u8 v53, v53
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v60, s3, v73
	v_add_nc_u32_e32 v61, s3, v72
	v_add_nc_u32_e32 v50, s3, v76
	v_add_nc_u32_e32 v64, s3, v69
	v_add_nc_u32_e32 v62, s3, v71
	v_add_nc_u32_e32 v63, s3, v70
	v_add_nc_u32_e32 v65, s3, v68
	v_add_nc_u32_e32 v51, s3, v74
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v60, v60
	ds_load_u8 v61, v61
	ds_load_u8 v118, v50
	ds_load_u8 v64, v64
	ds_load_u8 v65, v65
	ds_load_u8 v62, v62
	ds_load_u8 v63, v63
	ds_load_u8 v119, v51
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v115, v111, v112, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v116, v113, v114, 0xc0c0004
	v_perm_b32 v117, v106, v108, 0xc0c0004
	v_perm_b32 v50, v109, v110, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	v_lshl_or_b32 v51, v116, 16, v115
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v55, v59, v58, 0xc0c0004
	v_lshl_or_b32 v50, v50, 16, v117
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	v_perm_b32 v57, v9, v84, 0xc0c0004
	v_perm_b32 v58, v103, v104, 0xc0c0004
	v_perm_b32 v59, v105, v107, 0xc0c0004
	v_perm_b32 v115, v99, v100, 0xc0c0004
	v_lshl_or_b32 v53, v52, 16, v54
	v_lshl_or_b32 v52, v56, 16, v55
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v56, v61, v60, 0xc0c0004
	v_perm_b32 v54, v97, v95, 0xc0c0004
	v_perm_b32 v55, v93, v91, 0xc0c0004
	v_perm_b32 v60, v88, v87, 0xc0c0004
	v_perm_b32 v116, v101, v102, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v119, v118, 0xc0c0004
	v_perm_b32 v64, v65, v64, 0xc0c0004
	v_perm_b32 v62, v63, v62, 0xc0c0004
	v_lshl_or_b32 v55, v55, 16, v54
	v_lshl_or_b32 v54, v60, 16, v57
	v_perm_b32 v60, v98, v96, 0xc0c0004
	v_perm_b32 v63, v94, v92, 0xc0c0004
	v_perm_b32 v65, v90, v89, 0xc0c0004
	v_perm_b32 v117, v86, v85, 0xc0c0004
	v_lshl_or_b32 v57, v61, 16, v56
	v_lshl_or_b32 v56, v62, 16, v64
	v_wmma_i32_16x16x16_iu4 v[42:49], v[52:53], v[54:55], v[42:49] neg_lo:[1,1,0]
	v_lshl_or_b32 v55, v63, 16, v60
	v_lshl_or_b32 v54, v117, 16, v65
	v_wmma_i32_16x16x16_iu4 v[34:41], v[52:53], v[50:51], v[34:41] neg_lo:[1,1,0]
	v_lshl_or_b32 v51, v59, 16, v58
	v_lshl_or_b32 v50, v116, 16, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[56:57], v[54:55], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[34:41], v[56:57], v[50:51], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v51, v49
	v_mov_b32_e32 v53, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v55, v47
	v_mov_b32_e32 v57, v43
	v_mov_b32_e32 v59, v41
	v_mov_b32_e32 v61, v37
	v_mov_b32_e32 v63, v39
	v_dual_mov_b32 v65, v35 :: v_dual_mov_b32 v50, v48
	v_mov_b32_e32 v52, v44
	v_mov_b32_e32 v54, v46
	v_mov_b32_e32 v56, v42
	v_mov_b32_e32 v58, v40
	v_mov_b32_e32 v60, v36
	v_mov_b32_e32 v62, v38
	v_mov_b32_e32 v64, v34
.LBB0_14:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v20, s1, v80
	v_add_nc_u32_e32 v21, s1, v79
	v_add_nc_u32_e32 v18, s1, v82
	v_add_nc_u32_e32 v24, s1, v83
	v_add_nc_u32_e32 v19, s1, v81
	v_add_nc_u32_e32 v22, s1, v78
	v_add_nc_u32_e32 v23, s1, v77
	v_add_nc_u32_e32 v25, s1, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v20, v20
	ds_load_u8 v21, v21
	ds_load_u8 v18, v18
	ds_load_u8 v24, v24
	ds_load_u8 v22, v22
	ds_load_u8 v23, v23
	ds_load_u8 v19, v19
	ds_load_u8 v25, v25
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v28, s1, v73
	v_add_nc_u32_e32 v29, s1, v72
	v_add_nc_u32_e32 v26, s1, v76
	v_add_nc_u32_e32 v33, s1, v68
	v_add_nc_u32_e32 v27, s1, v74
	v_add_nc_u32_e32 v30, s1, v71
	v_add_nc_u32_e32 v31, s1, v70
	v_add_nc_u32_e32 v32, s1, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v34, v111, v112, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v35, v113, v114, 0xc0c0004
	v_perm_b32 v36, v106, v108, 0xc0c0004
	v_perm_b32 v37, v109, v110, 0xc0c0004
	v_perm_b32 v9, v9, v84, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v21, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v24, v25, 0xc0c0004
	ds_load_u8 v23, v28
	ds_load_u8 v25, v29
	ds_load_u8 v26, v26
	ds_load_u8 v28, v33
	ds_load_u8 v29, v30
	ds_load_u8 v30, v31
	ds_load_u8 v27, v27
	ds_load_u8 v31, v32
	v_lshl_or_b32 v19, v35, 16, v34
	v_lshl_or_b32 v18, v37, 16, v36
	v_lshl_or_b32 v21, v21, 16, v20
	v_lshl_or_b32 v20, v22, 16, v24
	v_perm_b32 v22, v103, v104, 0xc0c0004
	v_perm_b32 v24, v105, v107, 0xc0c0004
	v_perm_b32 v32, v99, v100, 0xc0c0004
	v_perm_b32 v33, v101, v102, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[10:17], v[20:21], v[18:19], v[10:17] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v19, v24, 16, v22
	v_perm_b32 v22, v97, v95, 0xc0c0004
	v_lshl_or_b32 v18, v33, 16, v32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v24, v25, v23, 0xc0c0004
	v_perm_b32 v23, v93, v91, 0xc0c0004
	v_perm_b32 v25, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v31, 0xc0c0004
	v_perm_b32 v28, v30, v29, 0xc0c0004
	v_lshl_or_b32 v23, v23, 16, v22
	v_lshl_or_b32 v22, v25, 16, v9
	v_perm_b32 v9, v98, v96, 0xc0c0004
	v_perm_b32 v29, v94, v92, 0xc0c0004
	v_perm_b32 v30, v90, v89, 0xc0c0004
	v_perm_b32 v31, v86, v85, 0xc0c0004
	v_lshl_or_b32 v25, v26, 16, v24
	v_lshl_or_b32 v24, v28, 16, v27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[20:21], v[22:23], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v21, v29, 16, v9
	v_lshl_or_b32 v20, v31, 16, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[24:25], v[18:19], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[24:25], v[20:21], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_17
.LBB0_16:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v51, v33 :: v_dual_mov_b32 v50, v32
	v_dual_mov_b32 v53, v29 :: v_dual_mov_b32 v52, v28
	v_dual_mov_b32 v55, v31 :: v_dual_mov_b32 v54, v30
	v_dual_mov_b32 v57, v27 :: v_dual_mov_b32 v56, v26
	v_dual_mov_b32 v59, v25 :: v_dual_mov_b32 v58, v24
	v_dual_mov_b32 v61, v21 :: v_dual_mov_b32 v60, v20
	v_dual_mov_b32 v63, v23 :: v_dual_mov_b32 v62, v22
	v_dual_mov_b32 v65, v19 :: v_dual_mov_b32 v64, v18
.LBB0_17:
	.loc	1 128 22 is_stmt 1              ; generate_amdgcn.py:128:22
	v_or_b32_e32 v18, s20, v66
	.loc	1 128 14 is_stmt 0              ; generate_amdgcn.py:128:14
	s_and_b32 s17, s5, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_mov_b32 s16, s4
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_lshlrev_b32_e32 v18, 1, v18
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	s_waitcnt lgkmcnt(30)
	v_lshrrev_b32_e32 v9, 4, v0
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	s_add_i32 s0, s2, s15
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v49, v53
	v_cvt_f32_i32_e32 v53, v55
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_or_b32_e32 v25, 32, v18
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_or_b32 v9, v9, 1, v67
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v55, v4
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v39, 1, v0
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_clause 0x1
	buffer_load_u16 v27, v18, s[16:19], 0 offen
	buffer_load_u16 v28, v25, s[16:19], 0 offen
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s17, s7, 0xffff
	.loc	1 129 22 is_stmt 0              ; generate_amdgcn.py:129:22
	v_or_b32_e32 v26, s2, v9
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_or_b32_e32 v24, 2, v9
	v_or_b32_e32 v22, 6, v9
	v_or_b32_e32 v20, 10, v9
	v_or_b32_e32 v19, 14, v9
	v_or_b32_e32 v32, 12, v9
	v_or_b32_e32 v21, 8, v9
	v_or_b32_e32 v23, 4, v9
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v18, s2, v24
	.loc	1 129 14 is_stmt 0              ; generate_amdgcn.py:129:14
	s_mov_b32 s16, s6
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v24, s0, v24, 1
	v_add_lshl_u32 v33, s0, v19, 1
	v_add_lshl_u32 v34, s0, v32, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v29, s2, v23
	v_or_b32_e32 v30, s2, v22
	.loc	1 129 14 is_stmt 0              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v18, 1, v18
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v23, s0, v23, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v19, s2, v19
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v48, v52
	v_cvt_f32_i32_e32 v52, v54
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v54, v3
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v47, v56
	v_cvt_f32_i32_e32 v41, v64
	v_cvt_f32_i32_e32 v42, v60
	v_cvt_f32_i32_e32 v45, v63
	v_cvt_f32_i32_e32 v43, v61
	v_cvt_f32_i32_e32 v44, v62
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v46, v57
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v56, v5
	v_cvt_f32_i32_e32 v57, v6
	v_cvt_f32_i32_e32 v14, v14
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v40, v65
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v6, v8
	v_cvt_f32_i32_e32 v5, v7
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_lshl_b32 s11, s15, 4
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s18
	v_and_b32_e32 v0, 16, v0
	.loc	1 128 14 is_stmt 1              ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v4, 16, v27
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v25, 1, v26
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v26, s0, v9, 1
	v_add_lshl_u32 v9, s0, v22, 1
	v_add_lshl_u32 v22, s0, v21, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v21, s2, v21
	.loc	1 129 14 is_stmt 0              ; generate_amdgcn.py:129:14
	buffer_load_u16 v31, v25, s[16:19], 0 offen
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v25, s0, v20, 1
	s_clause 0x8
	buffer_load_u16 v26, v26, s[16:19], 0 offen
	buffer_load_u16 v35, v24, s[16:19], 0 offen
	buffer_load_u16 v36, v9, s[16:19], 0 offen
	buffer_load_u16 v37, v25, s[16:19], 0 offen
	buffer_load_u16 v24, v33, s[16:19], 0 offen
	buffer_load_u16 v9, v34, s[16:19], 0 offen
	buffer_load_u16 v33, v22, s[16:19], 0 offen
	buffer_load_u16 v34, v23, s[16:19], 0 offen
	buffer_load_u16 v25, v18, s[16:19], 0 offen
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v20, s2, v20
	v_or_b32_e32 v23, s2, v32
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s0, s20, s15
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s0, s0, s2
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v19, 1, v19
	v_lshlrev_b32_e32 v21, 1, v21
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v24, 16, v24
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v33, 16, v33
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v27, 16, v31
	v_lshlrev_b32_e32 v18, 1, v29
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v31, 16, v36
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v22, 1, v30
	s_clause 0x1
	buffer_load_u16 v29, v18, s[16:19], 0 offen
	buffer_load_u16 v30, v22, s[16:19], 0 offen
	v_lshlrev_b32_e32 v18, 1, v20
	v_lshlrev_b32_e32 v20, 1, v23
	s_clause 0x3
	buffer_load_u16 v32, v18, s[16:19], 0 offen
	buffer_load_u16 v22, v20, s[16:19], 0 offen
	buffer_load_u16 v23, v19, s[16:19], 0 offen
	buffer_load_u16 v38, v21, s[16:19], 0 offen
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v18, v50
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v50, v11
	v_cvt_f32_i32_e32 v11, v17
	v_cvt_f32_i32_e32 v17, v1
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v1, s15, v66
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v3, 0xf8, v39
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v21, v51
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v51, v10
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v20, v59
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v10, v16
	v_cvt_f32_i32_e32 v16, v2
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v1, s0, v3, v1
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v3, 16, v28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.h, 0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v19, v58
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s15, s19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v36, v3, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v8.h, v2.h
	v_mov_b16_e32 v7.h, v2.h
	v_mov_b16_e32 v58.h, v2.h
	v_mov_b16_e32 v39.h, v2.h
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v17, v36, v17
	.loc	1 134 25 is_stmt 0              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v26, v4, v26
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v28, 16, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v26, v26, v51 :: v_dual_lshlrev_b32 v35, 16, v37
	.loc	1 134 25 is_stmt 0              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v64, v3, v24
	v_mul_f32_e32 v63, v3, v35
	v_dual_mul_f32 v35, v4, v35 :: v_dual_mul_f32 v60, v3, v34
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v36, v3, v25
	v_mul_f32_e32 v25, v4, v25
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v59, v3, v28
	v_dual_mul_f32 v28, v4, v28 :: v_dual_mul_f32 v37, v3, v27
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v27, v4, v27
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v34, v4, v34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v16, v59, v16
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v62, v3, v33
	v_mul_f32_e32 v61, v3, v31
	v_mul_f32_e32 v31, v4, v31
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v28, v28, v50
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v33, v4, v33
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v37, v37, v47
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v50, v61, v55 :: v_dual_mul_f32 v27, v27, v41
	v_mul_f32_e32 v13, v31, v13
	v_mul_f32_e32 v15, v35, v15
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v35, 0xbfb8aa3b, v26
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v51, v60, v54 :: v_dual_mul_f32 v12, v34, v12
	v_dual_mul_f32 v54, v63, v57 :: v_dual_mul_f32 v55, v62, v56
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v36, v36, v46 :: v_dual_mul_f32 v25, v25, v40
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v46, 0xbfb8aa3b, v16
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v35
	v_mul_f32_e32 v40, 0xbfb8aa3b, v28
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v24, v4, v24
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v6, v64, v6
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v46
	v_cndmask_b32_e64 v35, 0, 0x42800000, s0
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s0
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v11, v24, v11
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v46, 0, 0x42800000, s1
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v26
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v16
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v46, v46
	v_ldexp_f32 v35, v35, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_ldexp_f32 v46, v46, v59
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v35, 1.0, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v59, null, v35, v35, v26
	v_rcp_f32_e32 v83, v59
	s_waitcnt lgkmcnt(17)
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v59, v83, 1.0
	v_fmac_f32_e32 v83, v95, v83
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v29, 16, v29
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v41, v3, v29 :: v_dual_lshlrev_b32 v32, 16, v32
	v_mul_f32_e32 v47, v3, v30
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v29, v4, v29 :: v_dual_lshlrev_b32 v38, 16, v38
	v_mul_f32_e32 v30, v4, v30
	v_mul_f32_e32 v34, v3, v32
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v14, v33, v14 :: v_dual_mul_f32 v47, v47, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v31, v3, v38 :: v_dual_mul_f32 v32, v4, v32
	v_dual_mul_f32 v38, v4, v38 :: v_dual_mul_f32 v33, 0xbfb8aa3b, v17
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v41, v41, v48 :: v_dual_mul_f32 v48, 0xbfb8aa3b, v51
	v_dual_mul_f32 v34, v34, v53 :: v_dual_mul_f32 v31, v31, v52
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v52, 0xbfb8aa3b, v55 :: v_dual_mul_f32 v53, 0xbfb8aa3b, v54
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v30, v30, v43 :: v_dual_mul_f32 v29, v29, v42
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v42, 0xbfb8aa3b, v12 :: v_dual_mul_f32 v43, 0xbfb8aa3b, v13
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_mul_f32_e32 v49, 0xbfb8aa3b, v50
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v48
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v53
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v43
	v_cndmask_b32_e64 v40, 0, 0x42800000, s2
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v49
	v_cndmask_b32_e64 v48, 0, 0x42800000, s4
	v_cndmask_b32_e64 v53, 0, 0x42800000, s7
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v32, v32, v45 :: v_dual_mul_f32 v45, 0xbfb8aa3b, v15
	v_dual_mul_f32 v38, v38, v44 :: v_dual_fmac_f32 v33, 0xbfb8aa3b, v17
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v43, 0, 0x42800000, s5
	v_mul_f32_e32 v44, 0xbfb8aa3b, v14
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v42
	v_cndmask_b32_e64 v49, 0, 0x42800000, s3
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v28
	v_dual_fmac_f32 v48, 0xbfb8aa3b, v51 :: v_dual_fmac_f32 v53, 0xbfb8aa3b, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v42, 0, 0x42800000, s6
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v52
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v45
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v13
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v44
	v_exp_f32_e32 v33, v33
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v50
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v53, v53
	v_cndmask_b32_e64 v52, 0, 0x42800000, s8
	v_cndmask_b32_e64 v45, 0, 0x42800000, s9
	v_cndmask_b32_e64 v44, 0, 0x42800000, s10
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v12
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s7
	v_exp_f32_e32 v43, v43
	v_dual_fmac_f32 v45, 0xbfb8aa3b, v15 :: v_dual_fmac_f32 v44, 0xbfb8aa3b, v14
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v42, v42
	v_ldexp_f32 v33, v33, v56
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v55
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s5
	v_ldexp_f32 v40, v40, v60
	v_ldexp_f32 v48, v48, v62
	v_ldexp_f32 v53, v53, v66
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s6
	v_exp_f32_e32 v45, v45
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v52, v52
	v_ldexp_f32 v43, v43, v63
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v40, 1.0, v40
	v_dual_add_f32 v48, 1.0, v48 :: v_dual_add_f32 v53, 1.0, v53
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s9
	v_ldexp_f32 v49, v49, v61
	v_ldexp_f32 v42, v42, v65
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v44, v44
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v56, null, v33, v33, v17
	v_div_scale_f32 v63, null, v40, v40, v28
	v_div_scale_f32 v74, null, v53, v53, v54
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v52, v52, v67
	v_ldexp_f32 v45, v45, v68
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v49, 1.0, v49 :: v_dual_add_f32 v42, 1.0, v42
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v61, null, v46, v46, v16
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s10
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v68, null, v48, v48, v51
	v_rcp_f32_e32 v82, v56
	s_waitcnt lgkmcnt(11)
	v_rcp_f32_e32 v85, v63
	s_waitcnt lgkmcnt(8)
	v_rcp_f32_e32 v90, v74
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v52, 1.0, v52 :: v_dual_add_f32 v45, 1.0, v45
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v66, null, v49, v49, v50
	v_div_scale_f32 v72, null, v42, v42, v12
	v_rcp_f32_e32 v84, v61
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v44, v44, v69
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v87, v68
	v_div_scale_f32 v76, null, v52, v52, v55
	v_div_scale_f32 v78, null, v45, v45, v15
	v_rcp_f32_e32 v86, v66
	v_rcp_f32_e32 v89, v72
	v_div_scale_f32 v60, s0, v26, v35, v26
	v_div_scale_f32 v70, null, v43, v43, v13
	s_waitcnt lgkmcnt(2)
	v_fma_f32 v94, -v56, v82, 1.0
	v_fma_f32 v97, -v63, v85, 1.0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v102, -v74, v90, 1.0
	v_rcp_f32_e32 v91, v76
	v_rcp_f32_e32 v92, v78
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v96, -v61, v84, 1.0
	v_div_scale_f32 v57, vcc_lo, v17, v33, v17
	v_rcp_f32_e32 v88, v70
	v_fma_f32 v99, -v68, v87, 1.0
	v_dual_fmac_f32 v82, v94, v82 :: v_dual_fmac_f32 v85, v97, v85
	v_div_scale_f32 v80, null, v44, v44, v14
	v_dual_fmac_f32 v90, v102, v90 :: v_dual_mul_f32 v95, v60, v83
	v_div_scale_f32 v62, s1, v16, v46, v16
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v98, -v66, v86, 1.0
	v_fma_f32 v101, -v72, v89, 1.0
	v_fmac_f32_e32 v84, v96, v84
	v_div_scale_f32 v69, s4, v51, v48, v51
	v_rcp_f32_e32 v93, v80
	v_fmac_f32_e32 v87, v99, v87
	v_fma_f32 v107, -v59, v95, v60
	v_mul_f32_e32 v94, v57, v82
	v_div_scale_f32 v65, s2, v28, v40, v28
	v_div_scale_f32 v67, s3, v50, v49, v50
	v_div_scale_f32 v73, s6, v12, v42, v12
	v_fma_f32 v103, -v76, v91, 1.0
	v_fma_f32 v104, -v78, v92, 1.0
	v_dual_fmac_f32 v86, v98, v86 :: v_dual_fmac_f32 v89, v101, v89
	v_dual_mul_f32 v96, v62, v84 :: v_dual_mul_f32 v99, v69, v87
	v_fma_f32 v100, -v70, v88, 1.0
	v_fmac_f32_e32 v95, v107, v83
	v_fma_f32 v106, -v56, v94, v57
	v_dual_fmac_f32 v91, v103, v91 :: v_dual_fmac_f32 v92, v104, v92
	v_dual_mul_f32 v97, v65, v85 :: v_dual_mul_f32 v98, v67, v86
	v_mul_f32_e32 v101, v73, v89
	v_fma_f32 v108, -v61, v96, v62
	v_div_scale_f32 v71, s5, v13, v43, v13
	v_div_scale_f32 v77, s8, v55, v52, v55
	v_fma_f32 v105, -v80, v93, 1.0
	v_fmac_f32_e32 v88, v100, v88
	v_fma_f32 v111, -v68, v99, v69
	v_fmac_f32_e32 v94, v106, v82
	v_div_scale_f32 v79, s9, v15, v45, v15
	v_fma_f32 v109, -v63, v97, v65
	v_fma_f32 v113, -v72, v101, v73
	v_fmac_f32_e32 v96, v108, v84
	v_div_scale_f32 v75, s7, v54, v53, v54
	v_div_scale_f32 v81, s10, v14, v44, v14
	v_dual_fmac_f32 v93, v105, v93 :: v_dual_mul_f32 v100, v71, v88
	v_mul_f32_e32 v103, v77, v91
	v_fma_f32 v110, -v66, v98, v67
	v_fmac_f32_e32 v99, v111, v87
	v_fma_f32 v56, -v56, v94, v57
	v_dual_mul_f32 v104, v79, v92 :: v_dual_fmac_f32 v97, v109, v85
	v_fmac_f32_e32 v101, v113, v89
	v_fma_f32 v57, -v59, v95, v60
	v_fma_f32 v59, -v61, v96, v62
	v_dual_mul_f32 v102, v75, v90 :: v_dual_mul_f32 v105, v81, v93
	v_fma_f32 v112, -v70, v100, v71
	v_fma_f32 v115, -v76, v103, v77
	v_fmac_f32_e32 v98, v110, v86
	v_div_fmas_f32 v56, v56, v82, v94
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v60, -v63, v97, v65
	v_div_fmas_f32 v59, v59, v84, v96
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v107, -v80, v105, v81
	v_dual_fmac_f32 v100, v112, v88 :: v_dual_fmac_f32 v103, v115, v91
	v_fma_f32 v61, -v66, v98, v67
	v_div_fixup_f32 v17, v56, v33, v17
	v_div_fmas_f32 v33, v57, v83, v95
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v62, -v68, v99, v69
	v_fma_f32 v114, -v74, v102, v75
	v_div_fmas_f32 v56, v60, v85, v97
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v105, v107, v93
	v_fma_f32 v63, -v70, v100, v71
	v_div_fixup_f32 v16, v59, v46, v16
	v_div_fmas_f32 v46, v61, v86, v98
	v_div_fixup_f32 v26, v33, v35, v26
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v106, -v78, v104, v79
	v_fma_f32 v65, -v72, v101, v73
	v_div_fmas_f32 v33, v62, v87, v99
	v_dual_fmac_f32 v102, v114, v90 :: v_dual_mul_f32 v17, v37, v17
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v28, v56, v40, v28
	v_div_fmas_f32 v35, v63, v88, v100
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v26, v27, v26
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v33, v33, v48, v51
	v_fmac_f32_e32 v104, v106, v92
	v_div_fmas_f32 v27, v65, v89, v101
	v_fma_f32 v66, -v74, v102, v75
	v_fma_f32 v67, -v76, v103, v77
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v25, v25, v28
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v13, v35, v43, v13
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v16, v36, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v36, v46, v49, v50
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v26.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v12, v27, v42, v12
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v27, v41, v33
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v68, -v78, v104, v79
	v_div_fmas_f32 v28, v66, v90, v102
	s_mov_b32 vcc_lo, s8
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v12, v29, v12 :: v_dual_and_b32 v37, 1, v2
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v17.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v35, v47, v36
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v36, v67, v91, v103
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v69, -v80, v105, v81
	v_div_fmas_f32 v33, v68, v92, v104
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v13, v30, v13
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v8.l, v16.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v25.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v30, v69, v93, v105
	v_div_fixup_f32 v15, v33, v45, v15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v8, 1, v8
	v_cmp_o_f32_e64 s1, v16, v16
	v_cmp_o_f32_e64 s2, v26, v26
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v14, v30, v44, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v7, 1, v7
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v15, v32, v15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v8, v16, v8, 0x7fff
	v_add3_u32 v16, v26, v37, 0x7fff
	v_and_b32_e32 v26, 1, v2
	v_mov_b16_e32 v2.l, v13.h
	v_cmp_o_f32_e64 s3, v25, v25
	v_mov_b16_e32 v58.l, v27.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v14, v38, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v7, v25, v7, 0x7fff
	v_and_b32_e32 v25, 1, v2
	v_mov_b16_e32 v39.l, v12.h
	v_and_b32_e32 v29, 1, v58
	v_mov_b16_e32 v2.l, v35.h
	v_cmp_o_f32_e64 s0, v17, v17
	v_cmp_o_f32_e64 s4, v27, v27
	v_cndmask_b16 v7.l, 0x7fff, v16.h, s2
	v_add3_u32 v16, v17, v26, 0x7fff
	v_and_b32_e32 v17, 1, v39
	v_add3_u32 v26, v27, v29, 0x7fff
	v_and_b32_e32 v27, 1, v2
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v36, v36, v52, v55
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s6, v12, v12
	v_add3_u32 v12, v12, v17, 0x7fff
	v_add3_u32 v17, v35, v27, 0x7fff
	v_mov_b16_e32 v2.l, v15.h
	v_cmp_o_f32_e64 s5, v13, v13
	v_add3_u32 v13, v13, v25, 0x7fff
	v_mov_b16_e32 v16.l, v14.h
	v_cndmask_b16 v8.l, 0x7fff, v16.h, s0
	v_cndmask_b16 v12.l, 0x7fff, v26.h, s4
	v_cndmask_b16 v13.l, 0x7fff, v12.h, s6
	v_cndmask_b16 v12.h, 0x7fff, v17.h, vcc_lo
	v_mov_b16_e32 v16.h, v2.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v17, v28, v53, v54
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v25, v31, v36 :: v_dual_and_b32 v26, 1, v2
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v28, v3, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v17, v34, v17 :: v_dual_and_b32 v16, 1, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_add3_u32 v26, v15, v26, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v5, v28, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s1
	v_add3_u32 v16, v14, v16, 0x7fff
	v_cmp_o_f32_e64 s1, v14, v14
	v_cndmask_b16 v14.h, 0x7fff, v26.h, vcc_lo
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v26, 0xbfb8aa3b, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v17.h
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v14.l, 0x7fff, v16.h, s1
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s3
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s5
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v27, 0xbfb8aa3b, v6 :: v_dual_fmac_f32 v16, 0xbfb8aa3b, v5
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v27
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v9, v4, v9 :: v_dual_add_f32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v9, v9, v10
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v15, 0xbfb8aa3b, v6 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v15, v15
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v26.l, v25.h
	v_mov_b16_e32 v26.h, v2.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s1
	v_ldexp_f32 v15, v15, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_dual_add_f32 v15, 1.0, v15 :: v_dual_and_b32 v26, 1, v26
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v9
	v_mul_f32_e32 v10, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v26, v25, v26, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v28, null, v15, v15, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v10
	v_exp_f32_e32 v24, v24
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v35, vcc_lo, v6, v15, v6
	v_rcp_f32_e32 v29, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v10, 0, 0x42800000, s0
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v17, v17
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v11
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v24, v24, v30
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v30, -v28, v29, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v10, v10
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v24, 1.0, v24 :: v_dual_fmac_f32 v29, v30, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v30, null, v24, v24, v9
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v10, v10, v27
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v27, null, v16, v16, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v37, v30
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v10, 1.0, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v32, v27
	v_div_scale_f32 v33, null, v10, v10, v11
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v40, -v30, v37, 1.0
	v_rcp_f32_e32 v34, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v27, v32, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v31, 1, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v37, v40, v37
	v_div_scale_f32 v40, s2, v9, v24, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v32, v36, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v31, v17, v31, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v36, s1, v5, v16, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v33, v34, 1.0
	v_mul_f32_e32 v17, v35, v29
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v34, v38, v34
	v_fma_f32 v39, -v28, v17, v35
	v_div_scale_f32 v38, s0, v11, v10, v11
	v_mul_f32_e32 v41, v36, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v17, v39, v29 :: v_dual_mul_f32 v42, v38, v34
	v_fma_f32 v39, -v27, v41, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v28, -v28, v17, v35
	v_fma_f32 v35, -v33, v42, v38
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v17, v28, v29, v17
	v_fmac_f32_e32 v42, v35, v34
	v_dual_fmac_f32 v41, v39, v32 :: v_dual_mul_f32 v28, v4, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v4, v4, v23
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v29, -v33, v42, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v27, -v27, v41, v36
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v23, v3, v23 :: v_dual_mul_f32 v4, v4, v20
	v_mul_f32_e32 v3, v3, v22
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v6, v17, v15, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v27, v27, v32, v41
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e64 s0, 0, v0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v29, v29, v34, v42
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v3, v3, v18 :: v_dual_mov_b32 v0, 0x5410
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v5, v27, v16, v5
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v10, v29, v10, v11
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v11, v23, v21
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v3, v3, v5 :: v_dual_mul_f32 v4, v4, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v5, v11, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v10.h, v2.h
	v_mov_b16_e32 v11.h, v2.h
	v_mov_b16_e32 v11.l, v3.h
	v_mov_b16_e32 v2.l, v4.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v43, v40, v37
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_lshl_or_b32 v0, v0, 8, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v6, 1, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v39, -v30, v43, v40
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v5.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v19, v28, v19 :: v_dual_and_b32 v0, 0x540054, v0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v6, v4, v6, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v43, v39, v37 :: v_dual_and_b32 v2, 1, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v5, v5
	v_lshl_or_b32 v0, v0, 4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v30, -v30, v43, v40
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v2, v5, v2, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v0, 0x5040504, v0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v30, v30, v37, v43
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s1
	s_mov_b32 s1, 0x76543210
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v30, v24, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v31.l, 0x7fff, v26.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v9, v19, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v6.h, 0x7fff, v6.h, vcc_lo
	v_mov_b16_e32 v10.l, v9.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v4, v9, v10, 0x7fff
	v_and_b32_e32 v10, 1, v11
	v_cndmask_b16 v6.l, 0x7fff, v4.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v9, v3, v10, 0x7fff
	v_mov_b32_e32 v10, 0x7632
	v_cmp_o_f32_e64 s2, v3, v3
	v_cndmask_b32_e64 v3, v14, v7, s0
	v_cndmask_b32_e64 v5, 0x3276, v10, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v2.l, 0x7fff, v9.h, s2
	v_cndmask_b32_e64 v9, v31, v8, s0
	v_cndmask_b32_e64 v8, v8, v31, s0
	v_lshl_or_b32 v4, v5, 8, v5
	v_cndmask_b32_e64 v5, v7, v14, s0
	v_cndmask_b32_e64 v7, v6, v13, s0
	v_cndmask_b32_e64 v6, v13, v6, s0
	v_cndmask_b32_e64 v10, v2, v12, s0
	v_and_b32_e32 v4, 0x760076, v4
	v_cndmask_b32_e64 v2, v12, v2, s0
	v_permlanex16_b32 v5, v5, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v4, v4, 4, v4
	v_permlanex16_b32 v12, v2, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v5, v3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v11, 0x7060706, v4
	v_perm_b32 v4, v6, v7, v0
	v_perm_b32 v3, v5, v3, v11
	v_perm_b32 v5, v6, v7, v11
	v_perm_b32 v6, v8, v9, v0
	v_perm_b32 v7, v8, v9, v11
	v_perm_b32 v8, v12, v10, v0
	v_lshlrev_b32_e32 v0, 1, v1
	v_perm_b32 v9, v12, v10, v11
	v_add_lshl_u32 v1, v1, s11, 1
	s_clause 0x1
	buffer_store_b128 v[2:5], v0, s[12:15], 0 offen
	buffer_store_b128 v[6:9], v1, s[12:15], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 120
		.amdhsa_next_free_sgpr 31
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.num_vgpr, 120
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11012
; TotalNumSgprs: 33
; NumVgprs: 120
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 33
; NumVGPRsForWavesPerEU: 120
; Occupancy: 12
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
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	105                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
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
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     120
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
