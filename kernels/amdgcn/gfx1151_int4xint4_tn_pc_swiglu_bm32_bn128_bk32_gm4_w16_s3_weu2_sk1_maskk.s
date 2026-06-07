	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[10:11], s[0:1], 0x30
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s7, s2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v2, 31, v0
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_lshrrev_b32_e32 v3, 5, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v34, 1, v0
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_lshlrev_b32_e32 v18, 2, v0
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_add_nc_u32_e32 v12, 0, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v36, 4, v0
	s_load_b32 s25, s[0:1], 0x38
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v35, 0x70, v34
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v13, 0, v18
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s11, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s10, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s12, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s12, s12, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s8, s12
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s4, s4, 2
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	v_mad_u64_u32 v[4:5], null, s10, v3, v[2:3]
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
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
	s_mul_i32 s12, s6, s5
	s_sub_i32 s7, s7, s12
	s_add_i32 s12, s6, 1
	s_sub_i32 s13, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s12, s6
	s_cselect_b32 s7, s13, s7
	s_add_i32 s12, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s12, s6
	s_load_b128 s[12:15], s[0:1], 0x0
	s_xor_b32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s9
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s6, s5, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s5, s4
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s7, s8, s6
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s7, s7, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_f32_u32 s9, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[14:15]
	s_sub_i32 s14, 0, s8
	s_mov_b32 s15, 0x31027000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v1, 2, v2
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s14, s14, s9
	s_mul_hi_u32 s4, s9, s14
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s18, s4, s8
	s_ashr_i32 s23, s9, 31
	s_sub_i32 s5, s5, s18
	s_add_i32 s9, s4, 1
	s_sub_i32 s19, s5, s8
	s_cmp_ge_u32 s5, s8
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s18, s14
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s19, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s8
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s19, s15
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s4, s9, s4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s5, s25, 31
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s8, s11, 1
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s27, s3, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s26, s4, s23
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s25, s5
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_mul_i32 s9, s8, s27
	v_mad_u64_u32 v[5:6], null, s8, v3, v[1:2]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s8, s26, s23
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s28, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s8, s7
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v7, s27, v3
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s4
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s20, s8, 7
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s6
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_add3_u32 v5, s9, s20, v5
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s28, v7
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s2, s2, 5
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s25, 1
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	s_mul_i32 s5, s10, s27
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s22, -1, 0
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s22, vcc_lo
	s_cmp_gt_i32 s25, 33
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	v_add3_u32 v4, s5, s2, v4
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s21, -1, 0
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	s_add_i32 s4, s27, 16
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	v_add_nc_u32_e32 v6, s11, v5
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v9, s4, v3
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_lshl_add_u32 v7, s11, 5, v5
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_dual_cndmask_b32 v8, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	s_lshl_b32 s24, s10, 4
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s28, v9
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	v_add_nc_u32_e32 v4, s24, v4
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	v_add_nc_u32_e32 v10, s11, v7
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s21, vcc_lo
	s_cmpk_gt_i32 s25, 0x41
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v9, 0x80000000, v10
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	buffer_load_u8 v8, v8, s[12:15], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b32 v5, v5, s[16:19], 0 offen
	buffer_load_b32 v6, v6, s[16:19], 0 offen
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	buffer_load_u8 v10, v4, s[12:15], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b32 v7, v7, s[16:19], 0 offen
	buffer_load_b32 v11, v9, s[16:19], 0 offen
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v4, 15, v0
	s_mov_b32 s18, 0
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt vmcnt(5)
	ds_store_b8 v12, v8 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(3)
	ds_store_2addr_stride64_b32 v13, v5, v6 offset1:16
	v_or_b32_e32 v9, v35, v4
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b8 v12, v10 offset:8704
	.loc	1 0 0                           ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v13, v7, v11 offset0:8 offset1:24
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_or_b32_e32 v51, v35, v4
	s_mov_b32 s19, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v44, 0x80, v51
	v_or_b32_e32 v45, 0x100, v51
	v_or_b32_e32 v46, 0x180, v51
	v_or_b32_e32 v47, 0x200, v51
	v_or_b32_e32 v48, 0x280, v51
	v_or_b32_e32 v49, 0x300, v51
	v_or_b32_e32 v50, 0x380, v51
	v_or_b32_e32 v38, 0x400, v51
	v_or_b32_e32 v39, 0x480, v51
	v_or_b32_e32 v40, 0x500, v51
	v_or_b32_e32 v41, 0x580, v51
	v_or_b32_e32 v42, 0x600, v51
	v_or_b32_e32 v43, 0x680, v51
	v_or_b32_e32 v52, 0x700, v51
	v_or_b32_e32 v53, 0x780, v51
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s19, -1
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr44
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr38
                                        ; implicit-def: $vgpr39
                                        ; implicit-def: $vgpr40
                                        ; implicit-def: $vgpr41
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr43
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr53
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[8:9], s[0:1], 0x20
	v_and_or_b32 v37, v36, 16, v4
	s_and_not1_b32 vcc_lo, exec_lo, s19
	s_mov_b32 s25, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	v_lshlrev_b32_e32 v4, 1, v3
	s_lshl_b32 s1, s26, 7
	s_add_i32 s27, s27, 32
	v_sub_nc_u32_e32 v19, s28, v3
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s0, s28, 15
.Ltmp13:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_lshl_or_b32 v4, s3, 5, v4
	s_lshl_b32 s18, s23, 7
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s0, s0, 4
	s_mov_b32 s28, 1
.Ltmp15:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_sub_nc_u32_e64 v6, s0, 3 clamp
	v_add_nc_u32_e32 v5, 0x41, v4
	v_add_nc_u32_e32 v4, 64, v4
	s_lshl_b32 s26, s11, 5
	s_add_i32 s0, 0, 0x2000
	v_readfirstlane_b32 s19, v6
	v_mul_lo_u32 v5, s11, v5
	v_mul_lo_u32 v4, s11, v4
	s_add_i32 s23, 0, 0x2200
	s_add_i32 s3, 0, 0x800
	s_add_i32 s29, s19, 1
	s_mov_b32 s19, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v5, v5, s1, v1
	v_add3_u32 v4, v4, s1, v1
	v_mov_b32_e32 v1, 0
	v_add_nc_u32_e32 v3, s27, v3
	s_add_i32 s1, 0, 0x1800
	v_subrev_nc_u32_e32 v21, s18, v5
	v_subrev_nc_u32_e32 v22, s18, v4
	v_mov_b32_e32 v4, v1
	v_mul_lo_u32 v3, s10, v3
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_add3_u32 v20, v3, s2, v2
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	s_add_i32 s10, 0, 0x1000
	s_mov_b32 s18, s14
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e32 vcc_lo, s27, v19
	s_mov_b32 s30, s0
	s_mov_b32 s0, s23
	s_mov_b32 s23, s25
	s_mov_b32 s25, s3
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_dual_cndmask_b32 v23, 0x80000000, v20 :: v_dual_cndmask_b32 v24, 0x80000000, v22
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_cndmask_b32_e32 v25, 0x80000000, v21, vcc_lo
	s_mov_b32 s3, s10
	s_mov_b32 s10, s1
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	buffer_load_u8 v33, v23, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b32 v40, v24, s[16:19], 0 offen
	buffer_load_b32 v41, v25, s[16:19], 0 offen
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_add_nc_u32_e32 v23, s30, v37
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v24, s23, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v25, s3, v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v26, v23 offset:160
	ds_load_u8 v27, v23 offset:224
	ds_load_u8 v28, v23 offset:192
	ds_load_u8 v29, v23 offset:128
	ds_load_u8 v30, v23 offset:96
	ds_load_u8 v31, v23 offset:64
	ds_load_u8 v32, v23
	ds_load_u8 v38, v23 offset:32
	ds_load_u8 v39, v24 offset:640
	ds_load_u8 v42, v24 offset:896
	ds_load_u8 v43, v24 offset:768
	ds_load_u8 v44, v24 offset:512
	ds_load_u8 v45, v24 offset:128
	ds_load_u8 v46, v24 offset:384
	ds_load_u8 v47, v24 offset:256
	ds_load_u8 v48, v24
	ds_load_u8 v49, v23 offset:416
	ds_load_u8 v50, v23 offset:480
	ds_load_u8 v51, v23 offset:448
	ds_load_u8 v52, v23 offset:384
	ds_load_u8 v53, v23 offset:288
	ds_load_u8 v54, v23 offset:352
	ds_load_u8 v55, v23 offset:320
	ds_load_u8 v23, v23 offset:256
	ds_load_u8 v56, v24 offset:1664
	ds_load_u8 v57, v24 offset:1920
	ds_load_u8 v58, v24 offset:1792
	ds_load_u8 v59, v24 offset:1536
	ds_load_u8 v60, v24 offset:1152
	ds_load_u8 v61, v24 offset:1408
	ds_load_u8 v62, v24 offset:1280
	ds_load_u8 v24, v24 offset:1024
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v63, v25 offset:640
	ds_load_u8 v64, v25 offset:896
	ds_load_u8 v65, v25 offset:768
	ds_load_u8 v66, v25 offset:512
	ds_load_u8 v67, v25 offset:128
	ds_load_u8 v68, v25 offset:384
	ds_load_u8 v69, v25 offset:256
	ds_load_u8 v70, v25
	ds_load_u8 v71, v25 offset:1664
	ds_load_u8 v72, v25 offset:1920
	ds_load_u8 v73, v25 offset:1792
	ds_load_u8 v74, v25 offset:1536
	ds_load_u8 v75, v25 offset:1152
	ds_load_u8 v76, v25 offset:1408
	ds_load_u8 v77, v25 offset:1280
	ds_load_u8 v25, v25 offset:1024
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v26, v29, v26, 0xc0c0004
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v28, v31, v30, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v29, v32, v38, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v30, v44, v39, 0xc0c0004
	v_perm_b32 v31, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v32, v48, v45, 0xc0c0004
	v_perm_b32 v38, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v39, v52, v49, 0xc0c0004
	v_perm_b32 v42, v51, v50, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v49, v66, v63, 0xc0c0004
	v_perm_b32 v50, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v51, v70, v67, 0xc0c0004
	v_perm_b32 v52, v69, v68, 0xc0c0004
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s1, s28, 1
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v43, v23, v53, 0xc0c0004
	v_perm_b32 v44, v55, v54, 0xc0c0004
	v_perm_b32 v45, v59, v56, 0xc0c0004
	v_perm_b32 v46, v58, v57, 0xc0c0004
	v_perm_b32 v47, v24, v60, 0xc0c0004
	v_perm_b32 v48, v62, v61, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v53, v74, v71, 0xc0c0004
	v_perm_b32 v54, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v25, v75, 0xc0c0004
	v_perm_b32 v56, v77, v76, 0xc0c0004
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v24, v27, 16, v26
	v_lshl_or_b32 v23, v28, 16, v29
	v_lshl_or_b32 v26, v31, 16, v30
	v_lshl_or_b32 v25, v38, 16, v32
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v32, v50, 16, v49
	v_lshl_or_b32 v31, v52, 16, v51
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lt_i32 s1, 2
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v28, v42, 16, v39
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s28, s1, 0
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v27, v44, 16, v43
	v_lshl_or_b32 v30, v46, 16, v45
	v_lshl_or_b32 v29, v48, 16, v47
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v39, v54, 16, v53
	v_lshl_or_b32 v38, v56, 16, v55
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[10:17], v[25:26], v[23:24], v[10:17] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[1:8], v[31:32], v[23:24], v[1:8] neg_lo:[1,1,0]
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_lshl_b32 s1, s28, 9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_lshl_b32 s3, s28, 11
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_add_i32 s1, s1, 0
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_add_i32 s3, s3, 0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v20, s24, v20
	v_add_nc_u32_e32 v21, s26, v21
	v_add_nc_u32_e32 v22, s26, v22
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_add_nc_u32_e32 v23, s1, v0
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[10:17], v[29:30], v[27:28], v[10:17] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[1:8], v[38:39], v[27:28], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s29, s29, -1
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v24, s3, v18
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s27, s27, 16
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_add_i32 s23, s1, 0x2000
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_add_i32 s1, s3, 0x1000
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s29, 0
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b8 v23, v33 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v24, v40, v41 offset1:16
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_or_b32_e32 v44, 0x80, v9
	v_or_b32_e32 v45, 0x100, v9
	v_or_b32_e32 v46, 0x180, v9
	v_or_b32_e32 v47, 0x200, v9
	v_or_b32_e32 v48, 0x280, v9
	v_or_b32_e32 v49, 0x300, v9
	v_or_b32_e32 v50, 0x380, v9
	v_or_b32_e32 v38, 0x400, v9
	v_or_b32_e32 v39, 0x480, v9
	v_or_b32_e32 v40, 0x500, v9
	v_or_b32_e32 v41, 0x580, v9
	v_or_b32_e32 v42, 0x600, v9
	v_or_b32_e32 v43, 0x680, v9
	v_or_b32_e32 v52, 0x700, v9
	v_or_b32_e32 v53, 0x780, v9
	v_mov_b32_e32 v51, v9
	s_mov_b32 s18, s25
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v8, 0
	s_add_i32 s0, 0, 0x2000
	s_add_i32 s23, 0, 0x2200
	s_add_i32 s3, 0, 0x800
	s_add_i32 s10, 0, 0x1000
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v7, v8
	v_dual_mov_b32 v11, v9 :: v_dual_mov_b32 v10, v8
	v_mov_b32_e32 v17, v9
	v_mov_b32_e32 v15, v9
	v_mov_b32_e32 v13, v9
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v16, v8
	s_add_i32 s1, 0, 0x1800
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v25, v17 :: v_dual_add_nc_u32 v18, s0, v37
	.loc	1 111 22 is_stmt 1              ; generate_amdgcn.py:111:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v24, v16 :: v_dual_mov_b32 v21, v13
	ds_load_u8_d16 v29, v18
	ds_load_u8_d16 v30, v18 offset:32
	ds_load_u8_d16 v31, v18 offset:64
	ds_load_u8_d16 v32, v18 offset:96
	ds_load_u8_d16 v57, v18 offset:128
	ds_load_u8_d16 v58, v18 offset:160
	ds_load_u8_d16 v59, v18 offset:192
	ds_load_u8_d16 v60, v18 offset:224
	ds_load_u8_d16 v9, v18 offset:256
	ds_load_u8_d16 v26, v18 offset:288
	ds_load_u8_d16 v27, v18 offset:320
	ds_load_u8_d16 v28, v18 offset:352
	ds_load_u8_d16 v33, v18 offset:384
	ds_load_u8_d16 v54, v18 offset:416
	ds_load_u8_d16 v55, v18 offset:448
	ds_load_u8_d16 v56, v18 offset:480
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cndmask_b32_e64 v18, 0, 1, s22
	v_dual_mov_b32 v20, v12 :: v_dual_mov_b32 v23, v15
	v_mov_b32_e32 v22, v14
	s_and_not1_b32 vcc_lo, exec_lo, s22
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v18
	v_dual_mov_b32 v19, v11 :: v_dual_mov_b32 v18, v10
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v22, s18, v48
	v_add_nc_u32_e32 v23, s18, v47
	v_add_nc_u32_e32 v20, s18, v50
	v_add_nc_u32_e32 v61, s18, v44
	v_add_nc_u32_e32 v21, s18, v49
	v_add_nc_u32_e32 v24, s18, v46
	v_add_nc_u32_e32 v25, s18, v45
	v_add_nc_u32_e32 v62, s18, v51
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v22, v22
	ds_load_u8 v23, v23
	ds_load_u8 v20, v20
	ds_load_u8 v61, v61
	ds_load_u8 v62, v62
	ds_load_u8 v24, v24
	ds_load_u8 v25, v25
	ds_load_u8 v21, v21
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v63, s18, v43
	v_add_nc_u32_e32 v64, s18, v42
	v_add_nc_u32_e32 v18, s18, v53
	v_add_nc_u32_e32 v67, s18, v39
	v_add_nc_u32_e32 v65, s18, v41
	v_add_nc_u32_e32 v66, s18, v40
	v_add_nc_u32_e32 v68, s18, v38
	v_add_nc_u32_e32 v19, s18, v52
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v69, v63
	ds_load_u8 v70, v64
	ds_load_u8 v71, v18
	ds_load_u8 v67, v67
	ds_load_u8 v68, v68
	ds_load_u8 v65, v65
	ds_load_u8 v66, v66
	ds_load_u8 v72, v19
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v18, v57, v58, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v19, v59, v60, 0xc0c0004
	v_perm_b32 v63, v29, v30, 0xc0c0004
	v_perm_b32 v64, v31, v32, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	v_perm_b32 v73, v33, v54, 0xc0c0004
	v_perm_b32 v74, v55, v56, 0xc0c0004
	v_perm_b32 v75, v9, v26, 0xc0c0004
	v_perm_b32 v76, v27, v28, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v23, v25, v24, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	v_perm_b32 v21, v62, v61, 0xc0c0004
	v_lshl_or_b32 v62, v19, 16, v18
	v_lshl_or_b32 v61, v64, 16, v63
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	v_lshl_or_b32 v64, v20, 16, v22
	v_lshl_or_b32 v63, v23, 16, v21
	v_dual_mov_b32 v25, v17 :: v_dual_mov_b32 v24, v16
	v_dual_mov_b32 v23, v15 :: v_dual_mov_b32 v22, v14
	v_dual_mov_b32 v21, v13 :: v_dual_mov_b32 v20, v12
	v_dual_mov_b32 v19, v11 :: v_dual_mov_b32 v18, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v72, v71, 0xc0c0004
	v_perm_b32 v67, v68, v67, 0xc0c0004
	v_perm_b32 v65, v66, v65, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[18:25], v[63:64], v[61:62], v[18:25] neg_lo:[1,1,0]
	v_lshl_or_b32 v62, v74, 16, v73
	v_lshl_or_b32 v61, v76, 16, v75
	v_lshl_or_b32 v64, v70, 16, v69
	v_lshl_or_b32 v63, v65, 16, v67
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[18:25], v[63:64], v[61:62], v[18:25] neg_lo:[1,1,0]
.LBB0_10:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v14, s10, v48
	v_add_nc_u32_e32 v15, s10, v47
	v_add_nc_u32_e32 v12, s10, v50
	v_add_nc_u32_e32 v61, s10, v44
	v_add_nc_u32_e32 v13, s10, v49
	v_add_nc_u32_e32 v16, s10, v46
	v_add_nc_u32_e32 v17, s10, v45
	v_add_nc_u32_e32 v62, s10, v51
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	ds_load_u8 v12, v12
	ds_load_u8 v61, v61
	ds_load_u8 v62, v62
	ds_load_u8 v16, v16
	ds_load_u8 v17, v17
	ds_load_u8 v13, v13
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v63, s10, v43
	v_add_nc_u32_e32 v64, s10, v42
	v_add_nc_u32_e32 v10, s10, v53
	v_add_nc_u32_e32 v67, s10, v38
	v_add_nc_u32_e32 v65, s10, v41
	v_add_nc_u32_e32 v66, s10, v40
	v_add_nc_u32_e32 v68, s10, v39
	v_add_nc_u32_e32 v11, s10, v52
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v63, v63
	ds_load_u8 v64, v64
	ds_load_u8 v69, v10
	ds_load_u8 v67, v67
	ds_load_u8 v65, v65
	ds_load_u8 v66, v66
	ds_load_u8 v70, v11
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v10, v57, v58, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v11, v59, v60, 0xc0c0004
	v_perm_b32 v29, v29, v30, 0xc0c0004
	v_perm_b32 v30, v31, v32, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	v_perm_b32 v9, v9, v26, 0xc0c0004
	v_lshl_or_b32 v11, v11, 16, v10
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v15, v62, v61, 0xc0c0004
	v_lshl_or_b32 v10, v30, 16, v29
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v17, v64, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v13, v12, 16, v14
	v_lshl_or_b32 v12, v16, 16, v15
	v_perm_b32 v14, v33, v54, 0xc0c0004
	v_perm_b32 v15, v55, v56, 0xc0c0004
	v_perm_b32 v16, v27, v28, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v26, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v67, v68, 0xc0c0004
	v_perm_b32 v28, v66, v65, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[12:13], v[10:11], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v10, v15, 16, v14
	v_lshl_or_b32 v9, v16, 16, v9
	v_lshl_or_b32 v12, v26, 16, v17
	v_lshl_or_b32 v11, v28, 16, v27
	v_mov_b32_e32 v16, v24
	v_dual_mov_b32 v14, v22 :: v_dual_mov_b32 v17, v25
	v_mov_b32_e32 v15, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v12, v20
	v_dual_mov_b32 v10, v18 :: v_dual_mov_b32 v13, v21
	v_mov_b32_e32 v11, v19
.LBB0_12:                               ; %._crit_edge54
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v29, v13 :: v_dual_add_nc_u32 v26, s23, v37
	v_dual_mov_b32 v28, v12 :: v_dual_mov_b32 v31, v15
	s_waitcnt lgkmcnt(3)
	v_dual_mov_b32 v30, v14 :: v_dual_mov_b32 v33, v11
	.loc	1 111 22 is_stmt 1              ; generate_amdgcn.py:111:22
	ds_load_u8_d16 v57, v26
	ds_load_u8_d16 v58, v26 offset:32
	ds_load_u8_d16 v59, v26 offset:64
	ds_load_u8_d16 v60, v26 offset:96
	ds_load_u8_d16 v65, v26 offset:128
	ds_load_u8_d16 v66, v26 offset:160
	ds_load_u8_d16 v67, v26 offset:192
	ds_load_u8_d16 v68, v26 offset:224
	ds_load_u8_d16 v9, v26 offset:256
	s_waitcnt lgkmcnt(11)
	ds_load_u8_d16 v54, v26 offset:288
	s_waitcnt lgkmcnt(11)
	ds_load_u8_d16 v55, v26 offset:320
	s_waitcnt lgkmcnt(11)
	ds_load_u8_d16 v56, v26 offset:352
	ds_load_u8_d16 v61, v26 offset:384
	ds_load_u8_d16 v62, v26 offset:416
	ds_load_u8_d16 v63, v26 offset:448
	ds_load_u8_d16 v64, v26 offset:480
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cndmask_b32_e64 v26, 0, 1, s21
	v_mov_b32_e32 v32, v10
	s_and_not1_b32 vcc_lo, exec_lo, s21
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_ne_u32_e64 s0, 1, v26
	v_dual_mov_b32 v27, v17 :: v_dual_mov_b32 v26, v16
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v30, s3, v48
	v_add_nc_u32_e32 v31, s3, v47
	v_add_nc_u32_e32 v28, s3, v50
	v_add_nc_u32_e32 v69, s3, v44
	v_add_nc_u32_e32 v29, s3, v49
	v_add_nc_u32_e32 v32, s3, v46
	v_add_nc_u32_e32 v33, s3, v45
	v_add_nc_u32_e32 v70, s3, v51
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v30, v30
	ds_load_u8 v31, v31
	ds_load_u8 v28, v28
	ds_load_u8 v69, v69
	ds_load_u8 v70, v70
	ds_load_u8 v32, v32
	ds_load_u8 v33, v33
	ds_load_u8 v29, v29
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v71, s3, v43
	v_add_nc_u32_e32 v72, s3, v42
	v_add_nc_u32_e32 v26, s3, v53
	v_add_nc_u32_e32 v75, s3, v38
	v_add_nc_u32_e32 v73, s3, v41
	v_add_nc_u32_e32 v74, s3, v40
	v_add_nc_u32_e32 v76, s3, v39
	v_add_nc_u32_e32 v27, s3, v52
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v71, v71
	ds_load_u8 v72, v72
	ds_load_u8 v77, v26
	ds_load_u8 v75, v75
	ds_load_u8 v73, v73
	ds_load_u8 v74, v74
	ds_load_u8 v78, v27
	ds_load_u8 v76, v76
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v26, v65, v66, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v27, v67, v68, 0xc0c0004
	v_perm_b32 v79, v57, v58, 0xc0c0004
	v_perm_b32 v80, v59, v60, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	v_lshl_or_b32 v27, v27, 16, v26
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v31, v70, v69, 0xc0c0004
	v_lshl_or_b32 v26, v80, 16, v79
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	v_perm_b32 v33, v55, v56, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v69, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v29, v28, 16, v30
	v_lshl_or_b32 v28, v32, 16, v31
	v_perm_b32 v30, v61, v62, 0xc0c0004
	v_perm_b32 v31, v63, v64, 0xc0c0004
	v_perm_b32 v32, v9, v54, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v70, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v75, v76, 0xc0c0004
	v_perm_b32 v72, v74, v73, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[18:25], v[28:29], v[26:27], v[18:25] neg_lo:[1,1,0]
	v_lshl_or_b32 v27, v31, 16, v30
	v_lshl_or_b32 v26, v33, 16, v32
	v_lshl_or_b32 v29, v70, 16, v69
	v_lshl_or_b32 v28, v72, 16, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[18:25], v[28:29], v[26:27], v[18:25] neg_lo:[1,1,0]
	v_mov_b32_e32 v27, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v29, v21
	v_mov_b32_e32 v31, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v33, v19 :: v_dual_mov_b32 v26, v24
	v_mov_b32_e32 v28, v20
	v_mov_b32_e32 v30, v22
	v_mov_b32_e32 v32, v18
.LBB0_14:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v14, s1, v48
	v_add_nc_u32_e32 v15, s1, v47
	v_add_nc_u32_e32 v12, s1, v50
	v_add_nc_u32_e32 v18, s1, v44
	v_add_nc_u32_e32 v13, s1, v49
	v_add_nc_u32_e32 v16, s1, v46
	v_add_nc_u32_e32 v17, s1, v45
	v_add_nc_u32_e32 v19, s1, v51
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	ds_load_u8 v12, v12
	ds_load_u8 v18, v18
	ds_load_u8 v19, v19
	ds_load_u8 v16, v16
	ds_load_u8 v17, v17
	ds_load_u8 v13, v13
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v20, s1, v43
	v_add_nc_u32_e32 v21, s1, v42
	v_add_nc_u32_e32 v10, s1, v53
	v_add_nc_u32_e32 v24, s1, v38
	v_add_nc_u32_e32 v22, s1, v41
	v_add_nc_u32_e32 v23, s1, v40
	v_add_nc_u32_e32 v25, s1, v39
	v_add_nc_u32_e32 v11, s1, v52
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v20, v20
	ds_load_u8 v21, v21
	ds_load_u8 v38, v10
	ds_load_u8 v24, v24
	ds_load_u8 v22, v22
	ds_load_u8 v23, v23
	ds_load_u8 v39, v11
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v10, v65, v66, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v11, v67, v68, 0xc0c0004
	v_perm_b32 v40, v57, v58, 0xc0c0004
	v_perm_b32 v41, v59, v60, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	v_perm_b32 v9, v9, v54, 0xc0c0004
	v_lshl_or_b32 v11, v11, 16, v10
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v15, v19, v18, 0xc0c0004
	v_lshl_or_b32 v10, v41, 16, v40
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v17, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v13, v12, 16, v14
	v_lshl_or_b32 v12, v16, 16, v15
	v_perm_b32 v14, v61, v62, 0xc0c0004
	v_perm_b32 v15, v63, v64, 0xc0c0004
	v_perm_b32 v16, v55, v56, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v18, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v24, v25, 0xc0c0004
	v_perm_b32 v20, v23, v22, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[12:13], v[10:11], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v10, v15, 16, v14
	v_lshl_or_b32 v9, v16, 16, v9
	v_lshl_or_b32 v12, v18, 16, v17
	v_lshl_or_b32 v11, v20, 16, v19
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_17
.LBB0_16:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v27, v17 :: v_dual_mov_b32 v26, v16
	v_dual_mov_b32 v29, v13 :: v_dual_mov_b32 v28, v12
	v_dual_mov_b32 v31, v15 :: v_dual_mov_b32 v30, v14
	v_dual_mov_b32 v33, v11 :: v_dual_mov_b32 v32, v10
.LBB0_17:
	.loc	1 128 22 is_stmt 1              ; generate_amdgcn.py:128:22
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v9, s2, v37
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_or_b32 v10, v36, 1, v35
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	s_add_i32 s0, s20, s11
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_and_b32 s13, s5, 0xffff
	s_mov_b32 s15, 0x31027000
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_dual_mov_b32 v38, 0x7632 :: v_dual_lshlrev_b32 v17, 1, v9
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v16, 2, v10
	v_or_b32_e32 v15, 4, v10
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_mov_b32 s12, s4
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v18, 6, v10
	v_or_b32_e32 v11, 14, v10
	v_or_b32_e32 v12, 12, v10
	v_or_b32_e32 v13, 10, v10
	v_or_b32_e32 v14, 8, v10
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	buffer_load_u16 v17, v17, s[12:15], 0 offen
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v19, s20, v10
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v10, s0, v10, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v20, s20, v16
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v16, s0, v16, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v21, s20, v15
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v15, s0, v15, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v22, s20, v18
	.loc	1 129 14 is_stmt 0              ; generate_amdgcn.py:129:14
	s_and_b32 s13, s7, 0xffff
	s_mov_b32 s12, s6
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v18, s0, v18, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v23, s20, v14
	v_or_b32_e32 v24, s20, v13
	v_or_b32_e32 v25, s20, v12
	v_or_b32_e32 v35, s20, v11
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v14, s0, v14, 1
	v_add_lshl_u32 v13, s0, v13, 1
	v_add_lshl_u32 v12, s0, v12, 1
	v_add_lshl_u32 v11, s0, v11, 1
	s_clause 0x7
	buffer_load_u16 v10, v10, s[12:15], 0 offen
	buffer_load_u16 v16, v16, s[12:15], 0 offen
	buffer_load_u16 v15, v15, s[12:15], 0 offen
	buffer_load_u16 v18, v18, s[12:15], 0 offen
	buffer_load_u16 v14, v14, s[12:15], 0 offen
	buffer_load_u16 v13, v13, s[12:15], 0 offen
	buffer_load_u16 v12, v12, s[12:15], 0 offen
	buffer_load_u16 v11, v11, s[12:15], 0 offen
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_dual_mov_b32 v37, 0x5410 :: v_dual_lshlrev_b32 v20, 1, v20
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v36.h, 0
	s_mov_b32 s7, 0x76543210
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s10, s14
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	buffer_load_u16 v20, v20, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v39.h, v36.h
	v_mov_b16_e32 v41.h, v36.h
	v_mov_b16_e32 v40.h, v36.h
	v_mov_b16_e32 v42.h, v36.h
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v16, v17, v16 :: v_dual_lshlrev_b32 v21, 1, v21
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v2, v16, v2 :: v_dual_lshlrev_b32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v11, v17, v11 :: v_dual_lshlrev_b32 v10, 16, v10
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v19, 1, v19
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v10, v17, v10 :: v_dual_lshlrev_b32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v8, v11, v8
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v12, v17, v12 :: v_dual_mul_f32 v1, v10, v1
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v7, v12, v7 :: v_dual_mul_f32 v12, 0xbfb8aa3b, v2
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v11, 0xbfb8aa3b, v1 :: v_dual_lshlrev_b32 v20, 16, v20
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v10, v17, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v12, 0, 0x42800000, s0
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v11, v11
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v19, v17, v19 :: v_dual_lshlrev_b32 v22, 1, v22
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_clause 0x1
	buffer_load_u16 v22, v22, s[12:15], 0 offen
	buffer_load_u16 v21, v21, s[12:15], 0 offen
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v19, v19, v32 :: v_dual_lshlrev_b32 v18, 16, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v18, v17, v18 :: v_dual_lshlrev_b32 v23, 1, v23
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v4, v18, v4
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v10, v10, v33
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v16, v17, v21 :: v_dual_lshlrev_b32 v15, 16, v15
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v15, v17, v15 :: v_dual_lshlrev_b32 v24, 1, v24
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v21, 0xbfb8aa3b, v4 :: v_dual_lshlrev_b32 v14, 16, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v3, v15, v3
	.loc	1 134 25 is_stmt 0              ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v14, v17, v14 :: v_dual_lshlrev_b32 v25, 1, v25
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	s_clause 0x3
	buffer_load_u16 v24, v24, s[12:15], 0 offen
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	buffer_load_u16 v35, v35, s[12:15], 0 offen
	buffer_load_u16 v25, v25, s[12:15], 0 offen
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v21
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v5, v14, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	v_dual_fmac_f32 v12, 0xbfb8aa3b, v2 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v12, v12
	v_exp_f32_e32 v21, v21
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v24, 16, v24
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v35, 16, v35
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v18, v17, v24 :: v_dual_lshlrev_b32 v25, 16, v25
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v7
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v14, v17, v35
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v13, 16, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v24
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v14, v14, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v20, v17, v22
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v13, v17, v13 :: v_dual_and_b32 v0, 16, v0
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v24, 0, 0x42800000, s6
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s6
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v6, v13, v6
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v15, v17, v23
	v_mul_f32_e32 v13, v17, v25
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v17, v20, v29 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v18, v18, v31 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v6
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v22, 0xbfb8aa3b, v5 :: v_dual_mul_f32 v13, v13, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v20
	v_mul_f32_e32 v25, 0xbfb8aa3b, v8
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v22
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0x42800000, s2
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v25
	v_cndmask_b32_e64 v23, 0, 0x42800000, s3
	v_cndmask_b32_e64 v22, 0, 0x42800000, s4
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v16, v16, v28 :: v_dual_mul_f32 v15, v15, v30
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v20, 0xbfb8aa3b, v3 :: v_dual_fmac_f32 v23, 0xbfb8aa3b, v6
	v_cndmask_b32_e64 v25, 0, 0x42800000, s5
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s1
	v_ldexp_f32 v11, v11, v26
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v5
	v_exp_f32_e32 v20, v20
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v8
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v12, v12, v27
	v_ldexp_f32 v21, v21, v28
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v7
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s2
	v_exp_f32_e32 v22, v22
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s3
	v_exp_f32_e32 v25, v25
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_add_f32 v21, 1.0, v21
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v24, v24
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v26, null, v11, v11, v1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s4
	v_ldexp_f32 v20, v20, v29
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s5
	v_ldexp_f32 v23, v23, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v49, v26
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v22, v22, v31
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v28, null, v12, v12, v2
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v25, v25, v32
	v_ldexp_f32 v24, v24, v33
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v23, 1.0, v23 :: v_dual_add_f32 v22, 1.0, v22
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v30, null, v21, v21, v4
	v_div_scale_f32 v32, null, v20, v20, v3
	v_rcp_f32_e32 v50, v28
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v35, null, v23, v23, v6
	v_fma_f32 v58, -v26, v49, 1.0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v44, null, v22, v22, v5
	v_rcp_f32_e32 v51, v30
	v_rcp_f32_e32 v52, v32
	v_div_scale_f32 v46, null, v25, v25, v8
	v_rcp_f32_e32 v53, v35
	v_fmac_f32_e32 v49, v58, v49
	v_div_scale_f32 v48, null, v24, v24, v7
	s_waitcnt lgkmcnt(6)
	v_rcp_f32_e32 v54, v44
	v_fma_f32 v59, -v28, v50, 1.0
	s_waitcnt lgkmcnt(5)
	v_rcp_f32_e32 v55, v46
	s_waitcnt lgkmcnt(4)
	v_rcp_f32_e32 v56, v48
	v_div_scale_f32 v27, vcc_lo, v1, v11, v1
	v_fma_f32 v60, -v30, v51, 1.0
	s_waitcnt lgkmcnt(3)
	v_fma_f32 v61, -v32, v52, 1.0
	v_div_scale_f32 v29, s0, v2, v12, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v50, v59, v50 :: v_dual_fmac_f32 v51, v60, v51
	s_waitcnt lgkmcnt(2)
	v_fma_f32 v62, -v35, v53, 1.0
	v_div_scale_f32 v31, s1, v4, v21, v4
	v_div_scale_f32 v33, s2, v3, v20, v3
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v63, -v44, v54, 1.0
	v_dual_fmac_f32 v52, v61, v52 :: v_dual_fmac_f32 v53, v62, v53
	v_dual_mul_f32 v58, v27, v49 :: v_dual_mul_f32 v59, v29, v50
	v_div_scale_f32 v43, s3, v6, v23, v6
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v64, -v46, v55, 1.0
	v_fma_f32 v65, -v48, v56, 1.0
	v_div_scale_f32 v45, s4, v5, v22, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v54, v63, v54 :: v_dual_fmac_f32 v55, v64, v55
	v_dual_mul_f32 v60, v31, v51 :: v_dual_mul_f32 v61, v33, v52
	v_fma_f32 v66, -v26, v58, v27
	v_fma_f32 v67, -v28, v59, v29
	v_div_scale_f32 v47, s5, v8, v25, v8
	v_div_scale_f32 v57, s6, v7, v24, v7
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v56, v65, v56 :: v_dual_fmac_f32 v59, v67, v50
	v_dual_mul_f32 v62, v43, v53 :: v_dual_mul_f32 v63, v45, v54
	v_fma_f32 v68, -v30, v60, v31
	v_fma_f32 v69, -v32, v61, v33
	v_fmac_f32_e32 v58, v66, v49
	v_dual_mul_f32 v64, v47, v55 :: v_dual_mul_f32 v65, v57, v56
	v_fma_f32 v70, -v35, v62, v43
	v_fma_f32 v71, -v44, v63, v45
	v_dual_fmac_f32 v60, v68, v51 :: v_dual_fmac_f32 v61, v69, v52
	v_fma_f32 v26, -v26, v58, v27
	v_fma_f32 v27, -v28, v59, v29
	v_fma_f32 v73, -v48, v65, v57
	v_dual_fmac_f32 v62, v70, v53 :: v_dual_fmac_f32 v63, v71, v54
	v_fma_f32 v28, -v30, v60, v31
	v_div_fmas_f32 v26, v26, v49, v58
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v29, -v32, v61, v33
	v_div_fmas_f32 v27, v27, v50, v59
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v72, -v46, v64, v47
	v_fmac_f32_e32 v65, v73, v56
	v_fma_f32 v30, -v35, v62, v43
	v_div_fixup_f32 v1, v26, v11, v1
	v_div_fmas_f32 v11, v28, v51, v60
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v31, -v44, v63, v45
	v_div_fmas_f32 v26, v29, v52, v61
	s_mov_b32 vcc_lo, s3
	v_dual_fmac_f32 v64, v72, v55 :: v_dual_mul_f32 v1, v19, v1
	v_div_fixup_f32 v2, v27, v12, v2
	v_div_fmas_f32 v12, v30, v53, v62
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v4, v11, v21, v4
	v_div_fmas_f32 v11, v31, v54, v63
	v_fma_f32 v32, -v46, v64, v47
	v_fma_f32 v33, -v48, v65, v57
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v3, v26, v20, v3
	v_div_fixup_f32 v5, v11, v22, v5
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v2, v10, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v10, v32, v55, v64
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v6, v12, v23, v6
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v4, v17, v4 :: v_dual_mul_f32 v5, v15, v5
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v12, v33, v56, v65
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v36.l, v1.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v3, v16, v3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v39.l, v2.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v8, v10, v25, v8
	v_div_fixup_f32 v7, v12, v24, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v41.l, v5.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v6, v18, v6 :: v_dual_and_b32 v11, 1, v39
	v_dual_mul_f32 v7, v13, v7 :: v_dual_and_b32 v10, 1, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v8, v14, v8 :: v_dual_and_b32 v13, 1, v41
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v1, v1
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_mov_b16_e32 v36.l, v4.h
	v_add3_u32 v1, v1, v10, 0x7fff
	v_cmp_o_f32_e64 s4, v5, v5
	v_add3_u32 v2, v2, v11, 0x7fff
	v_add3_u32 v5, v5, v13, 0x7fff
	v_mov_b16_e32 v40.l, v3.h
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s0
	v_cmp_o_f32_e64 s3, v6, v6
	v_cndmask_b16 v1.h, 0x7fff, v2.h, vcc_lo
	v_cndmask_b16 v2.l, 0x7fff, v5.h, s4
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v10, 1, v36
	v_mov_b16_e32 v36.l, v6.h
	v_cmp_o_f32_e64 s2, v3, v3
	v_cmp_o_f32_e64 s1, v4, v4
	v_cmp_o_f32_e64 s5, v8, v8
	v_mov_b16_e32 v42.l, v7.h
	v_and_b32_e32 v11, 1, v36
	v_mov_b16_e32 v36.l, v8.h
	v_cmp_o_f32_e64 s0, v7, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v6, v6, v11, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v6.h, s3
	v_and_b32_e32 v12, 1, v40
	v_cndmask_b32_e32 v6, 0x1054, v37, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v5, v2, v1, vcc_lo
	v_cndmask_b32_e32 v1, v1, v2, vcc_lo
	v_add3_u32 v0, v3, v12, 0x7fff
	v_and_b32_e32 v3, 1, v36
	v_add3_u32 v4, v4, v10, 0x7fff
	v_cndmask_b32_e32 v10, 0x3276, v38, vcc_lo
	v_lshl_or_b32 v6, v6, 8, v6
	v_cndmask_b16 v4.l, 0x7fff, v0.h, s2
	v_add3_u32 v3, v8, v3, 0x7fff
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s1
	v_lshl_or_b32 v8, v10, 8, v10
	v_permlanex16_b32 v1, v1, s7, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s5
	v_and_b32_e32 v11, 1, v42
	v_add3_u32 v7, v7, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v0.l, 0x7fff, v7.h, s0
	v_and_b32_e32 v3, 0x540054, v6
	v_and_b32_e32 v6, 0x760076, v8
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v7, v9, s11
	v_and_or_b32 v8, 0x78, v34, s20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s11, s15
	v_lshl_or_b32 v2, v3, 4, v3
	v_lshl_or_b32 v3, v6, 4, v6
	v_cndmask_b32_e32 v6, v4, v0, vcc_lo
	v_cndmask_b32_e32 v4, v0, v4, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v2, 0x5040504, v2
	v_and_b32_e32 v3, 0x7060706, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v6, v6, s7, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v5, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v1, v1, v5, v3
	v_perm_b32 v2, v6, v4, v2
	v_perm_b32 v3, v6, v4, v3
	v_add_lshl_u32 v4, v8, v7, 1
	buffer_store_b128 v[0:3], v4, s[8:11], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 81
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
		.amdhsa_inst_pref_size 60
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.num_vgpr, 81
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7632
; TotalNumSgprs: 33
; NumVgprs: 81
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 10
; NumSGPRsForWavesPerEU: 33
; NumVGPRsForWavesPerEU: 81
; Occupancy: 16
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     81
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
