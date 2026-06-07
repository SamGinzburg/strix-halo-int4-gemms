	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
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
	v_lshlrev_b32_e32 v12, 3, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v2, 4, v0
	v_and_b32_e32 v58, 15, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v3, 1, v0
	v_bfe_i32 v16, v0, 4, 1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v17, 0x17f, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v75, 0x1e0, v0
	v_and_b32_e32 v76, 16, v0
	s_load_b32 s27, s[0:1], 0x38
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_and_b32_e32 v16, 0x88, v16
	v_and_b32_e32 v39, 8, v0
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
	v_rcp_iflag_f32_e32 v1, s13
	v_readfirstlane_b32 s13, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[10:11]
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_and_b32_e32 v1, 8, v12
	s_mov_b32 s11, 0x31027000
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s13, s13, 0x4f7ffffe
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s19, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s10, s13
	s_sub_i32 s13, 0, s12
	s_mul_i32 s13, s13, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s10, s13
	s_xor_b32 s13, s4, s7
	s_add_i32 s2, s10, s2
	s_ashr_i32 s23, s13, 31
	s_mul_hi_u32 s2, s5, s2
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s14, s2, s12
	s_add_i32 s13, s2, 1
	s_sub_i32 s5, s5, s14
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s18, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s14, s5, s12
	s_cmp_ge_u32 s5, s12
	s_cselect_b32 s2, s13, s2
	s_cselect_b32 s5, s14, s5
	s_add_i32 s13, s2, 1
	s_cmp_ge_u32 s5, s12
	s_cselect_b32 s2, s13, s2
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s5, s27, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s26, s2, s23
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s2, s27, s5
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s24, s3, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s3, s26, s23
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s25, s2, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s5, s3, s7
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v6, s24, v1
	v_or_b32_e32 v7, s24, v58
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_mad_u64_u32 v[4:5], null, s25, v3, v[1:2]
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s4, s4, s5
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s14, s3, 8
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mul_lo_u32 v8, s25, v2
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s4, s4, s6
	.loc	1 122 25                        ; generate_amdgcn.py:122:25
	s_add_i32 s3, s14, s15
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s25, v7
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e64 s2, s25, v6
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s20, s4, 5
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	s_mul_i32 s5, s14, s25
	.loc	1 122 25                        ; generate_amdgcn.py:122:25
	s_mul_i32 s6, s3, s25
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s27, 1
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s4, s20, s25
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add3_u32 v5, s24, s5, v4
	.loc	1 122 25                        ; generate_amdgcn.py:122:25
	v_add3_u32 v4, s24, s6, v4
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s22, -1, 0
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v6, v8, v58, s4
	.loc	1 113 22 is_stmt 0              ; generate_amdgcn.py:113:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 115 22 is_stmt 1              ; generate_amdgcn.py:115:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 s2, s22, s2
	s_and_b32 vcc_lo, s22, vcc_lo
	s_cmp_gt_i32 s27, 33
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e64 v7, 0x80000000, v5, s2
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_cndmask_b32_e64 v9, 0x80000000, v4, s2
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s21, -1, 0
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	s_add_i32 s2, s24, 16
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v8, s24, v6
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add_nc_u32_e32 v10, 16, v5
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v5, s2, v58
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v14, s2, v6
	.loc	1 122 25                        ; generate_amdgcn.py:122:25
	v_add_nc_u32_e32 v13, 16, v4
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s25, v5
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b64 v[4:5], v7, s[16:19], 0 offen
	buffer_load_b64 v[6:7], v9, s[16:19], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v15, v8, s[8:11], 0 offen
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s21, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v8, 0x80000000, v14, vcc_lo
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v11, s2, v1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_bfe_i32 v14, v0, 7, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e64 s2, s25, v11
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v14, 0x88, v14
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s21, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xor_b32_e32 v40, v14, v17
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_dual_cndmask_b32 v9, 0x80000000, v10 :: v_dual_cndmask_b32 v10, 0x80000000, v13
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v13, v8, s[8:11], 0 offen
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b64 v[8:9], v9, s[16:19], 0 offen
	buffer_load_b64 v[10:11], v10, s[16:19], 0 offen
	v_and_b32_e32 v12, 0xf78, v12
	s_mov_b32 s18, 0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmpk_gt_i32 s27, 0x41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_xor_b32_e32 v41, v16, v12
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v12, 0, v40
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v14, 0, v41
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(3)
	ds_store_b8 v12, v15 offset:16384
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_store_2addr_stride64_b64 v14, v[4:5], v[6:7] offset1:16
	v_lshlrev_b32_e32 v4, 4, v0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b8 v12, v13 offset:16896
	.loc	1 0 0                           ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v14, v[8:9], v[10:11] offset0:8 offset1:24
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v37, 0x70, v4
	v_and_b32_e32 v34, 8, v0
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_lshl_or_b32 v38, v75, 3, v37
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s2, -1
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr38
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v76
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s27, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v5, v0, 3, 1
	v_and_b32_e32 v37, 0x70, v4
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_lshl_b32 s2, s26, 8
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s1, s25, 15
.Ltmp13:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_sub_nc_u32_e32 v42, s25, v58
	v_and_b32_e32 v4, 0x88, v5
	v_lshl_or_b32 v38, v75, 3, v37
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s1, s1, 4
.Ltmp15:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_sub_nc_u32_e32 v43, s25, v1
	v_sub_nc_u32_e64 v5, s1, 3 clamp
	v_or_b32_e32 v44, v4, v37
	v_or_b32_e32 v45, v38, v4
	v_add3_u32 v4, s15, s2, v3
	s_lshl_b32 s1, s23, 8
	v_or_b32_e32 v3, s2, v3
	v_readfirstlane_b32 s18, v5
	v_xor_b32_e32 v46, 8, v44
	v_subrev_nc_u32_e32 v4, s1, v4
	v_xor_b32_e32 v47, 8, v45
	v_subrev_nc_u32_e32 v3, s1, v3
	s_mov_b32 s30, 1
	s_add_i32 s28, s18, 1
	v_mad_u64_u32 v[9:10], null, s25, v4, v[1:2]
	v_mov_b32_e32 v10, 0
	v_add_nc_u32_e32 v2, s20, v2
	s_add_i32 s29, s24, 32
	s_add_i32 s26, 0, 0x4000
	s_add_i32 s23, 0, 0x4200
	v_mov_b32_e32 v13, v10
	v_mad_u64_u32 v[34:35], null, s25, v3, v[1:2]
	v_mad_u64_u32 v[35:36], null, s25, v2, v[58:59]
	v_mov_b32_e32 v11, v10
	v_mov_b32_e32 v12, v10
	v_mov_b32_e32 v14, v10
	v_mov_b32_e32 v15, v10
	v_mov_b32_e32 v16, v10
	v_mov_b32_e32 v17, v10
	v_mov_b32_e32 v1, v10
	v_mov_b32_e32 v2, v10
	v_mov_b32_e32 v3, v10
	v_mov_b32_e32 v4, v10
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
	s_add_i32 s24, 0, 0x1000
	s_add_i32 s25, 0, 0x2000
	s_add_i32 s2, 0, 0x3000
	s_mov_b32 s18, s10
	s_mov_b32 s19, s11
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v36, s29, v35
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v48, s29, v34
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s29, v43
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e64 s1, s29, v42
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v49, s29, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v36, 0x80000000, v36, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	s_mov_b32 s1, s26
	s_mov_b32 s26, s23
	s_mov_b32 s23, s27
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v36, v36, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b64 v[56:57], v48, s[16:19], 0 offen
	buffer_load_b64 v[59:60], v49, s[16:19], 0 offen
	s_mov_b32 s27, s24
	s_mov_b32 s24, s25
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v48, s1, v44
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v53, s23, v45
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v54, s24, v45
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v52, s1, v46
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v65, s23, v47
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v67, s24, v47
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[48:51], v48 offset1:32
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_b64 v[61:62], v53
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	ds_load_b64 v[63:64], v54
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[52:55], v52 offset1:32
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_b64 v[65:66], v65
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	ds_load_b64 v[67:68], v67
	s_mov_b32 s25, s2
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s2, s30, 1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lt_i32 s2, 2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_barrier
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s30, s2, 0
	s_add_i32 s28, s28, -1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_lshl_b32 s1, s30, 9
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_lshl_b32 s2, s30, 12
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_add_i32 s1, s1, 0
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_add_i32 s24, s2, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v69, s1, v40
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s29, s29, 16
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_add_i32 s23, s1, 0x4000
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	s_add_i32 s2, s24, 0x2000
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[18:25], v[61:62], v[48:49], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[61:62], v[50:51], v[26:33] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[10:17], v[63:64], v[48:49], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[63:64], v[50:51], v[1:8] neg_lo:[1,1,0]
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v48, s24, v41
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[18:25], v[65:66], v[52:53], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[65:66], v[54:55], v[26:33] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[10:17], v[67:68], v[52:53], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[54:55], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s28, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(2)
	ds_store_b8 v69, v36 offset:16384
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v48, v[56:57], v[59:60] offset1:16
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v34, v39
	s_mov_b32 s18, s27
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	s_branch .LBB0_8
.LBB0_7:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_mov_b32_e32 v8, 0
	s_add_i32 s26, 0, 0x4000
	s_add_i32 s23, 0, 0x4200
	s_add_i32 s24, 0, 0x1000
	s_add_i32 s25, 0, 0x2000
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
	s_add_i32 s2, 0, 0x3000
.LBB0_8:                                ; %Flow182
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v34
	v_dual_mov_b32 v49, v33 :: v_dual_and_b32 v0, 0x1f0, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v9, 0x88, 0, vcc_lo
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s22
	v_dual_mov_b32 v45, v29 :: v_dual_mov_b32 v44, v28
	v_mov_b32_e32 v47, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_or_b32_e32 v59, v9, v37
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_or_b32_e32 v9, v38, v9
	v_dual_mov_b32 v46, v30 :: v_dual_mov_b32 v43, v27
	v_dual_mov_b32 v42, v26 :: v_dual_mov_b32 v41, v25
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xor_b32_e32 v60, 8, v59
	v_add_nc_u32_e32 v34, s26, v59
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_xor_b32_e32 v77, 8, v9
	v_dual_mov_b32 v40, v24 :: v_dual_mov_b32 v37, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v48, v32 :: v_dual_add_nc_u32 v35, s26, v60
	v_dual_mov_b32 v36, v20 :: v_dual_mov_b32 v39, v23
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[54:57], v34 offset1:32
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_b64 v[50:53], v35 offset1:32
	.loc	1 118 23 is_stmt 1              ; generate_amdgcn.py:118:23
	v_cndmask_b32_e64 v34, 0, 1, s22
	v_mov_b32_e32 v38, v22
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_ne_u32_e64 s1, 1, v34
	v_dual_mov_b32 v35, v19 :: v_dual_mov_b32 v34, v18
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v34, s18, v9
	v_add_nc_u32_e32 v35, s18, v77
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_dual_mov_b32 v49, v33 :: v_dual_mov_b32 v48, v32
	v_dual_mov_b32 v47, v31 :: v_dual_mov_b32 v46, v30
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_b64 v[61:62], v34
	ds_load_b64 v[63:64], v35
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_dual_mov_b32 v41, v25 :: v_dual_mov_b32 v38, v22
	v_dual_mov_b32 v40, v24 :: v_dual_mov_b32 v39, v23
	v_dual_mov_b32 v37, v21 :: v_dual_mov_b32 v36, v20
	v_dual_mov_b32 v35, v19 :: v_dual_mov_b32 v34, v18
	v_dual_mov_b32 v45, v29 :: v_dual_mov_b32 v44, v28
	v_dual_mov_b32 v43, v27 :: v_dual_mov_b32 v42, v26
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[61:62], v[54:55], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[61:62], v[56:57], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[63:64], v[50:51], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[63:64], v[52:53], v[42:49] neg_lo:[1,1,0]
.LBB0_10:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v18, s25, v9
	v_add_nc_u32_e32 v20, s25, v77
	v_mov_b32_e32 v32, v48
	v_dual_mov_b32 v28, v44 :: v_dual_mov_b32 v33, v49
	v_mov_b32_e32 v29, v45
	ds_load_b64 v[18:19], v18
	ds_load_b64 v[61:62], v20
	v_mov_b32_e32 v30, v46
	v_mov_b32_e32 v26, v42
	v_mov_b32_e32 v24, v40
	v_mov_b32_e32 v20, v36
	v_dual_mov_b32 v22, v38 :: v_dual_mov_b32 v31, v47
	v_mov_b32_e32 v27, v43
	v_mov_b32_e32 v25, v41
	v_mov_b32_e32 v21, v37
	v_mov_b32_e32 v23, v39
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[18:19], v[54:55], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[18:19], v[56:57], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v18, v34 :: v_dual_mov_b32 v19, v35
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[61:62], v[50:51], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[61:62], v[52:53], v[1:8] neg_lo:[1,1,0]
.LBB0_12:                               ; %._crit_edge87
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v50, s23, v59
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cndmask_b32_e64 v59, 0, 1, s21
	v_dual_mov_b32 v62, v29 :: v_dual_add_nc_u32 v51, s23, v60
	v_dual_mov_b32 v61, v28 :: v_dual_mov_b32 v64, v31
	v_mov_b32_e32 v63, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s1, 1, v59
	v_dual_mov_b32 v60, v33 :: v_dual_mov_b32 v59, v32
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[54:57], v50 offset1:32
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_b64 v[50:53], v51 offset1:32
	v_dual_mov_b32 v66, v27 :: v_dual_mov_b32 v65, v26
	v_dual_mov_b32 v68, v25 :: v_dual_mov_b32 v67, v24
	v_dual_mov_b32 v70, v21 :: v_dual_mov_b32 v69, v20
	v_dual_mov_b32 v72, v23 :: v_dual_mov_b32 v71, v22
	v_dual_mov_b32 v74, v19 :: v_dual_mov_b32 v73, v18
	.loc	1 118 23 is_stmt 1              ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s21
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v59, s24, v9
	v_add_nc_u32_e32 v61, s24, v77
	ds_load_b64 v[59:60], v59
	ds_load_b64 v[61:62], v61
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[59:60], v[56:57], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[34:41], v[59:60], v[54:55], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[61:62], v[52:53], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[34:41], v[61:62], v[50:51], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v60, v49
	v_dual_mov_b32 v62, v45 :: v_dual_mov_b32 v59, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v64, v47 :: v_dual_mov_b32 v61, v44
	v_dual_mov_b32 v66, v43 :: v_dual_mov_b32 v63, v46
	v_dual_mov_b32 v68, v41 :: v_dual_mov_b32 v65, v42
	v_dual_mov_b32 v70, v37 :: v_dual_mov_b32 v67, v40
	v_dual_mov_b32 v72, v39 :: v_dual_mov_b32 v69, v36
	v_dual_mov_b32 v74, v35 :: v_dual_mov_b32 v71, v38
	v_mov_b32_e32 v73, v34
.LBB0_14:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v9, s2, v9
	v_add_nc_u32_e32 v20, s2, v77
	ds_load_b64 v[18:19], v9
	ds_load_b64 v[20:21], v20
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[18:19], v[54:55], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[18:19], v[56:57], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[20:21], v[50:51], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[20:21], v[52:53], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_17
.LBB0_16:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v60, v33 :: v_dual_mov_b32 v59, v32
	v_dual_mov_b32 v62, v29 :: v_dual_mov_b32 v61, v28
	v_dual_mov_b32 v64, v31 :: v_dual_mov_b32 v63, v30
	v_dual_mov_b32 v66, v27 :: v_dual_mov_b32 v65, v26
	v_dual_mov_b32 v68, v25 :: v_dual_mov_b32 v67, v24
	v_dual_mov_b32 v70, v21 :: v_dual_mov_b32 v69, v20
	v_dual_mov_b32 v72, v23 :: v_dual_mov_b32 v71, v22
	v_dual_mov_b32 v74, v19 :: v_dual_mov_b32 v73, v18
.LBB0_17:
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v9, 4, v76
	v_lshrrev_b32_e32 v18, 1, v75
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v19, s20, v58
	.loc	1 128 14 is_stmt 0              ; generate_amdgcn.py:128:14
	s_and_b32 s17, s5, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_or_b32_e32 v21, v9, v18
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_lshlrev_b32_e32 v9, 1, v19
	.loc	1 128 14 is_stmt 0              ; generate_amdgcn.py:128:14
	s_mov_b32 s16, s4
	.loc	1 132 24 is_stmt 1              ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v48, v11
	v_cvt_f32_i32_e32 v11, v17
	v_cvt_f32_i32_e32 v17, v1
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_or_b32_e32 v24, 32, v9
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v1, 12, v21
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_clause 0x1
	buffer_load_u16 v26, v9, s[16:19], 0 offen
	buffer_load_u16 v24, v24, s[16:19], 0 offen
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v49, v10
	v_cvt_f32_i32_e32 v10, v16
	v_cvt_f32_i32_e32 v16, v2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v2, 14, v21
	v_or_b32_e32 v23, 2, v21
	v_or_b32_e32 v20, 6, v21
	v_or_b32_e32 v22, 4, v21
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_i32_e32 v51, v3
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v3, s14, v1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v18, 10, v21
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v52, v4
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v4, s14, v2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v19, 8, v21
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v25, s14, v21
	v_or_b32_e32 v9, s14, v23
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v28, s3, v21, 1
	v_add_lshl_u32 v23, s3, v23, 1
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v21, v5
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v5, s3, v1, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v29, s14, v20
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v20, s3, v20, 1
	v_add_lshl_u32 v2, s3, v2, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v27, s14, v22
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v22, s3, v22, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v3, 1, v3
	s_and_b32 s17, s7, 0xffff
	s_mov_b32 s16, s6
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v30, s3, v18, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v54, 1, v4
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v31, s3, v19, 1
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v50, v12
	v_cvt_f32_i32_e32 v53, v6
	v_cvt_f32_i32_e32 v6, v7
	v_cvt_f32_i32_e32 v7, v8
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_clause 0x3
	buffer_load_u16 v8, v5, s[16:19], 0 offen
	buffer_load_u16 v12, v2, s[16:19], 0 offen
	buffer_load_u16 v4, v3, s[16:19], 0 offen
	buffer_load_u16 v5, v54, s[16:19], 0 offen
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v37, v73
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v18, s14, v18
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v43, v65
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v19, s14, v19
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v1, s15, v58
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v45, v62
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v44, v61
	v_cvt_f32_i32_e32 v46, v63
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v36, v74
	v_cvt_f32_i32_e32 v38, v69
	v_cvt_f32_i32_e32 v39, v70
	v_cvt_f32_i32_e32 v41, v72
	v_cvt_f32_i32_e32 v42, v66
	v_cvt_f32_i32_e32 v47, v64
	v_cvt_f32_i32_e32 v40, v71
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v0, 1, v0
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s20, s20, s15
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	s_and_b32 s13, s13, 0xffff
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	buffer_load_u16 v28, v28, s[16:19], 0 offen
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v0, s20, s14, v0
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	s_mov_b32 s14, s18
	.loc	1 128 14 is_stmt 1              ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v2, 16, v24
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v9, 1, v9
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_clause 0x5
	buffer_load_u16 v23, v23, s[16:19], 0 offen
	buffer_load_u16 v32, v20, s[16:19], 0 offen
	buffer_load_u16 v22, v22, s[16:19], 0 offen
	buffer_load_u16 v30, v30, s[16:19], 0 offen
	buffer_load_u16 v31, v31, s[16:19], 0 offen
	buffer_load_u16 v33, v9, s[16:19], 0 offen
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v25, 1, v25
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v54, v2, v23
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	buffer_load_u16 v25, v25, s[16:19], 0 offen
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v16, v54, v16 :: v_dual_lshlrev_b32 v3, 16, v26
	.loc	1 134 25 is_stmt 0              ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v23, v3, v23 :: v_dual_lshlrev_b32 v24, 16, v28
	v_dual_mul_f32 v55, v2, v22 :: v_dual_lshlrev_b32 v20, 1, v29
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v28, 16, v30
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v30, 16, v31
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v31, v2, v24
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v26, 16, v32
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v32, 16, v33
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v24, v3, v24 :: v_dual_mul_f32 v57, v2, v30
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v17, v31, v17
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v22, v3, v22 :: v_dual_lshlrev_b32 v9, 1, v27
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	s_clause 0x1
	buffer_load_u16 v27, v9, s[16:19], 0 offen
	buffer_load_u16 v29, v20, s[16:19], 0 offen
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v31, v2, v32
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v58, v2, v28 :: v_dual_lshlrev_b32 v9, 1, v18
	v_mul_f32_e32 v56, v2, v26
	v_mul_f32_e32 v26, v3, v26
	v_mul_f32_e32 v28, v3, v28
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v24, v24, v49 :: v_dual_mul_f32 v23, v23, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v48, v56, v52 :: v_dual_mul_f32 v49, v55, v51
	v_mul_f32_e32 v22, v22, v50
	v_mul_f32_e32 v13, v26, v13
	v_dual_mul_f32 v15, v28, v15 :: v_dual_mul_f32 v28, 0xbfb8aa3b, v17
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v31, v31, v42 :: v_dual_mul_f32 v42, 0xbfb8aa3b, v16
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v20, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v42
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v42, 0, 0x42800000, s2
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v28, v28
	v_ldexp_f32 v28, v28, v52
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v25, 16, v25
	v_lshlrev_b32_e32 v18, 1, v19
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v19, v68
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v33, v2, v25 :: v_dual_lshlrev_b32 v4, 16, v4
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_clause 0x1
	buffer_load_u16 v34, v9, s[16:19], 0 offen
	buffer_load_u16 v35, v18, s[16:19], 0 offen
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v25, v3, v25
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v9, v59
	v_cvt_f32_i32_e32 v18, v67
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v33, v33, v43 :: v_dual_mul_f32 v32, v3, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v25, v25, v37 :: v_dual_mul_f32 v30, v3, v30
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v21, v57, v21
	v_dual_mul_f32 v51, v58, v53 :: v_dual_mul_f32 v32, v32, v36
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v36, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v14, v30, v14
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v30, 0xbfb8aa3b, v24 :: v_dual_lshlrev_b32 v27, 16, v27
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v30
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v43, v2, v29
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v30, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v36, 0, 0x42800000, s3
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v43, v43, v45
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v45, 0xbfb8aa3b, v48
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v24
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v30, v30
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v30, v30, v53
	v_ldexp_f32 v36, v36, v55
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v34, 16, v34
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v35, 16, v35
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v37, v2, v27
	v_mul_f32_e32 v29, v3, v29
	v_dual_mul_f32 v27, v3, v27 :: v_dual_mul_f32 v50, v2, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v26, v2, v35
	v_mul_f32_e32 v35, v3, v35
	v_dual_mul_f32 v34, v3, v34 :: v_dual_mul_f32 v37, v37, v44
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v44, 0xbfb8aa3b, v49
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v26, v26, v46
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v46, 0xbfb8aa3b, v21
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v45
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v29, v29, v39 :: v_dual_mul_f32 v34, v34, v41
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v44
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v27, v27, v38
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v45, 0, 0x42800000, s4
	v_dual_mul_f32 v38, 0xbfb8aa3b, v22 :: v_dual_mul_f32 v47, v50, v47
	v_mul_f32_e32 v50, 0xbfb8aa3b, v51
	v_mul_f32_e32 v41, 0xbfb8aa3b, v15
	v_cndmask_b32_e64 v44, 0, 0x42800000, s5
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v48
	v_mul_f32_e32 v39, 0xbfb8aa3b, v13
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v38
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v50
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v41
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v49
	v_exp_f32_e32 v45, v45
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v35, v35, v40 :: v_dual_mul_f32 v40, 0xbfb8aa3b, v14
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v39
	v_cndmask_b32_e64 v38, 0, 0x42800000, s7
	v_cndmask_b32_e64 v50, 0, 0x42800000, s8
	v_cndmask_b32_e64 v41, 0, 0x42800000, s10
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v39, 0, 0x42800000, s6
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v22
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v40
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v15
	v_ldexp_f32 v45, v45, v56
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v51
	v_dual_fmac_f32 v42, 0xbfb8aa3b, v16 :: v_dual_fmac_f32 v39, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v41, v41
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v45, 1.0, v45
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v50, v50
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v46
	v_cndmask_b32_e64 v40, 0, 0x42800000, s11
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s10
	v_exp_f32_e32 v39, v39
	v_cndmask_b32_e64 v46, 0, 0x42800000, s9
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s6
	v_exp_f32_e32 v38, v38
	v_ldexp_f32 v41, v41, v62
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v14
	v_ldexp_f32 v50, v50, v60
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v60, null, v45, v45, v48
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s7
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v39, v39, v58
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v21
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v40, v40
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v78, v60
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s11
	v_ldexp_f32 v38, v38, v59
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v46, v46
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s9
	v_exp_f32_e32 v44, v44
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v65, s6, v13, v39, v13
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v40, v40, v63
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v90, -v60, v78, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v66, null, v38, v38, v22
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v46, v46, v61
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v61, s4, v48, v45, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v78, v90, v78
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v81, v66
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s5
	v_exp_f32_e32 v42, v42
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v73, null, v40, v40, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v58, null, v36, v36, v23
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v44, v44, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v85, v73
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v77, v58
	v_div_scale_f32 v64, null, v39, v39, v13
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v42, v42, v54
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v70, null, v46, v46, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v80, v64
	v_div_scale_f32 v72, null, v41, v41, v15
	v_rcp_f32_e32 v83, v70
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v89, -v58, v77, 1.0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v84, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v77, v89, v77
	v_div_scale_f32 v54, null, v30, v30, v24
	v_div_scale_f32 v55, s1, v24, v30, v24
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v70, v83, 1.0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v75, v54
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v90, -v72, v84, 1.0
	v_fmac_f32_e32 v83, v89, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_scale_f32 v62, null, v44, v44, v49
	v_div_scale_f32 v63, s5, v49, v44, v49
	v_rcp_f32_e32 v79, v62
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v54, v75, 1.0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v28, 1.0, v28 :: v_dual_fmac_f32 v75, v87, v75
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v87, -v66, v81, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v52, null, v28, v28, v17
	v_fma_f32 v91, -v62, v79, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v42, 1.0, v42 :: v_dual_fmac_f32 v81, v87, v81
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v74, v52
	v_div_scale_f32 v53, vcc_lo, v17, v28, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v91, v79
	v_div_scale_f32 v56, null, v42, v42, v16
	v_div_scale_f32 v57, s2, v16, v42, v16
	v_fma_f32 v91, -v73, v85, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v76, v56
	v_fma_f32 v86, -v52, v74, 1.0
	v_div_scale_f32 v59, s3, v23, v36, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v71, s9, v21, v46, v21
	v_dual_fmac_f32 v74, v86, v74 :: v_dual_mul_f32 v91, v63, v79
	v_fma_f32 v86, -v64, v80, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v88, -v56, v76, 1.0
	v_fmac_f32_e32 v84, v90, v84
	v_fmac_f32_e32 v80, v86, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v76, v88, v76
	v_mul_f32_e32 v86, v53, v74
	v_mul_f32_e32 v87, v57, v76
	v_div_scale_f32 v67, s7, v22, v38, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v56, v87, v57
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v50, 1.0, v50 :: v_dual_fmac_f32 v87, v89, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v68, null, v50, v50, v51
	v_div_scale_f32 v69, s8, v51, v50, v51
	v_fma_f32 v56, -v56, v87, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v82, v68
	v_mul_f32_e32 v57, v67, v81
	v_fma_f32 v88, -v68, v82, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v88, v82
	v_fma_f32 v88, -v52, v86, v53
	v_fmac_f32_e32 v86, v88, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v52, v86, v53
	v_mul_f32_e32 v53, v65, v80
	v_mul_f32_e32 v89, v61, v78
	v_div_fmas_f32 v52, v52, v74, v86
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v56, v56, v76, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v87, -v60, v89, v61
	v_div_fixup_f32 v17, v52, v28, v17
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v16, v56, v42, v16
	v_fmac_f32_e32 v89, v87, v78
	v_mul_f32_e32 v87, v71, v83
	v_mul_f32_e32 v88, v59, v77
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v17, v33, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v86, -v58, v88, v59
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v88, v86, v77
	v_fma_f32 v86, -v64, v53, v65
	v_dual_mul_f32 v90, v55, v75 :: v_dual_fmac_f32 v53, v86, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v54, v90, v55
	v_fmac_f32_e32 v90, v74, v75
	v_fma_f32 v74, -v62, v91, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v54, -v54, v90, v55
	v_fma_f32 v55, -v58, v88, v59
	v_fmac_f32_e32 v91, v74, v79
	v_fma_f32 v74, -v66, v57, v67
	v_fma_f32 v58, -v60, v89, v61
	v_div_fmas_f32 v28, v54, v75, v90
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v76, v69, v82
	v_div_fmas_f32 v52, v55, v77, v88
	v_fmac_f32_e32 v57, v74, v81
	v_fma_f32 v60, -v62, v91, v63
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v62, -v64, v53, v65
	v_div_fixup_f32 v23, v52, v36, v23
	v_div_fmas_f32 v42, v58, v78, v89
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v86, -v68, v76, v69
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v59.h, 0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v64, -v66, v57, v67
	v_div_fixup_f32 v24, v28, v30, v24
	v_div_fmas_f32 v28, v60, v79, v91
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v23, v32, v23
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v74, -v70, v87, v71
	v_div_fmas_f32 v30, v62, v80, v53
	s_mov_b32 vcc_lo, s7
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v61.h, v59.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v28, v28, v44, v49
	v_fmac_f32_e32 v76, v86, v82
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v61.l, v23.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v24, v25, v24
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v25, v64, v81, v57
	v_fmac_f32_e32 v87, v74, v83
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v86, s2, v15, v41, v15
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v22, v25, v38, v22
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v25, v37, v28
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v66, -v68, v76, v69
	v_fma_f32 v68, -v70, v87, v71
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v59.l, v24.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v16, v31, v16
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v31, v42, v45, v48
	v_div_fmas_f32 v32, v66, v82, v76
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v13, v30, v39, v13
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v63.h, v59.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v30, v43, v31
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v31, v68, v83, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v22, v27, v22 :: v_dual_mul_f32 v13, v29, v13
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s2
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v27, 1, v61
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v21, v31, v46, v21
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v31, 1, v59
	v_mov_b16_e32 v63.l, v16.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v74, v86, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v21, v26, v21 :: v_dual_lshlrev_b32 v12, 16, v12
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v59.l, v17.h
	v_and_b32_e32 v33, 1, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v92, -v72, v74, v86
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v71, v2, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v65.h, v59.h
	v_mov_b16_e32 v67.h, v59.h
	v_cmp_o_f32_e64 s4, v24, v24
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v74, v92, v84
	v_div_scale_f32 v92, s10, v14, v40, v14
	v_div_fixup_f32 v32, v32, v50, v51
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v67.l, v25.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v70, -v72, v74, v86
	v_mul_f32_e32 v93, v92, v85
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v24, v24, v31, 0x7fff
	v_and_b32_e32 v26, 1, v59
	v_mov_b16_e32 v59.l, v13.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v28, v70, v84, v74
	v_fma_f32 v94, -v73, v93, v92
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v65.l, v22.h
	v_cmp_o_f32_e64 s2, v23, v23
	v_add3_u32 v23, v23, v27, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v15, v28, v41, v15
	v_fmac_f32_e32 v93, v94, v85
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v12, v3, v12 :: v_dual_and_b32 v27, 1, v59
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v23.l, 0x7fff, v24.h, s4
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v7, v71, v7 :: v_dual_and_b32 v24, 1, v65
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v72, -v73, v93, v92
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v28, 1, v67
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s5, v25, v25
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v29, v72, v85, v93
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s6, v13, v13
	v_add3_u32 v13, v13, v27, 0x7fff
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v27, v2, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v25, v25, v28, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v14, v29, v40, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v16, v16
	v_add3_u32 v16, v16, v33, 0x7fff
	v_cmp_o_f32_e64 s7, v22, v22
	v_cndmask_b16 v13.l, 0x7fff, v25.h, s5
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v25, v47, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v17, v17, v26, 0x7fff
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v15, v34, v15 :: v_dual_mul_f32 v14, v35, v14
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v8, v3, v8
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v6, v27, v6 :: v_dual_mul_f32 v11, v12, v11
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s1
	v_add3_u32 v17, v22, v24, 0x7fff
	v_mov_b16_e32 v17.l, v14.h
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v8, v8, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v24.h, 0x7fff, v13.h, s6
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v10, 0xbfb8aa3b, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v24.l, 0x7fff, v17.h, s7
	v_mov_b16_e32 v17.h, v59.h
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s3
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s2
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_lshl_add_u32 v69, s15, 4, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add_lshl_u32 v1, v0, v1, 1
	v_and_b32_e32 v17, 1, v17
	v_mov_b16_e32 v59.l, v30.h
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_add_lshl_u32 v0, v0, v69, 1
	s_mov_b32 s15, s19
	v_add3_u32 v17, v14, v17, 0x7fff
	v_and_b32_e32 v26, 1, v59
	v_mov_b16_e32 v59.l, v15.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v22, v30, v26, 0x7fff
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v26, 0xbfb8aa3b, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v13.h, 0x7fff, v22.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v22, 1, v59
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v59.l, v25.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v26, 0xbfb8aa3b, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v22, v15, v22, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v15, 0, 0x42800000, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v22.l, 0x7fff, v17.h, vcc_lo
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_exp_f32_e32 v12, v15
	v_mul_f32_e32 v17, 0xbfb8aa3b, v8
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v17
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v12, v12, v15
	v_cndmask_b32_e64 v15, 0, 0x42800000, s1
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v10, v10
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v10, v10, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v15, v15, v29
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v29, 1, v59
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v32, null, v10, v10, v11
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v29, v25, v29, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v14, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v33, v32
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s2
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v25, v25
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v14, v14
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v38, -v32, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v33, v38, v33
	v_div_scale_f32 v38, s3, v11, v10, v11
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v14, v14, v17
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.l, v21.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v41, v38, v33
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.h, v59.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v26, null, v12, v12, v7
	v_div_scale_f32 v34, vcc_lo, v7, v12, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v28, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v17, v21, v17, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v30, -v26, v28, 1.0
	v_fmac_f32_e32 v28, v30, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v37, v34, v28
	v_div_scale_f32 v30, null, v15, v15, v8
	v_fma_f32 v25, -v26, v37, v34
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v14, 1.0, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v36, v30
	v_fmac_f32_e32 v37, v25, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v27, null, v14, v14, v6
	v_fma_f32 v26, -v26, v37, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v31, v27
	v_fma_f32 v39, -v30, v36, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v26, v26, v28, v37
	v_div_fixup_f32 v7, v26, v12, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v27, v31, 1.0
	v_fmac_f32_e32 v31, v35, v31
	v_div_scale_f32 v35, s1, v6, v14, v6
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v40, v35, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v27, v40, v35
	v_fmac_f32_e32 v40, v25, v31
	v_fma_f32 v25, -v32, v41, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v27, v40, v35
	v_fmac_f32_e32 v41, v25, v33
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v25, v27, v31, v40
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v27, v3, v4
	v_mul_f32_e32 v3, v3, v5
	v_mul_f32_e32 v5, v2, v5
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v28, -v32, v41, v38
	s_mov_b32 vcc_lo, s3
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v18, v27, v18
	v_dual_mul_f32 v3, v3, v19 :: v_dual_mul_f32 v2, v2, v4
	v_mul_f32_e32 v5, v5, v20
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v36, v39, v36
	v_div_scale_f32 v39, s4, v8, v15, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v2, v2, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v9.h, v59.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v5, v5, v7 :: v_dual_mul_f32 v42, v39, v36
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v28, v28, v33, v41
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v6, v25, v14, v6
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v4.h, 0x7fff, v29.h, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v34, -v30, v42, v39
	v_div_fixup_f32 v10, v28, v10, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v2, v2, v6
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v42, v34, v36 :: v_dual_mul_f32 v3, v3, v10
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v10, 0x7632
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v30, -v30, v42, v39
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v59.l, v3.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s1, v3, v3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v30, v30, v36, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v6, 1, v59
	v_mov_b16_e32 v59.l, v5.h
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v8, v30, v15, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v6, v3, v6, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v17.h, vcc_lo
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v8, v18, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s1
	v_cmp_o_f32_e64 s1, v5, v5
	v_mov_b16_e32 v9.l, v8.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v7, 1, v9
	v_mov_b16_e32 v9.l, v2.h
	v_and_b32_e32 v3, 1, v9
	v_and_b32_e32 v9, 1, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v7, v8, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	v_add3_u32 v8, v5, v9, 0x7fff
	v_cndmask_b32_e64 v5, 0x3276, v10, s0
	v_mov_b32_e32 v9, 0x5410
	v_cndmask_b16 v6.l, 0x7fff, v7.h, vcc_lo
	v_cndmask_b32_e64 v10, v4, v16, s0
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s1
	v_lshl_or_b32 v5, v5, 8, v5
	v_cndmask_b32_e64 v8, v23, v22, s0
	v_cndmask_b32_e64 v4, v16, v4, s0
	s_mov_b32 s1, 0x76543210
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v5, 0x760076, v5
	v_add3_u32 v3, v2, v3, 0x7fff
	v_cmp_o_f32_e64 s2, v2, v2
	v_cndmask_b32_e64 v2, 0x1054, v9, s0
	v_cndmask_b32_e64 v9, v6, v24, s0
	v_cndmask_b32_e64 v6, v24, v6, s0
	v_lshl_or_b32 v5, v5, 4, v5
	v_cndmask_b16 v7.l, 0x7fff, v3.h, s2
	v_lshl_or_b32 v2, v2, 8, v2
	v_cndmask_b32_e64 v3, v22, v23, s0
	v_permlanex16_b32 v8, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v11, v7, v13, s0
	v_and_b32_e32 v2, 0x540054, v2
	v_cndmask_b32_e64 v7, v13, v7, s0
	v_and_b32_e32 v13, 0x7060706, v5
	v_permlanex16_b32 v5, v6, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v2, v2, 4, v2
	v_permlanex16_b32 v15, v7, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v7, v14, v10, v13
	v_and_b32_e32 v12, 0x5040504, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v2, v8, v3, v12
	v_perm_b32 v3, v8, v3, v13
	v_perm_b32 v4, v5, v9, v12
	v_perm_b32 v5, v5, v9, v13
	v_perm_b32 v6, v14, v10, v12
	v_perm_b32 v8, v15, v11, v12
	v_perm_b32 v9, v15, v11, v13
	s_clause 0x1
	buffer_store_b128 v[2:5], v1, s[12:15], 0 offen
	buffer_store_b128 v[6:9], v0, s[12:15], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 95
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
		.amdhsa_inst_pref_size 58
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.num_vgpr, 95
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7312
; TotalNumSgprs: 33
; NumVgprs: 95
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 33
; NumVGPRsForWavesPerEU: 95
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     95
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
