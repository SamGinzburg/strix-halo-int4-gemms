	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v3, 63, v0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v27, 4, v0
	v_and_b32_e32 v34, 8, v0
	v_and_b32_e32 v33, 0x80, v0
	v_lshlrev_b32_e32 v35, 4, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
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
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s34, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow
	s_load_b128 s[24:27], s[0:1], 0x40
	v_dual_mov_b32 v7, 0 :: v_dual_and_b32 v28, 15, v0
	v_dual_mov_b32 v6, 0 :: v_dual_and_b32 v29, 0xf0, v0
	v_or_b32_e32 v30, 16, v27
	v_or_b32_e32 v31, 32, v27
	v_or_b32_e32 v32, 48, v27
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v83, 0
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v78, 0
	v_mov_b32_e32 v80, 0
	v_mov_b32_e32 v82, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_and_b32 s46, s2, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[2:3], s[0:1], 0x20
	s_load_b256 s[16:23], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s34, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s6
	s_clause 0x1
	s_load_b32 s47, s[0:1], 0x58
	s_load_b32 s48, s[0:1], 0x50
	v_add_co_u32 v3, vcc_lo, v1, 16
	v_dual_mov_b32 v109, 0 :: v_dual_lshlrev_b32 v10, 3, v0
	v_bfe_i32 v11, v0, 3, 1
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s2, s4
	s_addc_u32 s5, s3, s5
	v_bfe_i32 v20, v0, 7, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s7, s[4:5], 0x0
	v_dual_mov_b32 v112, 0 :: v_dual_and_b32 v21, 0x70, v35
	v_dual_mov_b32 v107, 0 :: v_dual_and_b32 v10, 0x700, v10
	v_dual_mov_b32 v110, 0 :: v_dual_and_b32 v11, 0x88, v11
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[42:43], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[40:41], v[1:2]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v1, s34, v28
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[42:43], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[40:41], v[3:4]
	v_dual_mov_b32 v103, 0 :: v_dual_and_b32 v22, 0x7f, v0
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v20, 0x88, v20
	v_or3_b32 v42, v21, v10, v11
	v_dual_mov_b32 v97, 0 :: v_dual_lshlrev_b32 v10, 5, v0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	s_lshl_b32 s3, s45, 8
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[40:41], v[5:6]
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v2, 16, v1
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v3, 32, v1
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v4, 48, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v38, v1, s44
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v1, s3, v27
	v_xor_b32_e32 v45, v20, v22
	v_dual_mov_b32 v108, 0 :: v_dual_lshlrev_b32 v11, 1, v0
	v_dual_mov_b32 v95, 0 :: v_dual_lshlrev_b32 v20, 2, v29
	v_dual_mov_b32 v93, 0 :: v_dual_and_b32 v10, 32, v10
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s4, s47, s33
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v12, s3, v30
	v_or_b32_e32 v13, s3, v31
	v_or_b32_e32 v14, s3, v32
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s4, s4, s7
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v15, 64, v1
	v_or_b32_e32 v16, 0x50, v1
	v_dual_mov_b32 v104, 0 :: v_dual_and_b32 v47, 28, v11
	v_add3_u32 v48, 0, v20, v10
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
	v_mul_lo_u32 v41, v4, s44
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v4, 0xd0, v1
	v_mad_u64_u32 v[18:19], null, v19, s47, s[4:5]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v40, v3, s44
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v3, 0xe0, v1
	v_mad_u64_u32 v[19:20], null, v8, s47, s[4:5]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v39, v2, s44
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v2, 0xf0, v1
	v_mad_u64_u32 v[20:21], null, v7, s47, s[4:5]
	v_mad_u64_u32 v[21:22], null, v6, s47, s[4:5]
	v_mad_u64_u32 v[22:23], null, v5, s47, s[4:5]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v37, 6, v0
	v_or_b32_e32 v43, 0x300, v0
	v_or_b32_e32 v44, 0x3f0, v0
	v_xor_b32_e32 v46, 8, v42
	v_dual_mov_b32 v102, 0 :: v_dual_lshlrev_b32 v49, 1, v29
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
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v105, v48, v47
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v1, s8
	v_or_b32_e32 v71, s3, v0
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_or_b32_e32 v76, 12, v37
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v88, 0, v0
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v90, 0, v43
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v92, 0, v28
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v94, 0, v44
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v96, 0, v45
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v98, 0, v42
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v99, 0, v46
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v106, 0, v49
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v3, s10
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v5, s12
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v7, s14
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v118, s3, v37
	v_or_b32_e32 v117, s3, v76
	v_or_b32_e32 v119, s3, v28
	v_mad_u64_u32 v[115:116], null, v118, s48, v[9:10]
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_i32_e64 s4, s47, v117
	v_mad_u64_u32 v[116:117], null, v117, s48, v[9:10]
	v_or_b32_e32 v117, 4, v118
	v_or_b32_e32 v120, 8, v118
	v_cmp_gt_i32_e64 s3, s47, v118
	v_add_nc_u32_e32 v121, v10, v119
	v_cmp_gt_i32_e64 s5, s47, v119
	v_cmp_gt_i32_e64 s6, s47, v117
	v_mad_u64_u32 v[117:118], null, v117, s48, v[9:10]
	v_add_nc_u32_e32 v122, v11, v119
	v_add_nc_u32_e32 v123, v12, v119
	v_add_nc_u32_e32 v124, v13, v119
	v_add_nc_u32_e32 v125, v14, v119
	v_add_nc_u32_e32 v126, v15, v119
	v_add_nc_u32_e32 v127, v16, v119
	v_add_nc_u32_e32 v128, v17, v119
	v_add_nc_u32_e32 v129, v18, v119
	v_add_nc_u32_e32 v130, v19, v119
	v_add_nc_u32_e32 v131, v20, v119
	v_add_nc_u32_e32 v132, v21, v119
	v_add_nc_u32_e32 v133, v22, v119
	v_add_nc_u32_e32 v134, v23, v119
	v_add_nc_u32_e32 v135, v24, v119
	v_add_nc_u32_e32 v136, v25, v119
	v_mad_u64_u32 v[118:119], null, v120, s48, v[9:10]
	v_cmp_gt_i32_e64 s7, s47, v120
	s_and_b32 s3, s46, s3
	s_and_b32 s4, s46, s4
	v_cndmask_b32_e64 v115, 0x80000000, v115, s3
	s_and_b32 s3, s46, s6
	v_cndmask_b32_e64 v116, 0x80000000, v116, s4
	s_and_b32 s4, s46, s7
	v_cndmask_b32_e64 v117, 0x80000000, v117, s3
	v_cndmask_b32_e64 v118, 0x80000000, v118, s4
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v115, v115, s[28:31], 0 offen
	buffer_load_u8 v116, v116, s[28:31], 0 offen
	buffer_load_u8 v117, v117, s[28:31], 0 offen
	buffer_load_u8 v118, v118, s[28:31], 0 offen
	v_cndmask_b32_e64 v119, 0x80000000, v121, s5
	v_cndmask_b32_e64 v120, 0x80000000, v122, s5
	v_cndmask_b32_e64 v121, 0x80000000, v123, s5
	v_cndmask_b32_e64 v122, 0x80000000, v124, s5
	v_cndmask_b32_e64 v123, 0x80000000, v125, s5
	v_cndmask_b32_e64 v124, 0x80000000, v126, s5
	v_cndmask_b32_e64 v125, 0x80000000, v127, s5
	v_cndmask_b32_e64 v126, 0x80000000, v128, s5
	v_cndmask_b32_e64 v127, 0x80000000, v129, s5
	v_cndmask_b32_e64 v128, 0x80000000, v130, s5
	v_cndmask_b32_e64 v129, 0x80000000, v131, s5
	v_cndmask_b32_e64 v130, 0x80000000, v132, s5
	v_cndmask_b32_e64 v131, 0x80000000, v133, s5
	v_cndmask_b32_e64 v132, 0x80000000, v134, s5
	v_cndmask_b32_e64 v133, 0x80000000, v135, s5
	v_cndmask_b32_e64 v134, 0x80000000, v136, s5
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0xf
	buffer_load_u8 v119, v119, s[16:19], 0 offen
	buffer_load_u8 v120, v120, s[16:19], 0 offen
	buffer_load_u8 v121, v121, s[16:19], 0 offen
	buffer_load_u8 v122, v122, s[16:19], 0 offen
	buffer_load_u8 v135, v123, s[16:19], 0 offen
	buffer_load_u8 v136, v124, s[16:19], 0 offen
	buffer_load_u8 v137, v125, s[16:19], 0 offen
	buffer_load_u8 v138, v126, s[16:19], 0 offen
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
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(19)
	ds_store_b8 v88, v115
	s_waitcnt vmcnt(18)
	ds_store_b8 v90, v116
	s_waitcnt vmcnt(17)
	ds_store_b8 v88, v117 offset:256
	s_waitcnt vmcnt(16)
	ds_store_b8 v88, v118 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v115, v92 offset:320
	ds_load_u8 v116, v92 offset:256
	ds_load_u8 v117, v92 offset:448
	ds_load_u8 v118, v92 offset:384
	ds_load_u8 v123, v92 offset:64
	ds_load_u8 v124, v92
	ds_load_u8 v125, v92 offset:192
	ds_load_u8 v126, v92 offset:128
	ds_load_u8 v139, v92 offset:336
	ds_load_u8 v140, v92 offset:272
	ds_load_u8 v141, v92 offset:832
	ds_load_u8 v142, v92 offset:768
	ds_load_u8 v143, v92 offset:960
	ds_load_u8 v144, v92 offset:896
	ds_load_u8 v145, v92 offset:576
	ds_load_u8 v146, v92 offset:512
	ds_load_u8 v147, v92 offset:704
	ds_load_u8 v148, v92 offset:640
	ds_load_u8 v157, v92 offset:352
	ds_load_u8 v158, v92 offset:288
	ds_load_u8 v159, v92 offset:368
	ds_load_u8 v163, v92 offset:496
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v116, v118, v117, 0xc0c0004
	ds_load_u8 v161, v92 offset:464
	ds_load_u8 v162, v92 offset:400
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v117, v124, v123, 0xc0c0004
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s3, s3, s33
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v118, v126, v125, 0xc0c0004
	v_lshl_or_b32 v124, v116, 16, v115
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v115, v142, v141, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v123, v118, 16, v117
	ds_load_u8 v141, v92 offset:480
	ds_load_u8 v142, v92 offset:416
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v116, v144, v143, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v117, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v118, v148, v147, 0xc0c0004
	ds_load_u8 v147, v92 offset:432
	ds_load_u8 v160, v92 offset:304
	ds_load_u8 v143, v92 offset:80
	ds_load_u8 v144, v92 offset:96
	ds_load_u8 v148, v92 offset:112
	ds_load_u8 v145, v92 offset:16
	ds_load_u8 v146, v92 offset:32
	ds_load_u8 v164, v92 offset:48
	ds_load_u8 v165, v92 offset:208
	ds_load_u8 v166, v92 offset:144
	ds_load_u8 v167, v92 offset:224
	ds_load_u8 v168, v92 offset:160
	ds_load_u8 v169, v92 offset:240
	ds_load_u8 v170, v92 offset:176
	ds_load_u8 v171, v92 offset:848
	ds_load_u8 v172, v92 offset:784
	ds_load_u8 v173, v92 offset:864
	ds_load_u8 v174, v92 offset:800
	ds_load_u8 v175, v92 offset:880
	ds_load_u8 v176, v92 offset:816
	ds_load_u8 v177, v92 offset:976
	ds_load_u8 v178, v92 offset:912
	ds_load_u8 v179, v92 offset:992
	ds_load_u8 v180, v92 offset:928
	ds_load_u8 v181, v94
	ds_load_u8 v182, v92 offset:944
	ds_load_u8 v183, v92 offset:592
	ds_load_u8 v184, v92 offset:528
	ds_load_u8 v185, v92 offset:608
	ds_load_u8 v186, v92 offset:544
	ds_load_u8 v187, v92 offset:624
	ds_load_u8 v188, v92 offset:560
	ds_load_u8 v189, v92 offset:720
	ds_load_u8 v190, v92 offset:656
	ds_load_u8 v191, v92 offset:736
	ds_load_u8 v192, v92 offset:672
	ds_load_u8 v193, v92 offset:752
	ds_load_u8 v194, v92 offset:688
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b8 v96, v119
	s_waitcnt vmcnt(14)
	ds_store_b8 v96, v120 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b8 v96, v121 offset:512
	s_waitcnt vmcnt(12)
	ds_store_b8 v96, v122 offset:768
	s_waitcnt vmcnt(11)
	ds_store_b8 v96, v135 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b8 v96, v136 offset:1280
	s_waitcnt vmcnt(9)
	ds_store_b8 v96, v137 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v96, v138 offset:1792
	s_waitcnt vmcnt(7)
	ds_store_b8 v96, v127 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b8 v96, v128 offset:2304
	s_waitcnt vmcnt(5)
	ds_store_b8 v96, v129 offset:2560
	s_waitcnt vmcnt(4)
	ds_store_b8 v96, v130 offset:2816
	s_waitcnt vmcnt(3)
	ds_store_b8 v96, v131 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b8 v96, v132 offset:3328
	s_waitcnt vmcnt(1)
	ds_store_b8 v96, v133 offset:3584
	s_waitcnt vmcnt(0)
	ds_store_b8 v96, v134 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[149:152], v98 offset1:4
	ds_load_2addr_stride64_b64 v[153:156], v99 offset1:4
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v126, v116, 16, v115
	v_lshl_or_b32 v125, v118, 16, v117
	v_perm_b32 v133, v186, v185, 0xc0c0004
	v_perm_b32 v134, v192, v191, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[149:150], v[123:124], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[153:154], v[125:126], v[115:122] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v195, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v196, v116
	v_cvt_f32_i32_e32 v197, v117
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v198, v118
	v_cvt_f32_i32_e32 v199, v119
	v_cvt_f32_i32_e32 v200, v120
	v_cvt_f32_i32_e32 v201, v121
	v_cvt_f32_i32_e32 v202, v122
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[115:122], v[151:152], v[123:124], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[155:156], v[125:126], v[115:122] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v138, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v137, v116
	v_cvt_f32_i32_e32 v132, v117
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v131, v118
	v_cvt_f32_i32_e32 v115, v119
	v_cvt_f32_i32_e32 v116, v120
	v_cvt_f32_i32_e32 v117, v121
	v_cvt_f32_i32_e32 v118, v122
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v119, v140, v139, 0xc0c0004
	v_perm_b32 v120, v162, v161, 0xc0c0004
	v_perm_b32 v121, v145, v143, 0xc0c0004
	v_perm_b32 v122, v166, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v128, v120, 16, v119
	v_perm_b32 v119, v172, v171, 0xc0c0004
	v_lshl_or_b32 v127, v122, 16, v121
	v_perm_b32 v120, v178, v177, 0xc0c0004
	v_perm_b32 v121, v184, v183, 0xc0c0004
	v_perm_b32 v122, v190, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v130, v120, 16, v119
	v_lshl_or_b32 v129, v122, 16, v121
	v_wmma_i32_16x16x16_iu4 v[119:126], v[149:150], v[127:128], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[119:126], v[153:154], v[129:130], v[119:126] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v161, v119
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v162, v120
	v_cvt_f32_i32_e32 v165, v121
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v166, v122
	v_cvt_f32_i32_e32 v171, v123
	v_cvt_f32_i32_e32 v172, v124
	v_cvt_f32_i32_e32 v177, v125
	v_cvt_f32_i32_e32 v178, v126
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[119:126], v[151:152], v[127:128], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v127, v158, v157, 0xc0c0004
	v_perm_b32 v128, v142, v141, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[119:126], v[155:156], v[129:130], v[119:126] neg_lo:[1,1,0]
	v_perm_b32 v129, v146, v144, 0xc0c0004
	v_perm_b32 v130, v168, v167, 0xc0c0004
	v_lshl_or_b32 v128, v128, 16, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v124, v124
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v127, v130, 16, v129
	v_perm_b32 v129, v174, v173, 0xc0c0004
	v_perm_b32 v130, v180, v179, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v119, v119
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[139:146], v[149:150], v[127:128], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v130, v130, 16, v129
	v_lshl_or_b32 v129, v134, 16, v133
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v125, v125
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[139:146], v[153:154], v[129:130], v[139:146] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v167, v139
	v_cvt_f32_i32_e32 v168, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v173, v141
	v_cvt_f32_i32_e32 v174, v142
	v_cvt_f32_i32_e32 v179, v143
	v_cvt_f32_i32_e32 v180, v144
	v_cvt_f32_i32_e32 v183, v145
	v_cvt_f32_i32_e32 v184, v146
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[139:146], v[151:152], v[127:128], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[139:146], v[155:156], v[129:130], v[139:146] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v133, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v134, v140
	v_cvt_f32_i32_e32 v135, v141
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v136, v142
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v139, v160, v159, 0xc0c0004
	v_perm_b32 v140, v147, v163, 0xc0c0004
	v_perm_b32 v141, v164, v148, 0xc0c0004
	v_perm_b32 v142, v170, v169, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v127, v143
	v_cvt_f32_i32_e32 v128, v144
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v158, v140, 16, v139
	v_perm_b32 v139, v176, v175, 0xc0c0004
	v_lshl_or_b32 v157, v142, 16, v141
	v_perm_b32 v140, v182, v181, 0xc0c0004
	v_perm_b32 v141, v188, v187, 0xc0c0004
	v_perm_b32 v142, v194, v193, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v129, v145
	v_cvt_f32_i32_e32 v130, v146
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v160, v140, 16, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v159, v142, 16, v141
	v_wmma_i32_16x16x16_iu4 v[139:146], v[149:150], v[157:158], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[153:154], v[159:160], v[139:146] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v169, v143
	v_cvt_f32_i32_e32 v170, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v175, v145
	v_cvt_f32_i32_e32 v176, v146
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[143:150], v[151:152], v[157:158], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v153, v139
	v_cvt_f32_i32_e32 v154, v140
	v_cvt_f32_i32_e32 v163, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[143:150], v[155:156], v[159:160], v[143:150] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v164, v142
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v151, v71, s3, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v139, v147
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v147, s8, v38, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v140, v148
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v148, s8, v39, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v141, v149
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v149, s8, v40, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v142, v150
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v150, s8, v41, 1
	v_cndmask_b32_e32 v147, 0x80000000, v147, vcc_lo
	v_cndmask_b32_e64 v148, 0x80000000, v148, s0
	v_cndmask_b32_e64 v149, 0x80000000, v149, s1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v144, v144
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v150, 0x80000000, v150, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v151, v151, s[20:23], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v147, v147, s[36:39], 0 offen
	buffer_load_u16 v152, v148, s[36:39], 0 offen
	buffer_load_u16 v155, v149, s[36:39], 0 offen
	buffer_load_u16 v156, v150, s[36:39], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v143, v143
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s8, s8, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s8, s44
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v148, 16, v151
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v151, 16, v147
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v152, 16, v152
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v156, 16, v156
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v105, v148
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[147:150], v106
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v157, v195, v151 :: v_dual_mul_f32 v120, v120, v152
	v_dual_mul_f32 v124, v124, v152 :: v_dual_lshlrev_b32 v155, 16, v155
	v_mul_f32_e32 v144, v144, v156
	v_mul_f32_e32 v153, v153, v156
	v_mul_f32_e32 v146, v146, v156
	v_mul_f32_e32 v142, v142, v156
	v_mul_f32_e32 v145, v145, v156
	v_mul_f32_e32 v135, v135, v155
	v_mul_f32_e32 v129, v129, v155
	v_dual_mul_f32 v134, v134, v155 :: v_dual_mul_f32 v119, v119, v152
	v_mul_f32_e32 v126, v126, v152
	v_dual_mul_f32 v130, v130, v155 :: v_dual_mul_f32 v143, v143, v156
	v_mul_f32_e32 v141, v141, v156
	v_mul_f32_e32 v123, v123, v152
	v_mul_f32_e32 v127, v127, v155
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v36, v157, v147
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v157, v196, v151
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v56, v153, v147
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v153, v199, v151
	v_dual_mul_f32 v128, v128, v155 :: v_dual_mul_f32 v139, v139, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v114, v157, v148
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v157, v197, v151
	v_mul_f32_e32 v133, v133, v155
	v_dual_mul_f32 v125, v125, v152 :: v_dual_mul_f32 v136, v136, v155
	v_dual_mul_f32 v140, v140, v156 :: v_dual_fmac_f32 v113, v157, v149
	v_mul_f32_e32 v157, v198, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v112, v157, v150
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v157, v161, v152
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v93, v157, v147
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v157, v162, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v91, v157, v148
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v157, v165, v152
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v89, v157, v149
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v157, v166, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v87, v157, v150
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v157, v167, v155
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v73, v157, v147
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v157, v168, v155
	v_mul_f32_e32 v147, v154, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v72, v157, v148
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v157, v173, v155
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v55, v147, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v147, v163, v156 :: v_dual_fmac_f32 v70, v157, v149
	v_dual_mul_f32 v157, v174, v155 :: v_dual_fmac_f32 v54, v147, v149
	v_mul_f32_e32 v147, v164, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v69, v157, v150
	v_fmac_f32_e32 v53, v147, v150
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[147:150], v106 offset:16
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v111, v153, v147
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v153, v200, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v110, v153, v148
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v153, v201, v151
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v109, v153, v149
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v153, v202, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v108, v153, v150 :: v_dual_mul_f32 v153, v171, v152
	v_dual_fmac_f32 v86, v153, v147 :: v_dual_mul_f32 v153, v172, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v153, v148
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v153, v177, v152
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v84, v153, v149 :: v_dual_mul_f32 v153, v178, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v153, v150
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v153, v179, v155
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v68, v153, v147
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v153, v180, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v67, v153, v148
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v153, v183, v155
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v66, v153, v149 :: v_dual_mul_f32 v153, v184, v155
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v138, v138, v151
	v_mul_f32_e32 v137, v137, v151
	v_mul_f32_e32 v132, v132, v151
	v_mul_f32_e32 v131, v131, v151
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v65, v153, v150
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v153, v169, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v52, v153, v147 :: v_dual_mul_f32 v147, v170, v156
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v153, v122, v152
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v51, v147, v148
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v147, v175, v156 :: v_dual_mul_f32 v148, v116, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v50, v147, v149 :: v_dual_mul_f32 v147, v176, v156
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v149, v117, v151
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v49, v147, v150
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v147, v115, v151
	v_mul_f32_e32 v150, v118, v151
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[115:118], v106 offset:512
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v151, v121, v152 :: v_dual_fmac_f32 v82, v119, v115
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v81, v120, v116
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[119:122], v106 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v107, v138, v115 :: v_dual_fmac_f32 v104, v137, v116
	v_dual_fmac_f32 v103, v132, v117 :: v_dual_fmac_f32 v102, v131, v118
	v_dual_fmac_f32 v80, v151, v117 :: v_dual_fmac_f32 v79, v153, v118
	v_dual_fmac_f32 v64, v133, v115 :: v_dual_fmac_f32 v63, v134, v116
	v_dual_fmac_f32 v62, v135, v117 :: v_dual_fmac_f32 v61, v136, v118
	v_dual_fmac_f32 v48, v143, v115 :: v_dual_fmac_f32 v47, v144, v116
	v_dual_fmac_f32 v46, v145, v117 :: v_dual_fmac_f32 v45, v146, v118
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v101, v147, v119 :: v_dual_fmac_f32 v100, v148, v120
	v_fmac_f32_e32 v97, v149, v121
	v_dual_fmac_f32 v95, v150, v122 :: v_dual_fmac_f32 v78, v123, v119
	v_fmac_f32_e32 v77, v124, v120
	v_dual_fmac_f32 v75, v125, v121 :: v_dual_fmac_f32 v74, v126, v122
	v_dual_fmac_f32 v60, v127, v119 :: v_dual_fmac_f32 v59, v128, v120
	v_dual_fmac_f32 v58, v129, v121 :: v_dual_fmac_f32 v57, v130, v122
	v_dual_fmac_f32 v44, v139, v119 :: v_dual_fmac_f32 v43, v140, v120
	v_fmac_f32_e32 v42, v141, v121
	v_fmac_f32_e32 v26, v142, v122
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v38, v80, v80 :: v_dual_max_f32 v39, v79, v79
	v_dual_max_f32 v1, v36, v36 :: v_dual_max_f32 v2, v114, v114
	v_dual_max_f32 v5, v111, v111 :: v_dual_max_f32 v6, v110, v110
	v_dual_max_f32 v7, v109, v109 :: v_dual_max_f32 v8, v108, v108
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_max_f32 v10, v107, v107 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v18, v93, v93 :: v_dual_max_f32 v19, v91, v91
	v_max_f32_e32 v20, v89, v89
	v_dual_max_f32 v36, v82, v82 :: v_dual_max_f32 v37, v81, v81
	v_max_f32_e32 v40, v78, v78
	v_dual_max_f32 v38, 0, v38 :: v_dual_max_f32 v41, v77, v77
	v_dual_max_f32 v74, v74, v74 :: v_dual_max_f32 v73, v73, v73
	v_dual_max_f32 v72, v72, v72 :: v_dual_max_f32 v65, v65, v65
	v_dual_max_f32 v64, v64, v64 :: v_dual_max_f32 v63, v63, v63
	v_dual_max_f32 v62, v62, v62 :: v_dual_max_f32 v61, v61, v61
	v_dual_max_f32 v55, v55, v55 :: v_dual_max_f32 v54, v54, v54
	v_dual_max_f32 v53, v53, v53 :: v_dual_max_f32 v52, v52, v52
	v_max_f32_e32 v51, v51, v51
	v_dual_max_f32 v3, v113, v113 :: v_dual_max_f32 v4, v112, v112
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v13, v102, v102
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v11, v104, v104
	v_dual_max_f32 v12, v103, v103 :: v_dual_max_f32 v15, v100, v100
	v_max_f32_e32 v14, v101, v101
	v_dual_max_f32 v16, v97, v97 :: v_dual_max_f32 v17, v95, v95
	v_dual_max_f32 v18, 0, v18 :: v_dual_max_f32 v21, v87, v87
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v20, 0, v20
	v_dual_max_f32 v23, v85, v85 :: v_dual_max_f32 v22, v86, v86
	v_dual_max_f32 v25, v83, v83 :: v_dual_max_f32 v24, v84, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v21, 0, v21
	v_dual_max_f32 v37, 0, v37 :: v_dual_max_f32 v40, 0, v40
	v_max_f32_e32 v71, v75, v75
	v_max_f32_e32 v41, 0, v41
	v_dual_max_f32 v81, 0, v74 :: v_dual_max_f32 v68, v68, v68
	v_dual_max_f32 v85, 0, v72 :: v_dual_max_f32 v70, v70, v70
	v_dual_max_f32 v69, v69, v69 :: v_dual_max_f32 v66, v66, v66
	v_dual_max_f32 v67, v67, v67 :: v_dual_max_f32 v92, 0, v64
	v_dual_max_f32 v93, 0, v63 :: v_dual_max_f32 v60, v60, v60
	v_dual_max_f32 v95, 0, v61 :: v_dual_max_f32 v58, v58, v58
	v_dual_max_f32 v59, v59, v59 :: v_dual_max_f32 v56, v56, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_max_f32 v57, v57, v57 :: v_dual_max_f32 v96, 0, v60
	v_dual_max_f32 v102, 0, v54 :: v_dual_max_f32 v103, 0, v53
	v_dual_max_f32 v50, v50, v50 :: v_dual_max_f32 v105, 0, v51
	v_dual_max_f32 v48, v48, v48 :: v_dual_max_f32 v49, v49, v49
	v_dual_max_f32 v46, v46, v46 :: v_dual_max_f32 v47, v47, v47
	v_dual_max_f32 v106, 0, v50 :: v_dual_max_f32 v45, v45, v45
	v_dual_max_f32 v44, v44, v44 :: v_dual_max_f32 v43, v43, v43
	v_max_f32_e32 v42, v42, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v26, v26, v26 :: v_dual_max_f32 v111, 0, v45
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v14, 0, v14
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v16, 0, v16
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v36, 0, v36
	v_max_f32_e32 v39, 0, v39
	v_dual_max_f32 v71, 0, v71 :: v_dual_max_f32 v84, 0, v73
	v_dual_max_f32 v86, 0, v70 :: v_dual_max_f32 v87, 0, v69
	v_dual_max_f32 v88, 0, v68 :: v_dual_max_f32 v89, 0, v67
	v_dual_max_f32 v90, 0, v66 :: v_dual_max_f32 v91, 0, v65
	v_dual_max_f32 v94, 0, v62 :: v_dual_max_f32 v97, 0, v59
	v_dual_max_f32 v98, 0, v58 :: v_dual_max_f32 v99, 0, v57
	v_dual_max_f32 v100, 0, v56 :: v_dual_max_f32 v101, 0, v55
	v_dual_max_f32 v104, 0, v52 :: v_dual_max_f32 v107, 0, v49
	v_dual_max_f32 v108, 0, v48 :: v_dual_max_f32 v109, 0, v47
	v_max_f32_e32 v110, 0, v46
	v_dual_max_f32 v112, 0, v44 :: v_dual_max_f32 v113, 0, v43
	v_dual_max_f32 v114, 0, v42 :: v_dual_mul_f32 v83, v1, v1
	v_dual_max_f32 v115, 0, v26 :: v_dual_mul_f32 v80, v3, v3
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v82, v2, v2 :: v_dual_mul_f32 v79, v4, v4
	v_dual_mul_f32 v78, v5, v5 :: v_dual_mul_f32 v59, v7, v7
	v_dual_mul_f32 v56, v6, v6 :: v_dual_mul_f32 v67, v12, v12
	v_dual_mul_f32 v60, v8, v8 :: v_dual_mul_f32 v63, v10, v10
	v_dual_mul_f32 v64, v11, v11 :: v_dual_mul_f32 v77, v17, v17
	v_dual_mul_f32 v68, v13, v13 :: v_dual_mul_f32 v73, v15, v15
	v_dual_mul_f32 v72, v14, v14 :: v_dual_mul_f32 v69, v21, v21
	v_dual_mul_f32 v76, v16, v16 :: v_dual_mul_f32 v75, v18, v18
	v_dual_mul_f32 v74, v19, v19 :: v_dual_mul_f32 v61, v25, v25
	v_dual_mul_f32 v70, v20, v20 :: v_dual_mul_f32 v65, v23, v23
	v_dual_mul_f32 v66, v22, v22 :: v_dual_mul_f32 v57, v37, v37
	v_dual_mul_f32 v62, v24, v24 :: v_dual_mul_f32 v55, v38, v38
	v_dual_mul_f32 v58, v36, v36 :: v_dual_mul_f32 v51, v71, v71
	v_dual_mul_f32 v54, v39, v39 :: v_dual_mul_f32 v53, v40, v40
	v_dual_mul_f32 v52, v41, v41 :: v_dual_mul_f32 v49, v84, v84
	v_dual_mul_f32 v50, v81, v81 :: v_dual_mul_f32 v47, v86, v86
	v_dual_mul_f32 v48, v85, v85 :: v_dual_mul_f32 v45, v88, v88
	v_dual_mul_f32 v46, v87, v87 :: v_dual_mul_f32 v43, v90, v90
	v_dual_mul_f32 v44, v89, v89 :: v_dual_mul_f32 v41, v92, v92
	v_dual_mul_f32 v42, v91, v91 :: v_dual_mul_f32 v39, v94, v94
	v_dual_mul_f32 v40, v93, v93 :: v_dual_mul_f32 v37, v96, v96
	v_dual_mul_f32 v38, v95, v95 :: v_dual_mul_f32 v23, v101, v101
	v_dual_mul_f32 v36, v97, v97 :: v_dual_mul_f32 v25, v99, v99
	v_dual_mul_f32 v26, v98, v98 :: v_dual_mul_f32 v21, v103, v103
	v_dual_mul_f32 v24, v100, v100 :: v_dual_mul_f32 v19, v105, v105
	v_dual_mul_f32 v22, v102, v102 :: v_dual_mul_f32 v17, v107, v107
	v_dual_mul_f32 v20, v104, v104 :: v_dual_mul_f32 v15, v109, v109
	v_dual_mul_f32 v18, v106, v106 :: v_dual_mul_f32 v7, v113, v113
	v_dual_mul_f32 v16, v108, v108 :: v_dual_mov_b32 v1, v34
	v_dual_mul_f32 v14, v110, v110 :: v_dual_mov_b32 v5, v35
	v_dual_mul_f32 v10, v111, v111 :: v_dual_mov_b32 v3, v9
	v_mul_f32_e32 v8, v112, v112
	v_mul_f32_e32 v6, v114, v114
	v_mul_f32_e32 v4, v115, v115
	v_mov_b32_e32 v2, v33
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v9, v82, v82 :: v_dual_max_f32 v34, v75, v75
	v_max_f32_e32 v11, v83, v83
	v_max3_f32 v13, v64, v67, v68
	v_max3_f32 v33, v72, v73, v76
	v_max3_f32 v12, v79, v78, v56
	v_max3_f32 v35, v59, v60, v63
	v_max3_f32 v81, v57, v55, v54
	v_max3_f32 v84, v53, v52, v51
	v_max3_f32 v13, v13, v33, v77
	v_max_f32_e32 v33, v49, v49
	v_max_f32_e32 v9, v11, v9
	v_max_f32_e32 v11, v74, v74
	v_max3_f32 v85, v40, v39, v38
	v_max3_f32 v86, v37, v36, v26
	v_max3_f32 v71, v62, v61, v58
	v_max3_f32 v9, v9, v80, v12
	v_dual_max_f32 v12, v48, v48 :: v_dual_max_f32 v11, v34, v11
	v_max3_f32 v34, v69, v66, v65
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v9, v9, v35, v13
	v_max_f32_e32 v12, v33, v12
	v_max3_f32 v33, v46, v45, v44
	v_max3_f32 v11, v11, v70, v34
	v_max3_f32 v34, v81, v84, v50
	v_max3_f32 v81, v43, v42, v41
	v_max_f32_e32 v84, v23, v23
	v_max3_f32 v12, v12, v47, v33
	v_max3_f32 v33, v85, v86, v25
	v_max_f32_e32 v85, v24, v24
	v_max3_f32 v11, v11, v71, v34
	v_max3_f32 v34, v15, v14, v10
	v_max3_f32 v35, v8, v7, v6
	v_max3_f32 v12, v12, v81, v33
	v_max_f32_e32 v13, v85, v84
	v_max3_f32 v33, v21, v20, v19
	v_max3_f32 v71, v18, v17, v16
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v81, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v84, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_lshrrev_b32_e32 v88, 3, v2
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v13, v13, v22, v33
	v_max3_f32 v33, v34, v35, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v34, v81, v81 :: v_dual_max_f32 v35, v84, v84
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v81, v12, s0, 0xfedcba98 op_sel:[1,0]
	s_waitcnt lgkmcnt(0)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v13, v13, v71, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v84, v9, v34 :: v_dual_and_b32 v33, 3, v0
	v_max_f32_e32 v85, v11, v35
	v_dual_max_f32 v11, v81, v81 :: v_dual_and_b32 v34, 4, v0
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v35, v33, 9, 0
	v_lshlrev_b32_e32 v9, 5, v33
	v_permlanex16_b32 v71, v13, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v86, v12, v11
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v12, 0x60, v0
	v_lshl_add_u32 v35, v34, 2, v35
	v_and_or_b32 v5, 0x680, v5, v9
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v71, v71, v71
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v11, 1, v2
	v_xor_b32_e32 v81, v9, v12
	v_lshl_add_u32 v35, v1, 4, v35
	v_xor_b32_e32 v5, v5, v12
	v_lshl_add_u32 v89, v34, 6, 0
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v87, v13, v71 :: v_dual_add_nc_u32 v2, 0, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v13, v35, v11, v81
	s_barrier
	v_add3_u32 v5, v89, v88, v5
	v_lshlrev_b32_e32 v1, 3, v1
	ds_store_b128 v13, v[84:87]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[84:87], v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v5, v84
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v71, v84, v84
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v13, v85
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v81, v85, v85 :: v_dual_max_f32 v84, v87, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v87, v87 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v5
	v_max_f32_e32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v5, v71, v5
	v_max_f32_e32 v71, v86, v86
	v_max_f32_e32 v13, v81, v13
	v_max_f32_e32 v81, v87, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v85, v5
	v_mov_b32_dpp v85, v85 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v85, v85, v85
	v_max_f32_e32 v5, v5, v85
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v35, v86 :: v_dual_mov_b32 v86, v13
	v_lshl_add_u32 v33, v33, 4, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v85, v5
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v86, v86 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v85, v85 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v35, v35, v35 :: v_dual_max_f32 v86, v86, v86
	v_max_f32_e32 v35, v71, v35
	v_max_f32_e32 v71, v84, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v13, v13, v86
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v81, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v84, v71
	v_mov_b32_e32 v86, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v84, v84 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v86, v86 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v81, v81, v81 :: v_dual_max_f32 v84, v84, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v35, v35, v81
	v_dual_max_f32 v71, v71, v84 :: v_dual_max_f32 v84, v85, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v85, v86, v86
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v81, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v87, v71 :: v_dual_max_f32 v84, v5, v84
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v85, v13, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v87, v87 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v81, v81
	v_max_f32_e32 v13, v87, v87
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v81, 1, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v86, v35, v5 :: v_dual_lshlrev_b32 v5, 5, v34
	v_max_f32_e32 v87, v71, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v2, v81, v1
	v_add3_u32 v1, v33, v5, v1
	ds_store_b128 v2, v[84:87]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[84:87], v1
.Ltmp35:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v84, v84
	v_dual_max_f32 v71, v86, v86 :: v_dual_max_f32 v84, v87, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v5, 0x2b8cbccc, v1
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v32
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v13, null, 0x40e00000, 0x40e00000, v5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v31, s0, s34, v31
	v_add_co_ci_u32_e64 v32, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v35, v13
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v33, s0, s34, v30
	v_add_co_ci_u32_e64 v34, null, s35, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[42:43], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[40:41], v[1:2]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v81, vcc_lo, v5, 0x40e00000, v5
	v_max_f32_e32 v30, 0x2b8cbccc, v71
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v1, -v13, v35, 1.0
	v_max_f32_e32 v71, v85, v85
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[42:43], v[31:32]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[40:41], v[31:32]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v2, null, 0x40e00000, 0x40e00000, v30
	v_fmac_f32_e32 v35, v1, v35
	v_max_f32_e32 v71, 0x2b8cbccc, v71
	v_max_f32_e32 v31, 0x2b8cbccc, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v1, v2
	v_div_scale_f32 v87, s6, v30, 0x40e00000, v30
	v_mul_f32_e32 v85, v81, v35
	v_div_scale_f32 v32, null, 0x40e00000, 0x40e00000, v71
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[42:43], v[33:34]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[40:41], v[33:34]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v84, -v13, v85, v81
	v_rcp_f32_e32 v88, v32
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v86, -v2, v1, 1.0
	v_fmac_f32_e32 v85, v84, v35
	v_div_scale_f32 v84, null, 0x40e00000, 0x40e00000, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v1, v86, v1
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v86.h, 0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v13, -v13, v85, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v89, v84
	v_mul_f32_e32 v81, v87, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v13, v13, v35, v85
	v_fma_f32 v35, -v32, v88, 1.0
	v_div_scale_f32 v85, s7, v71, 0x40e00000, v71
	v_fma_f32 v90, -v2, v81, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v5, v13, 0x40e00000, v5
	v_fmac_f32_e32 v88, v35, v88
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v13, -v84, v89, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v35.h, v86.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v81, v90, v1
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v35.l, v5.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v90, v85, v88
	v_fmac_f32_e32 v89, v13, v89
	v_div_scale_f32 v13, s8, v31, 0x40e00000, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v33, 1, v35
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v34, -v32, v90, v85
	v_fma_f32 v2, -v2, v81, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v35, v13, v89
	s_mov_b32 vcc_lo, s6
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v5, v5, v33, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v90, v34, v88
	v_div_fmas_f32 v81, v2, v1, v81
	v_fma_f32 v33, -v84, v35, v13
	s_mov_b32 vcc_lo, s7
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v87, 0xffff0000, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v32, -v32, v90, v85
	v_div_fixup_f32 v30, v81, 0x40e00000, v30
	v_fmac_f32_e32 v35, v33, v89
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s34, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v33, null, v87, v87, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v13, -v84, v35, v13
	v_div_fmas_f32 v32, v32, v88, v90
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v34, v33
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v86.l, v30.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v13, v13, v89, v35
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v35, null, v87, v87, v82
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v32, v32, 0x40e00000, v71
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s35, 0, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v84, v35
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v71, 1, v86
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v33, v34, 1.0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v31, v13, 0x40e00000, v31
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v13.l, v32.h
	v_mov_b16_e32 v13.h, v86.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v85, vcc_lo, v83, v87, v83
	v_fmac_f32_e32 v34, v81, v34
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[42:43], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[40:41], v[1:2]
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_add3_u32 v1, v30, v71, 0x7fff
	v_mov_b16_e32 v86.l, v31.h
	v_and_b32_e32 v2, 1, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v88, v85, v34
	v_fma_f32 v30, -v35, v84, 1.0
	v_div_scale_f32 v89, null, v87, v87, v80
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v71, 1, v86
	v_add3_u32 v13, v32, v2, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v32, -v33, v88, v85
	v_fmac_f32_e32 v84, v30, v84
	v_rcp_f32_e32 v86, v89
	v_div_scale_f32 v90, null, v87, v87, v79
	v_div_scale_f32 v91, s8, v82, v87, v82
	v_fmac_f32_e32 v88, v32, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v92, v90
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v31, v71, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v32, v91, v84
	v_div_scale_f32 v94, null, v87, v87, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v89, v86, 1.0
	v_fma_f32 v33, -v33, v88, v85
	v_fma_f32 v85, -v35, v32, v91
	v_div_scale_f32 v93, s9, v80, v87, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v86, v31, v86
	v_fma_f32 v31, -v90, v92, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v32, v85, v84
	v_rcp_f32_e32 v85, v94
	v_div_fmas_f32 v33, v33, v34, v88
	v_mul_f32_e32 v34, v93, v86
	v_fmac_f32_e32 v92, v31, v92
	v_div_scale_f32 v88, s10, v79, v87, v79
	v_div_scale_f32 v95, null, v87, v87, v56
	v_div_fixup_f32 v31, v33, v87, v83
	v_fma_f32 v33, -v35, v32, v91
	v_fma_f32 v35, -v89, v34, v93
	v_mul_f32_e32 v83, v88, v92
	v_rcp_f32_e32 v91, v95
	v_fma_f32 v96, -v94, v85, 1.0
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v34, v35, v86
	v_div_fmas_f32 v32, v33, v84, v32
	v_fma_f32 v33, -v90, v83, v88
	v_fmac_f32_e32 v85, v96, v85
	v_div_scale_f32 v35, s8, v78, v87, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v32, v32, v87, v82
	v_fma_f32 v84, -v95, v91, 1.0
	v_fma_f32 v82, -v89, v34, v93
	v_fmac_f32_e32 v83, v33, v92
	v_mul_f32_e32 v89, v35, v85
	v_div_scale_f32 v93, null, v87, v87, v59
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v91, v84, v91
	v_div_scale_f32 v84, s11, v56, v87, v56
	v_div_fmas_f32 v33, v82, v86, v34
	v_fma_f32 v34, -v90, v83, v88
	v_fma_f32 v82, -v94, v89, v35
	v_rcp_f32_e32 v86, v93
	v_div_scale_f32 v90, null, v87, v87, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v88, v84, v91 :: v_dual_fmac_f32 v89, v82, v85
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v82, v90
	v_div_fmas_f32 v34, v34, v92, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v83, -v95, v88, v84
	v_div_fixup_f32 v33, v33, v87, v80
	v_fma_f32 v92, -v93, v86, 1.0
	v_fma_f32 v35, -v94, v89, v35
	v_div_fixup_f32 v34, v34, v87, v79
	v_fmac_f32_e32 v88, v83, v91
	v_div_scale_f32 v79, s9, v59, v87, v59
	v_fmac_f32_e32 v86, v92, v86
	v_fma_f32 v80, -v90, v82, 1.0
	v_div_scale_f32 v83, null, v87, v87, v63
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v84, -v95, v88, v84
	v_div_fmas_f32 v35, v35, v85, v89
	v_mul_f32_e32 v85, v79, v86
	v_fmac_f32_e32 v82, v80, v82
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v89, s8, v60, v87, v60
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v92, null, v87, v87, v64
	v_div_fmas_f32 v84, v84, v91, v88
	v_fma_f32 v88, -v93, v85, v79
	v_mul_f32_e32 v91, v89, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v95, v92
	v_fma_f32 v94, -v83, v80, 1.0
	v_div_fixup_f32 v35, v35, v87, v78
	v_fmac_f32_e32 v85, v88, v86
	v_fma_f32 v78, -v90, v91, v89
	v_div_scale_f32 v88, null, v87, v87, v67
	v_div_fixup_f32 v56, v84, v87, v56
	v_fmac_f32_e32 v80, v94, v80
	v_div_scale_f32 v84, s10, v63, v87, v63
	v_fma_f32 v79, -v93, v85, v79
	v_fmac_f32_e32 v91, v78, v82
	v_rcp_f32_e32 v93, v88
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v94, -v92, v95, 1.0
	v_mul_f32_e32 v78, v84, v80
	v_div_fmas_f32 v79, v79, v86, v85
	v_fma_f32 v85, -v90, v91, v89
	v_div_scale_f32 v96, null, v87, v87, v68
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s11, v64, v87, v64
	v_fma_f32 v86, -v83, v78, v84
	v_fma_f32 v90, -v88, v93, 1.0
	v_div_fmas_f32 v82, v85, v82, v91
	v_rcp_f32_e32 v85, v96
	v_mul_f32_e32 v89, v94, v95
	v_fmac_f32_e32 v78, v86, v80
	v_fmac_f32_e32 v93, v90, v93
	v_div_scale_f32 v90, s8, v67, v87, v67
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v86, -v92, v89, v94
	v_div_fixup_f32 v59, v79, v87, v59
	v_div_fixup_f32 v60, v82, v87, v60
	v_fma_f32 v79, -v83, v78, v84
	v_mul_f32_e32 v82, v90, v93
	v_fma_f32 v83, -v96, v85, 1.0
	v_div_scale_f32 v84, null, v87, v87, v72
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v89, v86, v95
	v_div_fmas_f32 v78, v79, v80, v78
	v_fma_f32 v80, -v88, v82, v90
	v_fmac_f32_e32 v85, v83, v85
	v_rcp_f32_e32 v83, v84
	v_div_scale_f32 v91, null, v87, v87, v73
	v_fma_f32 v79, -v92, v89, v94
	v_div_scale_f32 v86, s9, v68, v87, v68
	v_fmac_f32_e32 v82, v80, v93
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v80, v91
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v63, v78, v87, v63
	v_div_fmas_f32 v79, v79, v95, v89
	v_mul_f32_e32 v89, v86, v85
	v_fma_f32 v92, -v84, v83, 1.0
	v_fma_f32 v78, -v88, v82, v90
	v_div_scale_f32 v88, s10, v72, v87, v72
	v_div_fixup_f32 v64, v79, v87, v64
	v_fma_f32 v79, -v96, v89, v86
	v_fmac_f32_e32 v83, v92, v83
	v_fma_f32 v90, -v91, v80, 1.0
	v_div_scale_f32 v92, null, v87, v87, v76
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v89, v79, v85
	v_div_fmas_f32 v78, v78, v93, v82
	v_dual_mul_f32 v79, v88, v83 :: v_dual_fmac_f32 v80, v90, v80
	v_rcp_f32_e32 v82, v92
	v_div_scale_f32 v90, s8, v73, v87, v73
	v_div_scale_f32 v93, null, v87, v87, v77
	v_div_fixup_f32 v67, v78, v87, v67
	v_fma_f32 v78, -v96, v89, v86
	v_fma_f32 v86, -v84, v79, v88
	v_mul_f32_e32 v94, v90, v80
	v_rcp_f32_e32 v95, v93
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v81, 0xffff0000, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v96, -v92, v82, 1.0
	v_div_fmas_f32 v78, v78, v85, v89
	v_fmac_f32_e32 v79, v86, v83
	v_fma_f32 v85, -v91, v94, v90
	v_div_scale_f32 v86, s9, v76, v87, v76
	v_fmac_f32_e32 v82, v96, v82
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v93, v95, 1.0
	v_div_fixup_f32 v68, v78, v87, v68
	v_fma_f32 v78, -v84, v79, v88
	v_fmac_f32_e32 v94, v85, v80
	v_div_scale_f32 v88, null, v81, v81, v75
	s_mov_b32 vcc_lo, s10
	v_dual_mul_f32 v84, v86, v82 :: v_dual_fmac_f32 v95, v89, v95
	v_div_scale_f32 v85, s11, v77, v87, v77
	v_div_fmas_f32 v78, v78, v83, v79
	v_fma_f32 v79, -v91, v94, v90
	v_rcp_f32_e32 v89, v88
	v_div_scale_f32 v91, null, v81, v81, v74
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v83, -v92, v84, v86
	v_mul_f32_e32 v90, v85, v95
	v_div_fmas_f32 v79, v79, v80, v94
	v_rcp_f32_e32 v80, v91
	v_div_fixup_f32 v72, v78, v87, v72
	v_fmac_f32_e32 v84, v83, v82
	v_fma_f32 v83, -v93, v90, v85
	v_fma_f32 v94, -v88, v89, 1.0
	v_div_fixup_f32 v73, v79, v87, v73
	v_div_scale_f32 v79, s8, v75, v81, v75
	v_fma_f32 v78, -v92, v84, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v90, v83, v95 :: v_dual_fmac_f32 v89, v94, v89
	v_fma_f32 v83, -v91, v80, 1.0
	v_div_scale_f32 v86, null, v81, v81, v70
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v92, null, v81, v81, v69
	v_div_fmas_f32 v78, v78, v82, v84
	v_fma_f32 v82, -v93, v90, v85
	v_mul_f32_e32 v84, v79, v89
	v_fmac_f32_e32 v80, v83, v80
	v_rcp_f32_e32 v83, v86
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v85, s9, v74, v81, v74
	v_div_fmas_f32 v82, v82, v95, v90
	v_fma_f32 v90, -v88, v84, v79
	v_rcp_f32_e32 v95, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v93, v85, v80
	v_div_fixup_f32 v76, v78, v87, v76
	v_div_fixup_f32 v77, v82, v87, v77
	v_fma_f32 v94, -v86, v83, 1.0
	v_fmac_f32_e32 v84, v90, v89
	v_div_scale_f32 v87, null, v81, v81, v66
	v_fma_f32 v78, -v91, v93, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v83, v94, v83
	v_div_scale_f32 v82, s10, v70, v81, v70
	v_fma_f32 v90, -v92, v95, 1.0
	v_fma_f32 v79, -v88, v84, v79
	v_rcp_f32_e32 v88, v87
	v_fmac_f32_e32 v93, v78, v80
	v_mul_f32_e32 v78, v82, v83
	v_fmac_f32_e32 v95, v90, v95
	v_div_scale_f32 v90, s11, v69, v81, v69
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v94, null, v81, v81, v65
	v_div_fmas_f32 v79, v79, v89, v84
	v_fma_f32 v84, -v91, v93, v85
	v_fma_f32 v85, -v86, v78, v82
	v_mul_f32_e32 v89, v90, v95
	v_fma_f32 v91, -v87, v88, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v75, v79, v81, v75
	v_div_fmas_f32 v80, v84, v80, v93
	v_fmac_f32_e32 v78, v85, v83
	v_rcp_f32_e32 v84, v94
	v_fma_f32 v85, -v92, v89, v90
	v_fmac_f32_e32 v88, v91, v88
	v_div_scale_f32 v91, s8, v66, v81, v66
	v_div_fixup_f32 v74, v80, v81, v74
	v_fma_f32 v79, -v86, v78, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v89, v85, v95 :: v_dual_mul_f32 v80, v91, v88
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v82, -v94, v84, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v78, v79, v83, v78
	v_fma_f32 v79, -v92, v89, v90
	v_fma_f32 v83, -v87, v80, v91
	v_div_scale_f32 v90, null, v81, v81, v61
	v_fmac_f32_e32 v84, v82, v84
	v_div_scale_f32 v86, s9, v65, v81, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v83, v88
	v_rcp_f32_e32 v83, v90
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v70, v78, v81, v70
	v_div_fmas_f32 v79, v79, v95, v89
	v_mul_f32_e32 v89, v86, v84
	v_fma_f32 v78, -v87, v80, v91
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v30, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v69, v79, v81, v69
	v_fma_f32 v79, -v94, v89, v86
	v_fma_f32 v91, -v90, v83, 1.0
	v_div_fmas_f32 v78, v78, v88, v80
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v79, v84
	v_fmac_f32_e32 v83, v91, v83
	v_div_scale_f32 v91, null, v81, v81, v57
	v_div_fixup_f32 v66, v78, v81, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v94, v89, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v75, v75
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v94, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v84, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v91, v94, 1.0
	v_fmac_f32_e32 v94, v89, v94
	v_div_scale_f32 v85, null, v81, v81, v62
	v_div_scale_f32 v87, s10, v62, v81, v62
	v_div_scale_f32 v88, s8, v61, v81, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v82, v85
	v_div_fixup_f32 v65, v78, v81, v65
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v93, v88, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v90, v93, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v92, -v85, v82, 1.0
	v_fmac_f32_e32 v93, v84, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v82, v92, v82
	v_div_scale_f32 v92, null, v81, v81, v58
	v_mul_f32_e32 v79, v87, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v80, v92
	v_fma_f32 v86, -v85, v79, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v79, v86, v82
	v_fma_f32 v95, -v92, v80, 1.0
	v_div_scale_f32 v86, s9, v58, v81, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v78, -v85, v79, v87
	v_fmac_f32_e32 v80, v95, v80
	v_div_scale_f32 v87, null, v81, v81, v55
	v_div_scale_f32 v85, s11, v57, v81, v57
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v84, v86, v80
	v_div_fmas_f32 v78, v78, v82, v79
	v_fma_f32 v79, -v90, v93, v88
	v_rcp_f32_e32 v88, v87
	v_div_scale_f32 v90, null, v81, v81, v54
	v_fma_f32 v82, -v92, v84, v86
	v_mul_f32_e32 v89, v85, v94
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v62, v78, v81, v62
	v_div_fmas_f32 v79, v79, v83, v93
	v_fmac_f32_e32 v84, v82, v80
	v_rcp_f32_e32 v82, v90
	v_fma_f32 v83, -v91, v89, v85
	v_fma_f32 v93, -v87, v88, 1.0
	v_div_fixup_f32 v61, v79, v81, v61
	v_fma_f32 v78, -v92, v84, v86
	v_div_scale_f32 v79, s8, v55, v81, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v89, v83, v94 :: v_dual_fmac_f32 v88, v93, v88
	v_div_scale_f32 v86, null, v81, v81, v53
	v_fma_f32 v83, -v90, v82, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v71, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v80, v84
	v_fma_f32 v80, -v91, v89, v85
	v_mul_f32_e32 v84, v79, v88
	v_fmac_f32_e32 v82, v83, v82
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v85, s9, v54, v81, v54
	v_div_scale_f32 v91, null, v81, v81, v52
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v92, v85, v82
	v_div_fmas_f32 v80, v80, v94, v89
	v_fma_f32 v89, -v87, v84, v79
	v_rcp_f32_e32 v94, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v86, v83, 1.0
	v_div_fixup_f32 v58, v78, v81, v58
	v_fma_f32 v78, -v90, v92, v85
	v_fmac_f32_e32 v84, v89, v88
	v_div_fixup_f32 v57, v80, v81, v57
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v80, s10, v53, v81, v53
	v_div_scale_f32 v89, null, v81, v81, v51
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v91, v94, 1.0
	v_fma_f32 v79, -v87, v84, v79
	v_fmac_f32_e32 v92, v78, v82
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v78, v80, v83
	v_rcp_f32_e32 v87, v89
	v_fmac_f32_e32 v94, v93, v94
	v_div_scale_f32 v93, s11, v52, v81, v52
	v_div_fmas_f32 v79, v79, v88, v84
	v_fma_f32 v84, -v90, v92, v85
	v_div_scale_f32 v95, null, v81, v81, v50
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v85, -v86, v78, v80
	v_mul_f32_e32 v88, v93, v94
	v_div_fmas_f32 v82, v84, v82, v92
	v_rcp_f32_e32 v84, v95
	v_fma_f32 v90, -v89, v87, 1.0
	v_fmac_f32_e32 v78, v85, v83
	v_fma_f32 v85, -v91, v88, v93
	v_div_fixup_f32 v54, v82, v81, v54
	v_div_fixup_f32 v55, v79, v81, v55
	v_fmac_f32_e32 v87, v90, v87
	v_div_scale_f32 v90, s8, v51, v81, v51
	v_fmac_f32_e32 v88, v85, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v95, v84, 1.0
	v_div_scale_f32 v85, null, v71, v71, v49
	v_fma_f32 v79, -v86, v78, v80
	v_mul_f32_e32 v80, v90, v87
	v_fmac_f32_e32 v84, v82, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v82, v85
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v86, s9, v50, v81, v50
	v_div_fmas_f32 v78, v79, v83, v78
	v_fma_f32 v79, -v91, v88, v93
	v_fma_f32 v83, -v89, v80, v90
	v_div_scale_f32 v91, null, v71, v71, v48
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v85, v82, 1.0
	v_fmac_f32_e32 v80, v83, v87
	v_rcp_f32_e32 v83, v91
	v_div_fmas_f32 v79, v79, v94, v88
	v_mul_f32_e32 v88, v86, v84
	v_div_fixup_f32 v53, v78, v81, v53
	v_fma_f32 v78, -v89, v80, v90
	v_fmac_f32_e32 v82, v92, v82
	v_div_scale_f32 v92, null, v71, v71, v47
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v52, v79, v81, v52
	v_fma_f32 v79, -v95, v88, v86
	v_div_scale_f32 v89, s10, v49, v71, v49
	v_fma_f32 v90, -v91, v83, 1.0
	v_div_fmas_f32 v78, v78, v87, v80
	v_rcp_f32_e32 v80, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v88, v79, v84 :: v_dual_mul_f32 v79, v89, v82
	v_fmac_f32_e32 v83, v90, v83
	v_div_scale_f32 v87, s8, v48, v71, v48
	v_div_scale_f32 v90, null, v71, v71, v46
	v_div_fixup_f32 v51, v78, v81, v51
	v_fma_f32 v78, -v95, v88, v86
	v_fma_f32 v86, -v85, v79, v89
	v_mul_f32_e32 v93, v87, v83
	v_rcp_f32_e32 v94, v90
	v_fma_f32 v95, -v92, v80, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v79, v86, v82
	v_div_fmas_f32 v78, v78, v84, v88
	v_fma_f32 v84, -v91, v93, v87
	v_fmac_f32_e32 v80, v95, v80
	v_div_scale_f32 v86, s9, v47, v71, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v50, v78, v81, v50
	v_fma_f32 v88, -v90, v94, 1.0
	v_fma_f32 v78, -v85, v79, v89
	v_fmac_f32_e32 v93, v84, v83
	v_mul_f32_e32 v81, v86, v80
	v_div_scale_f32 v85, null, v71, v71, v45
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v94, v88, v94
	v_div_scale_f32 v84, s11, v46, v71, v46
	v_div_fmas_f32 v78, v78, v82, v79
	v_fma_f32 v79, -v91, v93, v87
	v_fma_f32 v82, -v92, v81, v86
	v_rcp_f32_e32 v87, v85
	v_div_scale_f32 v89, null, v71, v71, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v88, v84, v94 :: v_dual_fmac_f32 v81, v82, v80
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v82, v89
	v_div_fmas_f32 v79, v79, v83, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v83, -v90, v88, v84
	v_div_fixup_f32 v49, v78, v71, v49
	v_fma_f32 v91, -v85, v87, 1.0
	v_fma_f32 v78, -v92, v81, v86
	v_div_fixup_f32 v48, v79, v71, v48
	v_fmac_f32_e32 v88, v83, v94
	v_div_scale_f32 v79, s8, v45, v71, v45
	v_fmac_f32_e32 v87, v91, v87
	v_fma_f32 v83, -v89, v82, 1.0
	v_div_scale_f32 v86, null, v71, v71, v43
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v80, v81
	v_fma_f32 v80, -v90, v88, v84
	v_mul_f32_e32 v81, v79, v87
	v_fmac_f32_e32 v82, v83, v82
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v84, s9, v44, v71, v44
	v_div_scale_f32 v90, null, v71, v71, v42
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v91, v84, v82
	v_div_fmas_f32 v80, v80, v94, v88
	v_fma_f32 v88, -v85, v81, v79
	v_rcp_f32_e32 v93, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v86, v83, 1.0
	v_div_fixup_f32 v47, v78, v71, v47
	v_fma_f32 v78, -v89, v91, v84
	v_fmac_f32_e32 v81, v88, v87
	v_div_scale_f32 v88, null, v71, v71, v41
	v_div_fixup_f32 v46, v80, v71, v46
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v80, s10, v43, v71, v43
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v90, v93, 1.0
	v_fma_f32 v79, -v85, v81, v79
	v_fmac_f32_e32 v91, v78, v82
	v_rcp_f32_e32 v85, v88
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v78, v80, v83
	v_fmac_f32_e32 v93, v92, v93
	v_div_scale_f32 v92, s11, v42, v71, v42
	v_div_fmas_f32 v79, v79, v87, v81
	v_fma_f32 v81, -v89, v91, v84
	v_div_scale_f32 v94, null, v71, v71, v40
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v84, -v86, v78, v80
	v_mul_f32_e32 v87, v92, v93
	v_fma_f32 v89, -v88, v85, 1.0
	v_div_fmas_f32 v81, v81, v82, v91
	v_rcp_f32_e32 v82, v94
	v_fmac_f32_e32 v78, v84, v83
	v_fma_f32 v84, -v90, v87, v92
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, s8, v41, v71, v41
	v_div_fixup_f32 v45, v79, v71, v45
	v_div_fixup_f32 v44, v81, v71, v44
	v_fma_f32 v79, -v86, v78, v80
	v_fmac_f32_e32 v87, v84, v93
	v_mul_f32_e32 v80, v89, v85
	v_fma_f32 v81, -v94, v82, 1.0
	v_div_scale_f32 v84, null, v71, v71, v39
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v86, s9, v40, v71, v40
	v_div_fmas_f32 v78, v79, v83, v78
	v_fma_f32 v79, -v90, v87, v92
	v_fma_f32 v83, -v88, v80, v89
	v_fmac_f32_e32 v82, v81, v82
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v90, null, v71, v71, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v83, v85
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v43, v78, v71, v43
	v_rcp_f32_e32 v83, v90
	v_div_fmas_f32 v79, v79, v93, v87
	v_mul_f32_e32 v87, v86, v82
	v_fma_f32 v78, -v88, v80, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v84, v81, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v42, v79, v71, v42
	v_fma_f32 v79, -v94, v87, v86
	v_div_scale_f32 v88, s10, v39, v71, v39
	v_fmac_f32_e32 v81, v91, v81
	v_fma_f32 v89, -v90, v83, 1.0
	v_div_scale_f32 v91, null, v71, v71, v37
	v_div_fmas_f32 v78, v78, v85, v80
	v_fmac_f32_e32 v87, v79, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v89, v83
	v_rcp_f32_e32 v80, v91
	v_div_scale_f32 v89, null, v71, v71, v36
	v_mul_f32_e32 v79, v88, v81
	v_div_scale_f32 v85, s8, v38, v71, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v93, v89
	v_div_fixup_f32 v41, v78, v71, v41
	v_fma_f32 v78, -v94, v87, v86
	v_fma_f32 v86, -v84, v79, v88
	v_mul_f32_e32 v92, v85, v83
	v_fma_f32 v94, -v91, v80, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v82, v87
	v_fmac_f32_e32 v79, v86, v81
	v_fma_f32 v82, -v90, v92, v85
	v_fmac_f32_e32 v80, v94, v80
	v_div_scale_f32 v86, s9, v37, v71, v37
	v_fma_f32 v87, -v89, v93, 1.0
	v_div_fixup_f32 v40, v78, v71, v40
	v_fma_f32 v78, -v84, v79, v88
	v_fmac_f32_e32 v92, v82, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v82, v86, v80 :: v_dual_fmac_f32 v93, v87, v93
	v_div_scale_f32 v87, null, v71, v71, v26
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v84, s11, v36, v71, v36
	v_div_fmas_f32 v78, v78, v81, v79
	v_fma_f32 v79, -v90, v92, v85
	v_fma_f32 v81, -v91, v82, v86
	v_rcp_f32_e32 v85, v87
	v_div_scale_f32 v90, null, v71, v71, v25
	v_mul_f32_e32 v88, v84, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v81, v80
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v81, v90
	v_div_fmas_f32 v79, v79, v83, v92
	v_fma_f32 v83, -v89, v88, v84
	v_div_fixup_f32 v39, v78, v71, v39
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v87, v85, 1.0
	v_fma_f32 v78, -v91, v82, v86
	v_div_fixup_f32 v38, v79, v71, v38
	v_fmac_f32_e32 v88, v83, v93
	v_div_scale_f32 v79, s8, v26, v71, v26
	v_fmac_f32_e32 v85, v92, v85
	v_fma_f32 v83, -v90, v81, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v91, null, v30, v30, v23
	v_div_fmas_f32 v78, v78, v80, v82
	v_fma_f32 v80, -v89, v88, v84
	v_mul_f32_e32 v82, v79, v85
	v_fmac_f32_e32 v81, v83, v81
	v_div_scale_f32 v83, null, v30, v30, v24
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v84, s9, v25, v71, v25
	v_div_fmas_f32 v80, v80, v93, v88
	v_rcp_f32_e32 v86, v83
	v_fma_f32 v88, -v87, v82, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v89, v84, v81
	v_div_fixup_f32 v37, v78, v71, v37
	v_div_fixup_f32 v36, v80, v71, v36
	v_rcp_f32_e32 v80, v91
	v_fmac_f32_e32 v82, v88, v85
	v_fma_f32 v78, -v90, v89, v84
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v93, null, v30, v30, v21
	v_fma_f32 v88, -v83, v86, 1.0
	v_fma_f32 v79, -v87, v82, v79
	v_div_scale_f32 v87, null, v30, v30, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v89, v78, v81 :: v_dual_fmac_f32 v86, v88, v86
	v_div_scale_f32 v78, s10, v24, v30, v24
	v_rcp_f32_e32 v88, v87
	v_fma_f32 v92, -v91, v80, 1.0
	v_div_fmas_f32 v79, v79, v85, v82
	v_fma_f32 v82, -v90, v89, v84
	v_mul_f32_e32 v84, v78, v86
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v80, v92, v80
	v_div_scale_f32 v85, s8, v23, v30, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v92, -v83, v84, v78
	v_fma_f32 v90, -v87, v88, 1.0
	v_rcp_f32_e32 v95, v93
	v_div_fmas_f32 v81, v82, v81, v89
	v_mul_f32_e32 v94, v85, v80
	v_fmac_f32_e32 v84, v92, v86
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s11, v22, v30, v22
	v_div_fixup_f32 v26, v79, v71, v26
	v_div_fixup_f32 v25, v81, v71, v25
	v_fma_f32 v71, -v83, v84, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v89, v90, v88
	v_div_scale_f32 v81, null, v30, v30, v20
	v_fma_f32 v82, -v91, v94, v85
	v_fma_f32 v79, -v93, v95, 1.0
	v_fma_f32 v78, -v87, v89, v90
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v94, v82, v80 :: v_dual_fmac_f32 v95, v79, v95
	v_fmac_f32_e32 v89, v78, v88
	v_rcp_f32_e32 v78, v81
	v_div_scale_f32 v79, s9, v21, v30, v21
	v_div_fmas_f32 v71, v71, v86, v84
	v_fma_f32 v82, -v91, v94, v85
	v_div_scale_f32 v84, null, v30, v30, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v83, v79, v95
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v24, v71, v30, v24
	v_fma_f32 v85, -v81, v78, 1.0
	v_div_fmas_f32 v80, v82, v80, v94
	v_fma_f32 v82, -v87, v89, v90
	v_rcp_f32_e32 v86, v84
	v_fma_f32 v87, -v93, v83, v79
	v_fmac_f32_e32 v78, v85, v78
	v_div_scale_f32 v85, s8, v20, v30, v20
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v83, v87, v95
	v_div_fmas_f32 v82, v82, v88, v89
	v_mul_f32_e32 v71, v85, v78
	v_div_fixup_f32 v23, v80, v30, v23
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v80, -v84, v86, 1.0
	v_fma_f32 v79, -v93, v83, v79
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v87, -v81, v71, v85
	v_div_fixup_f32 v22, v82, v30, v22
	v_div_scale_f32 v82, null, v30, v30, v18
	v_fmac_f32_e32 v86, v80, v86
	v_div_scale_f32 v80, s10, v19, v30, v19
	v_div_fmas_f32 v79, v79, v95, v83
	v_fmac_f32_e32 v71, v87, v78
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v83, v80, v86
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v21, v79, v30, v21
	v_fma_f32 v79, -v81, v71, v85
	v_div_scale_f32 v87, null, v30, v30, v17
	v_fma_f32 v81, -v84, v83, v80
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v71, v79, v78, v71
	v_div_scale_f32 v78, null, v30, v30, v16
	v_fma_f32 v85, -v82, v88, 1.0
	v_rcp_f32_e32 v89, v87
	v_fmac_f32_e32 v83, v81, v86
	v_rcp_f32_e32 v81, v78
	v_div_scale_f32 v79, s8, v18, v30, v18
	v_fmac_f32_e32 v88, v85, v88
	v_div_scale_f32 v85, null, v30, v30, v15
	v_div_fixup_f32 v20, v71, v30, v20
	v_fma_f32 v80, -v84, v83, v80
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v87, v89, 1.0
	v_rcp_f32_e32 v91, v85
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v78, v81, 1.0
	v_mul_f32_e32 v84, v79, v88
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v89, v71, v89
	v_div_scale_f32 v71, s9, v17, v30, v17
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v90, null, v30, v30, v14
	v_div_fmas_f32 v80, v80, v86, v83
	v_fma_f32 v83, -v82, v84, v79
	v_mul_f32_e32 v86, v71, v89
	v_div_scale_f32 v92, s10, v16, v30, v16
	v_fma_f32 v93, -v85, v91, 1.0
	v_rcp_f32_e32 v94, v90
	v_fmac_f32_e32 v84, v83, v88
	v_fma_f32 v83, -v87, v86, v71
	v_mul_f32_e32 v95, v92, v81
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s11, v15, v30, v15
	v_div_fixup_f32 v19, v80, v30, v19
	v_fma_f32 v79, -v82, v84, v79
	v_fmac_f32_e32 v86, v83, v89
	v_fma_f32 v80, -v78, v95, v92
	v_mul_f32_e32 v82, v93, v91
	v_fma_f32 v83, -v90, v94, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v71, -v87, v86, v71
	v_fmac_f32_e32 v95, v80, v81
	v_fma_f32 v80, -v85, v82, v93
	v_fmac_f32_e32 v94, v83, v94
	v_div_scale_f32 v83, s8, v14, v30, v14
	v_div_fmas_f32 v79, v79, v88, v84
	v_fma_f32 v78, -v78, v95, v92
	v_fmac_f32_e32 v82, v80, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v80, v83, v94
	v_div_scale_f32 v84, null, v30, v30, v10
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v18, v79, v30, v18
	v_div_fmas_f32 v71, v71, v89, v86
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v86, v84
	v_div_fmas_f32 v78, v78, v81, v95
	v_fma_f32 v81, -v85, v82, v93
	v_fma_f32 v85, -v90, v80, v83
	v_div_fixup_f32 v17, v71, v30, v17
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v16, v78, v30, v16
	v_div_fmas_f32 v81, v81, v91, v82
	v_fmac_f32_e32 v80, v85, v94
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v79, -v84, v86, 1.0
	v_div_scale_f32 v78, null, v30, v30, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v90, v80, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v79, v86
	v_div_scale_f32 v79, null, v30, v30, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v71, v71, v94, v80
	v_div_scale_f32 v82, vcc_lo, v10, v30, v10
	v_rcp_f32_e32 v80, v78
	v_rcp_f32_e32 v83, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v14, v71, v30, v14
	v_mul_f32_e32 v87, v82, v86
	v_div_fixup_f32 v15, v81, v30, v15
	v_div_scale_f32 v81, null, v30, v30, v6
	v_div_scale_f32 v88, null, v30, v30, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v91, -v84, v87, v82
	v_fma_f32 v71, -v78, v80, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v79, v83, 1.0
	v_rcp_f32_e32 v85, v81
	v_rcp_f32_e32 v90, v88
	v_fmac_f32_e32 v87, v91, v86
	v_fmac_f32_e32 v80, v71, v80
	v_div_scale_f32 v71, s8, v8, v30, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v84, v87, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v14, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v81, v85, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v88, v90, 1.0
	v_div_fmas_f32 v82, v82, v86, v87
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_cvt_i32_f32_e32 v26, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v93, v71, v80
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v99, v16
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_cvt_i32_f32_e32 v70, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v94, v90
	v_fma_f32 v91, -v78, v93, v71
	v_div_scale_f32 v94, s11, v4, v30, v4
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v14, v14, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v10, v82, v30, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v93, v91, v80
	v_mul_f32_e32 v97, v94, v90
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v101, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v71, -v78, v93, v71
	v_fma_f32 v78, -v88, v97, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v10, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v71, v71, v80, v93
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v93, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v89, v83
	v_div_scale_f32 v89, s9, v7, v30, v7
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v97, v78, v90
	v_div_fixup_f32 v8, v71, v30, v8
	v_mul_f32_e32 v95, v89, v83
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v88, v97, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v79, v95, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v84, v83
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_cvt_i32_f32_e32 v52, v52
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v73
	v_rndne_f32_e32 v73, v77
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v79, -v79, v95, v89
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v89, v36
	v_and_b32_e32 v36, 15, v70
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v61, v61
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v83, v95
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v95, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v92, v85
	v_div_scale_f32 v92, s10, v6, v30, v6
	s_mov_b32 vcc_lo, s10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v70, 15, v95
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v7, v79, v30, v7
	v_mul_f32_e32 v96, v92, v85
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v50, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v81, v96, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v91, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v81, v96, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v17, v17
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v51, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v85, v96
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v77, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v90, v97
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v79, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v6, v78, v30, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v78, v47
	v_cvt_i32_f32_e32 v91, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v4, v80, v30, v4
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v31
	v_rndne_f32_e32 v31, v32
	v_rndne_f32_e32 v32, v33
	v_rndne_f32_e32 v33, v34
	v_rndne_f32_e32 v34, v35
	v_rndne_f32_e32 v35, v56
	v_rndne_f32_e32 v56, v59
	v_rndne_f32_e32 v59, v60
	v_rndne_f32_e32 v60, v63
	v_rndne_f32_e32 v63, v64
	v_rndne_f32_e32 v64, v67
	v_rndne_f32_e32 v6, v6
	v_rndne_f32_e32 v67, v68
	v_rndne_f32_e32 v68, v72
	v_rndne_f32_e32 v72, v76
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v6, v6, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v4, v4
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v10, v10
	v_and_b32_e32 v47, 15, v52
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v102, v6
	v_and_b32_e32 v52, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v6, 10, v0
	v_lshlrev_b32_e32 v78, 4, v28
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v24, 15, v64
	v_and_b32_e32 v64, 15, v26
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v26, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v75, v75, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v4, v4, s8, 0x40e00000
	v_and_b32_e32 v46, 15, v53
	v_and_b32_e32 v48, 15, v51
	v_and_b32_e32 v51, 15, v77
	v_and_b32_e32 v53, 15, v79
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v6, 0x1800, v6
	v_lshlrev_b32_e32 v79, 6, v26
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v77, 15, v10
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v10, v78, v12
	v_lshlrev_b32_e32 v12, 6, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v76, v49
	v_cvt_i32_f32_e32 v80, v45
	v_cvt_i32_f32_e32 v81, v44
	v_cvt_i32_f32_e32 v82, v43
	v_cvt_i32_f32_e32 v83, v42
	v_cvt_i32_f32_e32 v92, v23
	v_cvt_i32_f32_e32 v94, v21
	v_cvt_i32_f32_e32 v96, v19
	v_cvt_i32_f32_e32 v97, v18
	v_cvt_i32_f32_e32 v98, v17
	v_cvt_i32_f32_e32 v4, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v78, 0, v6, v79
	v_and_or_b32 v12, 0x1b00, v12, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v84, v41
	v_cvt_i32_f32_e32 v85, v40
	v_cvt_i32_f32_e32 v86, v39
	v_cvt_i32_f32_e32 v87, v38
	v_cvt_i32_f32_e32 v88, v37
	v_cvt_i32_f32_e32 v90, v25
	v_cvt_i32_f32_e32 v100, v15
	v_cvt_i32_f32_e32 v8, v8
	v_cvt_i32_f32_e32 v7, v7
	v_and_b32_e32 v14, 15, v30
	v_and_b32_e32 v16, 15, v32
	v_and_b32_e32 v17, 15, v33
	v_and_b32_e32 v18, 15, v34
	v_and_b32_e32 v19, 15, v35
	v_and_b32_e32 v20, 15, v56
	v_and_b32_e32 v21, 15, v59
	v_and_b32_e32 v25, 15, v67
	v_and_b32_e32 v30, 15, v68
	v_and_b32_e32 v32, 15, v72
	v_and_b32_e32 v33, 15, v73
	v_and_b32_e32 v34, 15, v75
	v_and_b32_e32 v35, 15, v74
	v_and_b32_e32 v37, 15, v69
	v_and_b32_e32 v38, 15, v66
	v_and_b32_e32 v39, 15, v65
	v_and_b32_e32 v40, 15, v62
	v_and_b32_e32 v41, 15, v61
	v_and_b32_e32 v43, 15, v57
	v_and_b32_e32 v44, 15, v55
	v_and_b32_e32 v45, 15, v54
	v_and_b32_e32 v49, 15, v50
	v_and_b32_e32 v50, 15, v76
	v_and_b32_e32 v54, 15, v80
	v_and_b32_e32 v55, 15, v81
	v_and_b32_e32 v56, 15, v82
	v_and_b32_e32 v57, 15, v83
	v_and_b32_e32 v66, 15, v91
	v_and_b32_e32 v67, 15, v92
	v_and_b32_e32 v68, 15, v93
	v_and_b32_e32 v69, 15, v94
	v_and_b32_e32 v72, 15, v97
	v_and_b32_e32 v73, 15, v98
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v10, v78, v10, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v9, 15, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v4, v12, v29, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v15, 15, v31
	v_and_b32_e32 v31, 15, v71
	v_and_b32_e32 v71, 15, v96
	v_and_b32_e32 v22, 15, v60
	v_and_b32_e32 v23, 15, v63
	v_and_b32_e32 v42, 15, v58
	v_and_b32_e32 v58, 15, v84
	v_and_b32_e32 v59, 15, v85
	v_and_b32_e32 v60, 15, v86
	v_and_b32_e32 v61, 15, v87
	v_and_b32_e32 v62, 15, v88
	v_and_b32_e32 v63, 15, v89
	v_and_b32_e32 v65, 15, v90
	v_and_b32_e32 v74, 15, v99
	v_and_b32_e32 v75, 15, v100
	v_and_b32_e32 v76, 15, v101
	v_and_b32_e32 v6, 15, v8
	v_and_b32_e32 v7, 15, v7
	v_and_b32_e32 v8, 15, v102
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v10, v[14:17]
	ds_store_b128 v10, v[22:25] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[14:17], v4
	ds_load_b128 v[22:25], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v10, v[34:37]
	ds_store_b128 v10, v[42:45] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v4
	ds_load_b128 v[42:45], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v10, v[50:53]
	ds_store_b128 v10, v[58:61] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[50:53], v4
	ds_load_b128 v[58:61], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v10, v[66:69]
	ds_store_b128 v10, v[74:77] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[66:69], v4
	ds_load_b128 v[74:77], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v10, v[18:21]
	ds_store_b128 v10, v[30:33] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v4
	ds_load_b128 v[29:32], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v10, v[38:41]
	ds_store_b128 v10, v[46:49] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[38:41], v4
	ds_load_b128 v[46:49], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v10, v[54:57]
	ds_store_b128 v10, v[62:65] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[54:57], v4
	ds_load_b128 v[62:65], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v10, v[70:73]
	ds_store_b128 v10, v[6:9] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v4
	ds_load_b128 v[70:73], v4 offset:1024
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v28, 3, v28
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v17, v25, 4, v17
	v_lshl_or_b32 v25, v45, 4, v37
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v18, v29, 4, v18
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v4, s45, 7, v28
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v29, v46, 4, v38
	v_lshl_or_b32 v14, v22, 4, v14
	v_lshl_or_b32 v15, v23, 4, v15
	v_lshl_or_b32 v16, v24, 4, v16
	v_lshl_or_b32 v19, v30, 4, v19
	v_lshl_or_b32 v20, v31, 4, v20
	v_lshl_or_b32 v21, v32, 4, v21
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v30, v47, 4, v39
	v_lshl_or_b32 v31, v48, 4, v40
	v_lshl_or_b32 v32, v49, 4, v41
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v17.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v45, v70, 4, v6
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, s34, v27
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v46, v71, 4, v7
	v_lshl_or_b32 v47, v72, 4, v8
	v_lshl_or_b32 v48, v73, 4, v9
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_and_b16 v2.l, 0xff, v16.l
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, 16, v6
	v_add_nc_u32_e32 v11, 32, v6
	v_add_nc_u32_e32 v12, 48, v6
	v_mad_u64_u32 v[8:9], null, v6, s8, v[4:5]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[9:10], null, v7, s8, v[4:5]
	v_mad_u64_u32 v[10:11], null, v11, s8, v[4:5]
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[11:12], null, v12, s8, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v4.l, 8, v15.l
	v_and_b16 v4.h, 0xff, v14.l
	v_lshlrev_b16 v5.l, 8, v21.l
	v_and_b16 v6.l, 0xff, v20.l
	v_lshlrev_b16 v6.h, 8, v19.l
	v_and_b16 v7.l, 0xff, v18.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v22, v42, 4, v34
	v_lshl_or_b32 v23, v43, 4, v35
	v_lshl_or_b32 v24, v44, 4, v36
	v_lshl_or_b32 v37, v62, 4, v54
	v_lshl_or_b32 v38, v63, 4, v55
	v_lshl_or_b32 v39, v64, 4, v56
	v_lshl_or_b32 v40, v65, 4, v57
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v2.l, v1.l
	v_or_b16 v14.l, v4.h, v4.l
	v_or_b16 v15.h, v6.l, v5.l
	v_or_b16 v15.l, v7.l, v6.h
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v5.l, 8, v32.l
	v_and_b16 v6.l, 0xff, v31.l
	v_lshlrev_b16 v6.h, 8, v30.l
	v_and_b16 v7.l, 0xff, v29.l
	s_and_b32 s9, s25, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s24
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v33, v58, 4, v50
	v_lshl_or_b32 v34, v59, 4, v51
	v_lshl_or_b32 v35, v60, 4, v52
	v_lshl_or_b32 v36, v61, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v25.l
	v_and_b16 v2.l, 0xff, v24.l
	v_lshlrev_b16 v4.l, 8, v23.l
	v_and_b16 v4.h, 0xff, v22.l
	buffer_store_b64 v[14:15], v8, s[8:11], 0 offen
	v_or_b16 v15.h, v6.l, v5.l
	v_or_b16 v15.l, v7.l, v6.h
	v_lshlrev_b16 v5.l, 8, v40.l
	v_and_b16 v6.l, 0xff, v39.l
	v_lshlrev_b16 v6.h, 8, v38.l
	v_and_b16 v7.l, 0xff, v37.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v41, v74, 4, v66
	v_lshl_or_b32 v42, v75, 4, v67
	v_lshl_or_b32 v43, v76, 4, v68
	v_lshl_or_b32 v44, v77, 4, v69
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v2.l, v1.l
	v_or_b16 v14.l, v4.h, v4.l
	v_cndmask_b32_e32 v8, 0x80000000, v9, vcc_lo
	v_lshlrev_b16 v1.l, 8, v36.l
	v_and_b16 v2.l, 0xff, v35.l
	v_lshlrev_b16 v4.l, 8, v34.l
	v_and_b16 v4.h, 0xff, v33.l
	v_or_b16 v9.h, v6.l, v5.l
	v_or_b16 v9.l, v7.l, v6.h
	v_lshlrev_b16 v5.l, 8, v48.l
	v_and_b16 v6.l, 0xff, v47.l
	v_lshlrev_b16 v6.h, 8, v46.l
	v_and_b16 v7.l, 0xff, v45.l
	buffer_store_b64 v[14:15], v8, s[8:11], 0 offen
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v4.h, v4.l
	v_lshlrev_b16 v1.l, 8, v44.l
	v_and_b16 v2.l, 0xff, v43.l
	v_lshlrev_b16 v4.l, 8, v42.l
	v_and_b16 v4.h, 0xff, v41.l
	v_or_b16 v15.h, v6.l, v5.l
	v_or_b16 v15.l, v7.l, v6.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 2, v26
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v2.l, v1.l
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.l, v4.h, v4.l
	v_cndmask_b32_e32 v4, 0x80000000, v11, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v7, 2, v27
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[8:9], v10, s[8:11], 0 offen
	buffer_store_b64 v[14:15], v4, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v28
	v_mov_b16_e32 v2.l, v13.h
	v_mov_b16_e32 v1.l, v5.h
	v_add3_u32 v5, v6, v7, v28
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
	ds_store_b64 v4, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v5
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
.Ltmp36:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 203
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 203
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15804
; TotalNumSgprs: 52
; NumVgprs: 203
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 52
; NumVGPRsForWavesPerEU: 203
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
	.quad	.Ltmp35-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     203
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
