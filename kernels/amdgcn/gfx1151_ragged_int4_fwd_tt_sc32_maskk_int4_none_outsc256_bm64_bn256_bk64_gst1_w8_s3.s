	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[44:45], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v26, 0 :: v_dual_and_b32 v3, 63, v0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v27, 4, v0
	v_and_b32_e32 v98, 8, v0
	v_and_b32_e32 v96, 0x80, v0
	v_lshlrev_b32_e32 v97, 4, v0
	v_and_b32_e32 v99, 16, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s45, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s12, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_abs_i32 s3, s12
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s8
	s_add_i32 s7, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s3, s7
	s_xor_b32 s7, s12, s5
	s_mul_i32 s8, s2, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s13, s2, 1
	s_sub_i32 s14, s3, s6
	s_cmp_ge_u32 s3, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s2, s13, s2
	s_cselect_b32 s3, s14, s3
	s_add_i32 s13, s2, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s13, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s2, s7
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s45, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s45, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s12, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[4:5], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s8, s4
	s_addc_u32 s7, s9, s5
	s_load_b64 s[34:35], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[42:43], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[40:41], s[2:3], 0x0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s44, 0
	s_mov_b32 s6, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s34, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s2
	v_add_nc_u32_e32 v9, s34, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[42:43], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[40:41], v[1:2]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 8, v0
	v_and_b32_e32 v2, 0x80, v0
	v_lshlrev_b32_e32 v5, 4, v0
.Ltmp4:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v4, 16, v0
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s34, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow306
	s_load_b128 s[24:27], s[0:1], 0x40
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v28, 15, v0
	v_dual_mov_b32 v34, 0 :: v_dual_and_b32 v29, 0xf0, v0
	v_or_b32_e32 v91, 16, v27
	v_or_b32_e32 v92, 32, v27
	v_or_b32_e32 v93, 48, v27
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_mov_b32_e32 v80, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_and_b32 s46, s2, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[2:3], s[0:1], 0x20
	s_load_b256 s[16:23], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s34, v28
	v_bfe_i32 v10, v0, 3, 1
	v_bfe_i32 v11, v0, 4, 1
	v_dual_mov_b32 v62, 0 :: v_dual_lshlrev_b32 v21, 3, v0
	v_add_co_ci_u32_e64 v2, null, s35, 0, s6
	s_clause 0x1
	s_load_b32 s47, s[0:1], 0x58
	s_load_b32 s48, s[0:1], 0x50
	v_add_co_u32 v3, vcc_lo, v1, 16
	v_dual_mov_b32 v77, 0 :: v_dual_and_b32 v100, 12, v27
	v_dual_mov_b32 v61, 0 :: v_dual_and_b32 v10, 0x88, v10
	v_dual_mov_b32 v68, 0 :: v_dual_and_b32 v11, 0x108, v11
	v_dual_mov_b32 v45, 0 :: v_dual_and_b32 v22, 0x70, v97
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s2, s4
	s_addc_u32 s5, s3, s5
	v_dual_mov_b32 v52, 0 :: v_dual_and_b32 v21, 0x700, v21
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s7, s[4:5], 0x0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	v_dual_mov_b32 v47, 0 :: v_dual_and_b32 v20, 0x270, v97
	v_xor3_b32 v30, v11, v100, v10
	v_bfe_i32 v11, v0, 7, 1
	v_or3_b32 v33, v22, v21, v10
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[42:43], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[40:41], v[1:2]
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v1, s34, v28
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[42:43], v[3:4]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[40:41], v[3:4]
	v_or_b32_e32 v31, v10, v22
	v_add_nc_u32_e32 v32, 0, v20
	v_and_b32_e32 v20, 0x7f, v0
	v_dual_mov_b32 v46, 0 :: v_dual_and_b32 v11, 0x88, v11
	v_lshlrev_b32_e32 v10, 5, v0
	v_xor_b32_e32 v37, 8, v33
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	s_lshl_b32 s3, s45, 8
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[40:41], v[5:6]
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v2, 16, v1
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v3, 32, v1
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v4, 48, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v101, v1, s44
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v1, s3, v27
	v_xor_b32_e32 v36, v11, v20
	v_lshlrev_b32_e32 v11, 2, v29
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v112, 0, v37
	v_dual_mov_b32 v37, 0 :: v_dual_and_b32 v10, 32, v10
	v_mov_b32_e32 v53, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s4, s47, s33
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v12, s3, v91
	v_or_b32_e32 v13, s3, v92
	v_or_b32_e32 v14, s3, v93
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s4, s4, s7
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v15, 64, v1
	v_or_b32_e32 v16, 0x50, v1
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v110, 0, v36
	v_mov_b32_e32 v36, 0
	v_add3_u32 v39, 0, v11, v10
	v_mad_u64_u32 v[10:11], null, v1, s47, s[4:5]
	v_or_b32_e32 v17, 0x60, v1
	v_mad_u64_u32 v[11:12], null, v12, s47, s[4:5]
	v_or_b32_e32 v18, 0x70, v1
	v_mad_u64_u32 v[12:13], null, v13, s47, s[4:5]
	v_or_b32_e32 v19, 0x80, v1
	v_mad_u64_u32 v[13:14], null, v14, s47, s[4:5]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[42:43], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[40:41], v[7:8]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v8, 0x90, v1
	v_dual_mov_b32 v55, 0 :: v_dual_lshlrev_b32 v20, 1, v0
	v_mad_u64_u32 v[14:15], null, v15, s47, s[4:5]
	v_or_b32_e32 v7, 0xa0, v1
	v_mad_u64_u32 v[15:16], null, v16, s47, s[4:5]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[42:43], v[5:6]
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v6, 0xb0, v1
	v_mad_u64_u32 v[16:17], null, v17, s47, s[4:5]
	v_or_b32_e32 v5, 0xc0, v1
	v_mad_u64_u32 v[17:18], null, v18, s47, s[4:5]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v104, v4, s44
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v4, 0xd0, v1
	v_mad_u64_u32 v[18:19], null, v19, s47, s[4:5]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v103, v3, s44
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v3, 0xe0, v1
	v_dual_mov_b32 v71, 0 :: v_dual_and_b32 v38, 28, v20
	v_mad_u64_u32 v[19:20], null, v8, s47, s[4:5]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v102, v2, s44
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v2, 0xf0, v1
	v_mad_u64_u32 v[20:21], null, v7, s47, s[4:5]
	v_mad_u64_u32 v[21:22], null, v6, s47, s[4:5]
	v_mad_u64_u32 v[22:23], null, v5, s47, s[4:5]
	v_xor_b32_e32 v34, 8, v31
	v_xor_b32_e32 v35, 0x108, v31
	v_dual_mov_b32 v69, 0 :: v_dual_lshlrev_b32 v40, 1, v29
	v_mad_u64_u32 v[23:24], null, v4, s47, s[4:5]
	s_mov_b32 s8, 0
	v_mad_u64_u32 v[24:25], null, v3, s47, s[4:5]
	v_mad_u64_u32 v[25:26], null, v2, s47, s[4:5]
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v1, s8
	v_or_b32_e32 v105, s3, v0
	v_add_nc_u32_e32 v107, 0, v31
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v108, 0, v34
	v_add_nc_u32_e32 v109, 0, v35
	v_add_nc_u32_e32 v111, 0, v33
	v_add_nc_u32_e32 v113, v39, v38
	v_mov_b32_e32 v38, 0
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v114, 0, v40
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v106, v32, v30
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v32, 0
	v_mov_b32_e32 v30, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v3, s10
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v5, s12
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v7, s14
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v26, 0
	v_mov_b32_e32 v2, s9
	v_mov_b32_e32 v4, s11
	v_mov_b32_e32 v6, s13
	v_mov_b32_e32 v8, s15
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s19, s19, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s23, s23, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s5
	s_and_b32 s2, s2, s6
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s49, s44, s7
	s_mov_b32 s28, s16
	s_mov_b32 s29, s17
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s30
	s_mov_b32 s19, s31
	s_mov_b32 s36, s20
	s_mov_b32 s37, s21
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s20, s22
	s_mov_b32 s21, s23
	s_mov_b32 s22, s30
	s_mov_b32 s23, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1138 28                       ; ragged.py:1138:28
	s_lshl_b32 s3, s8, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v117, s3, v100
	v_or_b32_e32 v118, s3, v28
	v_mad_u64_u32 v[115:116], null, v117, s48, v[9:10]
	v_or_b32_e32 v116, 1, v117
	v_or_b32_e32 v119, 3, v117
	v_or_b32_e32 v120, 2, v117
	v_cmp_gt_i32_e64 s3, s47, v117
	v_add_nc_u32_e32 v121, v10, v118
	v_cmp_gt_i32_e64 s5, s47, v116
	v_mad_u64_u32 v[116:117], null, v116, s48, v[9:10]
	v_cmp_gt_i32_e64 s4, s47, v118
	v_add_nc_u32_e32 v122, v11, v118
	v_add_nc_u32_e32 v123, v12, v118
	v_add_nc_u32_e32 v124, v13, v118
	v_add_nc_u32_e32 v125, v14, v118
	v_add_nc_u32_e32 v126, v15, v118
	v_add_nc_u32_e32 v127, v16, v118
	v_add_nc_u32_e32 v128, v17, v118
	v_add_nc_u32_e32 v129, v18, v118
	v_add_nc_u32_e32 v130, v19, v118
	v_add_nc_u32_e32 v131, v20, v118
	v_add_nc_u32_e32 v132, v21, v118
	v_add_nc_u32_e32 v133, v22, v118
	v_add_nc_u32_e32 v134, v23, v118
	v_add_nc_u32_e32 v135, v24, v118
	v_add_nc_u32_e32 v136, v25, v118
	v_mad_u64_u32 v[117:118], null, v119, s48, v[9:10]
	v_cmp_gt_i32_e64 s6, s47, v119
	v_mad_u64_u32 v[118:119], null, v120, s48, v[9:10]
	v_cmp_gt_i32_e64 s7, s47, v120
	s_and_b32 s3, s46, s3
	v_cndmask_b32_e64 v119, 0x80000000, v121, s4
	v_cndmask_b32_e64 v115, 0x80000000, v115, s3
	s_and_b32 s3, s46, s5
	s_and_b32 s5, s46, s6
	v_cndmask_b32_e64 v120, 0x80000000, v122, s4
	v_cndmask_b32_e64 v121, 0x80000000, v123, s4
	v_cndmask_b32_e64 v122, 0x80000000, v124, s4
	v_cndmask_b32_e64 v123, 0x80000000, v125, s4
	v_cndmask_b32_e64 v124, 0x80000000, v126, s4
	v_cndmask_b32_e64 v125, 0x80000000, v127, s4
	v_cndmask_b32_e64 v126, 0x80000000, v128, s4
	v_cndmask_b32_e64 v127, 0x80000000, v129, s4
	v_cndmask_b32_e64 v128, 0x80000000, v130, s4
	v_cndmask_b32_e64 v129, 0x80000000, v131, s4
	v_cndmask_b32_e64 v130, 0x80000000, v132, s4
	v_cndmask_b32_e64 v131, 0x80000000, v133, s4
	v_cndmask_b32_e64 v132, 0x80000000, v134, s4
	v_cndmask_b32_e64 v133, 0x80000000, v135, s4
	v_cndmask_b32_e64 v134, 0x80000000, v136, s4
	s_and_b32 s4, s46, s7
	v_cndmask_b32_e64 v117, 0x80000000, v117, s5
	v_cndmask_b32_e64 v116, 0x80000000, v116, s3
	v_cndmask_b32_e64 v118, 0x80000000, v118, s4
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v135, v115, s[28:31], 0 offen
	buffer_load_u8 v115, v117, s[28:31], 0 offen
	buffer_load_u8 v116, v116, s[28:31], 0 offen
	buffer_load_u8 v117, v118, s[28:31], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0xf
	buffer_load_u8 v119, v119, s[16:19], 0 offen
	buffer_load_u8 v120, v120, s[16:19], 0 offen
	buffer_load_u8 v121, v121, s[16:19], 0 offen
	buffer_load_u8 v122, v122, s[16:19], 0 offen
	buffer_load_u8 v123, v123, s[16:19], 0 offen
	buffer_load_u8 v124, v124, s[16:19], 0 offen
	buffer_load_u8 v125, v125, s[16:19], 0 offen
	buffer_load_u8 v126, v126, s[16:19], 0 offen
	buffer_load_u8 v127, v127, s[16:19], 0 offen
	buffer_load_u8 v128, v128, s[16:19], 0 offen
	buffer_load_u8 v129, v129, s[16:19], 0 offen
	buffer_load_u8 v130, v130, s[16:19], 0 offen
	buffer_load_u8 v131, v131, s[16:19], 0 offen
	buffer_load_u8 v132, v132, s[16:19], 0 offen
	buffer_load_u8 v133, v133, s[16:19], 0 offen
	buffer_load_u8 v134, v134, s[16:19], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s3, s8, s49
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s3, s3, s33
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(18)
	v_lshlrev_b16 v115.l, 8, v115.l
	s_waitcnt vmcnt(17)
	v_lshlrev_b16 v115.h, 8, v116.l
	s_waitcnt vmcnt(16)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v116.h, v117.l, v115.l
	v_or_b16 v116.l, v135.l, v115.h
	ds_store_b32 v106, v116
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[153:156], v107 offset1:32
	ds_load_2addr_b64 v[177:180], v107 offset0:64 offset1:96
	ds_load_2addr_stride64_b64 v[161:164], v108 offset1:1
	ds_load_2addr_stride64_b64 v[181:184], v109 offset1:1
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b8 v110, v119
	s_waitcnt vmcnt(14)
	ds_store_b8 v110, v120 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b8 v110, v121 offset:512
	s_waitcnt vmcnt(12)
	ds_store_b8 v110, v122 offset:768
	s_waitcnt vmcnt(11)
	ds_store_b8 v110, v123 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b8 v110, v124 offset:1280
	s_waitcnt vmcnt(9)
	ds_store_b8 v110, v125 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v110, v126 offset:1792
	s_waitcnt vmcnt(7)
	ds_store_b8 v110, v127 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b8 v110, v128 offset:2304
	s_waitcnt vmcnt(5)
	ds_store_b8 v110, v129 offset:2560
	s_waitcnt vmcnt(4)
	ds_store_b8 v110, v130 offset:2816
	s_waitcnt vmcnt(3)
	ds_store_b8 v110, v131 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b8 v110, v132 offset:3328
	s_waitcnt vmcnt(1)
	ds_store_b8 v110, v133 offset:3584
	s_waitcnt vmcnt(0)
	ds_store_b8 v110, v134 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[185:188], v111 offset1:4
	ds_load_2addr_stride64_b64 v[189:192], v112 offset1:4
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[185:186], v[153:154], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[123:130], v[185:186], v[181:182], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[131:138], v[187:188], v[181:182], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[187:188], v[153:154], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[147:154], v[185:186], v[177:178], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[189:190], v[161:162], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[123:130], v[189:190], v[155:156], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[131:138], v[191:192], v[155:156], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[191:192], v[161:162], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[155:162], v[187:188], v[177:178], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[147:154], v[189:190], v[163:164], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[171:178], v[187:188], v[183:184], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[155:162], v[191:192], v[163:164], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[163:170], v[185:186], v[183:184], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[171:178], v[191:192], v[179:180], v[171:178] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v181, s8, v103, 1
	v_add_lshl_u32 v182, s8, v104, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[163:170], v[189:190], v[179:180], v[163:170] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v179, s8, v101, 1
	v_add_lshl_u32 v180, s8, v102, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v183, v105, s3, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v181, 0x80000000, v181, s1
	v_cndmask_b32_e64 v182, 0x80000000, v182, s2
	v_cndmask_b32_e32 v179, 0x80000000, v179, vcc_lo
	v_cndmask_b32_e64 v180, 0x80000000, v180, s0
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v183, v183, s[20:23], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v179, v179, s[36:39], 0 offen
	buffer_load_u16 v180, v180, s[36:39], 0 offen
	buffer_load_u16 v181, v181, s[36:39], 0 offen
	buffer_load_u16 v182, v182, s[36:39], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v166, v166
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v175, v175
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s8, s8, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s8, s44
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v179, 16, v179
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v186, v179, v118 :: v_dual_lshlrev_b32 v183, 16, v183
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v113, v183
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v183, v179, v115
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v115, 16, v180
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v124, v115, v124
	v_dual_mul_f32 v125, v115, v125 :: v_dual_mul_f32 v138, v138, v115
	v_mul_f32_e32 v126, v115, v126
	v_mul_f32_e32 v184, v179, v116
	v_mul_f32_e32 v185, v179, v117
	v_mul_f32_e32 v187, v179, v119
	v_mul_f32_e32 v188, v179, v120
	v_mul_f32_e32 v189, v179, v121
	v_mul_f32_e32 v190, v179, v122
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v139, v139, v179 :: v_dual_lshlrev_b32 v116, 16, v182
	v_mul_f32_e32 v140, v179, v140
	v_dual_mul_f32 v141, v179, v141 :: v_dual_mul_f32 v136, v136, v115
	v_mul_f32_e32 v142, v179, v142
	v_mul_f32_e32 v144, v144, v179
	v_mul_f32_e32 v145, v145, v179
	v_mul_f32_e32 v146, v146, v179
	v_mul_f32_e32 v143, v179, v143
	v_mul_f32_e32 v123, v115, v123
	v_mul_f32_e32 v179, v115, v127
	v_mul_f32_e32 v180, v115, v128
	v_mul_f32_e32 v191, v115, v129
	v_mul_f32_e32 v192, v115, v130
	v_mul_f32_e32 v131, v131, v115
	v_mul_f32_e32 v132, v115, v132
	v_mul_f32_e32 v133, v115, v133
	v_dual_mul_f32 v134, v115, v134 :: v_dual_mul_f32 v137, v137, v115
	v_mul_f32_e32 v135, v115, v135
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v115, 16, v181
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v127, v115, v147
	v_mul_f32_e32 v128, v115, v148
	v_dual_mul_f32 v129, v115, v149 :: v_dual_mul_f32 v162, v162, v115
	v_dual_mul_f32 v130, v115, v150 :: v_dual_mul_f32 v161, v161, v115
	v_mul_f32_e32 v147, v116, v163
	v_mul_f32_e32 v148, v116, v164
	v_mul_f32_e32 v149, v116, v165
	v_dual_mul_f32 v150, v116, v166 :: v_dual_mul_f32 v151, v115, v151
	v_mul_f32_e32 v152, v115, v152
	v_mul_f32_e32 v153, v115, v153
	v_dual_mul_f32 v154, v115, v154 :: v_dual_mul_f32 v163, v116, v167
	v_mul_f32_e32 v164, v116, v168
	v_mul_f32_e32 v165, v116, v169
	v_dual_mul_f32 v166, v116, v170 :: v_dual_mul_f32 v155, v155, v115
	v_mul_f32_e32 v156, v115, v156
	v_mul_f32_e32 v157, v115, v157
	v_mul_f32_e32 v158, v115, v158
	v_mul_f32_e32 v167, v171, v116
	v_mul_f32_e32 v168, v116, v172
	v_mul_f32_e32 v169, v116, v173
	v_mul_f32_e32 v170, v116, v174
	v_mul_f32_e32 v160, v160, v115
	v_mul_f32_e32 v159, v115, v159
	v_mul_f32_e32 v171, v176, v116
	v_mul_f32_e32 v172, v177, v116
	v_dual_mul_f32 v173, v178, v116 :: v_dual_mul_f32 v174, v116, v175
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[115:118], v114
	ds_load_b128 v[119:122], v114 offset:16
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v94, v184, v116
	v_dual_fmac_f32 v76, v123, v115 :: v_dual_fmac_f32 v75, v124, v116
	v_dual_fmac_f32 v74, v125, v117 :: v_dual_fmac_f32 v73, v126, v118
	v_dual_fmac_f32 v60, v127, v115 :: v_dual_fmac_f32 v59, v128, v116
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[123:126], v114 offset:512
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v58, v129, v117 :: v_dual_fmac_f32 v57, v130, v118
	v_fmac_f32_e32 v44, v147, v115
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[127:130], v114 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v95, v183, v115 :: v_dual_fmac_f32 v86, v189, v121
	v_dual_fmac_f32 v90, v185, v117 :: v_dual_fmac_f32 v89, v186, v118
	v_dual_fmac_f32 v43, v148, v116 :: v_dual_fmac_f32 v88, v187, v119
	v_dual_fmac_f32 v42, v149, v117 :: v_dual_fmac_f32 v41, v150, v118
	v_dual_fmac_f32 v72, v179, v119 :: v_dual_fmac_f32 v87, v188, v120
	v_dual_fmac_f32 v70, v191, v121 :: v_dual_fmac_f32 v85, v190, v122
	v_dual_fmac_f32 v56, v151, v119 :: v_dual_fmac_f32 v71, v180, v120
	v_dual_fmac_f32 v54, v153, v121 :: v_dual_fmac_f32 v69, v192, v122
	v_dual_fmac_f32 v40, v163, v119 :: v_dual_fmac_f32 v55, v152, v120
	v_dual_fmac_f32 v38, v165, v121 :: v_dual_fmac_f32 v53, v154, v122
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v68, v131, v123 :: v_dual_fmac_f32 v39, v164, v120
	v_fmac_f32_e32 v82, v142, v126
	v_dual_fmac_f32 v37, v166, v122 :: v_dual_fmac_f32 v66, v133, v125
	v_dual_fmac_f32 v84, v140, v124 :: v_dual_fmac_f32 v77, v139, v123
	v_fmac_f32_e32 v50, v157, v125
	v_dual_fmac_f32 v83, v141, v125 :: v_dual_fmac_f32 v52, v155, v123
	v_dual_fmac_f32 v67, v132, v124 :: v_dual_fmac_f32 v36, v167, v123
	v_dual_fmac_f32 v65, v134, v126 :: v_dual_fmac_f32 v34, v169, v125
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v51, v156, v124 :: v_dual_fmac_f32 v78, v146, v130
	v_dual_fmac_f32 v49, v158, v126 :: v_dual_fmac_f32 v80, v144, v128
	v_dual_fmac_f32 v35, v168, v124 :: v_dual_fmac_f32 v64, v135, v127
	v_dual_fmac_f32 v33, v170, v126 :: v_dual_fmac_f32 v62, v137, v129
	v_dual_fmac_f32 v81, v143, v127 :: v_dual_fmac_f32 v46, v161, v129
	v_dual_fmac_f32 v79, v145, v129 :: v_dual_fmac_f32 v48, v159, v127
	v_dual_fmac_f32 v63, v136, v128 :: v_dual_fmac_f32 v26, v174, v127
	v_dual_fmac_f32 v61, v138, v130 :: v_dual_fmac_f32 v32, v171, v128
	v_dual_fmac_f32 v47, v160, v128 :: v_dual_fmac_f32 v30, v173, v130
	v_fmac_f32_e32 v45, v162, v130
	v_fmac_f32_e32 v31, v172, v129
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v1, v98 :: v_dual_mov_b32 v2, v96
	v_dual_mov_b32 v5, v97 :: v_dual_mov_b32 v4, v99
	v_mov_b32_e32 v3, v9
.LBB0_7:                                ; %._crit_edge
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v6, |v94|, |v94|
	v_max_f32_e64 v7, |v95|, |v95|
	v_max3_f32 v8, |v89|, |v88|, |v87|
	v_max3_f32 v9, |v84|, |v83|, |v82|
	v_max3_f32 v10, |v81|, |v80|, |v79|
	v_max_f32_e64 v11, |v76|, |v76|
	v_max_f32_e32 v6, v7, v6
	v_max_f32_e64 v7, |v75|, |v75|
	v_max3_f32 v14, |v67|, |v66|, |v65|
	v_max3_f32 v9, v9, v10, |v78|
	v_max_f32_e64 v10, |v60|, |v60|
	v_max3_f32 v6, v6, |v90|, v8
	v_max_f32_e64 v8, |v59|, |v59|
	v_max_f32_e32 v7, v11, v7
	v_max3_f32 v11, |v73|, |v72|, |v71|
	v_max3_f32 v15, |v64|, |v63|, |v62|
	v_max3_f32 v12, |v86|, |v85|, |v77|
	v_max3_f32 v13, |v70|, |v69|, |v68|
	v_max_f32_e32 v8, v10, v8
	v_max3_f32 v10, |v57|, |v56|, |v55|
	v_max3_f32 v16, |v51|, |v50|, |v49|
	v_max3_f32 v17, |v48|, |v47|, |v46|
	v_max3_f32 v7, v7, |v74|, v11
	v_max3_f32 v11, v14, v15, |v61|
	v_max3_f32 v14, |v54|, |v53|, |v52|
	v_max3_f32 v8, v8, |v58|, v10
	v_max3_f32 v10, v16, v17, |v45|
	v_max_f32_e64 v15, |v43|, |v43|
	v_max_f32_e64 v16, |v44|, |v44|
	v_max3_f32 v6, v6, v12, v9
	v_max3_f32 v7, v7, v13, v11
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v8, v8, v14, v10
	v_max_f32_e32 v9, v16, v15
	v_max3_f32 v10, |v41|, |v40|, |v39|
	v_max3_f32 v11, |v35|, |v34|, |v33|
	v_max3_f32 v12, |v26|, |v32|, |v31|
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v14, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v7, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v13, |v38|, |v37|, |v36|
	v_max3_f32 v9, v9, |v42|, v10
	v_max3_f32 v10, v11, v12, |v30|
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_max_f32 v11, v14, v14 :: v_dual_max_f32 v12, v15, v15
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v14, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v15, 3, v0
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v13, v9, v13, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v9, v6, v11 :: v_dual_max_f32 v10, v7, v12
	v_dual_max_f32 v7, v14, v14 :: v_dual_and_b32 v14, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v12, v15, 9, 0
	v_lshlrev_b32_e32 v6, 5, v15
	v_permlanex16_b32 v16, v13, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v11, v8, v7 :: v_dual_and_b32 v8, 0x60, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v12, v14, 2, v12
	v_and_or_b32 v5, 0x680, v5, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v16, v16, v16 :: v_dual_lshlrev_b32 v7, 1, v2
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v17, v6, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v18, v1, 4, v12
	v_lshrrev_b32_e32 v19, 3, v2
	v_xor_b32_e32 v5, v5, v8
	v_lshl_add_u32 v20, v14, 6, 0
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v13, v16
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v13, v18, v7, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v5, v20, v19, v5
	v_lshlrev_b32_e32 v1, 3, v1
	ds_store_b128 v13, v[9:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v5, v9 :: v_dual_add_nc_u32 v2, 0, v2
	v_dual_mov_b32 v13, v10 :: v_dual_mov_b32 v16, v11
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_max_f32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v17, v12, v12
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v5
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v5, v9, v5
	v_dual_max_f32 v9, v10, v13 :: v_dual_max_f32 v10, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v11, v16, v16 :: v_dual_mov_b32 v16, v9
	v_dual_max_f32 v10, v10, v11 :: v_dual_mov_b32 v13, v5
	v_max_f32_e32 v11, v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v12, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max_f32_e32 v5, v5, v13
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v17, v11
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v13, v9, v16
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v16, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v12, v12
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v17, v17
	v_dual_max_f32 v18, v10, v9 :: v_dual_max_f32 v9, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v12, v11, v12 :: v_dual_mov_b32 v17, v13
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v16, 1, v8
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v5, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v11, v18
	v_add3_u32 v2, v2, v16, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v10, v17, v17 :: v_dual_mov_b32 v19, v12
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v13, v10
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v11, v11
	v_max_f32_e32 v13, v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_max_f32_e32 v11, v18, v5
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v5, 5, v14
	v_lshl_add_u32 v14, v15, 4, 0
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v12, v13
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v14, v5, v1
	ds_store_b128 v2, v[9:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v1
.Ltmp43:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v9, v9
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v5, 0x2b8cbccc, v1
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v93
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v9, null, 0x40e00000, 0x40e00000, v5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v13, s0, s34, v92
	v_add_co_ci_u32_e64 v14, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v17, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v15, s0, s34, v91
	v_add_co_ci_u32_e64 v16, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v11, 0x2b8cbccc, v11
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[42:43], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[40:41], v[1:2]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v18, vcc_lo, v5, 0x40e00000, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v1, -v9, v17, 1.0
	v_div_scale_f32 v2, null, 0x40e00000, 0x40e00000, v11
	v_max_f32_e32 v10, 0x2b8cbccc, v10
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[42:43], v[13:14]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v17, v1, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v1, v2
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[40:41], v[13:14]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v12, 0x2b8cbccc, v12
	v_div_scale_f32 v13, null, 0x40e00000, 0x40e00000, v10
	v_mul_f32_e32 v19, v18, v17
	v_div_scale_f32 v21, s6, v11, 0x40e00000, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v22, v13
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[42:43], v[15:16]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v14, -v9, v19, v18
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v20, -v2, v1, 1.0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[40:41], v[15:16]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v19, v14, v17
	v_div_scale_f32 v14, null, 0x40e00000, 0x40e00000, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v1, v20, v1
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v20.h, 0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v9, -v9, v19, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v23, v14
	v_mul_f32_e32 v18, v21, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v9, v9, v17, v19
	v_fma_f32 v17, -v13, v22, 1.0
	v_div_scale_f32 v19, s7, v10, 0x40e00000, v10
	v_fma_f32 v24, -v2, v18, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v5, v9, 0x40e00000, v5
	v_fmac_f32_e32 v22, v17, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v9, -v14, v23, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v17.h, v20.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v18, v24, v1
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v17.l, v5.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_mul_f32 v24, v19, v22 :: v_dual_fmac_f32 v23, v9, v23
	v_div_scale_f32 v9, s8, v12, 0x40e00000, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v15, 1, v17
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v16, -v13, v24, v19
	v_fma_f32 v2, -v2, v18, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v17, v9, v23
	s_mov_b32 vcc_lo, s6
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v5, v5, v15, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v24, v16, v22
	v_div_fmas_f32 v18, v2, v1, v18
	v_fma_f32 v15, -v14, v17, v9
	s_mov_b32 vcc_lo, s7
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v92, 0xffff0000, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v13, -v13, v24, v19
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s34, v27
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v17, v15, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v15, null, v92, v92, v95
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v13, v13, v22, v24
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v9, -v14, v17, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s35, 0, s6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v10, v13, 0x40e00000, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v16, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v9, v9, v23, v17
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[42:43], v[1:2]
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v13, null, v92, v92, v94
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[40:41], v[1:2]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v12, v9, 0x40e00000, v12
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v9.l, v10.h
	v_mov_b16_e32 v9.h, v20.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v19, null, v92, v92, v90
	v_fma_f32 v17, -v15, v16, 1.0
	v_div_scale_f32 v21, null, v92, v92, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v9
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v11, v18, 0x40e00000, v11
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v18, v13
	v_fmac_f32_e32 v16, v17, v16
	v_div_scale_f32 v17, vcc_lo, v95, v92, v95
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v20.l, v11.h
	v_add3_u32 v9, v10, v2, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v22, s8, v94, v92, v94
	v_div_scale_f32 v93, null, v92, v92, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v14, 1, v20
	v_mov_b16_e32 v20.l, v12.h
	v_add3_u32 v1, v11, v14, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v11, v17, v16
	v_fma_f32 v14, -v13, v18, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v20, 1, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v10, -v15, v11, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v18, v14, v18
	v_rcp_f32_e32 v14, v19
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v12, v20, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v20, v21
	v_fmac_f32_e32 v11, v10, v16
	v_mul_f32_e32 v12, v22, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v10, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v15, -v15, v11, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v17, -v13, v12, v22
	v_fma_f32 v24, -v19, v14, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v25, -v21, v20, 1.0
	v_div_fmas_f32 v11, v15, v16, v11
	v_rcp_f32_e32 v16, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v14, v24, v14
	v_div_scale_f32 v24, s9, v90, v92, v90
	v_fmac_f32_e32 v12, v17, v18
	v_fmac_f32_e32 v20, v25, v20
	v_div_scale_f32 v25, null, v92, v92, v87
	v_mul_f32_e32 v15, v24, v14
	v_div_scale_f32 v17, s10, v89, v92, v89
	v_fma_f32 v13, -v13, v12, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v96, v25
	v_fma_f32 v22, -v19, v15, v24
	v_fma_f32 v97, -v93, v16, 1.0
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v91, 0xffff0000, v9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v11, v11, v92, v95
	v_mul_f32_e32 v95, v17, v20
	v_div_fmas_f32 v12, v13, v18, v12
	v_dual_fmac_f32 v15, v22, v14 :: v_dual_fmac_f32 v16, v97, v16
	v_div_scale_f32 v18, s8, v88, v92, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v13, -v21, v95, v17
	v_fma_f32 v22, -v25, v96, 1.0
	v_fma_f32 v19, -v19, v15, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v24, v18, v16
	s_mov_b32 vcc_lo, s9
	v_dual_fmac_f32 v96, v22, v96 :: v_dual_and_b32 v23, 0xffff0000, v1
	v_fmac_f32_e32 v95, v13, v20
	v_div_scale_f32 v22, s11, v87, v92, v87
	v_div_fmas_f32 v13, v19, v14, v15
	v_fma_f32 v15, -v93, v24, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v14, -v21, v95, v17
	v_mul_f32_e32 v19, v22, v96
	v_div_fixup_f32 v12, v12, v92, v94
	v_div_scale_f32 v94, null, v92, v92, v86
	v_fmac_f32_e32 v24, v15, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v15, -v25, v19, v22
	v_div_fixup_f32 v13, v13, v92, v90
	v_div_scale_f32 v90, null, v92, v92, v77
	v_fma_f32 v18, -v93, v24, v18
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v17, v94
	v_div_fmas_f32 v14, v14, v20, v95
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v21, null, v92, v92, v85
	v_fmac_f32_e32 v19, v15, v96
	v_div_fmas_f32 v16, v18, v16, v24
	v_rcp_f32_e32 v24, v90
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v20, v21
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v18, -v25, v19, v22
	v_fma_f32 v95, -v94, v17, 1.0
	v_div_fixup_f32 v14, v14, v92, v89
	v_div_scale_f32 v89, s9, v86, v92, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v18, v18, v96, v19
	v_div_scale_f32 v25, s8, v85, v92, v85
	v_fma_f32 v96, -v90, v24, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v15, -v21, v20, 1.0
	v_div_scale_f32 v93, null, v92, v92, v84
	s_mov_b32 vcc_lo, s9
	v_dual_fmac_f32 v24, v96, v24 :: v_dual_fmac_f32 v17, v95, v17
	v_fmac_f32_e32 v20, v15, v20
	v_rcp_f32_e32 v97, v93
	v_div_fixup_f32 v15, v16, v92, v88
	v_div_fixup_f32 v16, v18, v92, v87
	v_mul_f32_e32 v22, v89, v17
	v_mul_f32_e32 v95, v25, v20
	v_div_scale_f32 v87, null, v92, v92, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v19, -v94, v22, v89
	v_fma_f32 v18, -v21, v95, v25
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v93, v97, 1.0
	v_rcp_f32_e32 v96, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v22, v19, v17
	v_div_scale_f32 v19, s10, v77, v92, v77
	v_fmac_f32_e32 v95, v18, v20
	v_fmac_f32_e32 v97, v88, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v94, v22, v89
	v_mul_f32_e32 v94, v19, v24
	v_div_scale_f32 v88, s11, v84, v92, v84
	v_fma_f32 v18, -v21, v95, v25
	v_fma_f32 v25, -v87, v96, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v21, -v90, v94, v19
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v21, v24
	v_div_fmas_f32 v17, v89, v17, v22
	v_div_scale_f32 v89, null, v92, v92, v82
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v22, v88, v97
	v_div_fmas_f32 v18, v18, v20, v95
	v_rcp_f32_e32 v95, v89
	v_div_scale_f32 v21, s8, v83, v92, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v20, -v93, v22, v88
	v_fma_f32 v19, -v90, v94, v19
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v17, v17, v92, v86
	v_div_scale_f32 v90, s9, v82, v92, v82
	v_fmac_f32_e32 v22, v20, v97
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v20, -v89, v95, 1.0
	v_fmac_f32_e32 v96, v25, v96
	v_div_fmas_f32 v19, v19, v24, v94
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v24, -v93, v22, v88
	v_fmac_f32_e32 v95, v20, v95
	v_mul_f32_e32 v25, v21, v96
	v_div_fixup_f32 v18, v18, v92, v85
	v_div_scale_f32 v85, null, v92, v92, v81
	v_div_fmas_f32 v20, v24, v97, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v86, -v87, v25, v21
	v_mul_f32_e32 v22, v90, v95
	v_div_fixup_f32 v19, v19, v92, v77
	v_rcp_f32_e32 v88, v85
	v_div_scale_f32 v93, null, v92, v92, v80
	v_fmac_f32_e32 v25, v86, v96
	v_fma_f32 v77, -v89, v22, v90
	v_div_fixup_f32 v20, v20, v92, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v24, v93
	v_div_scale_f32 v84, s10, v81, v92, v81
	v_fma_f32 v21, -v87, v25, v21
	v_div_scale_f32 v87, null, v92, v92, v79
	v_fmac_f32_e32 v22, v77, v95
	v_fma_f32 v86, -v85, v88, 1.0
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v77, v87
	v_div_fmas_f32 v21, v21, v96, v25
	v_div_scale_f32 v94, null, v92, v92, v78
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v21, v21, v92, v83
	v_fma_f32 v83, -v89, v22, v90
	v_rcp_f32_e32 v96, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v97, -v87, v77, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v22, v83, v95, v22
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v77, v97, v77 :: v_dual_fmac_f32 v88, v86, v88
	v_fma_f32 v86, -v93, v24, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v94, v96, 1.0
	v_div_fixup_f32 v22, v22, v92, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v25, v84, v88
	v_fmac_f32_e32 v24, v86, v24
	v_div_scale_f32 v86, s8, v80, v92, v80
	v_fmac_f32_e32 v96, v95, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v85, v25, v84
	v_div_scale_f32 v95, null, v91, v91, v75
	v_mul_f32_e32 v90, v86, v24
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v25, v89, v88
	v_div_scale_f32 v89, s9, v79, v92, v79
	v_fma_f32 v83, -v93, v90, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v85, v25, v84
	v_div_scale_f32 v84, s11, v78, v92, v78
	v_dual_fmac_f32 v90, v83, v24 :: v_dual_mul_f32 v83, v89, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v25, v82, v88, v25
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v85, null, v91, v91, v76
	v_fma_f32 v82, -v93, v90, v86
	v_fma_f32 v86, -v87, v83, v89
	v_mul_f32_e32 v93, v84, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v88, v85
	v_fmac_f32_e32 v83, v86, v77
	v_rcp_f32_e32 v86, v95
	v_div_fmas_f32 v82, v82, v24, v90
	v_fma_f32 v90, -v94, v93, v84
	v_div_fixup_f32 v24, v25, v92, v81
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v81, s8, v76, v91, v76
	v_div_fixup_f32 v25, v82, v92, v80
	v_fma_f32 v80, -v87, v83, v89
	v_div_scale_f32 v87, null, v91, v91, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v95, v86, 1.0
	v_fmac_f32_e32 v93, v90, v96
	v_div_fmas_f32 v77, v80, v77, v83
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v97, -v85, v88, 1.0
	v_fmac_f32_e32 v86, v82, v86
	v_rcp_f32_e32 v82, v87
	v_fma_f32 v80, -v94, v93, v84
	v_div_scale_f32 v84, s9, v75, v91, v75
	v_div_fixup_f32 v77, v77, v92, v79
	v_div_scale_f32 v89, null, v91, v91, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v80, v80, v96, v93
	v_mul_f32_e32 v93, v84, v86
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v87, v82, 1.0
	v_rcp_f32_e32 v96, v89
	v_div_fixup_f32 v78, v80, v92, v78
	v_fma_f32 v79, -v95, v93, v84
	v_div_scale_f32 v80, s10, v74, v91, v74
	v_fmac_f32_e32 v82, v94, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v79, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v79, v80, v82 :: v_dual_fmac_f32 v88, v97, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v92, -v89, v96, 1.0
	v_mul_f32_e32 v83, v81, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v85, v83, v81
	v_fmac_f32_e32 v83, v90, v88
	v_div_scale_f32 v90, null, v91, v91, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v81, -v85, v83, v81
	v_rcp_f32_e32 v85, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v81, v81, v88, v83
	v_fma_f32 v83, -v95, v93, v84
	v_fma_f32 v84, -v87, v79, v80
	v_div_scale_f32 v95, null, v91, v91, v71
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v94, -v90, v85, 1.0
	v_fmac_f32_e32 v96, v92, v96
	v_div_scale_f32 v92, s11, v73, v91, v73
	v_div_fmas_f32 v83, v83, v86, v93
	v_fmac_f32_e32 v79, v84, v82
	v_rcp_f32_e32 v84, v95
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v93, s8, v72, v91, v72
	v_mul_f32_e32 v88, v92, v96
	v_div_fixup_f32 v76, v81, v91, v76
	v_div_fixup_f32 v75, v83, v91, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v81, v93, v85
	v_fma_f32 v80, -v87, v79, v80
	v_fma_f32 v86, -v89, v88, v92
	v_fma_f32 v83, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v87, s9, v71, v91, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v88, v86, v96
	v_div_scale_f32 v86, null, v91, v91, v70
	v_div_fmas_f32 v79, v80, v82, v79
	v_fma_f32 v82, -v90, v81, v93
	v_fmac_f32_e32 v84, v83, v84
	v_rcp_f32_e32 v83, v86
	v_fma_f32 v80, -v89, v88, v92
	v_div_fixup_f32 v74, v79, v91, v74
	v_fmac_f32_e32 v81, v82, v85
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v89, null, v91, v91, v69
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v90, v81, v93
	v_div_scale_f32 v93, null, v91, v91, v68
	v_fma_f32 v92, -v86, v83, 1.0
	v_rcp_f32_e32 v82, v89
	v_div_scale_f32 v90, s10, v70, v91, v70
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v75, v75
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v92, v83
	v_div_fmas_f32 v80, v80, v96, v88
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v85, v81
	v_rcp_f32_e32 v81, v93
	v_div_fixup_f32 v73, v80, v91, v73
	v_fma_f32 v92, -v89, v82, 1.0
	v_div_scale_f32 v85, s8, v69, v91, v69
	v_div_fixup_f32 v72, v79, v91, v72
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v82, v92, v82
	v_div_scale_f32 v92, null, v91, v91, v67
	v_fma_f32 v96, -v93, v81, 1.0
	v_mul_f32_e32 v88, v87, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v94, v85, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v73, v73
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v96, v81
	v_fma_f32 v80, -v95, v88, v87
	v_div_scale_f32 v96, null, v91, v91, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v88, v80, v84
	v_mul_f32_e32 v80, v90, v83
	v_fma_f32 v79, -v95, v88, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v87, -v86, v80, v90
	v_rcp_f32_e32 v95, v92
	v_div_fmas_f32 v79, v79, v84, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v87, v83
	v_fma_f32 v84, -v89, v94, v85
	v_div_scale_f32 v87, s9, v68, v91, v68
	v_div_fixup_f32 v71, v79, v91, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v79, -v86, v80, v90
	v_fma_f32 v88, -v92, v95, 1.0
	v_fmac_f32_e32 v94, v84, v82
	v_mul_f32_e32 v84, v87, v81
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v86, s11, v67, v91, v67
	v_div_fmas_f32 v79, v79, v83, v80
	v_fma_f32 v80, -v89, v94, v85
	v_fma_f32 v83, -v93, v84, v87
	v_fmac_f32_e32 v95, v88, v95
	v_div_scale_f32 v88, null, v91, v91, v66
	v_div_scale_f32 v90, null, v91, v91, v65
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v85, v88
	v_div_fmas_f32 v80, v80, v82, v94
	v_dual_fmac_f32 v84, v83, v81 :: v_dual_mul_f32 v89, v86, v95
	v_rcp_f32_e32 v82, v90
	v_div_fixup_f32 v70, v79, v91, v70
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v79, -v93, v84, v87
	v_fma_f32 v83, -v92, v89, v86
	v_div_scale_f32 v87, null, v91, v91, v64
	v_fma_f32 v94, -v88, v85, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v79, v79, v81, v84
	v_fmac_f32_e32 v89, v83, v95
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v83, -v90, v82, 1.0
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v85, v94, v85
	v_div_fixup_f32 v69, v80, v91, v69
	v_fma_f32 v81, -v92, v89, v86
	v_fmac_f32_e32 v82, v83, v82
	v_rcp_f32_e32 v83, v87
	v_div_scale_f32 v92, null, v91, v91, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v81, v81, v95, v89
	v_div_scale_f32 v80, s8, v66, v91, v66
	v_rcp_f32_e32 v95, v92
	v_div_scale_f32 v86, s9, v65, v91, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v84, v80, v85
	v_fma_f32 v94, -v87, v83, 1.0
	v_div_fixup_f32 v68, v79, v91, v68
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v67, v81, v91, v67
	v_fma_f32 v89, -v88, v84, v80
	v_fmac_f32_e32 v83, v94, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v94, -v92, v95, 1.0
	v_div_scale_f32 v81, s10, v64, v91, v64
	v_fmac_f32_e32 v84, v89, v85
	v_div_scale_f32 v89, null, v91, v91, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v95, v94, v95
	v_mul_f32_e32 v93, v86, v82
	v_fma_f32 v80, -v88, v84, v80
	v_div_scale_f32 v94, s11, v63, v91, v63
	v_rcp_f32_e32 v88, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v90, v93, v86
	v_div_fmas_f32 v80, v80, v85, v84
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v70, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v79, v82
	v_div_fixup_f32 v66, v80, v91, v66
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v90, v93, v86
	v_mul_f32_e32 v86, v94, v95
	v_fma_f32 v90, -v89, v88, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v84, v82, v93
	v_rcp_f32_e32 v84, v96
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s8, v62, v91, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v65, v82, v91, v65
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v96, v84, 1.0
	v_dual_mul_f32 v79, v81, v83 :: v_dual_fmac_f32 v84, v82, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v87, v79, v81
	v_fmac_f32_e32 v79, v85, v83
	v_fma_f32 v85, -v92, v86, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v87, v79, v81
	v_fmac_f32_e32 v86, v85, v95
	v_div_scale_f32 v85, null, v23, v23, v60
	v_div_scale_f32 v87, s9, v61, v91, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v79, v80, v83, v79
	v_rcp_f32_e32 v82, v85
	v_fma_f32 v80, -v92, v86, v94
	v_div_scale_f32 v92, null, v23, v23, v59
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v64, v79, v91, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v93, -v85, v82, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v82, v93, v82 :: v_dual_mul_f32 v81, v90, v88
	v_div_fmas_f32 v80, v80, v95, v86
	v_mul_f32_e32 v86, v87, v84
	v_div_scale_f32 v93, null, v23, v23, v58
	v_fma_f32 v83, -v89, v81, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v63, v80, v91, v63
	v_fma_f32 v80, -v96, v86, v87
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v81, v83, v88
	v_rcp_f32_e32 v83, v92
	v_fmac_f32_e32 v86, v80, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v89, v81, v90
	v_div_scale_f32 v89, s10, v60, v23, v60
	v_div_fmas_f32 v79, v79, v88, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v90, -v92, v83, 1.0
	v_mul_f32_e32 v80, v89, v82
	v_rcp_f32_e32 v81, v93
	v_div_scale_f32 v88, s8, v59, v23, v59
	v_div_fixup_f32 v62, v79, v91, v62
	v_fma_f32 v79, -v96, v86, v87
	v_fma_f32 v87, -v85, v80, v89
	v_fmac_f32_e32 v83, v90, v83
	v_div_scale_f32 v90, null, v23, v23, v57
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v96, -v93, v81, 1.0
	v_fmac_f32_e32 v80, v87, v82
	v_mul_f32_e32 v94, v88, v83
	v_rcp_f32_e32 v95, v90
	v_div_fmas_f32 v79, v79, v84, v86
	v_fmac_f32_e32 v81, v96, v81
	v_div_scale_f32 v86, s9, v58, v23, v58
	v_fma_f32 v84, -v92, v94, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v61, v79, v91, v61
	v_fma_f32 v79, -v85, v80, v89
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v85, s11, v57, v23, v57
	v_fma_f32 v87, -v90, v95, 1.0
	v_fmac_f32_e32 v94, v84, v83
	v_mul_f32_e32 v84, v86, v81
	v_div_fmas_f32 v79, v79, v82, v80
	v_div_scale_f32 v91, null, v23, v23, v55
	v_fmac_f32_e32 v95, v87, v95
	v_div_scale_f32 v87, null, v23, v23, v56
	v_fma_f32 v82, -v93, v84, v86
	v_fma_f32 v80, -v92, v94, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v89, v85, v95
	v_rcp_f32_e32 v88, v87
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v84, v82, v81
	v_rcp_f32_e32 v82, v91
	v_div_fmas_f32 v80, v80, v83, v94
	v_fma_f32 v83, -v90, v89, v85
	v_div_fixup_f32 v60, v79, v23, v60
	v_fma_f32 v79, -v93, v84, v86
	v_div_scale_f32 v86, null, v23, v23, v54
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v92, -v87, v88, 1.0
	v_fmac_f32_e32 v89, v83, v95
	v_div_fixup_f32 v59, v80, v23, v59
	v_fma_f32 v83, -v91, v82, 1.0
	v_div_scale_f32 v80, s8, v56, v23, v56
	v_fmac_f32_e32 v88, v92, v88
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v82, v83, v82
	v_rcp_f32_e32 v83, v86
	v_div_fmas_f32 v79, v79, v81, v84
	v_fma_f32 v81, -v90, v89, v85
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v85, s9, v55, v23, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v58, v79, v23, v58
	v_div_fmas_f32 v81, v81, v95, v89
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v95, null, v23, v23, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v93, -v86, v83, 1.0
	v_mul_f32_e32 v84, v80, v88
	v_div_fixup_f32 v57, v81, v23, v57
	v_div_scale_f32 v81, s10, v54, v23, v54
	v_fmac_f32_e32 v83, v93, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v87, v84, v80
	v_div_scale_f32 v90, null, v23, v23, v53
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v60, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v89, v88
	v_div_scale_f32 v89, null, v23, v23, v52
	v_rcp_f32_e32 v94, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v87, v84, v80
	v_rcp_f32_e32 v87, v89
	v_mul_f32_e32 v92, v85, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v88, v84
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v79, -v91, v92, v85
	v_fma_f32 v93, -v90, v94, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v56, v80, v23, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v92, v79, v82 :: v_dual_mul_f32 v79, v81, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v91, v92, v85
	v_fma_f32 v85, -v86, v79, v81
	v_fma_f32 v91, -v89, v87, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v84, v82, v92
	v_rcp_f32_e32 v84, v95
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s8, v52, v23, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v55, v82, v23, v55
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v95, v84, 1.0
	v_dual_fmac_f32 v79, v85, v83 :: v_dual_fmac_f32 v84, v82, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v86, v79, v81
	v_mul_f32_e32 v81, v91, v87
	v_div_scale_f32 v86, s9, v51, v23, v51
	v_div_fmas_f32 v79, v80, v83, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v89, v81, v91
	v_fmac_f32_e32 v94, v93, v94
	v_div_scale_f32 v93, s11, v53, v23, v53
	v_div_fixup_f32 v54, v79, v23, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v83, v87
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v88, v93, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v89, v81, v91
	v_div_scale_f32 v89, s10, v50, v23, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v90, v88, v93
	v_fmac_f32_e32 v88, v85, v94
	v_div_scale_f32 v85, null, v23, v23, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v90, v88, v93
	v_div_scale_f32 v90, null, v23, v23, v49
	v_rcp_f32_e32 v82, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v80, v80, v94, v88
	v_rcp_f32_e32 v83, v90
	s_mov_b32 vcc_lo, s8
	v_div_fmas_f32 v79, v79, v87, v81
	v_div_scale_f32 v87, s8, v49, v23, v49
	v_div_fixup_f32 v53, v80, v23, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v92, -v85, v82, 1.0
	v_div_fixup_f32 v52, v79, v23, v52
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v90, v83, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v92, v82
	v_div_scale_f32 v92, null, v23, v23, v48
	v_fmac_f32_e32 v83, v91, v83
	v_div_scale_f32 v91, null, v23, v23, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v81, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v93, v87, v83 :: v_dual_mul_f32 v88, v86, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v94, v91
	v_fma_f32 v80, -v95, v88, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v88, v80, v84
	v_mul_f32_e32 v80, v89, v82
	v_fma_f32 v79, -v95, v88, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v86, -v85, v80, v89
	v_fma_f32 v95, -v92, v81, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v79, v79, v84, v88
	v_fmac_f32_e32 v80, v86, v82
	v_fma_f32 v84, -v90, v93, v87
	v_fma_f32 v88, -v91, v94, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v51, v79, v23, v51
	v_fma_f32 v79, -v85, v80, v89
	v_fmac_f32_e32 v93, v84, v83
	v_fmac_f32_e32 v94, v88, v94
	v_div_scale_f32 v85, s11, v47, v23, v47
	v_fmac_f32_e32 v81, v95, v81
	v_div_scale_f32 v86, s9, v48, v23, v48
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v90, v93, v87
	v_mul_f32_e32 v89, v85, v94
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v90, null, v23, v23, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v80, v80, v83, v93
	v_fma_f32 v83, -v91, v89, v85
	v_mul_f32_e32 v84, v86, v81
	v_div_scale_f32 v88, null, v23, v23, v46
	v_div_fixup_f32 v50, v79, v23, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v89, v83, v94
	v_fma_f32 v82, -v92, v84, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v87, v88
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v49, v80, v23, v49
	v_div_scale_f32 v80, s8, v46, v23, v46
	v_fmac_f32_e32 v84, v82, v81
	v_rcp_f32_e32 v82, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v92, v84, v86
	v_fma_f32 v93, -v88, v87, 1.0
	v_div_scale_f32 v92, null, v10, v10, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v79, v79, v81, v84
	v_fma_f32 v83, -v90, v82, 1.0
	v_fma_f32 v81, -v91, v89, v85
	v_div_scale_f32 v85, s9, v45, v23, v45
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v87, v93, v87 :: v_dual_fmac_f32 v82, v83, v82
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v48, v79, v23, v48
	v_div_fmas_f32 v81, v81, v94, v89
	v_div_scale_f32 v83, null, v10, v10, v44
	v_mul_f32_e32 v91, v85, v82
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v47, v81, v23, v47
	v_rcp_f32_e32 v81, v92
	v_rcp_f32_e32 v86, v83
	v_fma_f32 v79, -v90, v91, v85
	v_mul_f32_e32 v84, v80, v87
	v_div_scale_f32 v94, null, v10, v10, v41
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v79, v82
	v_fma_f32 v89, -v88, v84, v80
	v_div_scale_f32 v79, s10, v44, v10, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v93, -v92, v81, 1.0
	v_rcp_f32_e32 v96, v94
	v_fmac_f32_e32 v84, v89, v87
	v_fma_f32 v89, -v83, v86, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v93, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v88, v84, v80
	v_div_scale_f32 v88, null, v10, v10, v42
	v_div_fmas_f32 v80, v80, v87, v84
	v_div_scale_f32 v87, s8, v43, v10, v43
	v_fma_f32 v84, -v90, v91, v85
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v46, v80, v23, v46
	v_mul_f32_e32 v95, v87, v81
	v_fma_f32 v80, -v94, v96, 1.0
	v_div_fmas_f32 v82, v84, v82, v91
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v92, v95, v87
	v_fmac_f32_e32 v86, v89, v86
	v_rcp_f32_e32 v89, v88
	v_div_fixup_f32 v23, v82, v23, v45
	v_div_scale_f32 v82, null, v10, v10, v40
	v_fmac_f32_e32 v95, v84, v81
	v_dual_mul_f32 v85, v79, v86 :: v_dual_fmac_f32 v96, v80, v96
	v_div_scale_f32 v80, s9, v41, v10, v41
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v88, v89, 1.0
	v_fma_f32 v93, -v83, v85, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v84, v80, v96 :: v_dual_fmac_f32 v89, v90, v89
	v_div_scale_f32 v90, s11, v42, v10, v42
	v_fmac_f32_e32 v85, v93, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v45, -v83, v85, v79
	v_fma_f32 v83, -v92, v95, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v88, v91, v90
	v_div_fmas_f32 v45, v45, v86, v85
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v85, null, v10, v10, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v91, v79, v89
	v_rcp_f32_e32 v79, v82
	v_div_fmas_f32 v81, v83, v81, v95
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v44, v45, v10, v44
	v_fma_f32 v83, -v88, v91, v90
	v_fma_f32 v88, -v94, v84, v80
	v_rcp_f32_e32 v87, v85
	v_div_fixup_f32 v43, v81, v10, v43
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v89, v91
	v_fma_f32 v86, -v82, v79, 1.0
	v_fmac_f32_e32 v84, v88, v96
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v42, v83, v10, v42
	v_fmac_f32_e32 v79, v86, v79
	v_div_scale_f32 v86, s8, v40, v10, v40
	v_fma_f32 v80, -v94, v84, v80
	v_div_scale_f32 v83, null, v10, v10, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v86, v79
	v_fma_f32 v81, -v85, v87, 1.0
	v_div_fmas_f32 v80, v80, v96, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v89, v83
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v88, -v82, v45, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v41, v80, v10, v41
	v_fmac_f32_e32 v45, v88, v79
	v_div_scale_f32 v88, null, v10, v10, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v82, v45, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v90, v88
	v_fma_f32 v86, -v83, v89, 1.0
	v_div_fmas_f32 v45, v80, v79, v45
	v_div_scale_f32 v80, s8, v38, v10, v38
	v_div_scale_f32 v79, null, v10, v10, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v40, v45, v10, v40
	v_fma_f32 v45, -v88, v90, 1.0
	v_fmac_f32_e32 v89, v86, v89
	v_div_scale_f32 v86, null, v10, v10, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v45, v90
	v_div_scale_f32 v45, s9, v37, v10, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v92, v86
	v_fma_f32 v94, -v86, v92, 1.0
	v_fmac_f32_e32 v87, v81, v87
	v_div_scale_f32 v81, s10, v39, v10, v39
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v92, v94, v92
	v_div_scale_f32 v93, s10, v36, v10, v36
	v_mul_f32_e32 v84, v81, v87
	v_div_scale_f32 v94, s11, v35, v10, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v85, v84, v81
	v_fmac_f32_e32 v84, v82, v87
	v_rcp_f32_e32 v82, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v81, -v85, v84, v81
	v_mul_f32_e32 v85, v80, v89
	v_div_fmas_f32 v81, v81, v87, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v91, -v79, v82, 1.0
	v_fma_f32 v84, -v83, v85, v80
	v_mul_f32_e32 v87, v45, v90
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v39, v81, v10, v39
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v91, null, v10, v10, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v96, v93, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v95, v91
	v_fma_f32 v81, -v79, v96, v93
	v_fmac_f32_e32 v85, v84, v89
	v_fma_f32 v84, -v88, v87, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v96, v81, v82
	v_fma_f32 v80, -v83, v85, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v87, v84, v90
	v_mul_f32_e32 v83, v94, v92
	v_fma_f32 v84, -v91, v95, 1.0
	v_fma_f32 v79, -v79, v96, v93
	v_div_fmas_f32 v80, v80, v89, v85
	v_fma_f32 v45, -v88, v87, v45
	v_div_scale_f32 v85, null, v10, v10, v33
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v81, -v86, v83, v94
	v_div_fmas_f32 v45, v45, v90, v87
	v_rcp_f32_e32 v87, v85
	v_fmac_f32_e32 v95, v84, v95
	v_div_scale_f32 v84, s8, v34, v10, v34
	v_div_fixup_f32 v38, v80, v10, v38
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v37, v45, v10, v37
	v_div_fmas_f32 v79, v79, v82, v96
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v89, null, v10, v10, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v85, v87, 1.0
	v_div_fixup_f32 v36, v79, v10, v36
	v_div_scale_f32 v79, null, v10, v10, v26
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v80, v87
	v_fmac_f32_e32 v83, v81, v92
	v_mul_f32_e32 v81, v84, v95
	v_div_scale_f32 v80, null, v10, v10, v32
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v86, v83, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v86, -v91, v81, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v92, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v81, v86, v95
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v35, v82, v10, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fma_f32 v45, -v91, v81, v84
	v_rcp_f32_e32 v84, v80
	v_div_scale_f32 v82, null, v10, v10, v31
	v_rcp_f32_e32 v91, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v86, v82
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v80, v84, 1.0
	v_fmac_f32_e32 v84, v90, v84
	v_div_fmas_f32 v45, v45, v95, v81
	v_rcp_f32_e32 v81, v79
	v_div_scale_f32 v83, vcc_lo, v33, v10, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v93, -v82, v86, 1.0
	v_div_fixup_f32 v34, v45, v10, v34
	v_fma_f32 v95, -v89, v91, 1.0
	v_div_scale_f32 v90, s9, v32, v10, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v93, s10, v31, v10, v31
	v_fma_f32 v45, -v79, v81, 1.0
	v_mul_f32_e32 v88, v83, v87
	v_mul_f32_e32 v96, v90, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v45, v81
	v_fma_f32 v92, -v85, v88, v83
	v_div_scale_f32 v45, s8, v26, v10, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v88, v92, v87
	v_mul_f32_e32 v94, v45, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v83, -v85, v88, v83
	v_fma_f32 v92, -v79, v94, v45
	v_mul_f32_e32 v97, v93, v86
	v_fma_f32 v85, -v80, v96, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v83, v83, v87, v88
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_fmac_f32_e32 v94, v92, v81
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v17, v17, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v82, v97, v93
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v12, v12, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v85, v84
	v_fma_f32 v45, -v79, v94, v45
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, s11, v30, v10, v30
	v_fmac_f32_e32 v97, v92, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v12, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v80, v96, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v98, v95, v91
	v_div_fmas_f32 v45, v45, v81, v94
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v33, v83, v10, v33
	v_div_fmas_f32 v80, v80, v84, v96
	v_fma_f32 v79, -v89, v98, v95
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v26, v45, v10, v26
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v72, v72, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v32, v80, v10, v32
	v_fmac_f32_e32 v98, v79, v91
	v_fma_f32 v79, -v82, v97, v93
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_med3_f32 v13, v13, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v81, -v89, v98, v95
	v_div_fmas_f32 v79, v79, v86, v97
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v91, v98
	v_div_fixup_f32 v31, v79, v10, v31
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v10, v81, v10, v30
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v77
	v_rndne_f32_e32 v31, v31
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v76, v76, s8, 0x40e00000
	v_med3_f32 v75, v75, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_cvt_i32_f32_e32 v72, v72
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v77, v52
	v_cvt_i32_f32_e32 v95, v34
	v_and_b32_e32 v34, 15, v72
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v72, 10, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v78
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v78, v51
	v_cvt_i32_f32_e32 v97, v32
	v_cvt_i32_f32_e32 v98, v31
	v_cvt_i32_f32_e32 v99, v10
	v_and_b32_e32 v10, 15, v11
	v_and_b32_e32 v11, 15, v12
	v_and_b32_e32 v12, 15, v13
	v_and_b32_e32 v13, 15, v14
	v_and_b32_e32 v14, 15, v15
	v_and_b32_e32 v31, 15, v75
	v_and_b32_e32 v32, 15, v74
	v_and_b32_e32 v52, 15, v54
	v_and_b32_e32 v54, 15, v77
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v74, 4, v28
	v_and_b32_e32 v75, 0x1800, v72
	v_lshlrev_b32_e32 v77, 6, v0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v15, 15, v16
	v_and_b32_e32 v16, 15, v17
	v_and_b32_e32 v17, 15, v18
	v_and_b32_e32 v18, 15, v19
	v_and_b32_e32 v19, 15, v20
	v_and_b32_e32 v20, 15, v21
	v_and_b32_e32 v21, 15, v22
	v_and_b32_e32 v22, 15, v24
	v_and_b32_e32 v24, 15, v30
	v_and_b32_e32 v30, 15, v76
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v76, 6, v4
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v51, 15, v55
	v_and_b32_e32 v55, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v8, v74, v8
	v_add3_u32 v78, 0, v75, v76
	v_and_or_b32 v6, 0x1b00, v77, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v7, v78, v8, v7
	v_xad_u32 v6, v6, v29, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v85, v44
	v_cvt_i32_f32_e32 v86, v43
	v_cvt_i32_f32_e32 v87, v42
	v_cvt_i32_f32_e32 v88, v41
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v79, v50
	v_cvt_i32_f32_e32 v80, v49
	v_cvt_i32_f32_e32 v93, v36
	v_cvt_i32_f32_e32 v94, v35
	v_cvt_i32_f32_e32 v96, v33
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v7, v[10:13]
	ds_store_b128 v7, v[18:21] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v6
	ds_load_b128 v[18:21], v6 offset:1024
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v81, v48
	v_cvt_i32_f32_e32 v82, v47
	v_cvt_i32_f32_e32 v83, v46
	v_and_b32_e32 v33, 15, v73
	v_and_b32_e32 v41, 15, v65
	v_and_b32_e32 v42, 15, v64
	v_and_b32_e32 v43, 15, v63
	v_and_b32_e32 v44, 15, v62
	v_and_b32_e32 v46, 15, v60
	v_and_b32_e32 v47, 15, v59
	v_and_b32_e32 v48, 15, v58
	v_and_b32_e32 v49, 15, v57
	v_and_b32_e32 v62, 15, v85
	v_and_b32_e32 v63, 15, v86
	v_and_b32_e32 v64, 15, v87
	v_and_b32_e32 v65, 15, v88
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v84, v23
	v_cvt_i32_f32_e32 v89, v40
	v_cvt_i32_f32_e32 v90, v39
	v_cvt_i32_f32_e32 v91, v38
	v_and_b32_e32 v23, 15, v25
	v_and_b32_e32 v25, 15, v45
	v_and_b32_e32 v35, 15, v71
	v_and_b32_e32 v36, 15, v70
	v_and_b32_e32 v38, 15, v68
	v_and_b32_e32 v39, 15, v67
	v_and_b32_e32 v40, 15, v66
	v_and_b32_e32 v50, 15, v56
	v_and_b32_e32 v56, 15, v79
	v_and_b32_e32 v57, 15, v80
	v_and_b32_e32 v70, 15, v93
	v_and_b32_e32 v71, 15, v94
	v_and_b32_e32 v72, 15, v95
	v_and_b32_e32 v73, 15, v96
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v92, v37
	v_and_b32_e32 v37, 15, v69
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[30:33]
	ds_store_b128 v7, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v6
	ds_load_b128 v[38:41], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[46:49]
	ds_store_b128 v7, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v6
	ds_load_b128 v[54:57], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[62:65]
	ds_store_b128 v7, v[70:73] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[62:65], v6
	ds_load_b128 v[70:73], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[14:17]
	ds_store_b128 v7, v[22:25] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[14:17], v6
	ds_load_b128 v[22:25], v6 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v45, 15, v61
	v_cvt_i32_f32_e32 v26, v26
	v_and_b32_e32 v53, 15, v53
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[34:37]
	ds_store_b128 v7, v[42:45] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v6
	ds_load_b128 v[42:45], v6 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v58, 15, v81
	v_and_b32_e32 v59, 15, v82
	v_and_b32_e32 v60, 15, v83
	v_and_b32_e32 v61, 15, v84
	v_and_b32_e32 v66, 15, v89
	v_and_b32_e32 v67, 15, v90
	v_and_b32_e32 v68, 15, v91
	v_and_b32_e32 v69, 15, v92
	v_and_b32_e32 v74, 15, v26
	v_and_b32_e32 v75, 15, v97
	v_and_b32_e32 v76, 15, v98
	v_and_b32_e32 v77, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[50:53]
	ds_store_b128 v7, v[58:61] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[50:53], v6
	ds_load_b128 v[58:61], v6 offset:1024
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v28, 3, v28
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[66:69]
	ds_store_b128 v7, v[74:77] offset:512
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v7, v18, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, s34, v27
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[66:69], v6
	ds_load_b128 v[74:77], v6 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v6, s45, 7, v28
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v18, v20, 4, v12
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 16, v10
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v8, v19, 4, v11
	v_lshl_or_b32 v19, v21, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 32, v10
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v20, v22, 4, v14
	v_lshl_or_b32 v15, v23, 4, v15
	v_lshl_or_b32 v16, v24, 4, v16
	v_lshl_or_b32 v17, v25, 4, v17
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 48, v10
	v_mad_u64_u32 v[10:11], null, v10, s8, v[6:7]
	v_mad_u64_u32 v[11:12], null, v12, s8, v[6:7]
	v_mad_u64_u32 v[12:13], null, v13, s8, v[6:7]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v21, v38, 4, v29
	v_lshl_or_b32 v22, v39, 4, v30
	v_lshl_or_b32 v23, v40, 4, v31
	v_lshl_or_b32 v24, v41, 4, v32
	v_lshl_or_b32 v25, v42, 4, v33
	v_lshl_or_b32 v26, v43, 4, v34
	v_lshl_or_b32 v29, v44, 4, v35
	v_lshl_or_b32 v30, v45, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[13:14], null, v14, s8, v[6:7]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v19.l
	v_and_b16 v2.l, 0xff, v18.l
	v_lshlrev_b16 v5.l, 8, v8.l
	v_and_b16 v6.l, 0xff, v7.l
	v_lshlrev_b16 v6.h, 8, v17.l
	v_and_b16 v7.l, 0xff, v16.l
	v_lshlrev_b16 v7.h, 8, v15.l
	v_and_b16 v8.l, 0xff, v20.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v31, v54, 4, v46
	v_lshl_or_b32 v32, v55, 4, v47
	v_lshl_or_b32 v33, v56, 4, v48
	v_lshl_or_b32 v34, v57, 4, v49
	v_lshl_or_b32 v35, v58, 4, v50
	v_lshl_or_b32 v36, v59, 4, v51
	v_lshl_or_b32 v37, v60, 4, v52
	v_lshl_or_b32 v38, v61, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v2.l, v1.l
	v_or_b16 v14.l, v6.l, v5.l
	v_or_b16 v15.h, v7.l, v6.h
	v_or_b16 v15.l, v8.l, v7.h
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	v_lshlrev_b16 v1.l, 8, v24.l
	v_and_b16 v2.l, 0xff, v23.l
	v_lshlrev_b16 v5.l, 8, v22.l
	v_and_b16 v6.l, 0xff, v21.l
	v_lshlrev_b16 v6.h, 8, v30.l
	v_and_b16 v7.l, 0xff, v29.l
	v_lshlrev_b16 v7.h, 8, v26.l
	v_and_b16 v8.l, 0xff, v25.l
	s_and_b32 s9, s25, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s24
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v39, v70, 4, v62
	v_lshl_or_b32 v40, v71, 4, v63
	v_lshl_or_b32 v41, v72, 4, v64
	v_lshl_or_b32 v42, v73, 4, v65
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v43, v74, 4, v66
	v_lshl_or_b32 v44, v75, 4, v67
	v_lshl_or_b32 v45, v76, 4, v68
	v_lshl_or_b32 v46, v77, 4, v69
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[14:15], v10, s[8:11], 0 offen
	v_or_b16 v14.h, v2.l, v1.l
	v_or_b16 v14.l, v6.l, v5.l
	v_or_b16 v15.h, v7.l, v6.h
	v_or_b16 v15.l, v8.l, v7.h
	v_cndmask_b32_e32 v10, 0x80000000, v11, vcc_lo
	v_lshlrev_b16 v1.l, 8, v34.l
	v_and_b16 v2.l, 0xff, v33.l
	v_lshlrev_b16 v5.l, 8, v32.l
	v_and_b16 v6.l, 0xff, v31.l
	v_lshlrev_b16 v6.h, 8, v38.l
	v_and_b16 v7.l, 0xff, v37.l
	v_lshlrev_b16 v7.h, 8, v36.l
	v_and_b16 v8.l, 0xff, v35.l
	buffer_store_b64 v[14:15], v10, s[8:11], 0 offen
	v_or_b16 v10.h, v2.l, v1.l
	v_or_b16 v10.l, v6.l, v5.l
	v_or_b16 v11.h, v7.l, v6.h
	v_or_b16 v11.l, v8.l, v7.h
	v_lshlrev_b16 v1.l, 8, v42.l
	v_and_b16 v2.l, 0xff, v41.l
	v_lshlrev_b16 v5.l, 8, v40.l
	v_and_b16 v6.l, 0xff, v39.l
	v_lshlrev_b16 v6.h, 8, v46.l
	v_and_b16 v7.l, 0xff, v45.l
	v_lshlrev_b16 v7.h, 8, v44.l
	v_and_b16 v8.l, 0xff, v43.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 2, v4
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v2.l, v1.l
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.l, v6.l, v5.l
	v_or_b16 v15.h, v7.l, v6.h
	v_or_b16 v15.l, v8.l, v7.h
	v_dual_cndmask_b32 v6, 0x80000000, v13 :: v_dual_and_b32 v7, 2, v27
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[10:11], v12, s[8:11], 0 offen
	buffer_store_b64 v[14:15], v6, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v6, 0, v28
	v_mov_b16_e32 v2.l, v9.h
	v_mov_b16_e32 v1.l, v5.h
	v_add3_u32 v4, v4, v7, v28
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v6, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s9, s27, 0xffff
	s_mov_b32 s8, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v0, v2, s45, 1
	s_and_b32 vcc_lo, vcc_lo, s46
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp44:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 193
		.amdhsa_next_free_sgpr 50
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 193
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14220
; TotalNumSgprs: 52
; NumVgprs: 193
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 52
; NumVGPRsForWavesPerEU: 193
; Occupancy: 7
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
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
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
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     193
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
