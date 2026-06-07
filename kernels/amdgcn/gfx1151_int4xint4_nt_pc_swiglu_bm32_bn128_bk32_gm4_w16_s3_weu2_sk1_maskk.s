	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
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
	v_and_b32_e32 v26, 15, v0
	v_lshrrev_b32_e32 v39, 4, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v2, 2, v0
	v_and_b32_e32 v40, 0xe0, v0
	v_and_b32_e32 v22, 8, v0
	s_load_b32 s26, s[0:1], 0x38
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
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 25
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
	s_ashr_i32 s4, s4, 7
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
	s_sub_i32 s12, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s12, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_load_b128 s[12:15], s[0:1], 0x0
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
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s4, s2, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s7, s7, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s5, s4
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[14:15]
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s19, s15
	s_mov_b32 s18, s14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s2, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_mul_hi_u32 s2, s5, s9
	s_xor_b32 s9, s4, s7
	s_mul_i32 s10, s2, s8
	s_ashr_i32 s23, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s2, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s9, s2
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s5, s26, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s27, s2, s23
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s24, s3, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s3, s27, s23
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s2, s26, s5
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s5, s3, s7
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v8, s24, v26
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s25, s2, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s4, s4, s5
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mad_u64_u32 v[3:4], null, s25, v39, v[26:27]
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s10, s3, 7
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s4, s4, s6
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s25, v8
	.loc	1 122 25                        ; generate_amdgcn.py:122:25
	s_add_i32 s3, s10, s11
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s20, s4, 5
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s26, 1
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s4, s20, s25
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s22, -1, 0
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v3, s24, s4, v3
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s22, vcc_lo
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_lshlrev_b32_e32 v6, 2, v0
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	s_mul_i32 s5, s10, s25
	.loc	1 122 25                        ; generate_amdgcn.py:122:25
	s_mul_i32 s6, s3, s25
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v11, 0x80000000, v3, vcc_lo
	s_and_b32 s13, s13, 0xffff
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_and_b32_e32 v1, 12, v6
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v3, 16, v3
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_and_b32_e32 v6, 0x77c, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v7, s24, v1
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_mad_u64_u32 v[4:5], null, s25, v2, v[1:2]
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e64 s2, s25, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add3_u32 v5, s24, s5, v4
	.loc	1 122 25                        ; generate_amdgcn.py:122:25
	v_add3_u32 v4, s24, s6, v4
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 s2, s22, s2
	s_cmp_gt_i32 s26, 33
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e64 v7, 0x80000000, v5, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_cndmask_b32_e64 v8, 0x80000000, v4, s2
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s21, -1, 0
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	s_add_i32 s2, s24, 16
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add_nc_u32_e32 v5, 16, v5
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v9, s2, v26
	v_or_b32_e32 v10, s2, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s25, v9
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e64 s2, s25, v10
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b32 v7, v7, s[16:19], 0 offen
	buffer_load_b32 v8, v8, s[16:19], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v9, v11, s[12:15], 0 offen
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s21, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s21, s2
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_add_nc_u32 v4, 16, v4
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmpk_gt_i32 s26, 0x41
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v10, v3, s[12:15], 0 offen
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b32 v11, v5, s[16:19], 0 offen
	buffer_load_b32 v12, v4, s[16:19], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_bfe_i32 v3, v0, 7, 1
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_bfe_i32 v4, v0, 5, 1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v5, 0x17f, v0
	s_mov_b32 s18, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v3, 0x88, v3
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_and_b32_e32 v4, 0x88, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xor_b32_e32 v23, v3, v5
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_xor_b32_e32 v24, v4, v6
	v_and_b32_e32 v5, 0x108, v0
	v_lshlrev_b32_e32 v3, 4, v0
	v_lshlrev_b32_e32 v4, 3, v40
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v6, 0, v23
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v13, 0, v24
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(3)
	ds_store_b8 v6, v9 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_store_2addr_stride64_b32 v13, v7, v8 offset1:16
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b8 v6, v10 offset:8704
	.loc	1 0 0                           ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v13, v11, v12 offset0:8 offset1:24
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_lshl_or_b32 v31, v26, 4, v5
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_and_b32_e32 v18, 8, v0
	v_and_or_b32 v21, 0x70, v3, v4
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xor_b32_e32 v32, 8, v31
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s2, -1
                                        ; implicit-def: $vgpr31
                                        ; implicit-def: $vgpr32
                                        ; implicit-def: $vgpr18
                                        ; implicit-def: $vgpr21
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[8:9], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s26, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
.Ltmp12:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s0, s25, 15
	v_and_or_b32 v21, 0x70, v3, v4
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s0, s0, 4
.Ltmp13:
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_lshl_b32 s2, s23, 7
	v_sub_nc_u32_e64 v3, s0, 3 clamp
	s_lshl_b32 s0, s27, 7
	v_lshl_or_b32 v31, v26, 4, v5
	v_add3_u32 v4, s11, s0, v2
	v_or_b32_e32 v2, s0, v2
	v_readfirstlane_b32 s1, v3
	v_bfe_i32 v5, v0, 3, 1
	v_sub_nc_u32_e32 v27, s25, v1
	v_subrev_nc_u32_e32 v3, s2, v4
	v_subrev_nc_u32_e32 v2, s2, v2
	v_sub_nc_u32_e32 v25, s25, v26
	v_and_or_b32 v28, 0x88, v5, v21
	v_xor_b32_e32 v32, 8, v31
	s_mov_b32 s28, 1
	v_mad_u64_u32 v[9:10], null, s25, v3, v[1:2]
	v_mad_u64_u32 v[18:19], null, s25, v2, v[1:2]
	v_mov_b32_e32 v1, 0
	v_add_nc_u32_e32 v3, s20, v39
	v_xor_b32_e32 v29, 8, v28
	s_add_i32 s27, s1, 1
	s_add_i32 s29, s24, 32
	v_mov_b32_e32 v2, v1
	v_mad_u64_u32 v[19:20], null, s25, v3, v[26:27]
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	s_add_i32 s25, 0, 0x2000
	s_add_i32 s23, 0, 0x2200
	s_add_i32 s2, 0, 0x800
	s_add_i32 s24, 0, 0x1000
	s_add_i32 s1, 0, 0x1800
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v20, s29, v19
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v30, s29, v18
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s29, v27
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e64 s0, s29, v25
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v33, s29, v9
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v35, s26, v28
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v37, s24, v28
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v20, 0x80000000, v20, s0
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v41, s25, v32
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v43, s26, v29
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v45, s24, v29
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v20, v20, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b32 v30, v30, s[16:19], 0 offen
	buffer_load_b32 v47, v33, s[16:19], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v33, s25, v31
	ds_load_b64 v[33:34], v33
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_b64 v[35:36], v35
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	ds_load_b64 v[37:38], v37
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[41:42], v41
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_b64 v[43:44], v43
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	ds_load_b64 v[45:46], v45
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s0, s28, 1
	s_mov_b32 s24, s1
	s_cmp_lt_i32 s0, 2
	s_mov_b32 s26, s2
	s_cselect_b32 s28, s0, 0
	s_add_i32 s27, s27, -1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_lshl_b32 s0, s28, 9
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_lshl_b32 s1, s28, 11
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_add_i32 s0, s0, 0
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_add_i32 s2, s1, 0
	s_mov_b32 s25, s23
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s29, s29, 16
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_add_i32 s23, s0, 0x2000
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	s_add_i32 s1, s2, 0x1000
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s27, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[10:17], v[35:36], v[33:34], v[10:17] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[1:8], v[37:38], v[33:34], v[1:8] neg_lo:[1,1,0]
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v33, s0, v23
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v34, s2, v24
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(2)
	ds_store_b8 v33, v20 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v34, v30, v47 offset1:16
	.loc	1 118 23 is_stmt 1              ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[10:17], v[43:44], v[41:42], v[10:17] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[1:8], v[45:46], v[41:42], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v18, v22
	s_mov_b32 s18, s26
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v8, 0
	s_add_i32 s25, 0, 0x2000
	s_add_i32 s23, 0, 0x2200
	s_add_i32 s2, 0, 0x800
	s_add_i32 s24, 0, 0x1000
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
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v9, s25, v31
	v_add_nc_u32_e32 v19, s25, v32
	v_mov_b32_e32 v25, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v18
	v_mov_b32_e32 v24, v16
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[29:30], v9
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_b64 v[27:28], v19
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cndmask_b32_e64 v18, 0, 1, s22
	v_mov_b32_e32 v23, v15
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e64 v9, 0x88, 0, vcc_lo
	v_mov_b32_e32 v22, v14
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s22
	v_cmp_ne_u32_e64 s0, 1, v18
	v_mov_b32_e32 v19, v11
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_or_b32_e32 v9, v21, v9
	v_dual_mov_b32 v21, v13 :: v_dual_mov_b32 v18, v10
	v_mov_b32_e32 v20, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v41, 8, v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v18, s18, v9
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v19, s18, v41
	ds_load_b64 v[33:34], v18
	ds_load_b64 v[35:36], v19
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_dual_mov_b32 v25, v17 :: v_dual_mov_b32 v22, v14
	v_dual_mov_b32 v24, v16 :: v_dual_mov_b32 v23, v15
	v_dual_mov_b32 v21, v13 :: v_dual_mov_b32 v20, v12
	v_dual_mov_b32 v19, v11 :: v_dual_mov_b32 v18, v10
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[18:25], v[33:34], v[29:30], v[18:25] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[18:25], v[35:36], v[27:28], v[18:25] neg_lo:[1,1,0]
.LBB0_10:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v10, s24, v9
	v_add_nc_u32_e32 v12, s24, v41
	v_dual_mov_b32 v16, v24 :: v_dual_mov_b32 v17, v25
	v_mov_b32_e32 v14, v22
	ds_load_b64 v[10:11], v10
	ds_load_b64 v[33:34], v12
	v_dual_mov_b32 v12, v20 :: v_dual_mov_b32 v13, v21
	v_mov_b32_e32 v15, v23
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[10:11], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v10, v18 :: v_dual_mov_b32 v11, v19
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[33:34], v[27:28], v[1:8] neg_lo:[1,1,0]
.LBB0_12:                               ; %._crit_edge55
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v30, v13 :: v_dual_add_nc_u32 v27, s23, v31
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v28, s23, v32
	v_dual_mov_b32 v32, v15 :: v_dual_mov_b32 v31, v14
	ds_load_b64 v[37:38], v27
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_b64 v[35:36], v28
	v_cndmask_b32_e64 v27, 0, 1, s21
	v_dual_mov_b32 v34, v11 :: v_dual_mov_b32 v33, v10
	v_mov_b32_e32 v29, v12
	s_and_not1_b32 vcc_lo, exec_lo, s21
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v27
	v_dual_mov_b32 v28, v17 :: v_dual_mov_b32 v27, v16
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v27, s2, v9
	v_add_nc_u32_e32 v29, s2, v41
	ds_load_b64 v[27:28], v27
	ds_load_b64 v[29:30], v29
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[18:25], v[27:28], v[37:38], v[18:25] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[18:25], v[29:30], v[35:36], v[18:25] neg_lo:[1,1,0]
	v_mov_b32_e32 v28, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v30, v21 :: v_dual_mov_b32 v27, v24
	v_dual_mov_b32 v32, v23 :: v_dual_mov_b32 v29, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v34, v19 :: v_dual_mov_b32 v31, v22
	v_mov_b32_e32 v33, v18
.LBB0_14:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v9, s1, v9
	v_add_nc_u32_e32 v11, s1, v41
	ds_load_b64 v[9:10], v9
	ds_load_b64 v[11:12], v11
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[37:38], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[35:36], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_17
.LBB0_16:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v28, v17 :: v_dual_mov_b32 v27, v16
	v_dual_mov_b32 v30, v13 :: v_dual_mov_b32 v29, v12
	v_dual_mov_b32 v32, v15 :: v_dual_mov_b32 v31, v14
	v_dual_mov_b32 v34, v11 :: v_dual_mov_b32 v33, v10
.LBB0_17:
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v9, 1, v40
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v37, 0x5410 :: v_dual_and_b32 v10, 16, v39
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_and_b32 s13, s5, 0xffff
	s_mov_b32 s15, 0x31027000
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_or_b32 v11, v39, 1, v9
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or3_b32 v9, v10, v26, s20
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 128 14 is_stmt 0              ; generate_amdgcn.py:128:14
	s_mov_b32 s12, s4
	.loc	1 132 24 is_stmt 1              ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v16, 2, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_dual_mov_b32 v38, 0x7632 :: v_dual_lshlrev_b32 v17, 1, v9
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v15, 4, v11
	v_or_b32_e32 v18, 6, v11
	v_or_b32_e32 v12, 12, v11
	v_or_b32_e32 v13, 10, v11
	v_or_b32_e32 v14, 8, v11
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	buffer_load_u16 v17, v17, s[12:15], 0 offen
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v10, 14, v11
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v19, s10, v11
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v11, s3, v11, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v20, s10, v16
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v16, s3, v16, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v21, s10, v15
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v15, s3, v15, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v22, s10, v18
	.loc	1 129 14 is_stmt 0              ; generate_amdgcn.py:129:14
	s_and_b32 s13, s7, 0xffff
	s_mov_b32 s12, s6
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v18, s3, v18, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v23, s10, v14
	v_or_b32_e32 v24, s10, v13
	v_or_b32_e32 v25, s10, v12
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v14, s3, v14, 1
	v_add_lshl_u32 v13, s3, v13, 1
	v_add_lshl_u32 v12, s3, v12, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v26, s10, v10
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v10, s3, v10, 1
	s_clause 0x6
	buffer_load_u16 v11, v11, s[12:15], 0 offen
	buffer_load_u16 v16, v16, s[12:15], 0 offen
	buffer_load_u16 v15, v15, s[12:15], 0 offen
	buffer_load_u16 v18, v18, s[12:15], 0 offen
	buffer_load_u16 v14, v14, s[12:15], 0 offen
	buffer_load_u16 v13, v13, s[12:15], 0 offen
	buffer_load_u16 v12, v12, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_load_u16 v35, v10, s[12:15], 0 offen
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v36.h, 0
	s_mov_b32 s7, 0x76543210
	s_and_b32 s9, s9, 0xffff
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v39.h, v36.h
	v_mov_b16_e32 v41.h, v36.h
	v_mov_b16_e32 v40.h, v36.h
	v_mov_b16_e32 v42.h, v36.h
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v11, 16, v11
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v16, v17, v16 :: v_dual_lshlrev_b32 v19, 1, v19
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v2, v16, v2
	.loc	1 134 25 is_stmt 0              ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v11, v17, v11 :: v_dual_lshlrev_b32 v20, 1, v20
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	buffer_load_u16 v20, v20, s[12:15], 0 offen
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v1, v11, v1
	.loc	1 134 25 is_stmt 0              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v13, v17, v13
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v6, v13, v6 :: v_dual_lshlrev_b32 v35, 16, v35
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v35, v17, v35
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v8, v35, v8 :: v_dual_lshlrev_b32 v19, 16, v19
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v10, 1, v22
	v_lshlrev_b32_e32 v22, 1, v23
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v19, v17, v19 :: v_dual_lshlrev_b32 v14, 16, v14
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v19, v19, v33 :: v_dual_lshlrev_b32 v20, 16, v20
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v14, v17, v14 :: v_dual_lshlrev_b32 v23, 1, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v11, v17, v20
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v18, v17, v18 :: v_dual_lshlrev_b32 v21, 1, v21
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_clause 0x1
	buffer_load_u16 v24, v10, s[12:15], 0 offen
	buffer_load_u16 v21, v21, s[12:15], 0 offen
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v5, v14, v5
	v_mul_f32_e32 v4, v18, v4
	.loc	1 134 25 is_stmt 0              ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v15, v17, v15 :: v_dual_lshlrev_b32 v10, 1, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v3, v15, v3 :: v_dual_lshlrev_b32 v12, 16, v12
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v12, v17, v12 :: v_dual_lshlrev_b32 v25, 1, v26
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	s_clause 0x3
	buffer_load_u16 v23, v23, s[12:15], 0 offen
	buffer_load_u16 v22, v22, s[12:15], 0 offen
	buffer_load_u16 v25, v25, s[12:15], 0 offen
	buffer_load_u16 v26, v10, s[12:15], 0 offen
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v10, 1, v0
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v7, v12, v7 :: v_dual_and_b32 v0, 16, v0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v12, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v20, v17, v24 :: v_dual_lshlrev_b32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v16, v17, v21 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v3
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v6
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v11, v11, v34
	v_mul_f32_e32 v20, v20, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v16, v16, v29
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v22, 16, v22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v25, 16, v25
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v21
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v15, v17, v22
	v_mul_f32_e32 v14, v17, v25
	v_mul_f32_e32 v13, v17, v26
	v_dual_mul_f32 v18, v17, v23 :: v_dual_mul_f32 v17, 0xbfb8aa3b, v2
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v22, 0xbfb8aa3b, v4 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v5
	v_cndmask_b32_e64 v21, 0, 0x42800000, s2
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v17
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v22
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v23
	v_dual_mul_f32 v25, 0xbfb8aa3b, v7 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v17, 0, 0x42800000, s0
	v_cndmask_b32_e64 v22, 0, 0x42800000, s1
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v1
	v_cndmask_b32_e64 v24, 0, 0x42800000, s3
	v_cndmask_b32_e64 v23, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v17, 0xbfb8aa3b, v2 :: v_dual_fmac_f32 v22, 0xbfb8aa3b, v4
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v3
	v_exp_f32_e32 v12, v12
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v26
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v25
	v_exp_f32_e32 v17, v17
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v14, v14, v28 :: v_dual_mul_f32 v13, v13, v27
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_dual_fmac_f32 v24, 0xbfb8aa3b, v6 :: v_dual_fmac_f32 v23, 0xbfb8aa3b, v5
	v_exp_f32_e32 v22, v22
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v26, 0, 0x42800000, s5
	v_cndmask_b32_e64 v25, 0, 0x42800000, s6
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s2
	v_exp_f32_e32 v24, v24
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v12, v12, v27
	v_dual_fmac_f32 v26, 0xbfb8aa3b, v8 :: v_dual_fmac_f32 v25, 0xbfb8aa3b, v7
	v_ldexp_f32 v17, v17, v28
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v18, v18, v32 :: v_dual_mul_f32 v15, v15, v31
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s4
	v_ldexp_f32 v22, v22, v29
	v_ldexp_f32 v21, v21, v30
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_add_f32 v17, 1.0, v17
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v26, v26
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v24, v24, v31
	v_ldexp_f32 v23, v23, v32
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v21, 1.0, v21 :: v_dual_add_f32 v22, 1.0, v22
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v27, null, v12, v12, v1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s6
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v29, null, v17, v17, v2
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v23, 1.0, v23 :: v_dual_add_f32 v24, 1.0, v24
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v31, null, v22, v22, v4
	v_rcp_f32_e32 v49, v27
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v26, v26, v33
	v_ldexp_f32 v25, v25, v34
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v33, null, v21, v21, v3
	v_rcp_f32_e32 v50, v29
	v_div_scale_f32 v35, null, v24, v24, v6
	v_rcp_f32_e32 v51, v31
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v25, 1.0, v25 :: v_dual_add_f32 v26, 1.0, v26
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v44, null, v23, v23, v5
	v_rcp_f32_e32 v52, v33
	v_rcp_f32_e32 v53, v35
	v_fma_f32 v58, -v27, v49, 1.0
	v_div_scale_f32 v46, null, v26, v26, v8
	v_rcp_f32_e32 v54, v44
	v_fma_f32 v59, -v29, v50, 1.0
	v_div_scale_f32 v28, vcc_lo, v1, v12, v1
	v_fma_f32 v60, -v31, v51, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v49, v58, v49 :: v_dual_fmac_f32 v50, v59, v50
	v_div_scale_f32 v30, s0, v2, v17, v2
	v_div_scale_f32 v48, null, v25, v25, v7
	v_rcp_f32_e32 v55, v46
	v_fma_f32 v61, -v33, v52, 1.0
	v_div_scale_f32 v32, s1, v4, v22, v4
	v_fma_f32 v62, -v35, v53, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v51, v60, v51 :: v_dual_fmac_f32 v52, v61, v52
	v_dual_mul_f32 v58, v28, v49 :: v_dual_mul_f32 v59, v30, v50
	v_div_scale_f32 v34, s2, v3, v21, v3
	v_rcp_f32_e32 v56, v48
	v_fma_f32 v63, -v44, v54, 1.0
	v_div_scale_f32 v43, s3, v6, v24, v6
	v_dual_fmac_f32 v53, v62, v53 :: v_dual_mul_f32 v60, v32, v51
	v_mul_f32_e32 v61, v34, v52
	v_fma_f32 v66, -v27, v58, v28
	v_div_scale_f32 v45, s4, v5, v23, v5
	v_fma_f32 v64, -v46, v55, 1.0
	v_fmac_f32_e32 v54, v63, v54
	v_fma_f32 v67, -v29, v59, v30
	v_mul_f32_e32 v62, v43, v53
	v_fma_f32 v68, -v31, v60, v32
	v_fmac_f32_e32 v58, v66, v49
	v_div_scale_f32 v47, s5, v8, v26, v8
	v_fma_f32 v65, -v48, v56, 1.0
	v_fmac_f32_e32 v55, v64, v55
	v_mul_f32_e32 v63, v45, v54
	v_fma_f32 v69, -v33, v61, v34
	v_fmac_f32_e32 v59, v67, v50
	v_fma_f32 v70, -v35, v62, v43
	v_fmac_f32_e32 v60, v68, v51
	v_fma_f32 v27, -v27, v58, v28
	v_div_scale_f32 v57, s6, v7, v25, v7
	v_fmac_f32_e32 v56, v65, v56
	v_mul_f32_e32 v64, v47, v55
	v_fma_f32 v71, -v44, v63, v45
	v_fmac_f32_e32 v61, v69, v52
	v_fma_f32 v28, -v29, v59, v30
	v_fmac_f32_e32 v62, v70, v53
	v_fma_f32 v29, -v31, v60, v32
	v_div_fmas_f32 v27, v27, v49, v58
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v65, v57, v56
	v_fma_f32 v72, -v46, v64, v47
	v_fmac_f32_e32 v63, v71, v54
	v_fma_f32 v30, -v33, v61, v34
	v_div_fmas_f32 v28, v28, v50, v59
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v31, -v35, v62, v43
	v_div_fixup_f32 v1, v27, v12, v1
	v_div_fmas_f32 v12, v29, v51, v60
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v73, -v48, v65, v57
	v_fmac_f32_e32 v64, v72, v55
	v_fma_f32 v32, -v44, v63, v45
	v_div_fmas_f32 v27, v30, v52, v61
	v_div_fixup_f32 v2, v28, v17, v2
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v65, v73, v56
	v_div_fmas_f32 v17, v31, v53, v62
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v33, -v46, v64, v47
	v_div_fixup_f32 v4, v12, v22, v4
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v1, v19, v1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v12, v32, v54, v63
	v_div_fixup_f32 v3, v27, v21, v3
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v2, v11, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v17, v24, v6
	v_div_fmas_f32 v11, v33, v55, v64
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v4, v20, v4
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v36.l, v1.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v5, v12, v23, v5
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v3, v16, v3
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v39.l, v2.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v34, -v48, v65, v57
	v_div_fixup_f32 v8, v11, v26, v8
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v6, v18, v6 :: v_dual_and_b32 v11, 1, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v5, v15, v5 :: v_dual_and_b32 v12, 1, v39
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s6
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v17, v34, v56, v65
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_add3_u32 v1, v1, v11, 0x7fff
	v_mov_b16_e32 v41.l, v5.h
	v_add3_u32 v2, v2, v12, 0x7fff
	v_mov_b16_e32 v36.l, v4.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v7, v17, v25, v7
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v8, v14, v8
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s0
	v_cndmask_b16 v1.h, 0x7fff, v2.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v14, 1, v41
	v_and_b32_e32 v11, 1, v36
	v_mov_b16_e32 v36.l, v6.h
	v_cmp_o_f32_e64 s4, v5, v5
	v_mov_b16_e32 v40.l, v3.h
	v_add3_u32 v5, v5, v14, 0x7fff
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v7, v13, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v6, v6
	v_cmp_o_f32_e64 s1, v4, v4
	v_and_b32_e32 v13, 1, v40
	v_cndmask_b16 v2.l, 0x7fff, v5.h, s4
	v_and_b32_e32 v12, 1, v36
	v_mov_b16_e32 v36.l, v8.h
	v_mov_b16_e32 v42.l, v7.h
	v_cmp_o_f32_e64 s2, v3, v3
	v_add3_u32 v0, v3, v13, 0x7fff
	v_add3_u32 v6, v6, v12, 0x7fff
	v_and_b32_e32 v3, 1, v36
	v_and_b32_e32 v12, 1, v42
	v_cmp_o_f32_e64 s5, v8, v8
	v_cmp_o_f32_e64 s0, v7, v7
	v_cndmask_b16 v2.h, 0x7fff, v6.h, s3
	v_cndmask_b32_e32 v6, 0x1054, v37, vcc_lo
	v_add3_u32 v4, v4, v11, 0x7fff
	v_cndmask_b32_e32 v11, 0x3276, v38, vcc_lo
	v_add3_u32 v3, v8, v3, 0x7fff
	v_add3_u32 v7, v7, v12, 0x7fff
	v_lshl_or_b32 v6, v6, 8, v6
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s1
	v_lshl_or_b32 v8, v11, 8, v11
	v_cndmask_b16 v4.l, 0x7fff, v0.h, s2
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s5
	v_cndmask_b16 v0.l, 0x7fff, v7.h, s0
	v_and_b32_e32 v3, 0x540054, v6
	v_dual_cndmask_b32 v5, v2, v1 :: v_dual_and_b32 v6, 0x760076, v8
	v_cndmask_b32_e32 v1, v1, v2, vcc_lo
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v7, v9, s11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_lshl_or_b32 v2, v3, 4, v3
	v_lshl_or_b32 v3, v6, 4, v6
	v_cndmask_b32_e32 v6, v4, v0, vcc_lo
	v_cndmask_b32_e32 v4, v0, v4, vcc_lo
	v_permlanex16_b32 v1, v1, s7, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v2, 0x5040504, v2
	v_and_b32_e32 v3, 0x7060706, v3
	v_permlanex16_b32 v6, v6, s7, 0xfedcba98 op_sel:[1,0]
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_and_or_b32 v8, 0x78, v10, s10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s10, s14
	v_perm_b32 v0, v1, v5, v2
	v_perm_b32 v1, v1, v5, v3
	v_perm_b32 v2, v6, v4, v2
	v_perm_b32 v3, v6, v4, v3
	v_add_lshl_u32 v4, v8, v7, 1
	s_mov_b32 s11, s15
	buffer_store_b128 v[0:3], v4, s[8:11], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp14:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 74
		.amdhsa_next_free_sgpr 30
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
		.amdhsa_inst_pref_size 37
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.num_vgpr, 74
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.numbered_sgpr, 30
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4724
; TotalNumSgprs: 32
; NumVgprs: 74
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 9
; NumSGPRsForWavesPerEU: 32
; NumVGPRsForWavesPerEU: 74
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
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	1                               ; Abbrev [1] 0xb:0x64 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x3e DW_TAG_subprogram
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
	.byte	5                               ; Abbrev [5] 0x59:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp12                         ; DW_AT_low_pc
	.long	.Ltmp13-.Ltmp12                 ; DW_AT_high_pc
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     74
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
