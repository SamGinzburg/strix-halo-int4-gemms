	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x54
	s_load_b32 s3, s[0:1], 0x60
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s8, s2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v6, 63, v0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v79, 15, v0
	v_lshlrev_b32_e32 v82, 1, v0
	v_lshlrev_b32_e32 v83, 4, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s5, s4, 31
	s_lshr_b32 s5, s5, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s5
	s_ashr_i32 s4, s4, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s7
	s_sub_i32 s12, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s3, s3, s12
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s4, s12, s4
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s3, s3, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s4
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s13, s3
	s_cvt_f32_u32 s5, s13
	s_sub_i32 s6, 0, s13
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s6
	s_abs_i32 s6, s2
	s_add_i32 s5, s5, s4
	s_xor_b32 s4, s2, s3
	s_mul_hi_u32 s14, s6, s5
	s_ashr_i32 s15, s4, 31
	s_mul_i32 s5, s14, s13
	s_add_i32 s17, s14, 1
	s_sub_i32 s16, s6, s5
	s_load_b256 s[4:11], s[0:1], 0x20
	s_sub_i32 s18, s16, s13
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s14, s17, s14
	s_cselect_b32 s16, s18, s16
	s_add_i32 s17, s14, 1
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s13, s17, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s13, s13, s15
	s_sub_i32 s33, s13, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s33, s3
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s12
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s2
	s_addc_u32 s5, s5, s3
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_add_u32 s6, s6, s2
	s_addc_u32 s7, s7, s3
	s_load_b64 s[38:39], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s8, s2
	s_addc_u32 s7, s9, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s10, s2
	s_addc_u32 s3, s11, s3
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[36:37], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[10:11], s[2:3], 0x0
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[40:41], s[4:5], 0x0
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_gt_i32 s35, 0
	s_mov_b32 s4, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s2, s38, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v4, null, s39, 0, s2
	v_add_nc_u32_e32 v69, s38, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[36:37], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[10:11], v[3:4]
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v4, s38 :: v_dual_lshlrev_b32 v5, 1, v0
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 4, v0
.Ltmp4:
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s38, v6
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x40
	s_load_b128 s[12:15], s[0:1], 0x10
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v80, 0xf0, v0
	v_dual_mov_b32 v8, 0 :: v_dual_lshlrev_b32 v81, 4, v79
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v95, 0
	v_mov_b32_e32 v94, 0
	v_mov_b32_e32 v96, 0
	v_mov_b32_e32 v98, 0
	s_lshl_b32 s9, s33, 8
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_and_b32 s41, s2, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_lshrrev_b32_e32 v2, 3, v0
	v_lshrrev_b32_e32 v3, 1, v0
	v_lshlrev_b32_e32 v5, 3, v0
	v_lshrrev_b32_e32 v84, 3, v80
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v1, s9, v81
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_and_b32_e32 v86, 24, v2
	v_xor3_b32 v3, v82, v3, v2
	v_dual_mov_b32 v7, 0 :: v_dual_and_b32 v2, 24, v5
	v_lshlrev_b32_e32 v4, 5, v79
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b32 s28, s[0:1], 0x50
	v_dual_mov_b32 v5, 0 :: v_dual_and_b32 v58, 24, v3
	v_lshrrev_b32_e32 v3, 2, v0
	v_xor_b32_e32 v2, v2, v84
	.loc	1 1068 35                       ; ragged.py:1068:35
	s_mul_i32 s0, s35, s34
	v_mov_b32_e32 v9, 0
	v_lshl_add_u32 v57, v6, 5, 0
	v_xor_b32_e32 v3, v82, v3
	v_lshl_or_b32 v87, v79, 9, v2
	v_and_b32_e32 v2, 0xe00, v83
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v11, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v3, 24, v3
	v_xor_b32_e32 v102, 0x88, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[70:71], null, s0, s40, v[1:2]
	v_mov_b32_e32 v1, 0
	v_and_or_b32 v85, v82, 24, v4
	v_or3_b32 v88, v2, v3, v4
	v_xor_b32_e32 v103, 0x110, v87
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v65, 8, v85
	v_xor_b32_e32 v66, 16, v85
	v_xor_b32_e32 v67, 24, v85
	v_xor_b32_e32 v68, 0x208, v85
	v_xor_b32_e32 v72, 0x218, v85
	v_xor_b32_e32 v73, 0x210, v85
	v_xor_b32_e32 v74, 0x410, v85
	v_xor_b32_e32 v75, 0x418, v85
	v_xor_b32_e32 v76, 0x408, v85
	v_xor_b32_e32 v77, 0x618, v85
	v_xor_b32_e32 v78, 0x610, v85
	v_xor_b32_e32 v101, 0x608, v85
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v91, 0, v66
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v93, 0, v68
	v_add_nc_u32_e32 v90, 0, v65
	v_add_nc_u32_e32 v92, 0, v67
	v_xor_b32_e32 v65, 0x198, v87
	v_xor_b32_e32 v66, 8, v88
	v_xor_b32_e32 v67, 16, v88
	v_xor_b32_e32 v68, 24, v88
	v_mov_b32_e32 v4, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v89, v57, v58
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_add_nc_u32_e32 v94, 0, v72
	v_add_nc_u32_e32 v95, 0, v73
	v_add_nc_u32_e32 v96, 0, v74
	v_add_nc_u32_e32 v97, 0, v75
	v_add_nc_u32_e32 v98, 0, v76
	v_add_nc_u32_e32 v99, 0, v77
	v_add_nc_u32_e32 v100, 0, v78
	v_add_nc_u32_e32 v101, 0, v101
	v_add_nc_u32_e32 v102, 0, v102
	v_add_nc_u32_e32 v103, 0, v103
	v_add_nc_u32_e32 v104, 0, v65
	v_add_nc_u32_e32 v105, 0, v66
	v_add_nc_u32_e32 v106, 0, v67
	v_add_nc_u32_e32 v107, 0, v68
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s29, 0
	s_and_b32 s21, s7, 0xffff
	s_mov_b32 s16, s4
	s_mov_b32 s17, s5
	s_mov_b32 s20, s6
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v67, s29, v84
	v_or_b32_e32 v68, s29, v86
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_add_nc_u32_e32 v114, 0, v85
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s29, s29, 32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v73, 1, v67
	v_or_b32_e32 v75, 2, v68
	v_or_b32_e32 v74, 1, v68
	v_or_b32_e32 v76, 3, v68
	v_or_b32_e32 v77, 4, v68
	v_or_b32_e32 v78, 5, v68
	v_or_b32_e32 v108, 6, v68
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_mad_u64_u32 v[65:66], null, v67, s34, v[70:71]
	v_mad_u64_u32 v[71:72], null, v73, s34, v[70:71]
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v109, 7, v68
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s0, s35, v67
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[66:67], null, v68, s28, v[69:70]
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s8, s35, v73
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[72:73], null, v75, s28, v[69:70]
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s35, v68
	v_cmp_gt_i32_e64 s1, s35, v74
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[67:68], null, v74, s28, v[69:70]
	v_mad_u64_u32 v[73:74], null, v76, s28, v[69:70]
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s2, s35, v75
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[74:75], null, v77, s28, v[69:70]
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s3, s35, v76
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[75:76], null, v78, s28, v[69:70]
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s4, s35, v77
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[76:77], null, v108, s28, v[69:70]
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s5, s35, v78
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[77:78], null, v109, s28, v[69:70]
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s7, s35, v109
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 vcc_lo, s41, vcc_lo
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v65, 0x80000000, v65, s0
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s6, s35, v108
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e32 v78, 0x80000000, v66, vcc_lo
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 vcc_lo, s41, s2
	s_and_b32 s0, s41, s3
	s_and_b32 s2, s41, s4
	s_and_b32 s3, s41, s5
	s_and_b32 s5, s41, s7
	s_and_b32 s1, s41, s1
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v110, 0x80000000, v74, s2
	v_cndmask_b32_e64 v74, 0x80000000, v77, s5
	v_cndmask_b32_e64 v108, 0x80000000, v67, s1
	v_cndmask_b32_e32 v109, 0x80000000, v72, vcc_lo
	v_cndmask_b32_e64 v72, 0x80000000, v73, s0
	v_cndmask_b32_e64 v73, 0x80000000, v75, s3
	.loc	1 1070 30 is_stmt 1             ; ragged.py:1070:30
	buffer_load_b128 v[65:68], v65, s[20:23], 0 offen
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s4, s41, s6
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v71, 0x80000000, v71, s8
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v75, 0x80000000, v76, s4
	s_clause 0x4
	buffer_load_u8 v77, v78, s[16:19], 0 offen
	buffer_load_u8 v76, v74, s[16:19], 0 offen
	buffer_load_u8 v78, v73, s[16:19], 0 offen
	buffer_load_u8 v111, v72, s[16:19], 0 offen
	buffer_load_u8 v108, v108, s[16:19], 0 offen
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_b128 v[71:74], v71, s[20:23], 0 offen
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_clause 0x2
	buffer_load_u8 v112, v75, s[16:19], 0 offen
	buffer_load_u8 v110, v110, s[16:19], 0 offen
	buffer_load_u8 v109, v109, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_lt_i32 s29, s35
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt vmcnt(7)
	v_lshlrev_b16 v75.l, 8, v76.l
	s_waitcnt vmcnt(6)
	v_lshlrev_b16 v75.h, 8, v78.l
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v76.l, 8, v111.l
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v76.h, 8, v108.l
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt vmcnt(3)
	v_perm_b32 v78, v71, v65, 0x5010400
	v_perm_b32 v71, v71, v65, 0x7030602
	v_perm_b32 v115, v72, v66, 0x5010400
	v_perm_b32 v116, v72, v66, 0x7030602
	v_perm_b32 v117, v73, v67, 0x5010400
	v_perm_b32 v118, v73, v67, 0x7030602
	v_perm_b32 v135, v74, v68, 0x5010400
	v_perm_b32 v136, v74, v68, 0x7030602
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt vmcnt(2)
	v_or_b16 v68.h, v112.l, v75.l
	s_waitcnt vmcnt(1)
	v_or_b16 v68.l, v110.l, v75.h
	s_waitcnt vmcnt(0)
	v_or_b16 v67.h, v109.l, v76.l
	v_or_b16 v67.l, v77.l, v76.h
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_lshrrev_b32_e32 v72, 8, v78
	v_lshrrev_b32_e32 v73, 24, v78
	v_lshrrev_b32_e32 v74, 8, v71
	v_lshrrev_b32_e32 v77, 24, v71
	v_and_b16 v65.l, 0xff, v78.l
	v_and_b16 v65.h, 0xff, v78.h
	v_and_b16 v66.l, 0xff, v71.l
	v_and_b16 v66.h, 0xff, v71.h
	.loc	1 1069 30                       ; ragged.py:1069:30
	ds_store_b64 v89, v[67:68]
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_lshlrev_b16 v67.l, 8, v72.l
	v_lshlrev_b16 v67.h, 8, v73.l
	v_lshlrev_b16 v68.l, 8, v74.l
	v_lshlrev_b16 v68.h, 8, v77.l
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_or_b16 v112.l, v65.l, v67.l
	v_or_b16 v112.h, v65.h, v67.h
	v_or_b16 v113.l, v66.l, v68.l
	v_or_b16 v113.h, v66.h, v68.h
	.loc	1 1069 30                       ; ragged.py:1069:30
	ds_load_b64 v[125:126], v96
	ds_load_b64 v[127:128], v97
	ds_load_b64 v[77:78], v98
	ds_load_b64 v[129:130], v99
	ds_load_b64 v[131:132], v100
	ds_load_b64 v[133:134], v101
	ds_load_2addr_stride64_b64 v[108:111], v114 offset1:1
	ds_load_2addr_stride64_b64 v[65:68], v114 offset0:2 offset1:3
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_add_nc_u32_e32 v114, 0, v87
	.loc	1 1069 30                       ; ragged.py:1069:30
	ds_load_b64 v[119:120], v90
	ds_load_b64 v[75:76], v91
	ds_load_b64 v[71:72], v92
	ds_load_b64 v[121:122], v93
	ds_load_b64 v[123:124], v94
	ds_load_b64 v[73:74], v95
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v114, v112
	ds_store_b16_d16_hi v114, v112 offset:32
	ds_store_b16 v114, v113 offset:64
	ds_store_b16_d16_hi v114, v113 offset:96
	v_lshrrev_b32_e32 v112, 8, v115
	v_and_b16 v112.h, 0xff, v115.l
	v_lshrrev_b32_e32 v113, 24, v115
	v_lshrrev_b32_e32 v114, 24, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v112.l, 8, v112.l
	v_lshlrev_b16 v113.l, 8, v113.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v114.l, 8, v114.l
	v_or_b16 v112.l, v112.h, v112.l
	v_and_b16 v112.h, 0xff, v115.h
	v_lshrrev_b32_e32 v115, 24, v117
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or_b16 v112.h, v112.h, v113.l
	v_lshrrev_b32_e32 v113, 8, v116
	v_and_b16 v113.h, 0xff, v116.l
	v_lshlrev_b16 v115.l, 8, v115.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v113.l, 8, v113.l
	v_or_b16 v113.l, v113.h, v113.l
	v_and_b16 v113.h, 0xff, v116.h
	v_lshrrev_b32_e32 v116, 24, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or_b16 v113.h, v113.h, v114.l
	v_lshrrev_b32_e32 v114, 8, v117
	v_and_b16 v114.h, 0xff, v117.l
	v_lshlrev_b16 v116.l, 8, v116.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v114.l, 8, v114.l
	v_or_b16 v114.l, v114.h, v114.l
	v_and_b16 v114.h, 0xff, v117.h
	v_lshrrev_b32_e32 v117, 24, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or_b16 v114.h, v114.h, v115.l
	v_lshrrev_b32_e32 v115, 8, v118
	v_and_b16 v115.h, 0xff, v118.l
	v_lshlrev_b16 v117.l, 8, v117.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v115.l, 8, v115.l
	v_or_b16 v115.l, v115.h, v115.l
	v_and_b16 v115.h, 0xff, v118.h
	v_lshrrev_b32_e32 v118, 24, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or_b16 v115.h, v115.h, v116.l
	v_lshrrev_b32_e32 v116, 8, v135
	v_and_b16 v116.h, 0xff, v135.l
	v_lshlrev_b16 v118.l, 8, v118.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v116.l, 8, v116.l
	v_or_b16 v116.l, v116.h, v116.l
	v_and_b16 v116.h, 0xff, v135.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v116.h, v116.h, v117.l
	v_lshrrev_b32_e32 v117, 8, v136
	v_and_b16 v117.h, 0xff, v136.l
	v_lshlrev_b16 v117.l, 8, v117.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v117.l, v117.h, v117.l
	v_and_b16 v117.h, 0xff, v136.h
	v_or_b16 v117.h, v117.h, v118.l
	ds_store_b16 v102, v112
	ds_store_b16_d16_hi v102, v112 offset:32
	ds_store_b16 v102, v113 offset:64
	ds_store_b16_d16_hi v102, v113 offset:96
	ds_store_b16 v103, v114
	ds_store_b16_d16_hi v103, v114 offset:32
	ds_store_b16 v103, v115 offset:64
	ds_store_b16_d16_hi v103, v115 offset:96
	ds_store_b16 v104, v116
	ds_store_b16_d16_hi v104, v116 offset:32
	ds_store_b16 v104, v117 offset:64
	ds_store_b16_d16_hi v104, v117 offset:96
	v_add_nc_u32_e32 v112, 0, v88
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[112:115], v112 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[121:122], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[114:115], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[112:113], v[125:126], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[114:115], v[125:126], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[112:113], v[129:130], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[114:115], v[129:130], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[112:113], v[108:109], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[114:115], v[108:109], v[9:16] neg_lo:[1,1,0]
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[112:115], v105 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[110:111], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[114:115], v[110:111], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[112:113], v[119:120], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[114:115], v[119:120], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[112:113], v[127:128], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[114:115], v[127:128], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[112:113], v[131:132], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[114:115], v[131:132], v[57:64] neg_lo:[1,1,0]
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[108:111], v106 offset1:8
	ds_load_2addr_stride64_b64 v[112:115], v107 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[108:109], v[75:76], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[110:111], v[75:76], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[108:109], v[123:124], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[110:111], v[123:124], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[108:109], v[65:66], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[110:111], v[65:66], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[108:109], v[133:134], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[110:111], v[133:134], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[112:113], v[71:72], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[114:115], v[71:72], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[73:74], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[114:115], v[73:74], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[112:113], v[77:78], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[114:115], v[77:78], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[112:113], v[67:68], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[114:115], v[67:68], v[57:64] neg_lo:[1,1,0]
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v86, v1
	v_cvt_f32_i32_e32 v84, v2
	v_cvt_f32_i32_e32 v75, v3
	v_cvt_f32_i32_e32 v77, v4
	v_cvt_f32_i32_e32 v90, v5
	v_cvt_f32_i32_e32 v89, v6
	v_cvt_f32_i32_e32 v88, v7
	v_cvt_f32_i32_e32 v87, v8
	v_cvt_f32_i32_e32 v95, v9
	v_cvt_f32_i32_e32 v74, v10
	v_cvt_f32_i32_e32 v72, v11
	v_cvt_f32_i32_e32 v71, v12
	v_cvt_f32_i32_e32 v70, v13
	v_cvt_f32_i32_e32 v98, v14
	v_cvt_f32_i32_e32 v97, v15
	v_cvt_f32_i32_e32 v96, v16
	v_cvt_f32_i32_e32 v68, v17
	v_cvt_f32_i32_e32 v67, v18
	v_cvt_f32_i32_e32 v65, v19
	v_cvt_f32_i32_e32 v66, v20
	v_cvt_f32_i32_e32 v85, v21
	v_cvt_f32_i32_e32 v78, v22
	v_cvt_f32_i32_e32 v76, v23
	v_cvt_f32_i32_e32 v73, v24
	v_cvt_f32_i32_e32 v91, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v25, v27
	v_cvt_f32_i32_e32 v23, v28
	v_cvt_f32_i32_e32 v21, v29
	v_cvt_f32_i32_e32 v94, v30
	v_cvt_f32_i32_e32 v93, v31
	v_cvt_f32_i32_e32 v92, v32
	v_cvt_f32_i32_e32 v24, v33
	v_cvt_f32_i32_e32 v22, v34
	v_cvt_f32_i32_e32 v19, v35
	v_cvt_f32_i32_e32 v20, v36
	v_cvt_f32_i32_e32 v30, v37
	v_cvt_f32_i32_e32 v29, v38
	v_cvt_f32_i32_e32 v28, v39
	v_cvt_f32_i32_e32 v27, v40
	v_cvt_f32_i32_e32 v35, v41
	v_cvt_f32_i32_e32 v18, v42
	v_cvt_f32_i32_e32 v17, v43
	v_cvt_f32_i32_e32 v15, v44
	v_cvt_f32_i32_e32 v13, v45
	v_cvt_f32_i32_e32 v38, v46
	v_cvt_f32_i32_e32 v37, v47
	v_cvt_f32_i32_e32 v36, v48
	v_cvt_f32_i32_e32 v16, v49
	v_cvt_f32_i32_e32 v14, v50
	v_cvt_f32_i32_e32 v11, v51
	v_cvt_f32_i32_e32 v12, v52
	v_cvt_f32_i32_e32 v34, v53
	v_cvt_f32_i32_e32 v33, v54
	v_cvt_f32_i32_e32 v32, v55
	v_cvt_f32_i32_e32 v31, v56
	v_cvt_f32_i32_e32 v39, v57
	v_cvt_f32_i32_e32 v10, v58
	v_cvt_f32_i32_e32 v9, v59
	v_cvt_f32_i32_e32 v8, v60
	v_cvt_f32_i32_e32 v2, v61
	v_cvt_f32_i32_e32 v42, v62
	v_cvt_f32_i32_e32 v41, v63
	v_cvt_f32_i32_e32 v40, v64
	v_dual_mov_b32 v4, s38 :: v_dual_mov_b32 v5, v82
	v_mov_b32_e32 v1, v83
	v_mov_b32_e32 v3, v69
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v43, 32, v79
	v_or_b32_e32 v6, 48, v79
	v_or_b32_e32 v45, 16, v79
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s31, 0x31027000
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v43, s1, s38, v43
	v_add_co_u32 v6, s0, s38, v6
	v_add_co_ci_u32_e64 v44, null, s39, 0, s1
	v_add_co_u32 v45, s1, s38, v45
	v_add_co_ci_u32_e64 v7, null, s39, 0, s0
	v_add_co_ci_u32_e64 v46, null, s39, 0, s1
	v_add_co_u32 v47, s1, s38, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v48, null, s39, 0, s1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[10:11], v[6:7]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[36:37], v[45:46]
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_le_i64_e64 s5, s[36:37], v[47:48]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[10:11], v[47:48]
	v_cmp_gt_i64_e64 s4, s[10:11], v[45:46]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[36:37], v[43:44]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[10:11], v[43:44]
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_lshlrev_b32_e32 v6, 1, v6
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v7, 1, v47
	v_lshlrev_b32_e32 v44, 1, v45
	v_lshlrev_b32_e32 v43, 1, v43
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s5, s5, s6
	s_and_b32 s3, s3, s4
	s_and_b32 s1, s1, s2
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_cndmask_b32_e64 v7, 0x80000000, v7, s5
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	v_cndmask_b32_e64 v43, 0x80000000, v43, s1
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b32 s28, s12
	s_clause 0x3
	buffer_load_u16 v45, v7, s[28:31], 0 offen
	buffer_load_u16 v44, v44, s[28:31], 0 offen
	buffer_load_u16 v43, v43, s[28:31], 0 offen
	buffer_load_u16 v46, v6, s[28:31], 0 offen
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_or_b32_e32 v6, s9, v0
	s_mul_i32 s0, s34, s40
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v49, v80, 2, 0
	.loc	1 1119 36                       ; ragged.py:1119:36
	v_add_lshl_u32 v6, v6, s0, 1
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v50, v80, 1, 0
	s_mov_b32 s0, 0x76543210
	.loc	1 1119 36                       ; ragged.py:1119:36
	buffer_load_u16 v47, v6, s[28:31], 0 offen
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s29, s25, 0xffff
	s_mov_b32 s28, s24
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v44, 16, v44
	v_lshlrev_b32_e32 v45, 16, v45
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v99, 3, v0
	v_and_b32_e32 v100, 0x80, v0
	v_and_b32_e32 v101, 4, v0
.Ltmp6:
	.loc	1 1115 17                       ; ragged.py:1115:17
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v59, v90, v45 :: v_dual_lshlrev_b32 v46, 16, v46
	v_mul_f32_e32 v57, v77, v45
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v69, v74, v45 :: v_dual_mul_f32 v74, v93, v44
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v48, 28, v5
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v54, v86, v45 :: v_dual_lshlrev_b32 v5, 5, v0
	v_mul_f32_e32 v58, v75, v45
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v52, v99, 9, 0
.Ltmp8:
	.loc	1 1115 17                       ; ragged.py:1115:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v42, v42, v46 :: v_dual_lshlrev_b32 v47, 16, v47
	v_dual_mul_f32 v64, v91, v44 :: v_dual_and_b32 v51, 32, v5
	v_mul_f32_e32 v37, v37, v43
	v_dual_mul_f32 v60, v89, v45 :: v_dual_and_b32 v7, 0x60, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_add3_u32 v48, v49, v51, v48
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v53, v96, v45 :: v_dual_and_b32 v102, 8, v0
	v_dual_mul_f32 v72, v72, v45 :: v_dual_lshlrev_b32 v5, 5, v99
	v_mul_f32_e32 v49, v95, v45
	v_dual_mul_f32 v51, v98, v45 :: v_dual_lshlrev_b32 v6, 1, v100
	v_mul_f32_e32 v55, v84, v45
	v_mul_f32_e32 v62, v88, v45
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v106, v101, 2, v52
.Ltmp10:
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v52, v97, v45
	v_dual_mul_f32 v63, v87, v45 :: v_dual_mul_f32 v90, v92, v44
	v_dual_mul_f32 v71, v71, v45 :: v_dual_mul_f32 v38, v38, v43
	v_dual_mul_f32 v45, v70, v45 :: v_dual_mul_f32 v40, v40, v46
	v_dual_mul_f32 v70, v94, v44 :: v_dual_mul_f32 v41, v41, v46
	v_mul_f32_e32 v94, v78, v44
	v_dual_mul_f32 v91, v66, v44 :: v_dual_mul_f32 v108, v20, v43
	v_dual_mul_f32 v92, v65, v44 :: v_dual_mul_f32 v107, v22, v43
	v_dual_mul_f32 v93, v85, v44 :: v_dual_mul_f32 v30, v30, v43
	v_dual_mul_f32 v95, v76, v44 :: v_dual_mul_f32 v18, v18, v43
	v_dual_mul_f32 v97, v23, v44 :: v_dual_mul_f32 v112, v13, v43
	v_dual_mul_f32 v98, v21, v44 :: v_dual_mul_f32 v111, v27, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v48, v47
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[75:78], v50 offset:512
	ds_load_b128 v[20:23], v50 offset:528
	ds_load_b128 v[82:85], v50
	ds_load_b128 v[86:89], v50 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v35, v35, v43
	v_dual_mul_f32 v36, v36, v43 :: v_dual_mul_f32 v39, v39, v46
	v_mul_f32_e32 v68, v68, v44
	v_dual_mul_f32 v67, v67, v44 :: v_dual_mul_f32 v24, v24, v43
	v_dual_mul_f32 v96, v73, v44 :: v_dual_mul_f32 v19, v19, v43
	v_dual_mul_f32 v26, v26, v44 :: v_dual_mul_f32 v109, v29, v43
	v_dual_mul_f32 v25, v25, v44 :: v_dual_mul_f32 v110, v28, v43
	v_dual_mul_f32 v17, v17, v43 :: v_dual_mul_f32 v14, v14, v46
	v_dual_mul_f32 v15, v15, v43 :: v_dual_mul_f32 v114, v12, v46
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v113, v16, v46 :: v_dual_mul_f32 v56, v49, v75
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v115, v11, v46 :: v_dual_mul_f32 v66, v53, v23
	v_dual_mul_f32 v116, v34, v46 :: v_dual_mul_f32 v61, v51, v21
	v_dual_mul_f32 v117, v33, v46 :: v_dual_mul_f32 v64, v64, v75
	v_dual_mul_f32 v10, v10, v46 :: v_dual_mul_f32 v33, v35, v75
	v_dual_mul_f32 v9, v9, v46 :: v_dual_mul_f32 v28, v36, v23
	v_dual_mul_f32 v8, v8, v46 :: v_dual_mul_f32 v29, v38, v21
	v_dual_mul_f32 v2, v2, v46 :: v_dual_mul_f32 v13, v40, v23
	v_dual_mul_f32 v118, v32, v46 :: v_dual_mul_f32 v43, v90, v23
	v_dual_mul_f32 v119, v31, v46 :: v_dual_mul_f32 v46, v70, v21
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v65, v52, v22 :: v_dual_mul_f32 v16, v39, v75
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v44, v74, v22 :: v_dual_mul_f32 v51, v57, v85
	v_dual_mul_f32 v27, v37, v22 :: v_dual_mul_f32 v50, v58, v84
	v_dual_mul_f32 v11, v42, v21 :: v_dual_mul_f32 v12, v41, v22
	v_mul_f32_e32 v49, v55, v83
	v_mul_f32_e32 v47, v54, v82
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v55, v63, v89 :: v_dual_mul_f32 v54, v62, v88
	v_dual_mul_f32 v53, v60, v87 :: v_dual_mul_f32 v52, v59, v86
	v_dual_mul_f32 v60, v45, v20 :: v_dual_mul_f32 v59, v71, v78
	v_dual_mul_f32 v58, v72, v77 :: v_dual_mul_f32 v57, v69, v76
	v_dual_mul_f32 v68, v68, v82 :: v_dual_mul_f32 v73, v91, v85
	v_mul_f32_e32 v74, v94, v87
	v_dual_mul_f32 v69, v67, v83 :: v_dual_mul_f32 v70, v96, v89
	v_dual_mul_f32 v71, v95, v88 :: v_dual_mul_f32 v62, v97, v78
	v_dual_mul_f32 v75, v93, v86 :: v_dual_mul_f32 v48, v98, v20
	v_dual_mul_f32 v63, v25, v77 :: v_dual_mul_f32 v42, v24, v82
	v_dual_mul_f32 v67, v26, v76 :: v_dual_mul_f32 v40, v108, v85
	v_dual_mul_f32 v39, v19, v84 :: v_dual_mul_f32 v38, v30, v86
	v_dual_mul_f32 v41, v107, v83 :: v_dual_mul_f32 v36, v110, v88
	v_dual_mul_f32 v35, v111, v89 :: v_dual_mul_f32 v30, v112, v20
	v_dual_mul_f32 v37, v109, v87 :: v_dual_mul_f32 v34, v18, v76
	v_dual_mul_f32 v31, v15, v78 :: v_dual_mul_f32 v32, v17, v77
	v_dual_mul_f32 v24, v115, v84 :: v_dual_mul_f32 v23, v114, v85
	v_dual_mul_f32 v25, v14, v83 :: v_dual_mul_f32 v26, v113, v82
	v_dual_mul_f32 v21, v117, v87 :: v_dual_mul_f32 v22, v116, v86
	v_dual_mul_f32 v14, v2, v20 :: v_dual_mul_f32 v15, v8, v78
	v_dual_mul_f32 v17, v9, v77 :: v_dual_mul_f32 v20, v10, v76
	v_mul_f32_e32 v72, v92, v84
	v_dual_mul_f32 v18, v119, v89 :: v_dual_mul_f32 v19, v118, v88
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v2, |v47|, |v49|
	v_max3_f32 v8, |v51|, |v52|, |v53|
	v_max3_f32 v10, |v57|, |v58|, |v59|
	v_max3_f32 v45, |v60|, |v61|, |v65|
	v_max_f32_e64 v76, |v68|, |v69|
	v_max3_f32 v77, |v73|, |v75|, |v74|
	v_max3_f32 v82, |v67|, |v63|, |v62|
	v_max3_f32 v83, |v48|, |v46|, |v44|
	v_max_f32_e64 v84, |v42|, |v41|
	v_max3_f32 v85, |v40|, |v38|, |v37|
	v_max3_f32 v87, |v34|, |v32|, |v31|
	v_max3_f32 v88, |v30|, |v29|, |v27|
	v_max_f32_e64 v89, |v26|, |v25|
	v_max3_f32 v90, |v23|, |v22|, |v21|
	v_max3_f32 v92, |v20|, |v17|, |v15|
	v_max3_f32 v93, |v14|, |v11|, |v12|
	v_max3_f32 v9, |v54|, |v55|, |v56|
	v_max3_f32 v78, |v71|, |v70|, |v64|
	v_max3_f32 v86, |v36|, |v35|, |v33|
	v_max3_f32 v91, |v19|, |v18|, |v16|
	v_max3_f32 v2, v2, |v50|, v8
	v_max3_f32 v8, v10, v45, |v66|
	v_max3_f32 v10, v76, |v72|, v77
	v_max3_f32 v45, v82, v83, |v43|
	v_max3_f32 v76, v84, |v39|, v85
	v_max3_f32 v77, v87, v88, |v28|
	v_max3_f32 v82, v89, |v24|, v90
	v_max3_f32 v83, v92, v93, |v13|
	v_max3_f32 v2, v2, v9, v8
	v_max3_f32 v8, v10, v78, v45
	v_max3_f32 v9, v76, v86, v77
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v1, 0x680, v1, v5
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v10, v82, v91, v83
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v76, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v77, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v78, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_lshrrev_b32_e32 v103, 3, v100
	v_permlanex16_b32 v82, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v104, v101, 6, 0
	v_xor_b32_e32 v105, v5, v7
	v_lshl_add_u32 v45, v102, 4, v106
	v_xor_b32_e32 v1, v1, v7
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v76, v76, v76 :: v_dual_max_f32 v77, v77, v77
	v_max_f32_e32 v78, v78, v78
	v_max_f32_e32 v85, v82, v82
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v45, v45, v6, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v82, v2, v76 :: v_dual_max_f32 v83, v8, v77
	v_dual_max_f32 v84, v9, v78 :: v_dual_max_f32 v85, v10, v85
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v104, v103, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshlrev_b32_e32 v87, 5, v101
	ds_store_b128 v45, v[82:85]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[82:85], v1
	v_lshrrev_b32_e32 v78, 1, v7
	v_lshl_add_u32 v88, v99, 4, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp19:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v7, v81, v7
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v1, v82 :: v_dual_mov_b32 v10, v84
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v82, v82 :: v_dual_max_f32 v45, v85, v85
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v8, v83
	v_mov_b32_dpp v85, v85 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v84, v84
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v77, v85, v85
	v_max_f32_e32 v9, v83, v83
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v8, v8, v8 :: v_dual_max_f32 v45, v45, v77
	v_dual_max_f32 v1, v2, v1 :: v_dual_max_f32 v2, v9, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v8, v76, v10 :: v_dual_mov_b32 v9, v45
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v10, v1 :: v_dual_mov_b32 v77, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v76, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v77, v77, v77
	v_dual_max_f32 v9, v45, v9 :: v_dual_max_f32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v1, v1, v10
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v45, v9 :: v_dual_lshlrev_b32 v86, 3, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v76
	v_max_f32_e32 v8, v8, v77
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v76, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v45, v45 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v77, v2 :: v_dual_add_nc_u32 v10, 0, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v45, v45, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v82, v8
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v76, v76
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v10, v10, v78, v86
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v85, v9, v45
	v_max_f32_e32 v77, v77, v77
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v45.h, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v83, v2, v77
	v_max_f32_e32 v84, v82, v82
	v_max_f32_e32 v82, v1, v76
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v88, v87, v86
.Ltmp42:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v86.h, v45.h
	v_mov_b16_e32 v87.h, v45.h
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v84, v8, v84
.Ltmp44:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v8, 4, v80
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v10, v[82:85]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[82:85], v1
.Ltmp46:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 48, v8
	v_or_b32_e32 v76, 32, v8
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s38, v8
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v78, 16, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s39, 0, s0
	v_add_co_u32 v9, s0, s38, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v10, null, s39, 0, s0
	v_add_co_u32 v76, s0, s38, v76
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[36:37], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[10:11], v[1:2]
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v77, v82, v82 :: v_dual_max_f32 v82, v83, v83
	v_dual_max_f32 v83, v84, v84 :: v_dual_max_f32 v84, v85, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v85, 0x2b8cbccc, v77
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v77, null, s39, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v89, 0x2b8cbccc, v83 :: v_dual_max_f32 v84, 0x2b8cbccc, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v90, null, 0x40e00000, 0x40e00000, v85
	v_div_scale_f32 v98, vcc_lo, v85, 0x40e00000, v85
	v_div_scale_f32 v91, null, 0x40e00000, 0x40e00000, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v94, v90
	v_div_scale_f32 v99, s1, v89, 0x40e00000, v89
	v_rcp_f32_e32 v95, v91
	v_div_scale_f32 v93, null, 0x40e00000, 0x40e00000, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v97, v93
	v_fma_f32 v83, -v91, v95, 1.0
	v_max_f32_e32 v88, 0x2b8cbccc, v82
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v90, v94, 1.0
	v_fmac_f32_e32 v95, v83, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v92, null, 0x40e00000, 0x40e00000, v88
	v_fmac_f32_e32 v94, v82, v94
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s0, s38, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v96, v92
	v_div_scale_f32 v100, s2, v88, 0x40e00000, v88
	v_fma_f32 v102, -v93, v97, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s39, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[36:37], v[9:10]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v97, v102, v97
	v_div_scale_f32 v103, s3, v84, 0x40e00000, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v101, -v92, v96, 1.0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[10:11], v[82:83]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[36:37], v[82:83]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_dual_fmac_f32 v96, v101, v96 :: v_dual_mul_f32 v101, v99, v95
	v_mul_f32_e32 v78, v98, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v106, -v91, v101, v99
	v_fma_f32 v105, -v90, v78, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v101, v106, v95 :: v_dual_fmac_f32 v78, v105, v94
	v_fma_f32 v2, -v91, v101, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v1, -v90, v78, v98
	v_div_fmas_f32 v1, v1, v94, v78
	s_mov_b32 vcc_lo, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[10:11], v[9:10]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v2, v95, v101
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v1, v1, 0x40e00000, v85
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[36:37], v[76:77]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v89
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v86.l, v1.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v102, v100, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v45.l, v2.h
	v_and_b32_e32 v9, 1, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v107, -v92, v102, v100
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v9, v1, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v102, v107, v96
	v_fma_f32 v90, -v92, v102, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v78, v90, v96, v102
	s_mov_b32 vcc_lo, s3
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[10:11], v[76:77]
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v77, 0xffff0000, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v10, v78, 0x40e00000, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v86, s10, v51, v77, v51
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v104, v103, v97
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v89, null, v77, v77, v53
	v_div_scale_f32 v83, null, v77, v77, v50
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v108, -v93, v104, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v113, v89
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v87.l, v10.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v101, null, v77, v77, v59
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v104, v108, v97
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v110, v83
	v_div_scale_f32 v95, null, v77, v77, v56
	v_div_scale_f32 v107, null, v77, v77, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v91, -v93, v104, v103
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v93, null, v77, v77, v55
	v_div_scale_f32 v103, null, v77, v77, v60
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v85, v91, v97, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v115, v93
	v_div_scale_f32 v97, null, v77, v77, v57
	v_div_scale_f32 v91, null, v77, v77, v54
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v78, v85, 0x40e00000, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v117, v97
	v_rcp_f32_e32 v119, v101
	v_fma_f32 v129, -v89, v113, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v76, 1, v87
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v131, -v93, v115, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v84, 1, v45
	v_mov_b16_e32 v45.l, v78.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v87, null, v77, v77, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v115, v131, v115
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v2, v84, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v45, 1, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v85, null, v77, v77, v51
	v_div_scale_f32 v105, null, v77, v77, v61
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v78, v45, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v45, null, v77, v77, v47
	v_div_scale_f32 v78, null, v77, v77, v49
	v_rcp_f32_e32 v112, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v108, v45
	v_rcp_f32_e32 v114, v91
	v_rcp_f32_e32 v109, v78
	v_rcp_f32_e32 v116, v95
	v_rcp_f32_e32 v120, v103
	v_rcp_f32_e32 v123, v107
	v_fma_f32 v126, -v83, v110, 1.0
	v_div_scale_f32 v84, s9, v50, v77, v50
	v_div_scale_f32 v99, null, v77, v77, v58
	v_rcp_f32_e32 v111, v85
	v_rcp_f32_e32 v121, v105
	v_fma_f32 v124, -v45, v108, 1.0
	v_fma_f32 v125, -v78, v109, 1.0
	v_fma_f32 v133, -v97, v117, 1.0
	v_fma_f32 v135, -v101, v119, 1.0
	v_fmac_f32_e32 v110, v126, v110
	v_div_scale_f32 v82, s8, v49, v77, v49
	v_div_scale_f32 v90, s12, v53, v77, v53
	v_div_scale_f32 v98, s16, v57, v77, v57
	v_rcp_f32_e32 v118, v99
	v_fma_f32 v128, -v87, v112, 1.0
	v_fma_f32 v130, -v91, v114, 1.0
	v_fma_f32 v132, -v95, v116, 1.0
	v_fma_f32 v136, -v103, v120, 1.0
	v_fma_f32 v139, -v107, v123, 1.0
	v_dual_fmac_f32 v108, v124, v108 :: v_dual_fmac_f32 v117, v133, v117
	v_fmac_f32_e32 v109, v125, v109
	v_fmac_f32_e32 v113, v129, v113
	v_dual_fmac_f32 v119, v135, v119 :: v_dual_mul_f32 v126, v84, v110
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v133, v98, v117
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v10, v10, v76, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v76, vcc_lo, v47, v77, v47
	v_div_scale_f32 v88, s11, v52, v77, v52
	v_div_scale_f32 v106, null, v77, v77, v65
	v_fma_f32 v127, -v85, v111, 1.0
	v_fma_f32 v137, -v105, v121, 1.0
	v_fmac_f32_e32 v112, v128, v112
	v_dual_fmac_f32 v114, v130, v114 :: v_dual_fmac_f32 v123, v139, v123
	v_dual_fmac_f32 v116, v132, v116 :: v_dual_mul_f32 v125, v82, v109
	v_dual_fmac_f32 v120, v136, v120 :: v_dual_mul_f32 v129, v90, v113
	v_fma_f32 v139, -v83, v126, v84
	v_div_scale_f32 v94, s14, v55, v77, v55
	v_rcp_f32_e32 v122, v106
	v_fma_f32 v134, -v99, v118, 1.0
	v_fmac_f32_e32 v111, v127, v111
	v_dual_fmac_f32 v121, v137, v121 :: v_dual_mul_f32 v124, v76, v108
	v_mul_f32_e32 v131, v94, v115
	v_fma_f32 v137, -v78, v125, v82
	v_fmac_f32_e32 v126, v139, v110
	v_fma_f32 v139, -v89, v129, v90
	v_mul_f32_e32 v128, v88, v112
	v_div_scale_f32 v92, s13, v54, v77, v54
	v_dual_fmac_f32 v118, v134, v118 :: v_dual_fmac_f32 v125, v137, v109
	v_mul_f32_e32 v127, v86, v111
	v_fma_f32 v135, -v45, v124, v76
	v_fmac_f32_e32 v129, v139, v113
	v_fma_f32 v137, -v87, v128, v88
	v_fma_f32 v138, -v106, v122, 1.0
	v_div_scale_f32 v96, s15, v56, v77, v56
	v_fmac_f32_e32 v124, v135, v108
	v_fma_f32 v135, -v85, v127, v86
	v_fmac_f32_e32 v128, v137, v112
	v_fma_f32 v137, -v93, v131, v94
	v_mul_f32_e32 v130, v92, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v122, v138, v122 :: v_dual_fmac_f32 v127, v135, v111
	v_div_scale_f32 v102, s18, v59, v77, v59
	v_fmac_f32_e32 v131, v137, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v135, -v91, v130, v92
	v_div_scale_f32 v100, s17, v58, v77, v58
	v_mul_f32_e32 v136, v102, v119
	v_div_scale_f32 v104, s19, v60, v77, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v130, v135, v114
	v_fma_f32 v135, -v97, v133, v98
	v_mul_f32_e32 v132, v96, v116
	v_mul_f32_e32 v138, v104, v120
	v_fma_f32 v78, -v78, v125, v82
	v_fma_f32 v82, -v83, v126, v84
	v_fmac_f32_e32 v133, v135, v117
	v_fma_f32 v139, -v95, v132, v96
	v_div_scale_f32 v135, s20, v61, v77, v61
	v_mul_f32_e32 v134, v100, v118
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v132, v139, v116 :: v_dual_and_b32 v83, 0xffff0000, v10
	v_fma_f32 v139, -v101, v136, v102
	v_fma_f32 v84, -v85, v127, v86
	v_fma_f32 v86, -v87, v128, v88
	v_fma_f32 v87, -v89, v129, v90
	v_fma_f32 v89, -v91, v130, v92
	v_fmac_f32_e32 v136, v139, v119
	v_mul_f32_e32 v139, v135, v121
	v_fma_f32 v137, -v99, v134, v100
	v_fma_f32 v91, -v93, v131, v94
	v_fma_f32 v93, -v95, v132, v96
	v_fma_f32 v95, -v97, v133, v98
	v_div_scale_f32 v88, null, v83, v83, v68
	v_fmac_f32_e32 v134, v137, v118
	v_fma_f32 v137, -v103, v138, v104
	v_fma_f32 v97, -v101, v136, v102
	v_div_scale_f32 v85, s22, v66, v77, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v96, -v99, v134, v100
	v_fmac_f32_e32 v138, v137, v120
	v_fma_f32 v137, -v105, v139, v135
	v_div_scale_f32 v90, null, v83, v83, v69
	v_rcp_f32_e32 v92, v88
	v_mul_f32_e32 v94, v85, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v139, v137, v121
	v_div_scale_f32 v137, s21, v65, v77, v65
	v_fma_f32 v98, -v103, v138, v104
	v_fma_f32 v99, -v105, v139, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v140, v137, v122
	v_fma_f32 v141, -v106, v140, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v140, v141, v122
	v_fma_f32 v141, -v45, v124, v76
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v45, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v100, v141, v108, v124
	s_mov_b32 vcc_lo, s8
	v_div_fmas_f32 v78, v78, v109, v125
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fixup_f32 v47, v100, v77, v47
	v_div_fmas_f32 v82, v82, v110, v126
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v49, v78, v77, v49
	v_div_fmas_f32 v84, v84, v111, v127
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v50, v82, v77, v50
	v_div_fmas_f32 v78, v86, v112, v128
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v51, v84, v77, v51
	v_div_fmas_f32 v82, v87, v113, v129
	s_mov_b32 vcc_lo, s13
	v_div_fixup_f32 v52, v78, v77, v52
	v_div_fmas_f32 v84, v89, v114, v130
	s_mov_b32 vcc_lo, s14
	v_div_fixup_f32 v53, v82, v77, v53
	v_div_fmas_f32 v78, v91, v115, v131
	s_mov_b32 vcc_lo, s15
	v_div_fixup_f32 v54, v84, v77, v54
	v_div_fmas_f32 v82, v93, v116, v132
	s_mov_b32 vcc_lo, s16
	v_div_fixup_f32 v55, v78, v77, v55
	v_div_fmas_f32 v84, v95, v117, v133
	s_mov_b32 vcc_lo, s17
	v_div_fixup_f32 v56, v82, v77, v56
	v_div_fmas_f32 v78, v96, v118, v134
	s_mov_b32 vcc_lo, s18
	v_div_fixup_f32 v57, v84, v77, v57
	v_div_fmas_f32 v82, v97, v119, v136
	s_mov_b32 vcc_lo, s19
	v_fma_f32 v86, -v107, v94, v85
	v_div_fmas_f32 v84, v98, v120, v138
	v_fma_f32 v87, -v88, v92, 1.0
	v_div_fixup_f32 v59, v82, v77, v59
	v_rcp_f32_e32 v82, v90
	s_mov_b32 vcc_lo, s20
	v_div_fixup_f32 v58, v78, v77, v58
	v_div_fmas_f32 v78, v99, v121, v139
	v_div_fixup_f32 v60, v84, v77, v60
	v_fmac_f32_e32 v94, v86, v123
	v_fmac_f32_e32 v92, v87, v92
	v_div_scale_f32 v84, s8, v68, v83, v68
	v_div_scale_f32 v87, null, v83, v83, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v90, v82, 1.0
	v_div_fixup_f32 v61, v78, v77, v61
	v_fma_f32 v78, -v106, v140, v137
	v_fma_f32 v85, -v107, v94, v85
	v_dual_mul_f32 v89, v84, v92 :: v_dual_fmac_f32 v82, v86, v82
	v_rcp_f32_e32 v86, v87
	v_div_scale_f32 v93, null, v83, v83, v73
	s_mov_b32 vcc_lo, s21
	v_div_scale_f32 v91, s9, v69, v83, v69
	v_div_fmas_f32 v78, v78, v122, v140
	s_mov_b32 vcc_lo, s22
	v_rcp_f32_e32 v97, v93
	v_div_fmas_f32 v85, v85, v123, v94
	v_fma_f32 v94, -v88, v89, v84
	v_mul_f32_e32 v95, v91, v82
	v_fma_f32 v96, -v87, v86, 1.0
	v_div_fixup_f32 v65, v78, v77, v65
	v_div_fixup_f32 v66, v85, v77, v66
	v_fmac_f32_e32 v89, v94, v92
	v_div_scale_f32 v85, null, v83, v83, v75
	v_fma_f32 v77, -v90, v95, v91
	v_fmac_f32_e32 v86, v96, v86
	v_div_scale_f32 v78, s10, v72, v83, v72
	v_fma_f32 v94, -v93, v97, 1.0
	v_fma_f32 v84, -v88, v89, v84
	v_rcp_f32_e32 v88, v85
	v_fmac_f32_e32 v95, v77, v82
	v_mul_f32_e32 v77, v78, v86
	v_fmac_f32_e32 v97, v94, v97
	v_div_scale_f32 v94, s11, v73, v83, v73
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v96, null, v83, v83, v74
	v_div_fmas_f32 v84, v84, v92, v89
	v_fma_f32 v89, -v90, v95, v91
	v_fma_f32 v90, -v87, v77, v78
	v_mul_f32_e32 v91, v94, v97
	v_fma_f32 v92, -v85, v88, 1.0
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v77, v90, v86 :: v_dual_and_b32 v76, 0xffff0000, v1
	v_div_fmas_f32 v82, v89, v82, v95
	v_rcp_f32_e32 v89, v96
	v_fma_f32 v90, -v93, v91, v94
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s8, v75, v83, v75
	v_div_fixup_f32 v69, v82, v83, v69
	v_fma_f32 v78, -v87, v77, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v91, v90, v97 :: v_dual_mul_f32 v82, v92, v88
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v68, v84, v83, v68
	v_fma_f32 v84, -v96, v89, 1.0
	v_div_scale_f32 v87, null, v83, v83, v71
	v_div_fmas_f32 v77, v78, v86, v77
	v_fma_f32 v78, -v93, v91, v94
	v_fma_f32 v86, -v85, v82, v92
	v_div_scale_f32 v93, null, v83, v83, v70
	v_fmac_f32_e32 v89, v84, v89
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v90, s9, v74, v83, v74
	v_fmac_f32_e32 v82, v86, v88
	v_rcp_f32_e32 v86, v93
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v72, v77, v83, v72
	v_div_fmas_f32 v78, v78, v97, v91
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v77, -v85, v82, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v87, v84, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v73, v78, v83, v73
	v_fma_f32 v78, -v96, v91, v90
	v_fma_f32 v92, -v93, v86, 1.0
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v94, null, v83, v83, v64
	v_div_fmas_f32 v77, v77, v88, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v91, v78, v89 :: v_dual_fmac_f32 v86, v92, v86
	v_div_scale_f32 v92, null, v83, v83, v67
	v_rcp_f32_e32 v82, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v75, v77, v83, v75
	v_fma_f32 v77, -v96, v91, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v96, v92
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v85, s10, v71, v83, v71
	v_div_fmas_f32 v77, v77, v89, v91
	v_div_scale_f32 v88, s8, v70, v83, v70
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v97, -v94, v82, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v74, v77, v83, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v91, -v92, v96, 1.0
	v_mul_f32_e32 v95, v88, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v91, v96
	v_fmac_f32_e32 v82, v97, v82
	v_mul_f32_e32 v78, v85, v84
	v_fma_f32 v89, -v93, v95, v88
	v_div_scale_f32 v97, null, v83, v83, v43
	v_fma_f32 v90, -v87, v78, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v95, v89, v86
	v_div_scale_f32 v89, null, v83, v83, v63
	v_fmac_f32_e32 v78, v90, v84
	v_div_scale_f32 v90, s9, v64, v83, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v77, -v87, v78, v85
	v_div_scale_f32 v87, s11, v67, v83, v67
	v_div_fmas_f32 v77, v77, v84, v78
	v_fma_f32 v78, -v93, v95, v88
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v91, v87, v96
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v88, v89
	v_div_scale_f32 v93, null, v83, v83, v62
	v_div_fmas_f32 v78, v78, v86, v95
	v_fma_f32 v86, -v92, v91, v87
	v_div_fixup_f32 v71, v77, v83, v71
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v70, v78, v83, v70
	v_fmac_f32_e32 v91, v86, v96
	v_mul_f32_e32 v85, v90, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v95, -v89, v88, 1.0
	v_div_scale_f32 v78, s8, v63, v83, v63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v94, v85, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v88, v95, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v84, v82
	v_rcp_f32_e32 v84, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v77, -v94, v85, v90
	v_div_scale_f32 v90, null, v83, v83, v48
	v_div_fmas_f32 v77, v77, v82, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v93, v84, 1.0
	v_fma_f32 v82, -v92, v91, v87
	v_mul_f32_e32 v85, v78, v88
	v_div_scale_f32 v87, s9, v62, v83, v62
	v_fmac_f32_e32 v84, v86, v84
	v_rcp_f32_e32 v86, v90
	v_div_scale_f32 v92, null, v83, v83, v46
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v94, v87, v84
	v_div_fmas_f32 v82, v82, v96, v91
	v_fma_f32 v91, -v89, v85, v78
	v_rcp_f32_e32 v96, v92
	v_div_fixup_f32 v64, v77, v83, v64
	v_fma_f32 v77, -v93, v94, v87
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v95, -v90, v86, 1.0
	v_fmac_f32_e32 v85, v91, v88
	v_div_fixup_f32 v67, v82, v83, v67
	v_div_scale_f32 v82, s10, v48, v83, v48
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v91, null, v83, v83, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v92, v96, 1.0
	v_fma_f32 v78, -v89, v85, v78
	v_fmac_f32_e32 v94, v77, v84
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v77, v82, v86
	v_rcp_f32_e32 v89, v91
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s11, v46, v83, v46
	v_div_fmas_f32 v78, v78, v88, v85
	v_fma_f32 v85, -v93, v94, v87
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v87, -v90, v77, v82
	v_mul_f32_e32 v88, v95, v96
	v_div_fixup_f32 v63, v78, v83, v63
	v_div_fmas_f32 v84, v85, v84, v94
	v_rcp_f32_e32 v85, v97
	v_fma_f32 v93, -v91, v89, 1.0
	v_fmac_f32_e32 v77, v87, v86
	v_fma_f32 v87, -v92, v88, v95
	v_div_fixup_f32 v62, v84, v83, v62
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s8, v44, v83, v44
	v_fmac_f32_e32 v88, v87, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v97, v85, 1.0
	v_div_scale_f32 v87, null, v76, v76, v42
	v_fma_f32 v78, -v90, v77, v82
	v_mul_f32_e32 v82, v93, v89
	v_fmac_f32_e32 v85, v84, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v90, s9, v43, v83, v43
	v_div_fmas_f32 v77, v78, v86, v77
	v_fma_f32 v78, -v92, v88, v95
	v_fma_f32 v86, -v91, v82, v93
	v_div_scale_f32 v92, null, v76, v76, v41
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v48, v77, v83, v48
	v_fmac_f32_e32 v82, v86, v89
	v_rcp_f32_e32 v86, v92
	v_fma_f32 v94, -v87, v84, 1.0
	v_div_fmas_f32 v78, v78, v96, v88
	v_mul_f32_e32 v88, v90, v85
	v_fma_f32 v77, -v91, v82, v93
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v94, null, v76, v76, v39
	v_div_fixup_f32 v46, v78, v83, v46
	v_fma_f32 v78, -v97, v88, v90
	v_div_scale_f32 v91, s10, v42, v76, v42
	v_fma_f32 v93, -v92, v86, 1.0
	v_div_fmas_f32 v77, v77, v89, v82
	v_rcp_f32_e32 v82, v94
	v_fmac_f32_e32 v88, v78, v85
	v_mul_f32_e32 v78, v91, v84
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v89, s8, v41, v76, v41
	v_div_scale_f32 v93, null, v76, v76, v40
	v_div_fixup_f32 v44, v77, v83, v44
	v_fma_f32 v77, -v97, v88, v90
	v_fma_f32 v90, -v87, v78, v91
	v_mul_f32_e32 v95, v89, v86
	v_rcp_f32_e32 v96, v93
	v_fma_f32 v97, -v94, v82, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v78, v90, v84
	v_div_fmas_f32 v77, v77, v85, v88
	v_fma_f32 v85, -v92, v95, v89
	v_fmac_f32_e32 v82, v97, v82
	v_div_scale_f32 v88, s9, v39, v76, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v43, v77, v83, v43
	v_fma_f32 v90, -v93, v96, 1.0
	v_fma_f32 v77, -v87, v78, v91
	v_fmac_f32_e32 v95, v85, v86
	v_mul_f32_e32 v83, v88, v82
	v_div_scale_f32 v87, null, v76, v76, v38
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v96, v90, v96
	v_div_scale_f32 v85, s11, v40, v76, v40
	v_div_fmas_f32 v77, v77, v84, v78
	v_fma_f32 v78, -v92, v95, v89
	v_fma_f32 v84, -v94, v83, v88
	v_rcp_f32_e32 v89, v87
	v_div_scale_f32 v91, null, v76, v76, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v90, v85, v96 :: v_dual_fmac_f32 v83, v84, v82
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v78, v78, v86, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v86, -v93, v90, v85
	v_div_fixup_f32 v42, v77, v76, v42
	v_fma_f32 v92, -v87, v89, 1.0
	v_fma_f32 v77, -v94, v83, v88
	v_div_fixup_f32 v41, v78, v76, v41
	v_fmac_f32_e32 v90, v86, v96
	v_div_scale_f32 v78, s8, v38, v76, v38
	v_fmac_f32_e32 v89, v92, v89
	v_fma_f32 v86, -v91, v84, 1.0
	v_div_scale_f32 v88, null, v76, v76, v36
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v92, null, v76, v76, v35
	v_div_fmas_f32 v77, v77, v82, v83
	v_fma_f32 v82, -v93, v90, v85
	v_mul_f32_e32 v83, v78, v89
	v_fmac_f32_e32 v84, v86, v84
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v86, s9, v37, v76, v37
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v95, v92
	v_div_fmas_f32 v82, v82, v96, v90
	v_fma_f32 v90, -v87, v83, v78
	v_mul_f32_e32 v93, v86, v84
	v_div_fixup_f32 v39, v77, v76, v39
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v88, v85, 1.0
	v_fmac_f32_e32 v83, v90, v89
	v_fma_f32 v77, -v91, v93, v86
	v_div_fixup_f32 v40, v82, v76, v40
	v_div_scale_f32 v82, s10, v36, v76, v36
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v90, null, v76, v76, v33
	v_fma_f32 v94, -v92, v95, 1.0
	v_fma_f32 v78, -v87, v83, v78
	v_fmac_f32_e32 v93, v77, v84
	v_mul_f32_e32 v77, v82, v85
	v_rcp_f32_e32 v87, v90
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s11, v35, v76, v35
	v_div_fmas_f32 v78, v78, v89, v83
	v_fma_f32 v83, -v91, v93, v86
	v_div_scale_f32 v96, null, v76, v76, v34
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v86, -v88, v77, v82
	v_mul_f32_e32 v89, v94, v95
	v_div_fmas_f32 v83, v83, v84, v93
	v_rcp_f32_e32 v84, v96
	v_fma_f32 v91, -v90, v87, 1.0
	v_fmac_f32_e32 v77, v86, v85
	v_fma_f32 v86, -v92, v89, v94
	v_div_fixup_f32 v38, v78, v76, v38
	v_div_fixup_f32 v37, v83, v76, v37
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s8, v33, v76, v33
	v_fma_f32 v78, -v88, v77, v82
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v83, -v96, v84, 1.0
	v_fmac_f32_e32 v89, v86, v95
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v88, s9, v34, v76, v34
	v_div_fmas_f32 v77, v78, v85, v77
	v_fmac_f32_e32 v84, v83, v84
	v_mul_f32_e32 v82, v91, v87
	v_fma_f32 v78, -v92, v89, v94
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v86, null, v76, v76, v32
	v_div_scale_f32 v92, null, v76, v76, v31
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v78, v78, v95, v89
	v_mul_f32_e32 v89, v88, v84
	v_fma_f32 v85, -v90, v82, v91
	v_rcp_f32_e32 v83, v86
	v_div_fixup_f32 v36, v77, v76, v36
	v_div_fixup_f32 v35, v78, v76, v35
	v_fma_f32 v78, -v96, v89, v88
	v_fmac_f32_e32 v82, v85, v87
	v_rcp_f32_e32 v85, v92
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v78, v84
	v_fma_f32 v77, -v90, v82, v91
	v_fma_f32 v93, -v86, v83, 1.0
	v_div_scale_f32 v90, s10, v32, v76, v32
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v87, v82
	v_fma_f32 v91, -v92, v85, 1.0
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v87, s8, v31, v76, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v33, v77, v76, v33
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v91, null, v76, v76, v29
	v_mul_f32_e32 v78, v90, v83
	v_fma_f32 v77, -v96, v89, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v94, v87, v85
	v_rcp_f32_e32 v95, v91
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v88, -v86, v78, v90
	v_div_scale_f32 v93, null, v76, v76, v30
	v_div_fmas_f32 v77, v77, v84, v89
	v_fma_f32 v84, -v92, v94, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v78, v88, v83
	v_rcp_f32_e32 v82, v93
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v91, v95, 1.0
	v_div_fixup_f32 v34, v77, v76, v34
	v_fma_f32 v77, -v86, v78, v90
	v_fmac_f32_e32 v94, v84, v85
	v_div_scale_f32 v88, s9, v30, v76, v30
	v_fmac_f32_e32 v95, v89, v95
	v_div_scale_f32 v89, null, v76, v76, v27
	v_div_fmas_f32 v77, v77, v83, v78
	v_fma_f32 v78, -v92, v94, v87
	v_fma_f32 v96, -v93, v82, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v87, v89
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v86, s11, v29, v76, v29
	v_div_fmas_f32 v78, v78, v85, v94
	v_div_scale_f32 v92, null, v76, v76, v28
	v_mul_f32_e32 v90, v86, v95
	v_div_fixup_f32 v32, v77, v76, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v31, v78, v76, v31
	v_fma_f32 v94, -v89, v87, 1.0
	v_fmac_f32_e32 v82, v96, v82
	v_fma_f32 v85, -v91, v90, v86
	v_div_scale_f32 v78, s8, v27, v76, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v87, v94, v87 :: v_dual_mul_f32 v84, v88, v82
	v_fmac_f32_e32 v90, v85, v95
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v93, v84, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v83, v82
	v_rcp_f32_e32 v83, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v93, v84, v88
	v_div_scale_f32 v93, null, v45, v45, v25
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v82, v84
	v_fma_f32 v85, -v92, v83, 1.0
	v_fma_f32 v82, -v91, v90, v86
	v_mul_f32_e32 v84, v78, v87
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v86, s9, v28, v76, v28
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, null, v45, v45, v26
	v_div_fmas_f32 v82, v82, v95, v90
	v_fma_f32 v90, -v89, v84, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v91, v86, v83
	v_rcp_f32_e32 v88, v85
	v_div_fixup_f32 v30, v77, v76, v30
	v_div_fixup_f32 v29, v82, v76, v29
	v_fmac_f32_e32 v84, v90, v87
	v_fma_f32 v77, -v92, v91, v86
	v_rcp_f32_e32 v82, v93
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v95, null, v45, v45, v23
	v_fma_f32 v78, -v89, v84, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v85, v88, 1.0
	v_div_scale_f32 v89, null, v45, v45, v24
	v_fmac_f32_e32 v91, v77, v83
	v_div_scale_f32 v77, s10, v26, v45, v26
	v_fmac_f32_e32 v88, v90, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v90, v89
	v_fma_f32 v94, -v93, v82, 1.0
	v_div_fmas_f32 v78, v78, v87, v84
	v_fma_f32 v84, -v92, v91, v86
	v_mul_f32_e32 v86, v77, v88
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v82, v94, v82
	v_div_scale_f32 v87, s8, v25, v45, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v94, -v85, v86, v77
	v_fma_f32 v92, -v89, v90, 1.0
	v_rcp_f32_e32 v97, v95
	v_div_fmas_f32 v83, v84, v83, v91
	v_mul_f32_e32 v96, v87, v82
	v_fmac_f32_e32 v86, v94, v88
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s11, v24, v45, v24
	v_div_fixup_f32 v27, v78, v76, v27
	v_div_fixup_f32 v28, v83, v76, v28
	v_fma_f32 v76, -v85, v86, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v91, v92, v90
	v_div_scale_f32 v83, null, v45, v45, v22
	v_fma_f32 v84, -v93, v96, v87
	v_fma_f32 v78, -v95, v97, 1.0
	v_fma_f32 v77, -v89, v91, v92
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v96, v84, v82 :: v_dual_fmac_f32 v97, v78, v97
	v_fmac_f32_e32 v91, v77, v90
	v_rcp_f32_e32 v77, v83
	v_div_scale_f32 v78, s9, v23, v45, v23
	v_div_fmas_f32 v76, v76, v88, v86
	v_fma_f32 v84, -v93, v96, v87
	v_div_scale_f32 v86, null, v45, v45, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v85, v78, v97
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v26, v76, v45, v26
	v_fma_f32 v87, -v83, v77, 1.0
	v_div_fmas_f32 v82, v84, v82, v96
	v_fma_f32 v84, -v89, v91, v92
	v_rcp_f32_e32 v88, v86
	v_fma_f32 v89, -v95, v85, v78
	v_fmac_f32_e32 v77, v87, v77
	v_div_scale_f32 v87, s8, v22, v45, v22
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v85, v89, v97
	v_div_fmas_f32 v84, v84, v90, v91
	v_mul_f32_e32 v76, v87, v77
	v_div_fixup_f32 v25, v82, v45, v25
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v82, -v86, v88, 1.0
	v_fma_f32 v78, -v95, v85, v78
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v89, -v83, v76, v87
	v_div_fixup_f32 v24, v84, v45, v24
	v_div_scale_f32 v84, null, v45, v45, v19
	v_fmac_f32_e32 v88, v82, v88
	v_div_scale_f32 v82, s10, v21, v45, v21
	v_div_fmas_f32 v78, v78, v97, v85
	v_fmac_f32_e32 v76, v89, v77
	v_rcp_f32_e32 v90, v84
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v85, v82, v88
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v23, v78, v45, v23
	v_fma_f32 v78, -v83, v76, v87
	v_div_scale_f32 v89, null, v45, v45, v18
	v_fma_f32 v83, -v86, v85, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v78, v77, v76
	v_div_scale_f32 v77, null, v45, v45, v16
	v_fma_f32 v87, -v84, v90, 1.0
	v_rcp_f32_e32 v91, v89
	v_fmac_f32_e32 v85, v83, v88
	v_rcp_f32_e32 v83, v77
	v_div_scale_f32 v78, s8, v19, v45, v19
	v_fmac_f32_e32 v90, v87, v90
	v_div_scale_f32 v87, null, v45, v45, v20
	v_div_fixup_f32 v22, v76, v45, v22
	v_fma_f32 v82, -v86, v85, v82
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v89, v91, 1.0
	v_rcp_f32_e32 v93, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v77, v83, 1.0
	v_mul_f32_e32 v86, v78, v90
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v91, v76, v91
	v_div_scale_f32 v76, s9, v18, v45, v18
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v92, null, v45, v45, v17
	v_div_fmas_f32 v82, v82, v88, v85
	v_fma_f32 v85, -v84, v86, v78
	v_mul_f32_e32 v88, v76, v91
	v_div_scale_f32 v94, s10, v16, v45, v16
	v_fma_f32 v95, -v87, v93, 1.0
	v_rcp_f32_e32 v96, v92
	v_fmac_f32_e32 v86, v85, v90
	v_fma_f32 v85, -v89, v88, v76
	v_mul_f32_e32 v97, v94, v83
	v_fmac_f32_e32 v93, v95, v93
	v_div_scale_f32 v95, s11, v20, v45, v20
	v_div_fixup_f32 v21, v82, v45, v21
	v_fma_f32 v78, -v84, v86, v78
	v_fmac_f32_e32 v88, v85, v91
	v_fma_f32 v82, -v77, v97, v94
	v_mul_f32_e32 v84, v95, v93
	v_fma_f32 v85, -v92, v96, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v76, -v89, v88, v76
	v_fmac_f32_e32 v97, v82, v83
	v_fma_f32 v82, -v87, v84, v95
	v_fmac_f32_e32 v96, v85, v96
	v_div_scale_f32 v85, s8, v17, v45, v17
	v_div_fmas_f32 v78, v78, v90, v86
	v_div_scale_f32 v86, null, v45, v45, v15
	v_fma_f32 v77, -v77, v97, v94
	v_fmac_f32_e32 v84, v82, v93
	v_mul_f32_e32 v82, v85, v96
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v19, v78, v45, v19
	v_div_fmas_f32 v76, v76, v91, v88
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v88, v86
	v_div_fmas_f32 v77, v77, v83, v97
	v_fma_f32 v83, -v87, v84, v95
	v_fma_f32 v87, -v92, v82, v85
	v_div_fixup_f32 v18, v76, v45, v18
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v16, v77, v45, v16
	v_div_scale_f32 v77, null, v45, v45, v14
	v_fmac_f32_e32 v82, v87, v96
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v78, -v86, v88, 1.0
	v_div_fmas_f32 v83, v83, v93, v84
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v90, null, v45, v45, v13
	v_fma_f32 v76, -v92, v82, v85
	v_fmac_f32_e32 v88, v78, v88
	v_div_scale_f32 v78, null, v45, v45, v11
	v_div_fixup_f32 v20, v83, v45, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v76, v76, v96, v82
	v_rcp_f32_e32 v82, v77
	v_div_scale_f32 v83, null, v45, v45, v12
	v_rcp_f32_e32 v85, v78
	v_div_scale_f32 v84, vcc_lo, v15, v45, v15
	v_rcp_f32_e32 v87, v83
	v_div_fixup_f32 v17, v76, v45, v17
	v_rcp_f32_e32 v92, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_mul_f32_e32 v89, v84, v88
	v_fma_f32 v76, -v77, v82, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v78, v85, 1.0
	v_fma_f32 v93, -v86, v89, v84
	v_fmac_f32_e32 v82, v76, v82
	v_div_scale_f32 v76, s8, v14, v45, v14
	v_fma_f32 v94, -v83, v87, 1.0
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v91, s9, v11, v45, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v95, v76, v82
	v_fma_f32 v96, -v90, v92, 1.0
	v_fmac_f32_e32 v89, v93, v88
	v_fmac_f32_e32 v87, v94, v87
	v_div_scale_f32 v94, s10, v12, v45, v12
	v_mul_f32_e32 v97, v91, v85
	v_fma_f32 v93, -v77, v95, v76
	v_fmac_f32_e32 v92, v96, v92
	v_div_scale_f32 v96, s11, v13, v45, v13
	v_fma_f32 v84, -v86, v89, v84
	v_mul_f32_e32 v98, v94, v87
	v_fma_f32 v86, -v78, v97, v91
	v_fmac_f32_e32 v95, v93, v82
	v_mul_f32_e32 v99, v96, v92
	v_div_fmas_f32 v84, v84, v88, v89
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_fma_f32 v93, -v83, v98, v94
	v_fmac_f32_e32 v97, v86, v85
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v64, v64, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v77, v95, v76
	v_fma_f32 v77, -v90, v99, v96
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v78, v97, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v64, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v98, v93, v87
	v_fmac_f32_e32 v99, v77, v92
	v_div_fmas_f32 v76, v76, v82, v95
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v15, v84, v45, v15
	v_div_fmas_f32 v78, v78, v85, v97
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v85, v35
	v_and_b32_e32 v35, 15, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v83, v98, v94
	v_fma_f32 v82, -v90, v99, v96
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v14, v76, v45, v14
	v_div_fixup_f32 v11, v78, v45, v11
	v_div_fmas_f32 v77, v77, v87, v98
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v92, v99
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v12, v77, v45, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v13, v82, v45, v13
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v47
	v_rndne_f32_e32 v47, v49
	v_rndne_f32_e32 v49, v50
	v_rndne_f32_e32 v50, v51
	v_rndne_f32_e32 v51, v52
	v_rndne_f32_e32 v52, v53
	v_rndne_f32_e32 v53, v54
	v_rndne_f32_e32 v54, v55
	v_rndne_f32_e32 v55, v56
	v_rndne_f32_e32 v56, v57
	v_rndne_f32_e32 v57, v58
	v_rndne_f32_e32 v58, v59
	v_rndne_f32_e32 v59, v60
	v_rndne_f32_e32 v60, v61
	v_rndne_f32_e32 v61, v65
	v_rndne_f32_e32 v65, v66
	v_rndne_f32_e32 v66, v68
	v_rndne_f32_e32 v68, v69
	v_rndne_f32_e32 v69, v72
	v_rndne_f32_e32 v72, v73
	v_rndne_f32_e32 v73, v75
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_cvt_i32_f32_e32 v43, v43
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_cvt_i32_f32_e32 v75, v42
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v23, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v69, v69
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v91, v29
	v_and_b32_e32 v29, 15, v69
	v_and_b32_e32 v42, 15, v43
	v_and_b32_e32 v43, 15, v75
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v69, 10, v0
	v_and_b32_e32 v75, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v13, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v76, v41
	v_cvt_i32_f32_e32 v86, v33
	v_cvt_i32_f32_e32 v88, v32
	v_cvt_i32_f32_e32 v90, v30
	v_and_b32_e32 v30, 15, v72
	v_and_b32_e32 v32, 15, v74
	v_and_b32_e32 v33, 15, v71
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v71, 0x1800, v69
	v_lshlrev_b32_e32 v72, 6, v75
	v_lshlrev_b32_e32 v74, 6, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v19, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v77, v39
	v_cvt_i32_f32_e32 v78, v40
	v_cvt_i32_f32_e32 v94, v26
	v_cvt_i32_f32_e32 v95, v25
	v_cvt_i32_f32_e32 v96, v24
	v_cvt_i32_f32_e32 v97, v23
	v_and_b32_e32 v41, 15, v44
	v_and_b32_e32 v44, 15, v76
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v76, 0, v71, v72
	v_and_or_b32 v5, 0x1b00, v74, v5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v87, v34
	v_cvt_i32_f32_e32 v89, v31
	v_cvt_i32_f32_e32 v102, v16
	v_cvt_i32_f32_e32 v103, v20
	v_cvt_i32_f32_e32 v104, v17
	v_cvt_i32_f32_e32 v105, v15
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v82, v38
	v_cvt_i32_f32_e32 v92, v27
	v_cvt_i32_f32_e32 v93, v28
	v_cvt_i32_f32_e32 v101, v18
	v_cvt_i32_f32_e32 v106, v14
	v_cvt_i32_f32_e32 v107, v11
	v_cvt_i32_f32_e32 v108, v12
	v_cvt_i32_f32_e32 v109, v13
	v_and_b32_e32 v11, 15, v45
	v_and_b32_e32 v12, 15, v47
	v_and_b32_e32 v13, 15, v49
	v_and_b32_e32 v15, 15, v51
	v_and_b32_e32 v16, 15, v52
	v_and_b32_e32 v17, 15, v53
	v_and_b32_e32 v18, 15, v54
	v_and_b32_e32 v23, 15, v59
	v_and_b32_e32 v24, 15, v60
	v_and_b32_e32 v25, 15, v61
	v_and_b32_e32 v27, 15, v66
	v_and_b32_e32 v28, 15, v68
	v_and_b32_e32 v38, 15, v62
	v_and_b32_e32 v40, 15, v46
	v_and_b32_e32 v45, 15, v77
	v_and_b32_e32 v46, 15, v78
	v_and_b32_e32 v59, 15, v94
	v_and_b32_e32 v60, 15, v95
	v_and_b32_e32 v61, 15, v96
	v_and_b32_e32 v62, 15, v97
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v6, v76, v7, v6
	v_xad_u32 v5, v5, v80, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v14, 15, v50
	v_cvt_i32_f32_e32 v83, v37
	v_cvt_i32_f32_e32 v84, v36
	v_cvt_i32_f32_e32 v98, v22
	v_cvt_i32_f32_e32 v99, v21
	v_cvt_i32_f32_e32 v100, v19
	v_and_b32_e32 v19, 15, v55
	v_and_b32_e32 v20, 15, v56
	v_and_b32_e32 v21, 15, v57
	v_and_b32_e32 v22, 15, v58
	v_and_b32_e32 v26, 15, v65
	v_and_b32_e32 v34, 15, v70
	v_and_b32_e32 v36, 15, v67
	v_and_b32_e32 v37, 15, v63
	v_and_b32_e32 v51, 15, v86
	v_and_b32_e32 v52, 15, v87
	v_and_b32_e32 v53, 15, v88
	v_and_b32_e32 v54, 15, v89
	v_and_b32_e32 v67, 15, v102
	v_and_b32_e32 v68, 15, v103
	v_and_b32_e32 v69, 15, v104
	v_and_b32_e32 v70, 15, v105
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v6, v[11:14]
	ds_store_b128 v6, v[19:22] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[11:14], v5
	ds_load_b128 v[19:22], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[27:30]
	ds_store_b128 v6, v[35:38] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v5
	ds_load_b128 v[35:38], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[43:46]
	ds_store_b128 v6, v[51:54] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[43:46], v5
	ds_load_b128 v[51:54], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[59:62]
	ds_store_b128 v6, v[67:70] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[59:62], v5
	ds_load_b128 v[67:70], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[15:18]
	ds_store_b128 v6, v[23:26] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[15:18], v5
	ds_load_b128 v[23:26], v5 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v48, v48
	v_and_b32_e32 v47, 15, v82
	v_and_b32_e32 v49, 15, v84
	v_and_b32_e32 v50, 15, v85
	v_and_b32_e32 v31, 15, v73
	v_and_b32_e32 v39, 15, v48
	v_and_b32_e32 v48, 15, v83
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[31:34]
	ds_store_b128 v6, v[39:42] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[31:34], v5
	ds_load_b128 v[39:42], v5 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v55, 15, v90
	v_and_b32_e32 v56, 15, v91
	v_and_b32_e32 v57, 15, v92
	v_and_b32_e32 v58, 15, v93
	v_and_b32_e32 v63, 15, v98
	v_and_b32_e32 v64, 15, v99
	v_and_b32_e32 v65, 15, v100
	v_and_b32_e32 v66, 15, v101
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[47:50]
	ds_store_b128 v6, v[55:58] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[47:50], v5
	ds_load_b128 v[55:58], v5 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v71, 15, v106
	v_and_b32_e32 v72, 15, v107
	v_and_b32_e32 v73, 15, v108
	v_and_b32_e32 v74, 15, v109
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v16, v24, 4, v16
	v_lshl_or_b32 v24, v38, 4, v30
	v_lshl_or_b32 v30, v52, 4, v44
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v44, 3, v79
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, v8, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[63:66]
	ds_store_b128 v6, v[71:74] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[63:66], v5
	ds_load_b128 v[71:74], v5 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s34, 31
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v5, v19, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v4, s33, 7, v44
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_add_i32 s8, s34, s8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 16, v7
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v19, v21, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 32, v7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v6, v20, 4, v12
	v_lshl_or_b32 v20, v22, 4, v14
	v_lshl_or_b32 v15, v23, 4, v15
	v_lshl_or_b32 v17, v25, 4, v17
	v_lshl_or_b32 v18, v26, 4, v18
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 48, v7
	v_mad_u64_u32 v[7:8], null, v7, s8, v[4:5]
	v_mad_u64_u32 v[11:12], null, v11, s8, v[4:5]
	v_mad_u64_u32 v[12:13], null, v13, s8, v[4:5]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v21, v35, 4, v27
	v_lshl_or_b32 v22, v36, 4, v28
	v_lshl_or_b32 v23, v37, 4, v29
	v_lshl_or_b32 v25, v39, 4, v31
	v_lshl_or_b32 v26, v40, 4, v32
	v_lshl_or_b32 v27, v41, 4, v33
	v_lshl_or_b32 v28, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[13:14], null, v14, s8, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v20.l
	v_and_b16 v2.l, 0xff, v19.l
	v_lshlrev_b16 v4.l, 8, v6.l
	v_and_b16 v4.h, 0xff, v5.l
	v_lshlrev_b16 v5.l, 8, v18.l
	v_and_b16 v5.h, 0xff, v17.l
	v_lshlrev_b16 v6.l, 8, v16.l
	v_and_b16 v6.h, 0xff, v15.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v33, v55, 4, v47
	v_lshl_or_b32 v34, v56, 4, v48
	v_lshl_or_b32 v35, v57, 4, v49
	v_lshl_or_b32 v36, v58, 4, v50
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v2.l, v1.l
	v_or_b16 v14.l, v4.h, v4.l
	v_or_b16 v15.h, v5.h, v5.l
	v_or_b16 v15.l, v6.h, v6.l
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v1.l, 8, v24.l
	v_and_b16 v2.l, 0xff, v23.l
	v_lshlrev_b16 v4.l, 8, v22.l
	v_and_b16 v4.h, 0xff, v21.l
	v_lshlrev_b16 v5.l, 8, v28.l
	v_and_b16 v5.h, 0xff, v27.l
	v_lshlrev_b16 v6.l, 8, v26.l
	v_and_b16 v6.h, 0xff, v25.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v29, v51, 4, v43
	v_lshl_or_b32 v31, v53, 4, v45
	v_lshl_or_b32 v32, v54, 4, v46
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v41, v71, 4, v63
	v_lshl_or_b32 v42, v72, 4, v64
	v_lshl_or_b32 v43, v73, 4, v65
	v_lshl_or_b32 v45, v74, 4, v66
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[14:15], v7, s[28:31], 0 offen
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.h, v4.l
	v_or_b16 v8.h, v5.h, v5.l
	v_or_b16 v8.l, v6.h, v6.l
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	v_lshlrev_b16 v5.l, 8, v36.l
	v_and_b16 v5.h, 0xff, v35.l
	v_lshlrev_b16 v6.l, 8, v34.l
	v_and_b16 v6.h, 0xff, v33.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v67, 4, v59
	v_lshl_or_b32 v38, v68, 4, v60
	v_lshl_or_b32 v39, v69, 4, v61
	v_lshl_or_b32 v40, v70, 4, v62
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v32.l
	v_and_b16 v2.l, 0xff, v31.l
	v_lshlrev_b16 v4.l, 8, v30.l
	v_and_b16 v4.h, 0xff, v29.l
	buffer_store_b64 v[7:8], v11, s[28:31], 0 offen
	v_or_b16 v8.h, v5.h, v5.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v5.l, 8, v45.l
	v_and_b16 v5.h, 0xff, v43.l
	v_lshlrev_b16 v6.l, 8, v42.l
	v_and_b16 v6.h, 0xff, v41.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.h, v4.l
	v_lshlrev_b16 v1.l, 8, v40.l
	v_and_b16 v2.l, 0xff, v39.l
	v_lshlrev_b16 v4.l, 8, v38.l
	v_and_b16 v4.h, 0xff, v37.l
	v_cndmask_b32_e32 v14, 0x80000000, v12, vcc_lo
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v5, 4, v0
	v_lshrrev_b32_e32 v6, 2, v75
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v2.l, v1.l
	v_or_b16 v11.l, v4.h, v4.l
	v_cndmask_b32_e32 v4, 0x80000000, v13, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v5, 2, v5
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s34, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[7:8], v14, s[28:31], 0 offen
	buffer_store_b64 v[11:12], v4, s[28:31], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v44
	v_mov_b16_e32 v2.l, v10.h
	v_mov_b16_e32 v1.l, v9.h
	v_add3_u32 v5, v6, v5, v44
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s34, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v4, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s29, s27, 0xffff
	s_mov_b32 s28, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v0, v2, s33, 1
	s_and_b32 vcc_lo, vcc_lo, s41
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[28:31], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp47:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 142
		.amdhsa_next_free_sgpr 42
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 142
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 42
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14308
; TotalNumSgprs: 44
; NumVgprs: 142
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 44
; NumVGPRsForWavesPerEU: 142
; Occupancy: 10
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
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
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     142
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
