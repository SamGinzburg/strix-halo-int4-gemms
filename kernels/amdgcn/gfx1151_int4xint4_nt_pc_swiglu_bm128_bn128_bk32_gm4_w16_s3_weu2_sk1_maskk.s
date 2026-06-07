	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
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
	v_lshlrev_b32_e32 v8, 2, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v2, 2, v0
	v_and_b32_e32 v138, 0x180, v0
	v_and_b32_e32 v139, 0x60, v0
	v_and_b32_e32 v71, 8, v0
	s_load_b32 s26, s[0:1], 0x38
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s14, 0x7f
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
	s_lshr_b32 s10, s10, 25
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
	s_ashr_i32 s8, s8, 7
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
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s7, s7, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s5, s2
	s_abs_i32 s12, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s8, s12
	s_sub_i32 s14, 0, s12
	v_rcp_iflag_f32_e32 v1, s8
	s_load_b128 s[8:11], s[0:1], 0x0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s13, v1
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_and_b32_e32 v1, 12, v8
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s13, s13, 0x4f7ffffe
	s_cvt_u32_f32 s13, s13
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[10:11]
	s_xor_b32 s10, s2, s7
	s_mul_i32 s14, s14, s13
	s_ashr_i32 s21, s10, 31
	s_mul_hi_u32 s4, s13, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s13, s13, s4
	s_mul_hi_u32 s4, s5, s13
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s11, s4, s12
	s_add_i32 s10, s4, 1
	s_sub_i32 s5, s5, s11
	s_mov_b32 s11, 0x31027000
	s_sub_i32 s13, s5, s12
	s_cmp_ge_u32 s5, s12
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s19, s11
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s13, s5
	s_add_i32 s13, s4, 1
	s_cmp_ge_u32 s5, s12
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s4, s13, s4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s5, s26, 31
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s22, s3, 4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s3, s26, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s25, s4, s21
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s24, s3, 1
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v3, s22, v1
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mul_lo_u32 v4, s24, v2
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s4, s25, s21
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s18, s10
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s3, s4, s7
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s24, v3
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s3
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s20, s4, 7
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s6
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v3, v4, v1, s22
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s2, s2, 7
	.loc	1 122 25                        ; generate_amdgcn.py:122:25
	s_add_i32 s14, s20, s15
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s26, 1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mad_u64_u32 v[4:5], null, s2, s24, v[3:4]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s23, -1, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s23, vcc_lo
	s_cmp_gt_i32 s26, 33
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_mad_u64_u32 v[5:6], null, s20, s24, v[3:4]
	.loc	1 122 25                        ; generate_amdgcn.py:122:25
	v_mad_u64_u32 v[6:7], null, s14, s24, v[3:4]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s3, -1, 0
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	s_add_i32 s4, s22, 16
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v7, 0x80000000, v4, vcc_lo
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e32 v9, 0x80000000, v5, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v8, 0x77c, v8
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_cndmask_b32_e32 v10, 0x80000000, v6, vcc_lo
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v3, s4, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s24, v3
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v3, 16, v4
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add_nc_u32_e32 v4, 16, v5
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s3, vcc_lo
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_add_nc_u32 v5, 16, v6
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	buffer_load_b32 v6, v7, s[8:11], 0 offen
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmpk_gt_i32 s26, 0x41
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b32 v7, v9, s[16:19], 0 offen
	buffer_load_b32 v9, v10, s[16:19], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_b32 v10, v3, s[8:11], 0 offen
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b32 v4, v4, s[16:19], 0 offen
	buffer_load_b32 v5, v5, s[16:19], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_bfe_i32 v3, v0, 5, 1
	s_mov_b32 s18, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v3, 0x88, v3
	v_xor_b32_e32 v72, v3, v8
	v_lshlrev_b32_e32 v3, 4, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v8, 0, v72
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(4)
	ds_store_2addr_stride64_b32 v8, v6, v7 offset1:16
	.loc	1 121 31 is_stmt 1              ; generate_amdgcn.py:121:31
	s_waitcnt vmcnt(3)
	ds_store_b32 v8, v9 offset:8192
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(1)
	ds_store_2addr_stride64_b32 v8, v10, v4 offset0:8 offset1:24
	.loc	1 121 31 is_stmt 1              ; generate_amdgcn.py:121:31
	s_waitcnt vmcnt(0)
	ds_store_b32 v8, v5 offset:10240
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v4, 0x70, v3
	v_and_b32_e32 v66, 8, v0
	s_mov_b32 s19, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v70, v138, 1, v4
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_lshl_or_b32 v69, v139, 3, v4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s19, -1
                                        ; implicit-def: $vgpr66
                                        ; implicit-def: $vgpr70
                                        ; implicit-def: $vgpr69
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s19
	s_mov_b32 s0, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v4, v0, 3, 1
	v_and_b32_e32 v3, 0x70, v3
.Ltmp12:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s1, s24, 15
.Ltmp13:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_lshl_b32 s19, s21, 7
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s1, s1, 4
	v_and_b32_e32 v4, 0x88, v4
	v_lshl_or_b32 v70, v138, 1, v3
	v_lshl_or_b32 v69, v139, 3, v3
.Ltmp15:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_sub_nc_u32_e64 v3, s1, 3 clamp
	s_lshl_b32 s1, s25, 7
	v_sub_nc_u32_e32 v73, s24, v1
	v_or_b32_e32 v74, v4, v70
	v_or_b32_e32 v75, v4, v69
	v_add3_u32 v4, s15, s1, v2
	v_readfirstlane_b32 s18, v3
	v_or_b32_e32 v3, s1, v2
	v_xor_b32_e32 v76, 8, v74
	v_xor_b32_e32 v77, 8, v75
	v_subrev_nc_u32_e32 v4, s19, v4
	s_mov_b32 s27, 1
	v_subrev_nc_u32_e32 v3, s19, v3
	s_add_i32 s26, s18, 1
	s_add_i32 s28, s22, 32
	v_mad_u64_u32 v[9:10], null, s24, v4, v[1:2]
	v_mov_b32_e32 v10, 0
	v_add_nc_u32_e32 v2, s2, v2
	s_add_i32 s21, 0, 0x800
	s_add_i32 s25, 0, 0x1000
	s_add_i32 s22, 0, 0x1800
	v_mov_b32_e32 v13, v10
	v_mad_u64_u32 v[66:67], null, s24, v3, v[1:2]
	v_mad_u64_u32 v[67:68], null, s24, v2, v[1:2]
	v_mov_b32_e32 v11, v10
	v_mov_b32_e32 v12, v10
	v_mov_b32_e32 v14, v10
	v_mov_b32_e32 v15, v10
	v_mov_b32_e32 v16, v10
	v_mov_b32_e32 v17, v10
	v_mov_b32_e32 v26, v10
	v_mov_b32_e32 v27, v10
	v_mov_b32_e32 v28, v10
	v_mov_b32_e32 v29, v10
	v_mov_b32_e32 v30, v10
	v_mov_b32_e32 v31, v10
	v_mov_b32_e32 v32, v10
	v_mov_b32_e32 v33, v10
	v_mov_b32_e32 v18, v10
	v_mov_b32_e32 v19, v10
	v_mov_b32_e32 v20, v10
	v_mov_b32_e32 v21, v10
	v_mov_b32_e32 v22, v10
	v_mov_b32_e32 v23, v10
	v_mov_b32_e32 v24, v10
	v_mov_b32_e32 v25, v10
	v_mov_b32_e32 v1, v10
	v_mov_b32_e32 v2, v10
	v_mov_b32_e32 v3, v10
	v_mov_b32_e32 v4, v10
	v_mov_b32_e32 v5, v10
	v_mov_b32_e32 v6, v10
	v_mov_b32_e32 v7, v10
	v_mov_b32_e32 v8, v10
	v_mov_b32_e32 v34, v10
	v_mov_b32_e32 v35, v10
	v_mov_b32_e32 v36, v10
	v_mov_b32_e32 v37, v10
	v_mov_b32_e32 v38, v10
	v_mov_b32_e32 v39, v10
	v_mov_b32_e32 v40, v10
	v_mov_b32_e32 v41, v10
	v_mov_b32_e32 v42, v10
	v_mov_b32_e32 v43, v10
	v_mov_b32_e32 v44, v10
	v_mov_b32_e32 v45, v10
	v_mov_b32_e32 v46, v10
	v_mov_b32_e32 v47, v10
	v_mov_b32_e32 v48, v10
	v_mov_b32_e32 v49, v10
	v_mov_b32_e32 v50, v10
	v_mov_b32_e32 v51, v10
	v_mov_b32_e32 v52, v10
	v_mov_b32_e32 v53, v10
	v_mov_b32_e32 v54, v10
	v_mov_b32_e32 v55, v10
	v_mov_b32_e32 v56, v10
	v_mov_b32_e32 v57, v10
	v_mov_b32_e32 v58, v10
	v_mov_b32_e32 v59, v10
	v_mov_b32_e32 v60, v10
	v_mov_b32_e32 v61, v10
	v_mov_b32_e32 v62, v10
	v_mov_b32_e32 v63, v10
	v_mov_b32_e32 v64, v10
	v_mov_b32_e32 v65, v10
	s_add_i32 s24, 0, 0x2000
	s_add_i32 s1, 0, 0x2800
	s_mov_b32 s18, s10
	s_mov_b32 s19, s11
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v68, s28, v67
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e32 vcc_lo, s28, v73
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v78, s28, v66
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v79, s28, v9
	s_mov_b32 s29, s0
	s_mov_b32 s0, s21
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_dual_cndmask_b32 v78, 0x80000000, v78 :: v_dual_cndmask_b32 v79, 0x80000000, v79
	s_mov_b32 s21, s25
	s_mov_b32 s25, s22
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_b32 v68, v68, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b32 v102, v78, s[16:19], 0 offen
	buffer_load_b32 v103, v79, s[16:19], 0 offen
	s_mov_b32 s22, s24
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v78, s29, v74
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v82, s21, v75
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v86, s22, v75
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v90, s29, v76
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v94, s21, v77
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v98, s22, v77
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_stride64_b64 v[78:81], v78 offset1:2
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[82:85], v82 offset1:2
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	ds_load_2addr_stride64_b64 v[86:89], v86 offset1:2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_stride64_b64 v[90:93], v90 offset1:2
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[94:97], v94 offset1:2
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	ds_load_2addr_stride64_b64 v[98:101], v98 offset1:2
	s_mov_b32 s24, s1
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s1, s27, 1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lt_i32 s1, 2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_barrier
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s27, s1, 0
	s_add_i32 s26, s26, -1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_lshl_b32 s1, s27, 11
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s28, s28, 16
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_add_i32 s21, s1, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_nc_u32_e32 v104, s21, v72
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_add_i32 s22, s21, 0x1000
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	s_add_i32 s1, s21, 0x2000
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s26, 0
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[34:41], v[82:83], v[78:79], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[84:85], v[78:79], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[82:83], v[80:81], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[84:85], v[80:81], v[58:65] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[10:17], v[86:87], v[78:79], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[88:89], v[78:79], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[86:87], v[80:81], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[88:89], v[80:81], v[1:8] neg_lo:[1,1,0]
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[34:41], v[94:95], v[90:91], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[96:97], v[90:91], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[94:95], v[92:93], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[96:97], v[92:93], v[58:65] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[10:17], v[98:99], v[90:91], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[100:101], v[90:91], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[98:99], v[92:93], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[100:101], v[92:93], v[1:8] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(1)
	ds_store_2addr_stride64_b32 v104, v68, v102 offset1:16
	.loc	1 121 31 is_stmt 1              ; generate_amdgcn.py:121:31
	s_waitcnt vmcnt(0)
	ds_store_b32 v104, v103 offset:8192
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v66, v71
	s_mov_b32 s18, s0
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v8, 0
	s_add_i32 s21, 0, 0x800
	s_add_i32 s25, 0, 0x1000
	s_add_i32 s22, 0, 0x1800
	s_add_i32 s24, 0, 0x2000
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v2, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v24, v8 :: v_dual_mov_b32 v41, v9
	v_dual_mov_b32 v35, v9 :: v_dual_mov_b32 v20, v8
	v_dual_mov_b32 v43, v9 :: v_dual_mov_b32 v22, v8
	v_dual_mov_b32 v47, v9 :: v_dual_mov_b32 v18, v8
	v_dual_mov_b32 v45, v9 :: v_dual_mov_b32 v32, v8
	v_dual_mov_b32 v49, v9 :: v_dual_mov_b32 v28, v8
	v_dual_mov_b32 v51, v9 :: v_dual_mov_b32 v30, v8
	v_dual_mov_b32 v55, v9 :: v_dual_mov_b32 v26, v8
	v_dual_mov_b32 v53, v9 :: v_dual_mov_b32 v16, v8
	v_dual_mov_b32 v57, v9 :: v_dual_mov_b32 v12, v8
	v_dual_mov_b32 v59, v9 :: v_dual_mov_b32 v14, v8
	v_dual_mov_b32 v63, v9 :: v_dual_mov_b32 v10, v8
	v_dual_mov_b32 v61, v9 :: v_dual_mov_b32 v34, v8
	v_mov_b32_e32 v65, v9
	v_mov_b32_e32 v39, v9
	v_mov_b32_e32 v37, v9
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v33, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v38, v8
	v_mov_b32_e32 v36, v8
	v_mov_b32_e32 v40, v8
	v_mov_b32_e32 v42, v8
	v_mov_b32_e32 v46, v8
	v_mov_b32_e32 v44, v8
	v_mov_b32_e32 v48, v8
	v_mov_b32_e32 v50, v8
	v_mov_b32_e32 v54, v8
	v_mov_b32_e32 v52, v8
	v_mov_b32_e32 v56, v8
	v_mov_b32_e32 v58, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v60, v8
	v_mov_b32_e32 v64, v8
	s_add_i32 s1, 0, 0x2800
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v66
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cndmask_b32_e64 v66, 0, 1, s23
	v_dual_mov_b32 v93, v61 :: v_dual_mov_b32 v92, v60
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v9, 0x88, 0, vcc_lo
	v_dual_mov_b32 v95, v63 :: v_dual_mov_b32 v94, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cmp_ne_u32_e64 s0, 1, v66
	v_dual_mov_b32 v91, v59 :: v_dual_mov_b32 v90, v58
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_or_b32_e32 v106, v9, v70
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_or_b32_e32 v9, v9, v69
	v_dual_mov_b32 v89, v57 :: v_dual_mov_b32 v88, v56
	v_dual_mov_b32 v85, v53 :: v_dual_mov_b32 v84, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xor_b32_e32 v107, 8, v106
	v_add_nc_u32_e32 v67, s18, v106
	v_dual_mov_b32 v97, v65 :: v_dual_mov_b32 v96, v64
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_xor_b32_e32 v140, 8, v9
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v68, s18, v107
	ds_load_2addr_stride64_b64 v[102:105], v67 offset1:2
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[98:101], v68 offset1:2
	v_dual_mov_b32 v87, v55 :: v_dual_mov_b32 v86, v54
	v_dual_mov_b32 v83, v51 :: v_dual_mov_b32 v82, v50
	v_dual_mov_b32 v81, v49 :: v_dual_mov_b32 v80, v48
	v_dual_mov_b32 v77, v45 :: v_dual_mov_b32 v76, v44
	v_dual_mov_b32 v79, v47 :: v_dual_mov_b32 v78, v46
	v_dual_mov_b32 v75, v43 :: v_dual_mov_b32 v74, v42
	v_dual_mov_b32 v73, v41 :: v_dual_mov_b32 v72, v40
	v_dual_mov_b32 v69, v37 :: v_dual_mov_b32 v68, v36
	v_dual_mov_b32 v71, v39 :: v_dual_mov_b32 v70, v38
	v_dual_mov_b32 v67, v35 :: v_dual_mov_b32 v66, v34
	.loc	1 118 23 is_stmt 1              ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s23
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v66, s25, v9
	v_add_nc_u32_e32 v67, s25, v140
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_dual_mov_b32 v81, v49 :: v_dual_mov_b32 v80, v48
	v_dual_mov_b32 v89, v57 :: v_dual_mov_b32 v88, v56
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[108:111], v66 offset1:2
	ds_load_2addr_stride64_b64 v[112:115], v67 offset1:2
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_dual_mov_b32 v73, v41 :: v_dual_mov_b32 v70, v38
	v_dual_mov_b32 v97, v65 :: v_dual_mov_b32 v96, v64
	v_dual_mov_b32 v72, v40 :: v_dual_mov_b32 v71, v39
	v_dual_mov_b32 v69, v37 :: v_dual_mov_b32 v68, v36
	v_dual_mov_b32 v67, v35 :: v_dual_mov_b32 v66, v34
	v_dual_mov_b32 v79, v47 :: v_dual_mov_b32 v78, v46
	v_dual_mov_b32 v77, v45 :: v_dual_mov_b32 v76, v44
	v_dual_mov_b32 v75, v43 :: v_dual_mov_b32 v74, v42
	v_dual_mov_b32 v87, v55 :: v_dual_mov_b32 v86, v54
	v_dual_mov_b32 v85, v53 :: v_dual_mov_b32 v84, v52
	v_dual_mov_b32 v83, v51 :: v_dual_mov_b32 v82, v50
	v_dual_mov_b32 v95, v63 :: v_dual_mov_b32 v94, v62
	v_dual_mov_b32 v93, v61 :: v_dual_mov_b32 v92, v60
	v_dual_mov_b32 v91, v59 :: v_dual_mov_b32 v90, v58
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[108:109], v[102:103], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[74:81], v[110:111], v[102:103], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[108:109], v[104:105], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[110:111], v[104:105], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[112:113], v[98:99], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[74:81], v[114:115], v[98:99], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[112:113], v[100:101], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[114:115], v[100:101], v[90:97] neg_lo:[1,1,0]
.LBB0_10:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v34, s24, v9
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v64, v96 :: v_dual_add_nc_u32 v35, s24, v140
	v_dual_mov_b32 v65, v97 :: v_dual_mov_b32 v60, v92
	v_mov_b32_e32 v61, v93
	ds_load_2addr_stride64_b64 v[108:111], v34 offset1:2
	ds_load_2addr_stride64_b64 v[112:115], v35 offset1:2
	v_dual_mov_b32 v62, v94 :: v_dual_mov_b32 v63, v95
	v_dual_mov_b32 v58, v90 :: v_dual_mov_b32 v59, v91
	v_dual_mov_b32 v56, v88 :: v_dual_mov_b32 v57, v89
	v_dual_mov_b32 v52, v84 :: v_dual_mov_b32 v53, v85
	v_dual_mov_b32 v54, v86 :: v_dual_mov_b32 v55, v87
	v_dual_mov_b32 v50, v82 :: v_dual_mov_b32 v51, v83
	v_dual_mov_b32 v48, v80 :: v_dual_mov_b32 v49, v81
	v_dual_mov_b32 v44, v76 :: v_dual_mov_b32 v45, v77
	v_dual_mov_b32 v46, v78 :: v_dual_mov_b32 v47, v79
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[108:109], v[102:103], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[110:111], v[102:103], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[108:109], v[104:105], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[110:111], v[104:105], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v42, v74 :: v_dual_mov_b32 v43, v75
	v_dual_mov_b32 v40, v72 :: v_dual_mov_b32 v41, v73
	v_dual_mov_b32 v36, v68 :: v_dual_mov_b32 v37, v69
	v_dual_mov_b32 v38, v70 :: v_dual_mov_b32 v39, v71
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[112:113], v[98:99], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[114:115], v[98:99], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[112:113], v[100:101], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[114:115], v[100:101], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v34, v66 :: v_dual_mov_b32 v35, v67
.LBB0_12:                               ; %._crit_edge150
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v98, s21, v106
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cndmask_b32_e64 v106, 0, 1, s3
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v99, s21, v107
	v_dual_mov_b32 v109, v61 :: v_dual_mov_b32 v108, v60
	v_dual_mov_b32 v111, v63 :: v_dual_mov_b32 v110, v62
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cmp_ne_u32_e64 s0, 1, v106
	v_dual_mov_b32 v107, v65 :: v_dual_mov_b32 v106, v64
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_stride64_b64 v[102:105], v98 offset1:2
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[98:101], v99 offset1:2
	v_dual_mov_b32 v113, v59 :: v_dual_mov_b32 v112, v58
	v_dual_mov_b32 v115, v57 :: v_dual_mov_b32 v114, v56
	v_dual_mov_b32 v117, v53 :: v_dual_mov_b32 v116, v52
	v_dual_mov_b32 v119, v55 :: v_dual_mov_b32 v118, v54
	v_dual_mov_b32 v121, v51 :: v_dual_mov_b32 v120, v50
	v_dual_mov_b32 v123, v49 :: v_dual_mov_b32 v122, v48
	v_dual_mov_b32 v125, v45 :: v_dual_mov_b32 v124, v44
	v_dual_mov_b32 v127, v47 :: v_dual_mov_b32 v126, v46
	v_dual_mov_b32 v129, v43 :: v_dual_mov_b32 v128, v42
	v_dual_mov_b32 v131, v41 :: v_dual_mov_b32 v130, v40
	v_dual_mov_b32 v133, v37 :: v_dual_mov_b32 v132, v36
	v_dual_mov_b32 v135, v39 :: v_dual_mov_b32 v134, v38
	v_dual_mov_b32 v137, v35 :: v_dual_mov_b32 v136, v34
	.loc	1 118 23 is_stmt 1              ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v106, s22, v9
	v_add_nc_u32_e32 v110, s22, v140
	ds_load_2addr_stride64_b64 v[106:109], v106 offset1:2
	ds_load_2addr_stride64_b64 v[110:113], v110 offset1:2
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[108:109], v[104:105], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[106:107], v[104:105], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[74:81], v[108:109], v[102:103], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[66:73], v[106:107], v[102:103], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[112:113], v[100:101], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[110:111], v[100:101], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[74:81], v[112:113], v[98:99], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[66:73], v[110:111], v[98:99], v[66:73] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v107, v97
	v_dual_mov_b32 v109, v93 :: v_dual_mov_b32 v106, v96
	v_dual_mov_b32 v111, v95 :: v_dual_mov_b32 v108, v92
	v_dual_mov_b32 v113, v91 :: v_dual_mov_b32 v110, v94
	v_dual_mov_b32 v115, v89 :: v_dual_mov_b32 v112, v90
	v_dual_mov_b32 v117, v85 :: v_dual_mov_b32 v114, v88
	v_dual_mov_b32 v119, v87 :: v_dual_mov_b32 v116, v84
	v_dual_mov_b32 v121, v83 :: v_dual_mov_b32 v118, v86
	v_dual_mov_b32 v123, v81 :: v_dual_mov_b32 v120, v82
	v_dual_mov_b32 v125, v77 :: v_dual_mov_b32 v122, v80
	v_dual_mov_b32 v127, v79 :: v_dual_mov_b32 v124, v76
	v_dual_mov_b32 v129, v75 :: v_dual_mov_b32 v126, v78
	v_dual_mov_b32 v131, v73 :: v_dual_mov_b32 v128, v74
	v_dual_mov_b32 v133, v69 :: v_dual_mov_b32 v130, v72
	v_dual_mov_b32 v135, v71 :: v_dual_mov_b32 v132, v68
	v_dual_mov_b32 v137, v67 :: v_dual_mov_b32 v134, v70
	v_mov_b32_e32 v136, v66
.LBB0_14:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 121 31                        ; generate_amdgcn.py:121:31
	v_add_nc_u32_e32 v9, s1, v9
	v_add_nc_u32_e32 v38, s1, v140
	ds_load_2addr_stride64_b64 v[34:37], v9 offset1:2
	ds_load_2addr_stride64_b64 v[38:41], v38 offset1:2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[34:35], v[102:103], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[36:37], v[102:103], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[34:35], v[104:105], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[36:37], v[104:105], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[38:39], v[98:99], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[40:41], v[98:99], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[38:39], v[100:101], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[40:41], v[100:101], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_17
.LBB0_16:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v107, v65 :: v_dual_mov_b32 v106, v64
	v_dual_mov_b32 v109, v61 :: v_dual_mov_b32 v108, v60
	v_dual_mov_b32 v111, v63 :: v_dual_mov_b32 v110, v62
	v_dual_mov_b32 v113, v59 :: v_dual_mov_b32 v112, v58
	v_dual_mov_b32 v115, v57 :: v_dual_mov_b32 v114, v56
	v_dual_mov_b32 v117, v53 :: v_dual_mov_b32 v116, v52
	v_dual_mov_b32 v119, v55 :: v_dual_mov_b32 v118, v54
	v_dual_mov_b32 v121, v51 :: v_dual_mov_b32 v120, v50
	v_dual_mov_b32 v123, v49 :: v_dual_mov_b32 v122, v48
	v_dual_mov_b32 v125, v45 :: v_dual_mov_b32 v124, v44
	v_dual_mov_b32 v127, v47 :: v_dual_mov_b32 v126, v46
	v_dual_mov_b32 v129, v43 :: v_dual_mov_b32 v128, v42
	v_dual_mov_b32 v131, v41 :: v_dual_mov_b32 v130, v40
	v_dual_mov_b32 v133, v37 :: v_dual_mov_b32 v132, v36
	v_dual_mov_b32 v135, v39 :: v_dual_mov_b32 v134, v38
	v_dual_mov_b32 v137, v35 :: v_dual_mov_b32 v136, v34
.LBB0_17:
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v34, 3, v138
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_and_b32 s17, s5, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_mov_b32 s16, s4
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_or_b32 v50, v0, 15, v34
	v_lshrrev_b32_e32 v9, 4, v0
	v_lshrrev_b32_e32 v35, 1, v139
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v65, v17
	v_cvt_f32_i32_e32 v17, v18
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v49, 64, v50
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v36, s2, v50
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_or_b32 v53, v9, 1, v35
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v18, v19
	v_cvt_f32_i32_e32 v19, v20
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v37, s2, v49
	.loc	1 128 14 is_stmt 0              ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v36, 1, v36
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v35, 6, v53
	v_or_b32_e32 v38, 2, v53
	v_or_b32_e32 v39, 4, v53
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v37, 1, v37
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v34, 8, v53
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v43, s20, v35
	v_or_b32_e32 v41, s20, v38
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_clause 0x1
	buffer_load_u16 v54, v36, s[16:19], 0 offen
	buffer_load_u16 v62, v37, s[16:19], 0 offen
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v42, s20, v39
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v9, 10, v53
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v40, s20, v53
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v44, 14, v53
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v20, v21
	v_cvt_f32_i32_e32 v21, v5
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v45, s14, v34, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v34, s20, v34
	v_or_b32_e32 v46, s20, v9
	v_or_b32_e32 v48, s20, v44
	.loc	1 129 14 is_stmt 0              ; generate_amdgcn.py:129:14
	s_and_b32 s17, s7, 0xffff
	s_mov_b32 s16, s6
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v38, s14, v38, 1
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v51, v26
	v_cvt_f32_i32_e32 v26, v28
	v_cvt_f32_i32_e32 v28, v22
	v_cvt_f32_i32_e32 v22, v6
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v35, s14, v35, 1
	v_add_lshl_u32 v39, s14, v39, 1
	v_add_lshl_u32 v9, s14, v9, 1
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v85, v137
	v_cvt_f32_i32_e32 v88, v120
	v_cvt_f32_i32_e32 v56, v114
	v_cvt_f32_i32_e32 v91, v117
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v86, v132
	v_cvt_f32_i32_e32 v89, v121
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v93, v11
	v_cvt_f32_i32_e32 v92, v10
	v_cvt_f32_i32_e32 v95, v14
	v_cvt_f32_i32_e32 v94, v12
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v90, v116
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v83, 1, v0
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s0, s2, s15
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v55, v1
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_add_i32 s0, s0, s20
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v84, v136
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_and_or_b32 v1, v83, 56, s0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v87, v133
	v_cvt_f32_i32_e32 v70, v118
	v_cvt_f32_i32_e32 v57, v131
	v_cvt_f32_i32_e32 v72, v135
	v_cvt_f32_i32_e32 v58, v130
	v_cvt_f32_i32_e32 v75, v119
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v101, 64, v53
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v14, v30
	v_cvt_f32_i32_e32 v30, v3
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v3, s15, v50
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v71, v134
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v50, s20, v101
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v102, 0x42, v53
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v60, v115
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v12, v7
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v7, 0x4e, v53
	v_or_b32_e32 v100, 0x46, v53
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v103, s20, v102
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v64, v16
	v_cvt_f32_i32_e32 v52, v27
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v143, s14, v7, 1
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v27, v29
	v_cvt_f32_i32_e32 v16, v31
	v_cvt_f32_i32_e32 v31, v24
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v24, 0x4c, v53
	v_or_b32_e32 v29, 0x4a, v53
	v_or_b32_e32 v99, 0x48, v53
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v105, s20, v100
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v100, s14, v100, 1
	v_add_lshl_u32 v101, s14, v101, 1
	v_add_lshl_u32 v142, s14, v29, 1
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v10, v32
	v_cvt_f32_i32_e32 v32, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.h, 0
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v11, v33
	v_cvt_f32_i32_e32 v33, v2
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v83.h, v4.h
	v_mov_b16_e32 v96.h, v4.h
	v_mov_b16_e32 v97.h, v4.h
	v_mov_b16_e32 v98.h, v4.h
	v_and_b32_e32 v0, 16, v0
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_or_b32_e32 v2, 64, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s13, s13, 0xffff
	.loc	1 128 14 is_stmt 1              ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v62
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v37, 1, v41
	v_lshlrev_b32_e32 v41, 1, v42
	v_lshlrev_b32_e32 v42, 1, v43
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v43, 12, v53
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v36, 1, v40
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v40, s14, v53, 1
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v6, 16, v54
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v34, 1, v34
	.loc	1 129 22 is_stmt 0              ; generate_amdgcn.py:129:22
	v_or_b32_e32 v47, s20, v43
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v46, 1, v46
	v_lshlrev_b32_e32 v48, 1, v48
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v53, 0x44, v53
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v47, 1, v47
	s_clause 0x7
	buffer_load_u16 v63, v36, s[16:19], 0 offen
	buffer_load_u16 v67, v37, s[16:19], 0 offen
	buffer_load_u16 v68, v42, s[16:19], 0 offen
	buffer_load_u16 v73, v34, s[16:19], 0 offen
	buffer_load_u16 v74, v46, s[16:19], 0 offen
	buffer_load_u16 v59, v47, s[16:19], 0 offen
	buffer_load_u16 v61, v48, s[16:19], 0 offen
	buffer_load_u16 v76, v41, s[16:19], 0 offen
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v34, s14, v43, 1
	v_add_lshl_u32 v36, s14, v44, 1
	s_clause 0x7
	buffer_load_u16 v77, v40, s[16:19], 0 offen
	buffer_load_u16 v78, v38, s[16:19], 0 offen
	buffer_load_u16 v79, v35, s[16:19], 0 offen
	buffer_load_u16 v66, v34, s[16:19], 0 offen
	buffer_load_u16 v69, v36, s[16:19], 0 offen
	buffer_load_u16 v80, v45, s[16:19], 0 offen
	buffer_load_u16 v81, v39, s[16:19], 0 offen
	buffer_load_u16 v82, v9, s[16:19], 0 offen
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v48, v113
	v_cvt_f32_i32_e32 v44, v109
	v_cvt_f32_i32_e32 v37, v110
	v_cvt_f32_i32_e32 v45, v112
	v_cvt_f32_i32_e32 v41, v108
	v_cvt_f32_i32_e32 v36, v107
	v_cvt_f32_i32_e32 v40, v111
	v_cvt_f32_i32_e32 v47, v129
	v_cvt_f32_i32_e32 v39, v127
	v_cvt_f32_i32_e32 v46, v128
	v_cvt_f32_i32_e32 v42, v125
	v_cvt_f32_i32_e32 v43, v124
	v_cvt_f32_i32_e32 v38, v126
	v_cvt_f32_i32_e32 v34, v122
	v_cvt_f32_i32_e32 v9, v123
	v_cvt_f32_i32_e32 v35, v106
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v104, s20, v53
	v_or_b32_e32 v106, s20, v99
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v99, s14, v99, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v62, 16, v63
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v74, 16, v74
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v59, 16, v59
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v66, 16, v66
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v76, 16, v76
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v80, 16, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v109, v5, v76
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v113, v5, v80 :: v_dual_lshlrev_b32 v54, 16, v67
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v67, 16, v77
	v_lshlrev_b32_e32 v77, 16, v79
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v80, v6, v80 :: v_dual_lshlrev_b32 v79, 16, v82
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v68, 16, v68
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v76, v6, v76 :: v_dual_lshlrev_b32 v73, 16, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v114, v5, v79
	v_dual_mul_f32 v79, v6, v79 :: v_dual_mul_f32 v110, v5, v68
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v68, v6, v68 :: v_dual_lshlrev_b32 v63, 16, v78
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v112, v5, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v91, v110, v91 :: v_dual_lshlrev_b32 v78, 16, v81
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v81, v5, v62
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v108, v5, v63 :: v_dual_mul_f32 v77, v6, v77
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v82, v5, v54
	v_dual_mul_f32 v54, v6, v54 :: v_dual_mul_f32 v107, v5, v67
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v63, v6, v63
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v81, v81, v88 :: v_dual_mul_f32 v88, v108, v18
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v13, v77, v13
	.loc	1 134 25 is_stmt 0              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v67, v6, v67
	v_mul_f32_e32 v111, v5, v78
	v_mul_f32_e32 v78, v6, v78
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v82, v82, v89
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v17, v107, v17
	v_dual_mul_f32 v89, v63, v93 :: v_dual_mul_f32 v76, v76, v86
	v_dual_mul_f32 v86, v113, v28 :: v_dual_mul_f32 v63, 0xbfb8aa3b, v13
	v_dual_mul_f32 v92, v67, v92 :: v_dual_mul_f32 v77, v78, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v80, v80, v95 :: v_dual_mul_f32 v67, 0xbfb8aa3b, v86
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v63
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v93, v112, v20
	v_mul_f32_e32 v19, v111, v19
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v85, v54, v85
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v67
	v_cndmask_b32_e64 v63, 0, 0x42800000, s5
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v90, v109, v90 :: v_dual_mul_f32 v79, v79, v15
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v67, 0, 0x42800000, s8
	v_mul_f32_e32 v54, 0xbfb8aa3b, v93
	v_dual_fmac_f32 v63, 0xbfb8aa3b, v13 :: v_dual_mul_f32 v78, v114, v23
	v_mul_f32_e32 v23, 0xbfb8aa3b, v89
	v_mul_f32_e32 v15, 0xbfb8aa3b, v17
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v86
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v54
	v_exp_f32_e32 v63, v63
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v23
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v15
	v_cndmask_b32_e64 v111, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v54, 0, 0x42800000, s3
	v_cndmask_b32_e64 v109, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v23, 0, 0x42800000, s1
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_mul_f32_e32 v18, 0xbfb8aa3b, v88
	v_mul_f32_e32 v20, 0xbfb8aa3b, v92
	v_ldexp_f32 v63, v63, v111
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v93
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v17
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_dual_fmac_f32 v23, 0xbfb8aa3b, v89 :: v_dual_mul_f32 v62, v6, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v54, v54
	v_cndmask_b32_e64 v107, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v23, v23
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v84, v62, v84 :: v_dual_mul_f32 v87, v68, v87
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v20
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v15, v15
	v_exp_f32_e32 v67, v67
	v_ldexp_f32 v54, v54, v109
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v88
	v_cndmask_b32_e64 v20, 0, 0x42800000, s2
	s_delay_alu instid0(TRANS32_DEP_3)
	v_ldexp_f32 v23, v23, v107
	v_mul_f32_e32 v68, 0xbfb8aa3b, v78
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v111, 1.0, v54
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v18, v18
	v_cndmask_b32_e64 v95, 0, 0xffffffc0, s0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v109, 1.0, v23
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v68
	v_cndmask_b32_e64 v114, 0, 0xffffffc0, s8
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v118, null, v111, v111, v93
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v108, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v68, 0, 0x42800000, s7
	v_ldexp_f32 v15, v15, v95
	v_ldexp_f32 v18, v18, v94
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v92
	v_mul_f32_e32 v62, 0xbfb8aa3b, v77
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v78
	v_ldexp_f32 v95, v67, v114
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v107, 1.0, v18
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v20, v20
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v114, null, v109, v109, v89
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v68, v68
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v129, v118
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v113, 0, 0xffffffc0, s7
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v62
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v127, v114
	v_div_scale_f32 v18, null, v107, v107, v88
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v20, v20, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_cndmask_b32_e64 v62, 0, 0x42800000, s6
	v_ldexp_f32 v94, v68, v113
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v68, -v118, v129, 1.0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v113, 1.0, v63 :: v_dual_add_f32 v108, 1.0, v20
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v112, 0, 0xffffffc0, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v63, -v114, v127, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v77
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v129, v68, v129
	v_div_scale_f32 v116, null, v108, v108, v92
	v_fmac_f32_e32 v127, v63, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v62, v62
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v28
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v128, v116
	v_div_scale_f32 v117, s2, v92, v108, v92
	v_rcp_f32_e32 v125, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v28, 0, 0x42800000, s4
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v23, null, v15, v15, v17
	v_div_scale_f32 v122, null, v113, v113, v13
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v62, v62, v112
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v67, -v116, v128, 1.0
	v_rcp_f32_e32 v126, v23
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v110, 0, 0xffffffc0, s4
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v54, -v18, v125, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v19
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v128, v67, v128
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v112, 1.0, v62
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v131, v122
	v_fmac_f32_e32 v125, v54, v125
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v28, v28
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v137, v117, v128
	v_div_scale_f32 v124, null, v112, v112, v77
	v_div_scale_f32 v133, s6, v77, v112, v77
	v_fma_f32 v62, -v23, v126, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v132, v124
	v_fma_f32 v135, -v122, v131, 1.0
	v_div_scale_f32 v119, s3, v93, v111, v93
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v28, v28, v110
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v20, vcc_lo, v88, v107, v88
	v_fmac_f32_e32 v131, v135, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v138, v119, v129
	v_div_scale_f32 v115, s1, v89, v109, v89
	v_fma_f32 v136, -v124, v132, 1.0
	v_div_scale_f32 v123, s5, v13, v113, v13
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v67, s14, v102, 1
	v_add_lshl_u32 v102, s14, v53, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v132, v136, v132
	v_fmac_f32_e32 v126, v62, v126
	v_mul_f32_e32 v140, v123, v131
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	buffer_load_u16 v144, v67, s[16:19], 0 offen
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v141, v133, v132
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v110, 1.0, v28
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v28, s0, v17, v15, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v135, v28, v126
	v_div_scale_f32 v120, null, v110, v110, v19
	v_div_scale_f32 v121, s4, v19, v110, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v62, -v23, v135, v28
	v_rcp_f32_e32 v130, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v135, v62, v126
	v_fma_f32 v62, -v118, v138, v119
	v_fma_f32 v145, -v23, v135, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v134, -v120, v130, 1.0
	v_fmac_f32_e32 v138, v62, v129
	v_fma_f32 v62, -v124, v141, v133
	v_dual_mul_f32 v136, v115, v127 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v130, v134, v130
	v_fmac_f32_e32 v141, v62, v132
	.loc	1 129 22 is_stmt 1              ; generate_amdgcn.py:129:22
	v_or_b32_e32 v62, s20, v7
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v7, s15, v49
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v49, 1, v103
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v139, v121, v130 :: v_dual_mul_f32 v134, v20, v125
	v_fma_f32 v63, -v114, v136, v115
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v103, 1, v105
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s15, s19
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v54, -v18, v134, v20
	v_fmac_f32_e32 v136, v63, v127
	v_fma_f32 v63, -v120, v139, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v134, v54, v125
	v_fma_f32 v54, -v116, v137, v117
	v_fmac_f32_e32 v139, v63, v130
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v63, s20, v29
	.loc	1 129 14 is_stmt 0              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v29, 1, v50
	v_lshlrev_b32_e32 v50, 1, v104
	.loc	1 135 26 is_stmt 1              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v137, v54, v128
	v_fma_f32 v54, -v122, v140, v123
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v104, 1, v106
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v106, -v18, v134, v20
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v18, 0xbfb8aa3b, v79
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v63, 1, v63
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v140, v54, v131
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v54, s20, v24
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v24, s14, v24, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v20, 1, v62
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v18
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v106, v106, v125, v134
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v105, 1, v54
	s_clause 0xe
	buffer_load_u16 v67, v29, s[16:19], 0 offen
	buffer_load_u16 v68, v49, s[16:19], 0 offen
	buffer_load_u16 v53, v50, s[16:19], 0 offen
	buffer_load_u16 v54, v103, s[16:19], 0 offen
	buffer_load_u16 v28, v104, s[16:19], 0 offen
	buffer_load_u16 v29, v63, s[16:19], 0 offen
	buffer_load_u16 v18, v105, s[16:19], 0 offen
	buffer_load_u16 v20, v20, s[16:19], 0 offen
	buffer_load_u16 v62, v102, s[16:19], 0 offen
	buffer_load_u16 v63, v100, s[16:19], 0 offen
	buffer_load_u16 v49, v99, s[16:19], 0 offen
	buffer_load_u16 v50, v142, s[16:19], 0 offen
	buffer_load_u16 v23, v24, s[16:19], 0 offen
	buffer_load_u16 v24, v143, s[16:19], 0 offen
	buffer_load_u16 v99, v101, s[16:19], 0 offen
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v101, -v114, v136, v115
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v104, -v116, v137, v117
	v_div_fmas_f32 v117, v145, v126, v135
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v105, -v118, v138, v119
	v_div_fmas_f32 v101, v101, v127, v136
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v114, -v120, v139, v121
	v_div_fixup_f32 v88, v106, v107, v88
	v_div_fmas_f32 v104, v104, v128, v137
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v115, -v122, v140, v123
	v_div_fixup_f32 v15, v117, v15, v17
	v_div_fmas_f32 v17, v105, v129, v138
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v116, -v124, v141, v133
	v_div_fixup_f32 v89, v101, v109, v89
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v82, v82, v88
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v88, v114, v130, v139
	s_mov_b32 vcc_lo, s5
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v15, v81, v15
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v81, v115, v131, v140
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v17, v17, v111, v93
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v85, v85, v89
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v89, v116, v132, v141
	v_div_fixup_f32 v92, v104, v108, v92
	v_div_fixup_f32 v13, v81, v113, v13
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v81, v91, v17
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v85.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v17, v89, v112, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v84, v84, v92 :: v_dual_mul_f32 v87, v87, v13
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v146, 0, 0x42800000, s7
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v76, v76, v17 :: v_dual_and_b32 v13, 1, v4
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v19, v88, v110, v19
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v96.l, v15.h
	v_mov_b16_e32 v83.l, v84.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v146, 0xbfb8aa3b, v79
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v97.l, v76.h
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v94, 1.0, v94 :: v_dual_mul_f32 v77, v90, v19
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v19, 1, v96
	v_mov_b16_e32 v4.l, v82.h
	v_and_b32_e32 v17, 1, v83
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v103, 0, 0x42800000, s8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v85, v85
	v_add3_u32 v13, v85, v13, 0x7fff
	v_and_b32_e32 v85, 1, v97
	v_cmp_o_f32_e64 s0, v15, v15
	v_cmp_o_f32_e64 s2, v84, v84
	v_add3_u32 v15, v15, v19, 0x7fff
	v_and_b32_e32 v19, 1, v4
	v_add3_u32 v84, v84, v17, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v103, 0xbfb8aa3b, v80
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v87.h
	v_cmp_o_f32_e64 s4, v76, v76
	v_add3_u32 v76, v76, v85, 0x7fff
	v_cndmask_b16 v17.l, 0x7fff, v84.h, s2
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v84, 1.0, v95
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v19, v82, v19, 0x7fff
	v_cndmask_b16 v13.l, 0x7fff, v15.h, s0
	v_and_b32_e32 v15, 1, v4
	v_cndmask_b16 v19.l, 0x7fff, v76.h, s4
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v76, v103
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v87, v87
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, s8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v15, v87, v15, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v87, null, v84, v84, v86
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v98.l, v77.h
	v_mov_b16_e32 v4.l, v81.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v100, v146
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v82, v82
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v76, v76, v85
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v85, v87
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v83, 1, v98
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v102, null, v94, v94, v78
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v76, 1.0, v76
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v17.h, 0x7fff, v13.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_add3_u32 v82, v77, v83, 0x7fff
	v_cndmask_b16 v13.h, 0x7fff, v19.h, vcc_lo
	v_cndmask_b16 v19.h, 0x7fff, v15.h, s3
	v_cmp_o_f32_e32 vcc_lo, v81, v81
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v90, -v87, v85, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s14, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v85, v90, v85
	v_div_scale_f32 v90, s0, v86, v84, v86
	v_dual_mul_f32 v98, v90, v85 :: v_dual_and_b32 v83, 1, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v15, v81, v83, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, s7
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v83, v102
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v15.h, 0x7fff, v15.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v81, v100, v81
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v77, v77
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v100, v5, v74
	v_dual_mul_f32 v95, v5, v73 :: v_dual_mul_f32 v74, v6, v74
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v77, 1.0, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v81, -v102, v83, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v15.l, 0x7fff, v82.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v89, vcc_lo, v78, v94, v78
	v_div_scale_f32 v88, null, v77, v77, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v81, v83
	v_div_scale_f32 v81, null, v76, v76, v80
	v_rcp_f32_e32 v82, v88
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v72, v74, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v92, v89, v83
	v_rcp_f32_e32 v91, v81
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v70, v95, v70 :: v_dual_mul_f32 v75, v100, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v96, -v102, v92, v89
	v_fma_f32 v93, -v88, v82, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v92, v96, v83
	v_fma_f32 v97, -v81, v91, 1.0
	v_fma_f32 v96, -v87, v98, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v93, v82
	v_div_scale_f32 v93, s1, v79, v77, v79
	v_fmac_f32_e32 v91, v97, v91
	v_div_scale_f32 v97, s2, v80, v76, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v101, v93, v82 :: v_dual_fmac_f32 v98, v96, v85
	v_fma_f32 v89, -v102, v92, v89
	v_mul_f32_e32 v103, v97, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v96, -v88, v101, v93
	v_fma_f32 v87, -v87, v98, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v83, v89, v83, v92
	v_fma_f32 v100, -v81, v103, v97
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v101, v96, v82
	v_div_fmas_f32 v85, v87, v85, v98
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v103, v100, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v87, -v88, v101, v93
	v_fma_f32 v81, -v81, v103, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v87, v82, v101
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v81, v81, v91, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v74, v81, v76, v80
	v_div_fixup_f32 v76, v85, v84, v86
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v70, v70, v76
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v73, v6, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v71, v73, v71
	.loc	1 135 26 is_stmt 1              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v73, v82, v77, v79
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v79.l, v70.h
	v_mov_b16_e32 v79.h, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v71, v71, v74 :: v_dual_mul_f32 v72, v72, v73
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v74, v83, v94, v78
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v72.h
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v74, v75, v74
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v75, v5, v66
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v72, v72
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v66, v6, v66
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v76, 1, v4
	v_mov_b16_e32 v4.l, v74.h
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v75, v75, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v64, v66, v64 :: v_dual_lshlrev_b32 v69, 16, v69
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v76, v72, v76, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v86, 1, v4
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v72, 0xbfb8aa3b, v75 :: v_dual_mul_f32 v73, v5, v69
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v69, v6, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v86, v74, v86, 0x7fff
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v73, v73, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v65, v69, v65
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v25.h, v4.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v66, 0xbfb8aa3b, v65
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v25.l, v71.h
	v_cmp_o_f32_e64 s1, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v25, 1, v25
	v_add3_u32 v31, v71, v25, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v76.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v72
	v_mul_f32_e32 v76, 0xbfb8aa3b, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v25.l, 0x7fff, v31.h, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v72, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v76
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s0
	v_dual_fmac_f32 v72, 0xbfb8aa3b, v75 :: v_dual_mul_f32 v77, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v77
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v73
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v69, v77
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v66, v66
	v_ldexp_f32 v69, v69, v71
	v_exp_f32_e32 v71, v72
	v_cndmask_b32_e64 v72, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v64
	v_ldexp_f32 v31, v71, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v71, v72
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v78, 1.0, v31
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_ldexp_f32 v66, v66, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v31, v71, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v72, null, v78, v78, v75
	v_rcp_f32_e32 v80, v72
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v84, -v72, v80, 1.0
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v67, 16, v67
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v68, 16, v68
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v53, 16, v53
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v54, 16, v54
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v80, v84, v80
	v_div_scale_f32 v81, null, v66, v66, v65
	v_div_scale_f32 v84, s0, v75, v78, v75
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v82, v81
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v91, v84, v80
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v88, -v81, v82, 1.0
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_dual_add_f32 v69, 1.0, v69 :: v_dual_fmac_f32 v82, v88, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v76, null, v69, v69, v73
	v_div_scale_f32 v83, vcc_lo, v73, v69, v73
	v_div_scale_f32 v88, s1, v65, v66, v65
	v_rcp_f32_e32 v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v31, 1.0, v31 :: v_dual_mul_f32 v92, v88, v82
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v71, -v76, v77, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v77, v71, v77
	v_div_scale_f32 v71, null, v31, v31, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v87, v83, v77
	v_rcp_f32_e32 v85, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v76, v87, v83
	v_fmac_f32_e32 v87, v89, v77
	v_fma_f32 v89, -v72, v91, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v90, -v71, v85, 1.0
	v_fma_f32 v76, -v76, v87, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v91, v89, v80
	v_fma_f32 v83, -v81, v92, v88
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v79, 1, v79
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v76, v76, v77, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v72, -v72, v91, v84
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v92, v83, v82
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v79, v70, v79, 0x7fff
	v_cmp_o_f32_e64 s0, v70, v70
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v72, v72, v80, v91
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v80, v6, v59
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v77, -v81, v92, v88
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v58, v80, v58 :: v_dual_lshlrev_b32 v61, 16, v61
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v77, v77, v82, v92
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v82, v5, v68
	v_mul_f32_e32 v68, v6, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v81, v6, v61
	v_mul_f32_e32 v61, v5, v61
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v85, v90, v85
	v_div_fixup_f32 v65, v77, v66, v65
	v_div_fixup_f32 v66, v76, v69, v73
	v_div_scale_f32 v90, s2, v64, v31, v64
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v60, v61, v60
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v61.h, v4.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v48, v82, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v60, v60, v66 :: v_dual_mul_f32 v59, v5, v59
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v56, v59, v56 :: v_dual_mul_f32 v93, v90, v85
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v59, 16, v144
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v89, -v71, v93, v90
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v69, v5, v59
	v_mul_f32_e32 v59, v6, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v93, v89, v85 :: v_dual_mul_f32 v52, v59, v52
	v_fma_f32 v71, -v71, v93, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v71, v71, v85, v93
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v64, v71, v31, v64
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v31.l, 0x7fff, v79.h, s0
	v_cndmask_b16 v31.h, 0x7fff, v86.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v58, v58, v64
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v64, v72, v78, v75
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v78, v5, v67
	v_mul_f32_e32 v67, v6, v67
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v61.l, v58.h
	v_cmp_o_f32_e64 s0, v58, v58
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v56, v56, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v46, v67, v46 :: v_dual_mul_f32 v45, v78, v45
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v61, 1, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v61, v58, v61, 0x7fff
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v57, v81, v57 :: v_dual_lshlrev_b32 v58, 16, v99
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v57, v57, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v57.h
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v65, 1, v4
	v_mov_b16_e32 v4.l, v60.h
	v_add3_u32 v64, v57, v65, 0x7fff
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v57, v69, v33
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v33.l, 0x7fff, v61.h, s0
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v61, v5, v58
	v_mul_f32_e32 v58, v6, v58
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v33.h, 0x7fff, v64.h, vcc_lo
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v64, 0xbfb8aa3b, v57
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v65.l, v56.h
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v55, v61, v55
	v_dual_mul_f32 v58, v58, v51 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v64
	v_dual_mul_f32 v66, 0xbfb8aa3b, v55 :: v_dual_and_b32 v61, 1, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v69, 0xbfb8aa3b, v58
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v65.h, v4.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v61, v60, v61, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v66
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v57
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v69
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v65, 1, v65
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v59, v64
	v_cndmask_b32_e64 v64, 0, 0x42800000, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v60, v60
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v65, v56, v65, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v55
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s1
	v_exp_f32_e32 v70, v51
	v_ldexp_f32 v59, v59, v66
	v_exp_f32_e32 v64, v64
	v_cndmask_b32_e64 v66, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_dual_add_f32 v59, 1.0, v59 :: v_dual_lshlrev_b32 v18, 16, v18
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v60, v70, v60
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v71, null, v59, v59, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v51, v64, v69
	v_exp_f32_e32 v64, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v56, 1.0, v60
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v66, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v69, 1.0, v51
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v51.h, 0x7fff, v61.h, s0
	v_cndmask_b16 v51.l, 0x7fff, v65.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v73, vcc_lo, v57, v59, v57
	v_div_scale_f32 v61, null, v69, v69, v55
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v64, v64, v72
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v60, -v71, v66, 1.0
	v_div_scale_f32 v72, null, v56, v56, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v70, v61
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v64, 1.0, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v66, v60, v66
	v_rcp_f32_e32 v65, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v60, null, v64, v64, v58
	v_mul_f32_e32 v76, v73, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v74, -v61, v70, 1.0
	v_rcp_f32_e32 v75, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v79, -v71, v76, v73
	v_fma_f32 v77, -v72, v65, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v74, v70
	v_div_scale_f32 v74, s0, v55, v69, v55
	v_dual_fmac_f32 v76, v79, v66 :: v_dual_fmac_f32 v65, v77, v65
	v_div_scale_f32 v77, s1, v52, v56, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v81, v74, v70
	v_fma_f32 v71, -v71, v76, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v60, v75, 1.0
	v_mul_f32_e32 v83, v77, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v61, v81, v74
	v_div_fmas_f32 v66, v71, v66, v76
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v73, -v72, v83, v77
	v_div_fixup_f32 v57, v66, v59, v57
	v_fmac_f32_e32 v81, v79, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v73, v65
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v48, v48, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v61, -v61, v81, v74
	v_div_fmas_f32 v61, v61, v70, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v70, -v72, v83, v77
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v55, v61, v69, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v65, v70, v65, v83
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v61.h, v4.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v45, v45, v55
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v55, 16, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v52, v65, v56, v52
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v56, 16, v63
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v47, v68, v47
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v57, v5, v55
	v_mul_f32_e32 v55, v6, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v57, v57, v30
	.loc	1 135 19 is_stmt 1              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v47, v47, v52
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v52, v5, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v26, v55, v26
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v47.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v75, v80, v75
	v_div_scale_f32 v80, s2, v58, v64, v58
	s_mov_b32 vcc_lo, s2
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v32, v52, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v52.h, v4.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v84, v80, v75
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v47, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v59, 0xbfb8aa3b, v32
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v79, -v60, v84, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v79, v75
	v_fma_f32 v60, -v60, v84, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v60, v60, v75, v84
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v58, v60, v64, v58
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v46, v46, v58
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v58, 1, v4
	v_mov_b16_e32 v4.l, v48.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v52.l, v46.h
	v_add3_u32 v58, v47, v58, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v68, 1, v4
	v_cmp_o_f32_e64 s1, v46, v46
	v_and_b32_e32 v52, 1, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v30.h, 0x7fff, v58.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v58, 0xbfb8aa3b, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v61.l, v45.h
	v_add3_u32 v68, v48, v68, 0x7fff
	v_add3_u32 v47, v46, v52, 0x7fff
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v52, v6, v56
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v56, 0xbfb8aa3b, v57
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v58
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v30.l, 0x7fff, v47.h, s1
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v27, v52, v27
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v56
	v_exp_f32_e32 v52, v59
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v61, 1, v61
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v55, 0xbfb8aa3b, v27
	v_cndmask_b32_e64 v56, 0, 0x42800000, s0
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v46, v52, v46
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v52, v56
	v_cndmask_b32_e64 v56, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_dual_add_f32 v46, 1.0, v46 :: v_dual_fmac_f32 v55, 0xbfb8aa3b, v27
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v58, null, v46, v46, v32
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v55, v55
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v47, v52, v47
	v_exp_f32_e32 v52, v56
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v59, v58
	v_div_scale_f32 v65, vcc_lo, v32, v46, v32
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v47, 1.0, v47
	s_delay_alu instid0(TRANS32_DEP_3) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v55, v55, v56
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v52, v52, v60
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v56, null, v47, v47, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v55, 1.0, v55
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v60, -v58, v59, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v62, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v63, null, v55, v55, v27
	v_fmac_f32_e32 v59, v60, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v60, null, v52, v52, v26
	v_rcp_f32_e32 v64, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v69, v65, v59
	v_rcp_f32_e32 v67, v60
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v66, -v56, v62, 1.0
	v_fma_f32 v71, -v58, v69, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v62, v66, v62
	v_fma_f32 v70, -v63, v64, 1.0
	v_div_scale_f32 v66, s0, v57, v47, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v72, -v60, v67, 1.0
	v_dual_fmac_f32 v69, v71, v59 :: v_dual_fmac_f32 v64, v70, v64
	v_div_scale_f32 v70, s1, v27, v55, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v73, v66, v62
	v_fmac_f32_e32 v67, v72, v67
	v_div_scale_f32 v72, s2, v26, v52, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v74, v70, v64
	v_fma_f32 v71, -v56, v73, v66
	v_fma_f32 v58, -v58, v69, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v75, v72, v67
	v_fma_f32 v65, -v63, v74, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v73, v71, v62
	v_div_fmas_f32 v58, v58, v59, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v71, -v60, v75, v72
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v74, v65, v64
	v_fma_f32 v56, -v56, v73, v66
	v_div_fixup_f32 v32, v58, v46, v32
	v_fmac_f32_e32 v75, v71, v67
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v45, v45
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v59, -v63, v74, v70
	v_div_fmas_f32 v56, v56, v62, v73
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v60, -v60, v75, v72
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v63, v6, v54
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v59, v59, v64, v74
	s_mov_b32 vcc_lo, s2
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v64, v5, v29
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v60, v60, v67, v75
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v48, v5, v54
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v61, v45, v61, 0x7fff
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v42, v63, v42
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v45, v60, v52, v26
	v_div_fixup_f32 v27, v59, v55, v27
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v44, v48, v44
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.h, 0x7fff, v68.h, vcc_lo
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v48, 16, v50
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.l, 0x7fff, v61.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v27, v42, v27 :: v_dual_mul_f32 v32, v44, v32
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v62, v6, v53
	v_mul_f32_e32 v42, v5, v53
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v50, v5, v48
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v27.h
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v43, v62, v43
	v_mul_f32_e32 v41, v42, v41
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v42, v56, v47, v57
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v22, v50, v22 :: v_dual_and_b32 v47, 1, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v43, v43, v45
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v45.h, v4.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v41, v41, v42
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v32.h
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v61, v5, v28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v45.l, v43.h
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v28, v6, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v40, v64, v40 :: v_dual_and_b32 v45, 1, v45
	v_mul_f32_e32 v28, v28, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v42, v43, v45, 0x7fff
	v_add3_u32 v45, v27, v47, 0x7fff
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v27, 16, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v47, 1, v4
	v_cndmask_b16 v44.h, 0x7fff, v45.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v45, v5, v27
	v_mul_f32_e32 v27, v6, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v47, v32, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v21, v45, v21 :: v_dual_mul_f32 v14, v27, v14
	.loc	1 134 25 is_stmt 0              ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v45, v6, v48 :: v_dual_mul_f32 v46, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v48, 0xbfb8aa3b, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v43, v43
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v43, 0xbfb8aa3b, v22 :: v_dual_mul_f32 v16, v45, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v48
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v44.l, 0x7fff, v42.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	v_mul_f32_e32 v27, 0xbfb8aa3b, v16
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v43.l, v41.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v45, 0, 0x42800000, s0
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v45, 0xbfb8aa3b, v21 :: v_dual_fmac_f32 v42, 0xbfb8aa3b, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v43.h, v4.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v42, v42
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v45, v45, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_ldexp_f32 v42, v42, v46
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v46, 0, 0x42800000, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v45, 1.0, v45 :: v_dual_add_f32 v42, 1.0, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v27, v27, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v14
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v32, null, v45, v45, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v49, null, v42, v42, v22
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v46, v46
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v47.h, 0x7fff, v47.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v50, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v53, null, v27, v27, v16
	v_div_scale_f32 v54, s0, v22, v42, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v46, v46, v52
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v52, v32
	v_fma_f32 v48, -v49, v50, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v50, v48, v50
	v_rcp_f32_e32 v48, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v55, -v32, v52, 1.0
	v_fmac_f32_e32 v52, v55, v52
	v_div_scale_f32 v55, s1, v21, v45, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v57, -v53, v48, 1.0
	v_mul_f32_e32 v60, v55, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v57, v48
	v_div_scale_f32 v57, s2, v16, v27, v16
	v_dual_mul_f32 v62, v57, v48 :: v_dual_and_b32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v43, v41, v43, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v41, null, v46, v46, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v47.l, 0x7fff, v43.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v43, v54, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v56, v41
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v58, -v49, v43, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v43, v58, v50
	v_fma_f32 v58, -v32, v60, v55
	v_fma_f32 v59, -v41, v56, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v49, v43, v54
	v_fmac_f32_e32 v60, v58, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v59, v56
	v_div_scale_f32 v59, s3, v14, v46, v14
	v_div_fmas_f32 v43, v49, v50, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v32, v60, v55
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v63, v59, v56
	v_fma_f32 v54, -v53, v62, v57
	v_div_fixup_f32 v22, v43, v42, v22
	v_div_fmas_f32 v32, v32, v52, v60
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v62, v54, v48
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v22, v40, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v21, v32, v45, v21
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v32, v5, v23
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v58, -v41, v63, v59
	v_fma_f32 v49, -v53, v62, v57
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v12, v32, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v63, v58, v56
	v_div_fmas_f32 v48, v49, v48, v62
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v41, v63, v59
	v_div_fixup_f32 v16, v48, v27, v16
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v27, v61, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v41, v41, v56, v63
	v_div_fixup_f32 v14, v41, v46, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v14, v28, v14
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v28, v5, v24 :: v_dual_mul_f32 v29, v6, v29
	v_mul_f32_e32 v24, v6, v24
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v8, v28, v8 :: v_dual_mul_f32 v29, v29, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 19 is_stmt 1              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v16, v29, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v16.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_and_b32_e32 v28, 1, v4
	v_mov_b16_e32 v4.l, v22.h
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v11, v24, v11
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v29, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v28, v16, v28, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v28.h, 0x7fff, v28.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v16, 0, 0x42800000, s0
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v21, v27, v21
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v27.l, v14.h
	v_mov_b16_e32 v27.h, v4.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_dual_add_f32 v16, 1.0, v16 :: v_dual_and_b32 v27, 1, v27
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v27, v14, v27, 0x7fff
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v14, v6, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v28.l, 0x7fff, v27.h, vcc_lo
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v10, v14, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v27, 0xbfb8aa3b, v10
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v24, 0, 0x42800000, s0
	v_mul_f32_e32 v29, 0xbfb8aa3b, v12
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v29
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v29, null, v16, v16, v8
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v23, 0, 0x42800000, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v37, v29
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v22, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v24, v24, v38
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v38, 1, v4
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v14, 0xbfb8aa3b, v11
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v39, -v29, v37, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v38, v22, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v37, v39, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_scale_f32 v39, null, v24, v24, v10
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v43, vcc_lo, v8, v16, v8
	v_rcp_f32_e32 v46, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v11
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v48, v43, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v14, v14
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v22, -v29, v48, v43
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v50, -v39, v46, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v14, v14, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v23, 0xbfb8aa3b, v12 :: v_dual_add_f32 v14, 1.0, v14
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v41, null, v14, v14, v11
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v23, v23, v27
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v27.l, v21.h
	v_mov_b16_e32 v27.h, v4.h
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v49, -v41, v42, 1.0
	v_div_scale_f32 v32, null, v23, v23, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v42, v49, v42
	v_rcp_f32_e32 v40, v32
	v_div_scale_f32 v49, s2, v11, v14, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v53, v49, v42 :: v_dual_lshlrev_b32 v20, 16, v20
	v_fma_f32 v45, -v32, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v40, v45, v40 :: v_dual_and_b32 v27, 1, v27
	v_div_scale_f32 v45, s0, v12, v23, v12
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v27, v21, v27, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v52, v45, v40
	v_fmac_f32_e32 v48, v22, v37
	v_fma_f32 v22, -v32, v52, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v29, v48, v43
	v_fmac_f32_e32 v52, v22, v40
	v_fma_f32 v22, -v41, v53, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v29, v29, v37, v48
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v32, -v32, v52, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v53, v22, v42
	v_div_fixup_f32 v8, v29, v16, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v22, v32, v40, v52
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v40, v5, v20
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v32, -v41, v53, v49
	s_mov_b32 vcc_lo, s2
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v37, v6, v18
	v_dual_mul_f32 v6, v6, v20 :: v_dual_mul_f32 v5, v5, v18
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s3, v10, v24, v10
	v_div_fmas_f32 v32, v32, v42, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v6, v6, v9 :: v_dual_mul_f32 v5, v5, v35
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s3
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v18, v40, v36
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v32, v14, v11
	v_div_fixup_f32 v11, v22, v23, v12
	v_mul_f32_e32 v54, v50, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v6, v6, v9 :: v_dual_mul_f32 v5, v5, v11
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v43, -v39, v54, v50
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v11.h, v4.h
	v_mov_b16_e32 v9.h, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v4.l, v6.h
	v_mov_b16_e32 v11.l, v5.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v54, v43, v46
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v5, v5
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v39, -v39, v54, v50
	v_div_fmas_f32 v39, v39, v46, v54
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v10, v39, v24, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v38.l, 0x7fff, v27.h, vcc_lo
	v_and_b32_e32 v12, 1, v4
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_add3_u32 v12, v6, v12, 0x7fff
	v_add3_u32 v6, v5, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v5.h, 0x7fff, v12.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_cndmask_b16 v0.l, 0x7fff, v6.h, s2
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v8, v18, v8
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v20, v37, v34
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v12, 0x7632
	v_cndmask_b32_e32 v6, v17, v25, vcc_lo
	v_cndmask_b32_e32 v11, v33, v19, vcc_lo
	v_mov_b16_e32 v4.l, v8.h
	v_cmp_o_f32_e64 s1, v8, v8
	v_cndmask_b32_e32 v12, 0x3276, v12, vcc_lo
	v_cndmask_b32_e32 v18, v26, v38, vcc_lo
	v_cndmask_b32_e32 v14, v28, v30, vcc_lo
	v_dual_cndmask_b32 v21, v38, v26 :: v_dual_and_b32 v4, 1, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v12, v12, 8, v12
	v_add3_u32 v4, v8, v4, 0x7fff
	v_cndmask_b32_e32 v8, v19, v33, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v19, v51, v15 :: v_dual_and_b32 v12, 0x760076, v12
	v_cndmask_b32_e32 v15, v15, v51, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s1
	v_cndmask_b32_e32 v4, v25, v17, vcc_lo
	v_dual_cndmask_b32 v17, v31, v13 :: v_dual_mul_f32 v10, v20, v10
	v_cndmask_b32_e32 v13, v13, v31, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v23, v0, v47 :: v_dual_cndmask_b32 v0, v47, v0
	v_mov_b16_e32 v9.l, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s0, v10, v10
	v_and_b32_e32 v9, 1, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v9, v10, v9, 0x7fff
	v_mov_b32_e32 v10, 0x5410
	v_cndmask_b16 v5.l, 0x7fff, v9.h, s0
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v10, 0x1054, v10, vcc_lo
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v9, v30, v28, vcc_lo
	v_permlanex16_b32 v20, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v16, v5, v44, vcc_lo
	v_lshl_or_b32 v10, v10, 8, v10
	v_cndmask_b32_e32 v5, v44, v5, vcc_lo
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 0x540054, v10
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v8, v10, 4, v10
	v_lshl_or_b32 v10, v12, 4, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v25, 0x5040504, v8
	v_and_b32_e32 v26, 0x7060706, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v8, v6, v4, v25
	v_perm_b32 v9, v6, v4, v26
	v_perm_b32 v10, v20, v11, v25
	v_perm_b32 v11, v20, v11, v26
	v_perm_b32 v12, v22, v14, v25
	v_perm_b32 v13, v22, v14, v26
	v_perm_b32 v22, v0, v23, v25
	v_perm_b32 v23, v0, v23, v26
	v_add_lshl_u32 v0, v1, v3, 1
	v_perm_b32 v14, v5, v16, v25
	v_perm_b32 v15, v5, v16, v26
	v_add_lshl_u32 v3, v2, v3, 1
	v_perm_b32 v16, v24, v17, v25
	v_perm_b32 v17, v24, v17, v26
	v_perm_b32 v18, v27, v19, v25
	v_perm_b32 v19, v27, v19, v26
	v_add_lshl_u32 v1, v1, v7, 1
	v_perm_b32 v20, v28, v21, v25
	v_perm_b32 v21, v28, v21, v26
	v_add_lshl_u32 v2, v2, v7, 1
	s_clause 0x3
	buffer_store_b128 v[8:11], v0, s[12:15], 0 offen
	buffer_store_b128 v[12:15], v3, s[12:15], 0 offen
	buffer_store_b128 v[16:19], v1, s[12:15], 0 offen
	buffer_store_b128 v[20:23], v2, s[12:15], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 147
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.num_vgpr, 147
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.numbered_sgpr, 30
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12416
; TotalNumSgprs: 32
; NumVgprs: 147
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 32
; NumVGPRsForWavesPerEU: 147
; Occupancy: 9
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     147
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
