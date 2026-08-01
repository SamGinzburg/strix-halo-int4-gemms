	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[72:73], s[0:1], 0x54
	s_load_b32 s3, s[0:1], 0x60
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s8, s2
	v_mov_b32_e32 v117, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v2, 63, v117
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s72, 0xff
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s5, s4, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s5, s5, 24
	s_add_i32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s4, s4, 8
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s6
	s_mul_hi_u32 s7, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
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
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v1, 0
	.loc	1 1038 17                       ; ragged.py:1038:17
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
	s_sub_i32 s80, s13, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s80, s3
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
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[16:17], s[4:5], 0x0
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_load_b64 s[74:75], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s8, s2
	s_addc_u32 s7, s9, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s10, s2
	s_addc_u32 s3, s11, s3
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[76:77], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[78:79], s[2:3], 0x0
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s4, s80, 8
	s_mov_b32 s3, 0
	v_or_b32_e32 v0, s4, v117
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s2, s74, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v4, null, s75, 0, s2
	v_add_nc_u32_e32 v65, s74, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[76:77], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[78:79], v[3:4]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	s_cmp_gt_i32 s73, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_or_b32_e32 v7, s4, v117
	v_dual_mov_b32 v6, s74 :: v_dual_add_nc_u32 v5, s74, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 21 is_stmt 0                ; ragged.py:0:21
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[68:71], s[0:1], 0x40
	s_load_b128 s[8:11], s[0:1], 0x10
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v106, 15, v117
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v13, 0
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
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v101, 0
	v_mov_b32_e32 v98, 0
	v_mov_b32_e32 v100, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_lshrrev_b32_e32 v1, 1, v117
	.loc	1 1068 35 is_stmt 1             ; ragged.py:1068:35
	s_mul_i32 s3, s73, s72
	v_or_b32_e32 v69, 0x300, v117
	v_or_b32_e32 v71, 0x3f0, v117
	v_dual_mov_b32 v2, v0 :: v_dual_add_nc_u32 v97, 0, v106
	v_mad_u64_u32 v[67:68], null, s3, s16, v[0:1]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v99, 0, v69
	v_add_nc_u32_e32 v0, 0, v71
	v_or_b32_e32 v72, 0x7f0, v117
	v_or_b32_e32 v73, 0xb00, v117
	v_or_b32_e32 v74, 0xf00, v117
	v_or_b32_e32 v75, 0x1300, v117
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_mad_u64_u32 v[68:69], null, s72, 3, v[67:68]
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off
	scratch_store_b32 off, v106, off offset:68
	v_add_nc_u32_e32 v0, 0, v72
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x0
	s_load_b32 s0, s[0:1], 0x50
	v_or_b32_e32 v70, 0x700, v117
	v_and_b32_e32 v1, 0x70, v1
	scratch_store_b64 off, v[68:69], off offset:20 ; 8-byte Folded Spill
	v_mad_u64_u32 v[68:69], null, s72, 5, v[67:68]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:4
	scratch_store_b64 off, v[2:3], off offset:72
	v_add_nc_u32_e32 v0, 0, v73
	v_or_b32_e32 v106, 0x1700, v117
	v_or_b32_e32 v107, 0x1b00, v117
	v_or_b32_e32 v108, 0x1f00, v117
	scratch_store_b64 off, v[68:69], off offset:28 ; 8-byte Folded Spill
	v_mad_u64_u32 v[68:69], null, s72, 6, v[67:68]
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v74
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_lshrrev_b32_e32 v96, 6, v117
	v_mov_b32_e32 v2, 0
	v_add_nc_u32_e32 v98, v97, v1
	v_mov_b32_e32 v1, 0
	.loc	1 1058 19                       ; ragged.py:1058:19
	scratch_store_b64 off, v[68:69], off offset:36 ; 8-byte Folded Spill
	v_mad_u64_u32 v[68:69], null, s72, 7, v[67:68]
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_dual_mov_b32 v3, 0 :: v_dual_add_nc_u32 v0, 0, v75
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_mov_b32_e32 v6, 0
	scratch_store_b64 off, v[68:69], off offset:44 ; 8-byte Folded Spill
	v_mad_u64_u32 v[68:69], null, s72, 9, v[67:68]
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	scratch_store_b64 off, v[68:69], off offset:52 ; 8-byte Folded Spill
	v_mad_u64_u32 v[68:69], null, s72, 10, v[67:68]
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[74:75], null, s72, 11, v[67:68]
	v_mad_u64_u32 v[75:76], null, s72, 12, v[67:68]
	v_mad_u64_u32 v[76:77], null, s72, 13, v[67:68]
	v_mad_u64_u32 v[77:78], null, s72, 14, v[67:68]
	v_mad_u64_u32 v[78:79], null, s72, 15, v[67:68]
	v_mad_u64_u32 v[79:80], null, s72, 17, v[67:68]
	v_mad_u64_u32 v[80:81], null, s72, 18, v[67:68]
	v_mad_u64_u32 v[81:82], null, s72, 19, v[67:68]
	v_mad_u64_u32 v[82:83], null, s72, 20, v[67:68]
	v_mad_u64_u32 v[83:84], null, s72, 21, v[67:68]
	v_mad_u64_u32 v[84:85], null, s72, 22, v[67:68]
	v_mad_u64_u32 v[85:86], null, s72, 23, v[67:68]
	v_mad_u64_u32 v[86:87], null, s72, 24, v[67:68]
	v_mad_u64_u32 v[87:88], null, s72, 25, v[67:68]
	v_mad_u64_u32 v[88:89], null, s72, 26, v[67:68]
	v_mad_u64_u32 v[89:90], null, s72, 27, v[67:68]
	v_mad_u64_u32 v[90:91], null, s72, 28, v[67:68]
	v_mad_u64_u32 v[91:92], null, s72, 29, v[67:68]
	v_mad_u64_u32 v[92:93], null, s72, 30, v[67:68]
	v_mad_u64_u32 v[93:94], null, s72, 31, v[67:68]
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_add_nc_u32_e32 v100, 0, v70
	v_add_nc_u32_e32 v94, 0, v106
	v_add_nc_u32_e32 v106, 0, v107
	v_add_nc_u32_e32 v107, 0, v108
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 1058 13 is_stmt 0             ; ragged.py:1058:13
	s_mov_b32 s1, 0
	s_mov_b32 s4, s12
	s_mov_b32 s5, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	.loc	1 1058 19                       ; ragged.py:1058:19
	scratch_store_b64 off, v[68:69], off offset:60 ; 8-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19                          ; ragged.py:0:19
	scratch_load_b64 v[68:69], off, off offset:20 ; 8-byte Folded Reload
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_or_b32_e32 v108, s1, v96
	.loc	1 1068 65                       ; ragged.py:1068:65
	s_mul_i32 s3, s1, s72
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_add_nc_u32_e32 v254, 0, v117
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1069 38 is_stmt 0             ; ragged.py:1069:38
	v_mad_u64_u32 v[108:109], null, v108, s0, v[65:66]
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v110, 0x80000000, v108, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v108, 4, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v108, s1, v108
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[108:109], null, v108, s0, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v111, 0x80000000, v108, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v108, 8, v96
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v108, s1, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[108:109], null, v108, s0, v[65:66]
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v112, 0x80000000, v108, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v108, 12, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v108, s1, v108
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[108:109], null, v108, s0, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v113, 0x80000000, v108, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v108, 16, v96
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v108, s1, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[108:109], null, v108, s0, v[65:66]
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v114, 0x80000000, v108, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v108, 20, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v108, s1, v108
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[108:109], null, v108, s0, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v115, 0x80000000, v108, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v108, 24, v96
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v108, s1, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[108:109], null, v108, s0, v[65:66]
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v116, 0x80000000, v108, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v108, 28, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v108, s1, v108
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s1, s1, 32
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_lt_i32 s1, s73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[108:109], null, v108, s0, v[65:66]
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v109, s3, v67
	.loc	1 1070 30 is_stmt 0             ; ragged.py:1070:30
	buffer_load_u8 v222, v109, s[12:15], 0 offen
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_add_nc_u32_e32 v109, s72, v67
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v108, 0x80000000, v108, s2
	v_add_nc_u32_e32 v109, s3, v109
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v223, v109, s[12:15], 0 offen
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_lshl_add_u32 v109, s72, 1, v67
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v109, s3, v109
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v224, v109, s[12:15], 0 offen
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v109, s3, v68
	scratch_load_b64 v[68:69], off, off offset:28 ; 8-byte Folded Reload
	buffer_load_u8 v225, v109, s[12:15], 0 offen
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_lshl_add_u32 v109, s72, 2, v67
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v109, s3, v109
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v226, v109, s[12:15], 0 offen
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v109, s3, v68
	scratch_load_b64 v[68:69], off, off offset:36 ; 8-byte Folded Reload
	buffer_load_u8 v227, v109, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v109, s3, v68
	scratch_load_b64 v[68:69], off, off offset:44 ; 8-byte Folded Reload
	buffer_load_u8 v228, v109, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v109, s3, v68
	scratch_load_b64 v[68:69], off, off offset:52 ; 8-byte Folded Reload
	buffer_load_u8 v229, v109, s[12:15], 0 offen
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_lshl_add_u32 v109, s72, 3, v67
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v109, s3, v109
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v230, v109, s[12:15], 0 offen
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v109, s3, v68
	scratch_load_b64 v[68:69], off, off offset:60 ; 8-byte Folded Reload
	buffer_load_u8 v231, v109, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v109, s3, v68
	buffer_load_u8 v232, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v74
	buffer_load_u8 v233, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v75
	buffer_load_u8 v234, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v76
	buffer_load_u8 v235, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v77
	buffer_load_u8 v236, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v78
	buffer_load_u8 v237, v109, s[12:15], 0 offen
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_lshl_add_u32 v109, s72, 4, v67
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v109, s3, v109
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v238, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v79
	buffer_load_u8 v239, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v80
	buffer_load_u8 v240, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v81
	buffer_load_u8 v241, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v82
	buffer_load_u8 v242, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v83
	buffer_load_u8 v243, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v84
	buffer_load_u8 v244, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v85
	buffer_load_u8 v245, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v86
	buffer_load_u8 v246, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v87
	buffer_load_u8 v247, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v88
	buffer_load_u8 v248, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v89
	buffer_load_u8 v249, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v90
	buffer_load_u8 v250, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v91
	buffer_load_u8 v251, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v92
	buffer_load_u8 v252, v109, s[12:15], 0 offen
	v_add_nc_u32_e32 v109, s3, v93
	buffer_load_u8 v253, v109, s[12:15], 0 offen
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_clause 0x7
	buffer_load_u8 v109, v110, s[4:7], 0 offen
	buffer_load_u8 v110, v111, s[4:7], 0 offen
	buffer_load_u8 v111, v112, s[4:7], 0 offen
	buffer_load_u8 v112, v114, s[4:7], 0 offen
	buffer_load_u8 v114, v115, s[4:7], 0 offen
	buffer_load_u8 v115, v116, s[4:7], 0 offen
	buffer_load_u8 v108, v108, s[4:7], 0 offen
	buffer_load_u8 v113, v113, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v254, v109
	s_waitcnt vmcnt(6)
	ds_store_b8 v254, v110 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v254, v111 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v254, v112 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v254, v114 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v99, v113
	ds_store_b8 v254, v115 offset:1536
	ds_store_b8 v100, v108
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1071 27                       ; ragged.py:1071:27
	scratch_load_b32 v73, off, off          ; 4-byte Folded Reload
	ds_load_u8 v255, v97 offset:192
	ds_load_u8 v95, v97 offset:128
	ds_load_u8 v216, v97 offset:208
	ds_load_u8 v218, v97 offset:144
	ds_load_u8 v212, v97 offset:224
	ds_load_u8 v213, v97 offset:160
	ds_load_u8 v204, v97 offset:240
	ds_load_u8 v205, v97 offset:176
	ds_load_u8 v66, v97 offset:448
	ds_load_u8 v101, v97 offset:384
	ds_load_u8 v0, v97 offset:464
	ds_load_u8 v102, v97 offset:400
	ds_load_u8 v214, v97 offset:480
	ds_load_u8 v215, v97 offset:416
	ds_load_u8 v206, v97 offset:496
	ds_load_u8 v207, v97 offset:432
	ds_load_u8 v103, v97 offset:320
	ds_load_u8 v104, v97 offset:256
	ds_load_u8 v105, v97 offset:336
	ds_load_u8 v68, v97 offset:272
	ds_load_u8 v217, v97 offset:352
	ds_load_u8 v219, v97 offset:288
	ds_load_u8 v208, v97 offset:368
	ds_load_u8 v209, v97 offset:304
	ds_load_u8 v69, v97 offset:64
	ds_load_u8 v70, v97 offset:80
	ds_load_u8 v220, v97 offset:96
	ds_load_u8 v210, v97 offset:112
	ds_load_u8 v71, v97
	ds_load_u8 v72, v97 offset:16
	ds_load_u8 v221, v97 offset:32
	ds_load_u8 v211, v97 offset:48
	ds_load_u8 v196, v97 offset:960
	ds_load_u8 v197, v97 offset:896
	ds_load_u8 v164, v97 offset:1024
	ds_load_u8 v169, v97 offset:976
	ds_load_u8 v172, v97 offset:912
	ds_load_u8 v166, v97 offset:992
	ds_load_u8 v167, v97 offset:928
	ds_load_u8 v165, v97 offset:944
	ds_load_u8 v198, v97 offset:832
	ds_load_u8 v199, v97 offset:768
	ds_load_u8 v178, v97 offset:848
	ds_load_u8 v180, v97 offset:784
	ds_load_u8 v174, v97 offset:864
	ds_load_u8 v175, v97 offset:800
	ds_load_u8 v168, v97 offset:880
	ds_load_u8 v170, v97 offset:816
	ds_load_u8 v200, v97 offset:704
	ds_load_u8 v201, v97 offset:640
	ds_load_u8 v184, v97 offset:720
	ds_load_u8 v185, v97 offset:656
	ds_load_u8 v181, v97 offset:736
	ds_load_u8 v183, v97 offset:672
	ds_load_u8 v176, v97 offset:752
	ds_load_u8 v179, v97 offset:688
	ds_load_u8 v202, v97 offset:576
	ds_load_u8 v203, v97 offset:512
	ds_load_u8 v191, v97 offset:592
	ds_load_u8 v192, v97 offset:528
	ds_load_u8 v189, v97 offset:608
	ds_load_u8 v190, v97 offset:544
	ds_load_u8 v186, v97 offset:624
	ds_load_u8 v187, v97 offset:560
	ds_load_u8 v171, v97 offset:1216
	ds_load_u8 v173, v97 offset:1280
	ds_load_u8 v137, v97 offset:1232
	ds_load_u8 v138, v97 offset:1168
	ds_load_u8 v135, v97 offset:1248
	ds_load_u8 v136, v97 offset:1184
	ds_load_u8 v133, v97 offset:1264
	ds_load_u8 v134, v97 offset:1200
	ds_load_u8 v177, v97 offset:1152
	ds_load_u8 v182, v97 offset:1088
	ds_load_u8 v144, v97 offset:1104
	ds_load_u8 v145, v97 offset:1040
	ds_load_u8 v142, v97 offset:1120
	ds_load_u8 v143, v97 offset:1056
	ds_load_u8 v139, v97 offset:1136
	ds_load_u8 v140, v97 offset:1072
	ds_load_u8 v188, v97 offset:1472
	ds_load_u8 v132, v97 offset:1536
	ds_load_u8 v152, v97 offset:1488
	ds_load_u8 v154, v97 offset:1424
	ds_load_u8 v149, v97 offset:1504
	ds_load_u8 v151, v97 offset:1440
	ds_load_u8 v146, v97 offset:1520
	ds_load_u8 v147, v97 offset:1456
	ds_load_u8 v193, v97 offset:1408
	ds_load_u8 v194, v97 offset:1344
	ds_load_u8 v161, v97 offset:1360
	ds_load_u8 v162, v97 offset:1296
	ds_load_u8 v158, v97 offset:1376
	ds_load_u8 v159, v97 offset:1312
	ds_load_u8 v155, v97 offset:1392
	ds_load_u8 v156, v97 offset:1328
	ds_load_u8 v141, v97 offset:1984
	ds_load_u8 v112, v97 offset:2000
	ds_load_u8 v114, v97 offset:1936
	ds_load_u8 v110, v97 offset:2016
	ds_load_u8 v111, v97 offset:1952
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	v_perm_b32 v66, v101, v66, 0xc0c0004
	v_perm_b32 v69, v71, v69, 0xc0c0004
	v_perm_b32 v71, v95, v255, 0xc0c0004
	v_perm_b32 v0, v102, v0, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v195, v73
	scratch_load_b32 v73, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v108, v73
	ds_load_u8 v109, v97 offset:1968
	ds_load_u8 v148, v97 offset:1920
	ds_load_u8 v150, v97 offset:1856
	ds_load_u8 v119, v97 offset:1872
	ds_load_u8 v121, v97 offset:1808
	ds_load_u8 v116, v97 offset:1888
	ds_load_u8 v73, v97 offset:1824
	ds_load_u8 v113, v97 offset:1904
	ds_load_u8 v115, v97 offset:1840
	ds_load_u8 v153, v97 offset:1728
	ds_load_u8 v157, v97 offset:1792
	ds_load_u8 v124, v97 offset:1744
	ds_load_u8 v125, v97 offset:1680
	ds_load_u8 v122, v97 offset:1760
	ds_load_u8 v123, v97 offset:1696
	ds_load_u8 v118, v97 offset:1776
	ds_load_u8 v120, v97 offset:1712
	ds_load_u8 v160, v97 offset:1664
	ds_load_u8 v163, v97 offset:1600
	ds_load_u8 v130, v97 offset:1616
	ds_load_u8 v131, v97 offset:1552
	ds_load_u8 v128, v97 offset:1632
	ds_load_u8 v129, v97 offset:1568
	ds_load_u8 v126, v97 offset:1648
	ds_load_u8 v127, v97 offset:1584
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v254, v222
	ds_store_b8 v254, v223 offset:256
	ds_store_b8 v254, v224 offset:512
	ds_store_b8 v254, v226 offset:1024
	ds_store_b8 v254, v227 offset:1280
	ds_store_b8 v254, v228 offset:1536
	ds_store_b8 v254, v230 offset:2048
	ds_store_b8 v254, v231 offset:2304
	ds_store_b8 v254, v232 offset:2560
	ds_store_b8 v254, v234 offset:3072
	ds_store_b8 v254, v235 offset:3328
	ds_store_b8 v254, v236 offset:3584
	ds_store_b8 v254, v238 offset:4096
	ds_store_b8 v254, v239 offset:4352
	ds_store_b8 v254, v240 offset:4608
	ds_store_b8 v254, v242 offset:5120
	ds_store_b8 v254, v243 offset:5376
	ds_store_b8 v254, v244 offset:5632
	ds_store_b8 v254, v246 offset:6144
	ds_store_b8 v254, v247 offset:6400
	ds_store_b8 v254, v248 offset:6656
	ds_store_b8 v254, v250 offset:7168
	ds_store_b8 v254, v251 offset:7424
	ds_store_b8 v254, v252 offset:7680
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v223, v66, 16, v103
	.loc	1 1070 30                       ; ragged.py:1070:30
	scratch_load_b32 v66, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v222, v71, 16, v69
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_store_b8 v99, v225
	ds_store_b8 v100, v229
	s_waitcnt vmcnt(0)
	ds_store_b8 v66, v233
	scratch_load_b32 v66, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v66, v237
	scratch_load_b32 v66, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v66, v241
	ds_store_b8 v94, v245
	ds_store_b8 v106, v249
	ds_store_b8 v107, v253
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1071 27                       ; ragged.py:1071:27
	ds_load_u8 v66, v98 offset:1280
	ds_load_u8 v69, v98 offset:1024
	ds_load_u8 v71, v98 offset:1920
	ds_load_u8 v95, v98 offset:1664
	ds_load_u8 v101, v98 offset:1408
	ds_load_u8 v103, v98 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v66, v69, v66, 0xc0c0004
	ds_load_u8 v69, v98 offset:1792
	ds_load_u8 v104, v98 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v104, v69, 0xc0c0004
	ds_load_u8 v104, v98 offset:256
	ds_load_u8 v224, v98
	ds_load_u8 v226, v98 offset:896
	ds_load_u8 v227, v98 offset:640
	ds_load_u8 v228, v98 offset:384
	ds_load_u8 v229, v98 offset:128
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v104, v224, v104, 0xc0c0004
	ds_load_u8 v224, v98 offset:768
	ds_load_u8 v225, v98 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v224, v225, v224, 0xc0c0004
	v_lshl_or_b32 v225, v69, 16, v66
	v_perm_b32 v66, v103, v101, 0xc0c0004
	v_perm_b32 v69, v95, v71, 0xc0c0004
	v_perm_b32 v95, v227, v226, 0xc0c0004
	v_perm_b32 v71, v229, v228, 0xc0c0004
	v_lshl_or_b32 v224, v224, 16, v104
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v227, v69, 16, v66
	v_perm_b32 v66, v68, v105, 0xc0c0004
	v_perm_b32 v68, v72, v70, 0xc0c0004
	v_perm_b32 v69, v218, v216, 0xc0c0004
	v_lshl_or_b32 v226, v95, 16, v71
	v_wmma_i32_16x16x16_iu4 v[1:8], v[224:225], v[222:223], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v229, v0, 16, v66
	v_perm_b32 v0, v219, v217, 0xc0c0004
	v_lshl_or_b32 v228, v69, 16, v68
	v_perm_b32 v66, v215, v214, 0xc0c0004
	v_perm_b32 v68, v221, v220, 0xc0c0004
	v_perm_b32 v69, v213, v212, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[226:227], v[222:223], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[224:225], v[228:229], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v213, v66, 16, v0
	v_perm_b32 v0, v209, v208, 0xc0c0004
	v_lshl_or_b32 v212, v69, 16, v68
	v_perm_b32 v66, v207, v206, 0xc0c0004
	v_perm_b32 v68, v211, v210, 0xc0c0004
	v_perm_b32 v69, v205, v204, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[226:227], v[228:229], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[224:225], v[212:213], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v205, v66, 16, v0
	v_perm_b32 v0, v199, v198, 0xc0c0004
	v_lshl_or_b32 v204, v69, 16, v68
	v_perm_b32 v66, v197, v196, 0xc0c0004
	v_perm_b32 v68, v203, v202, 0xc0c0004
	v_perm_b32 v69, v201, v200, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[226:227], v[212:213], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[224:225], v[204:205], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v197, v66, 16, v0
	v_wmma_i32_16x16x16_iu4 v[57:64], v[226:227], v[204:205], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v196, v69, 16, v68
	ds_load_u8 v0, v98 offset:3328
	ds_load_u8 v66, v98 offset:3072
	ds_load_u8 v68, v98 offset:3968
	ds_load_u8 v69, v98 offset:3712
	ds_load_u8 v70, v98 offset:3456
	ds_load_u8 v71, v98 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v98 offset:3840
	ds_load_u8 v72, v98 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v72, v66, 0xc0c0004
	ds_load_u8 v72, v98 offset:2304
	ds_load_u8 v95, v98 offset:2048
	ds_load_u8 v101, v98 offset:2944
	ds_load_u8 v102, v98 offset:2688
	ds_load_u8 v103, v98 offset:2432
	ds_load_u8 v104, v98 offset:2176
	v_lshl_or_b32 v199, v66, 16, v0
	v_perm_b32 v0, v71, v70, 0xc0c0004
	v_perm_b32 v66, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v201, v66, 16, v0
	v_perm_b32 v0, v180, v178, 0xc0c0004
	v_perm_b32 v66, v172, v169, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v72, v95, v72, 0xc0c0004
	ds_load_u8 v95, v98 offset:2816
	ds_load_u8 v105, v98 offset:2560
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v69, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v68, v104, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v200, v69, 16, v68
	v_perm_b32 v68, v192, v191, 0xc0c0004
	v_perm_b32 v69, v185, v184, 0xc0c0004
	v_lshl_or_b32 v185, v66, 16, v0
	v_perm_b32 v0, v175, v174, 0xc0c0004
	v_perm_b32 v66, v167, v166, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[200:201], v[196:197], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v184, v69, 16, v68
	v_perm_b32 v68, v190, v189, 0xc0c0004
	v_perm_b32 v69, v183, v181, 0xc0c0004
	v_lshl_or_b32 v167, v66, 16, v0
	v_perm_b32 v0, v187, v186, 0xc0c0004
	v_perm_b32 v66, v179, v176, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v105, v95, 0xc0c0004
	v_lshl_or_b32 v166, v69, 16, v68
	v_perm_b32 v68, v170, v168, 0xc0c0004
	v_perm_b32 v69, v165, v195, 0xc0c0004
	v_lshl_or_b32 v168, v66, 16, v0
	v_perm_b32 v0, v173, v194, 0xc0c0004
	v_perm_b32 v66, v193, v188, 0xc0c0004
	v_lshl_or_b32 v198, v95, 16, v72
	v_lshl_or_b32 v169, v69, 16, v68
	v_perm_b32 v68, v164, v182, 0xc0c0004
	v_perm_b32 v69, v177, v171, 0xc0c0004
	v_lshl_or_b32 v165, v66, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[198:199], v[166:167], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[200:201], v[166:167], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[198:199], v[168:169], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v164, v69, 16, v68
	ds_load_u8 v0, v98 offset:5376
	ds_load_u8 v66, v98 offset:5120
	ds_load_u8 v68, v98 offset:6016
	ds_load_u8 v69, v98 offset:5760
	ds_load_u8 v70, v98 offset:5504
	ds_load_u8 v71, v98 offset:5248
	v_wmma_i32_16x16x16_iu4 v[57:64], v[200:201], v[168:169], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[198:199], v[184:185], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[200:201], v[184:185], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[198:199], v[196:197], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v98 offset:5888
	ds_load_u8 v72, v98 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v72, v66, 0xc0c0004
	ds_load_u8 v72, v98 offset:4352
	ds_load_u8 v95, v98 offset:4096
	ds_load_u8 v101, v98 offset:4992
	ds_load_u8 v102, v98 offset:4736
	ds_load_u8 v103, v98 offset:4480
	ds_load_u8 v104, v98 offset:4224
	v_lshl_or_b32 v167, v66, 16, v0
	v_perm_b32 v0, v71, v70, 0xc0c0004
	v_perm_b32 v66, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v169, v66, 16, v0
	v_perm_b32 v0, v162, v161, 0xc0c0004
	v_perm_b32 v66, v154, v152, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v72, v95, v72, 0xc0c0004
	ds_load_u8 v95, v98 offset:4864
	ds_load_u8 v105, v98 offset:4608
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v69, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v68, v104, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v168, v69, 16, v68
	v_perm_b32 v68, v145, v144, 0xc0c0004
	v_perm_b32 v69, v138, v137, 0xc0c0004
	v_lshl_or_b32 v138, v66, 16, v0
	v_perm_b32 v0, v159, v158, 0xc0c0004
	v_perm_b32 v66, v151, v149, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[168:169], v[164:165], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v137, v69, 16, v68
	v_perm_b32 v68, v143, v142, 0xc0c0004
	v_perm_b32 v69, v136, v135, 0xc0c0004
	v_lshl_or_b32 v136, v66, 16, v0
	v_perm_b32 v0, v156, v155, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v105, v95, 0xc0c0004
	v_perm_b32 v66, v147, v146, 0xc0c0004
	v_lshl_or_b32 v135, v69, 16, v68
	v_perm_b32 v68, v140, v139, 0xc0c0004
	v_perm_b32 v69, v134, v133, 0xc0c0004
	v_lshl_or_b32 v166, v95, 16, v72
	v_lshl_or_b32 v134, v66, 16, v0
	v_perm_b32 v0, v157, v150, 0xc0c0004
	v_perm_b32 v66, v148, v141, 0xc0c0004
	v_lshl_or_b32 v133, v69, 16, v68
	v_perm_b32 v68, v132, v163, 0xc0c0004
	v_perm_b32 v69, v160, v153, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[166:167], v[135:136], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[168:169], v[135:136], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[166:167], v[133:134], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[168:169], v[133:134], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v133, v66, 16, v0
	v_lshl_or_b32 v132, v69, 16, v68
	ds_load_u8 v0, v98 offset:7424
	ds_load_u8 v66, v98 offset:7168
	ds_load_u8 v68, v98 offset:8064
	ds_load_u8 v69, v98 offset:7808
	ds_load_u8 v70, v98 offset:7552
	ds_load_u8 v71, v98 offset:7296
	v_wmma_i32_16x16x16_iu4 v[17:24], v[166:167], v[137:138], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[168:169], v[137:138], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[166:167], v[164:165], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v98 offset:7936
	ds_load_u8 v72, v98 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v72, v66, 0xc0c0004
	ds_load_u8 v72, v98 offset:6400
	ds_load_u8 v95, v98 offset:6144
	ds_load_u8 v101, v98 offset:7040
	ds_load_u8 v102, v98 offset:6784
	ds_load_u8 v103, v98 offset:6528
	ds_load_u8 v104, v98 offset:6272
	v_lshl_or_b32 v135, v66, 16, v0
	v_perm_b32 v0, v71, v70, 0xc0c0004
	v_perm_b32 v66, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v66, 16, v0
	v_perm_b32 v0, v121, v119, 0xc0c0004
	v_perm_b32 v66, v114, v112, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v72, v95, v72, 0xc0c0004
	ds_load_u8 v95, v98 offset:6912
	ds_load_u8 v105, v98 offset:6656
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v69, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v68, v104, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v136, v69, 16, v68
	v_perm_b32 v68, v131, v130, 0xc0c0004
	v_perm_b32 v69, v125, v124, 0xc0c0004
	v_lshl_or_b32 v125, v66, 16, v0
	v_perm_b32 v0, v73, v116, 0xc0c0004
	v_perm_b32 v66, v111, v110, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[136:137], v[132:133], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v124, v69, 16, v68
	v_perm_b32 v68, v129, v128, 0xc0c0004
	v_perm_b32 v69, v123, v122, 0xc0c0004
	v_lshl_or_b32 v111, v66, 16, v0
	v_perm_b32 v0, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v105, v95, 0xc0c0004
	v_perm_b32 v66, v120, v118, 0xc0c0004
	v_lshl_or_b32 v110, v69, 16, v68
	v_perm_b32 v68, v115, v113, 0xc0c0004
	v_perm_b32 v69, v109, v108, 0xc0c0004
	v_lshl_or_b32 v134, v95, 16, v72
	v_lshl_or_b32 v108, v66, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[136:137], v[124:125], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[136:137], v[110:111], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v109, v69, 16, v68
	v_wmma_i32_16x16x16_iu4 v[1:8], v[134:135], v[132:133], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[134:135], v[124:125], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[134:135], v[110:111], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[134:135], v[108:109], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[136:137], v[108:109], v[57:64] neg_lo:[1,1,0]
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v94, v7
	v_cvt_f32_i32_e32 v93, v8
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[7:8], off, off offset:72
	scratch_load_b32 v106, off, off offset:68
	v_cvt_f32_i32_e32 v101, v1
	v_cvt_f32_i32_e32 v100, v2
	v_cvt_f32_i32_e32 v99, v3
	v_cvt_f32_i32_e32 v98, v4
	v_cvt_f32_i32_e32 v97, v5
	v_cvt_f32_i32_e32 v96, v6
	v_cvt_f32_i32_e32 v92, v9
	v_cvt_f32_i32_e32 v91, v10
	v_cvt_f32_i32_e32 v90, v11
	v_cvt_f32_i32_e32 v89, v12
	v_cvt_f32_i32_e32 v88, v13
	v_cvt_f32_i32_e32 v87, v14
	v_cvt_f32_i32_e32 v86, v15
	v_cvt_f32_i32_e32 v85, v16
	v_cvt_f32_i32_e32 v84, v17
	v_cvt_f32_i32_e32 v83, v18
	v_cvt_f32_i32_e32 v82, v19
	v_cvt_f32_i32_e32 v81, v20
	v_cvt_f32_i32_e32 v80, v21
	v_cvt_f32_i32_e32 v79, v22
	v_cvt_f32_i32_e32 v78, v23
	v_cvt_f32_i32_e32 v77, v24
	v_cvt_f32_i32_e32 v76, v25
	v_cvt_f32_i32_e32 v75, v26
	v_cvt_f32_i32_e32 v74, v27
	v_cvt_f32_i32_e32 v73, v28
	v_cvt_f32_i32_e32 v72, v29
	v_cvt_f32_i32_e32 v71, v30
	v_cvt_f32_i32_e32 v70, v31
	v_cvt_f32_i32_e32 v69, v32
	v_cvt_f32_i32_e32 v68, v33
	v_cvt_f32_i32_e32 v67, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v34, v36
	v_cvt_f32_i32_e32 v33, v37
	v_cvt_f32_i32_e32 v32, v38
	v_cvt_f32_i32_e32 v31, v39
	v_cvt_f32_i32_e32 v30, v40
	v_cvt_f32_i32_e32 v29, v41
	v_cvt_f32_i32_e32 v28, v42
	v_cvt_f32_i32_e32 v27, v43
	v_cvt_f32_i32_e32 v26, v44
	v_cvt_f32_i32_e32 v25, v45
	v_cvt_f32_i32_e32 v24, v46
	v_cvt_f32_i32_e32 v23, v47
	v_cvt_f32_i32_e32 v22, v48
	v_cvt_f32_i32_e32 v21, v49
	v_cvt_f32_i32_e32 v20, v50
	v_cvt_f32_i32_e32 v19, v51
	v_cvt_f32_i32_e32 v18, v52
	v_cvt_f32_i32_e32 v17, v53
	v_cvt_f32_i32_e32 v16, v54
	v_cvt_f32_i32_e32 v15, v55
	v_cvt_f32_i32_e32 v14, v56
	v_cvt_f32_i32_e32 v13, v57
	v_cvt_f32_i32_e32 v12, v58
	v_cvt_f32_i32_e32 v11, v59
	v_cvt_f32_i32_e32 v10, v60
	v_cvt_f32_i32_e32 v4, v61
	v_cvt_f32_i32_e32 v3, v62
	v_cvt_f32_i32_e32 v2, v63
	v_cvt_f32_i32_e32 v1, v64
	v_dual_mov_b32 v6, s74 :: v_dual_mov_b32 v5, v65
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, 48, v106
	v_or_b32_e32 v38, 16, v106
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s65, s9, 0xffff
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v8, s0, s74, v0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 32, v106
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, s75, 0, s0
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	s_mov_b32 s64, s8
	s_mov_b32 s26, 0x76543210
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v36, s1, s74, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v37, null, s75, 0, s1
	v_add_co_u32 v38, s1, s74, v38
	v_add_co_ci_u32_e64 v39, null, s75, 0, s1
	v_add_co_u32 v40, s1, s74, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v41, null, s75, 0, s1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[76:77], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[78:79], v[8:9]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[76:77], v[38:39]
	v_cmp_le_i64_e64 s6, s[76:77], v[40:41]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[78:79], v[40:41]
	v_cmp_gt_i64_e64 s5, s[78:79], v[38:39]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[76:77], v[36:37]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[78:79], v[36:37]
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_lshlrev_b32_e32 v0, 1, v40
	v_lshlrev_b32_e32 v8, 1, v8
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v9, 1, v38
	v_lshlrev_b32_e32 v36, 1, v36
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s6, s6, s7
	s_and_b32 s4, s4, s5
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e64 v0, 0x80000000, v0, s6
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s3
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	v_cndmask_b32_e64 v36, 0x80000000, v36, s1
	s_clause 0x3
	buffer_load_u16 v0, v0, s[64:67], 0 offen
	buffer_load_u16 v60, v9, s[64:67], 0 offen
	buffer_load_u16 v61, v36, s[64:67], 0 offen
	buffer_load_u16 v62, v8, s[64:67], 0 offen
	.loc	1 1120 21                       ; ragged.py:1120:21
	s_mul_i32 s0, s72, s16
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s65, s11, 0xffff
	v_add_lshl_u32 v7, v7, s0, 1
	s_mov_b32 s64, s10
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_bfe_i32 v8, v117, 7, 1
	.loc	1 1119 36                       ; ragged.py:1119:36
	buffer_load_u16 v63, v7, s[64:67], 0 offen
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v7, 7, v117
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v8, 0x2010, v8
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s65, s72, 31
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v39, 62, v7
	v_or_b32_e32 v40, 60, v7
	v_or_b32_e32 v41, 58, v7
	v_or_b32_e32 v42, 56, v7
	v_or_b32_e32 v44, 54, v7
	v_or_b32_e32 v46, 52, v7
	v_or_b32_e32 v48, 50, v7
	v_or_b32_e32 v50, 48, v7
	v_or_b32_e32 v52, 46, v7
	v_or_b32_e32 v54, 44, v7
	v_or_b32_e32 v56, 42, v7
	v_or_b32_e32 v58, 40, v7
	v_or_b32_e32 v64, 38, v7
	v_or_b32_e32 v95, 36, v7
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s65, s72, s65
	s_delay_alu instid0(SALU_CYCLE_1)
	s_ashr_i32 s73, s65, 1
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s65, s69, 0xffff
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v36, 0xf0, v117
	v_lshlrev_b32_e32 v37, 1, v117
	v_lshlrev_b32_e32 v38, 5, v117
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_add_u32 v104, v36, 2, 0
	v_lshl_add_u32 v105, v36, 1, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v36, s0, s74, v39
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v65, 28, v37
	v_and_b32_e32 v66, 32, v38
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v37, null, s75, 0, s0
	v_add_co_u32 v38, s0, s74, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v39, null, s75, 0, s0
	v_add_co_u32 v40, s0, s74, v41
	v_add_co_ci_u32_e64 v41, null, s75, 0, s0
	v_add_co_u32 v42, s0, s74, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v43, null, s75, 0, s0
	v_add_co_u32 v44, s0, s74, v44
	v_add_co_ci_u32_e64 v45, null, s75, 0, s0
	v_add_co_u32 v46, s0, s74, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v47, null, s75, 0, s0
	v_add_co_u32 v48, s0, s74, v48
	v_add_co_ci_u32_e64 v49, null, s75, 0, s0
	v_add_co_u32 v50, s0, s74, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v51, null, s75, 0, s0
	v_add_co_u32 v52, s0, s74, v52
	v_add_co_ci_u32_e64 v53, null, s75, 0, s0
	v_add_co_u32 v54, s0, s74, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v55, null, s75, 0, s0
	v_add_co_u32 v56, s0, s74, v56
	v_add_co_ci_u32_e64 v57, null, s75, 0, s0
	v_add_co_u32 v58, s0, s74, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v59, null, s75, 0, s0
	v_add_co_u32 v102, s0, s74, v64
	v_add_co_ci_u32_e64 v103, null, s75, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[76:77], v[36:37]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[78:79], v[36:37]
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v37, 16, v61
	v_lshlrev_b32_e32 v36, 16, v60
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[76:77], v[38:39]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[78:79], v[38:39]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[76:77], v[42:43]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[78:79], v[42:43]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[76:77], v[44:45]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[78:79], v[44:45]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[76:77], v[46:47]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[78:79], v[46:47]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[76:77], v[54:55]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[78:79], v[54:55]
	.loc	1 1115 17 is_stmt 1             ; ragged.py:1115:17
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v43, v97, v0 :: v_dual_lshlrev_b32 v38, 16, v62
	v_mul_f32_e32 v44, v96, v0
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_add3_u32 v64, v104, v66, v65
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v54, 16, v63
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v62, v77, v36
	v_mul_f32_e32 v77, v29, v37
	v_mul_f32_e32 v65, v75, v36
	v_mul_f32_e32 v75, v31, v37
	v_mul_f32_e32 v47, v92, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v9, 0x80, v117
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[76:77], v[40:41]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[78:79], v[40:41]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[76:77], v[48:49]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[78:79], v[48:49]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[76:77], v[50:51]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[78:79], v[50:51]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[76:77], v[52:53]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[78:79], v[52:53]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[76:77], v[56:57]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[78:79], v[56:57]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[76:77], v[58:59]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[78:79], v[58:59]
	.loc	1 1115 17 is_stmt 1             ; ragged.py:1115:17
	v_mul_f32_e32 v39, v101, v0
	v_mul_f32_e32 v40, v100, v0
	v_mul_f32_e32 v41, v99, v0
	v_mul_f32_e32 v42, v98, v0
	v_mul_f32_e32 v45, v94, v0
	v_mul_f32_e32 v46, v93, v0
	v_mul_f32_e32 v48, v91, v0
	v_dual_mul_f32 v49, v90, v0 :: v_dual_mul_f32 v68, v68, v37
	v_mul_f32_e32 v50, v89, v0
	v_dual_mul_f32 v51, v88, v0 :: v_dual_mul_f32 v34, v34, v37
	v_mul_f32_e32 v52, v87, v0
	v_mul_f32_e32 v53, v86, v0
	v_mul_f32_e32 v0, v85, v0
	v_mul_f32_e32 v55, v84, v36
	v_dual_mul_f32 v56, v83, v36 :: v_dual_mul_f32 v21, v21, v38
	v_mul_f32_e32 v57, v82, v36
	v_dual_mul_f32 v58, v81, v36 :: v_dual_mul_f32 v85, v16, v38
	v_dual_mul_f32 v59, v80, v36 :: v_dual_mul_f32 v80, v26, v37
	v_dual_mul_f32 v60, v79, v36 :: v_dual_mul_f32 v13, v13, v38
	v_dual_mul_f32 v61, v78, v36 :: v_dual_mul_f32 v82, v24, v37
	v_mul_f32_e32 v63, v76, v36
	v_dual_mul_f32 v66, v74, v36 :: v_dual_mul_f32 v11, v11, v38
	v_mul_f32_e32 v73, v73, v36
	v_dual_mul_f32 v72, v72, v36 :: v_dual_mul_f32 v3, v3, v38
	v_dual_mul_f32 v71, v71, v36 :: v_dual_mul_f32 v84, v17, v38
	v_dual_mul_f32 v70, v70, v36 :: v_dual_mul_f32 v1, v1, v38
	v_dual_mul_f32 v36, v69, v36 :: v_dual_mul_f32 v67, v67, v37
	v_mul_f32_e32 v35, v35, v37
	v_mul_f32_e32 v69, v33, v37
	v_mul_f32_e32 v74, v32, v37
	v_mul_f32_e32 v76, v30, v37
	v_mul_f32_e32 v78, v28, v37
	v_mul_f32_e32 v79, v27, v37
	v_mul_f32_e32 v81, v25, v37
	v_mul_f32_e32 v83, v23, v37
	v_mul_f32_e32 v37, v22, v37
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v64, v54
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[22:25], v105
	ds_load_b128 v[26:29], v105 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v54, v19, v38
	v_mul_f32_e32 v64, v18, v38
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[16:19], v105 offset:512
	ds_load_b128 v[30:33], v105 offset:528
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v20, v20, v38
	v_mul_f32_e32 v15, v15, v38
	v_mul_f32_e32 v14, v14, v38
	v_mul_f32_e32 v12, v12, v38
	v_mul_f32_e32 v10, v10, v38
	v_mul_f32_e32 v4, v4, v38
	v_mul_f32_e32 v2, v2, v38
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp4:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[76:77], v[102:103]
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v38, v39, v22 :: v_dual_mul_f32 v39, v40, v23
	v_dual_mul_f32 v40, v41, v24 :: v_dual_mul_f32 v41, v42, v25
	v_dual_mul_f32 v42, v43, v26 :: v_dual_mul_f32 v43, v44, v27
	v_dual_mul_f32 v44, v45, v28 :: v_dual_mul_f32 v45, v46, v29
	v_dual_mul_f32 v46, v47, v16 :: v_dual_mul_f32 v47, v48, v17
	v_dual_mul_f32 v48, v49, v18 :: v_dual_mul_f32 v49, v50, v19
	v_dual_mul_f32 v50, v51, v30 :: v_dual_mul_f32 v51, v52, v31
	v_mul_f32_e32 v52, v53, v32
	v_dual_mul_f32 v0, v0, v33 :: v_dual_mul_f32 v71, v71, v31
	v_mul_f32_e32 v53, v55, v22
	v_dual_mul_f32 v55, v56, v23 :: v_dual_mul_f32 v56, v57, v24
	v_mul_f32_e32 v67, v67, v23
	v_dual_mul_f32 v57, v58, v25 :: v_dual_mul_f32 v58, v59, v26
	v_dual_mul_f32 v59, v60, v27 :: v_dual_mul_f32 v60, v61, v28
	v_dual_mul_f32 v61, v62, v29 :: v_dual_mul_f32 v62, v63, v16
	v_mul_f32_e32 v69, v69, v26
	v_mul_f32_e32 v63, v65, v17
	v_dual_mul_f32 v65, v66, v18 :: v_dual_mul_f32 v66, v73, v19
	v_dual_mul_f32 v35, v35, v24 :: v_dual_mul_f32 v72, v72, v30
	v_mul_f32_e32 v70, v70, v32
	v_mul_f32_e32 v36, v36, v33
	v_dual_mul_f32 v68, v68, v22 :: v_dual_mul_f32 v37, v37, v33
	v_dual_mul_f32 v34, v34, v25 :: v_dual_mul_f32 v21, v21, v22
	v_dual_mul_f32 v73, v74, v27 :: v_dual_mul_f32 v74, v75, v28
	v_dual_mul_f32 v75, v76, v29 :: v_dual_mul_f32 v76, v77, v16
	v_mul_f32_e32 v11, v11, v18
	v_dual_mul_f32 v77, v78, v17 :: v_dual_mul_f32 v78, v79, v18
	v_dual_mul_f32 v79, v80, v19 :: v_dual_mul_f32 v80, v81, v30
	v_mul_f32_e32 v15, v15, v28
	v_dual_mul_f32 v81, v82, v31 :: v_dual_mul_f32 v82, v83, v32
	v_dual_mul_f32 v1, v1, v33 :: v_dual_mul_f32 v20, v20, v23
	v_mul_f32_e32 v13, v13, v16
	v_dual_mul_f32 v22, v54, v24 :: v_dual_mul_f32 v3, v3, v31
	v_mul_f32_e32 v23, v64, v25
	v_dual_mul_f32 v24, v84, v26 :: v_dual_mul_f32 v25, v85, v27
	v_dual_mul_f32 v14, v14, v29 :: v_dual_max_f32 v27, 0, v43
	v_dual_mul_f32 v12, v12, v17 :: v_dual_max_f32 v31, 0, v47
	v_dual_mul_f32 v10, v10, v19 :: v_dual_max_f32 v19, 0, v41
	v_dual_mul_f32 v4, v4, v30 :: v_dual_max_f32 v29, 0, v45
	v_dual_mul_f32 v2, v2, v32 :: v_dual_max_f32 v33, 0, v49
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v16, 0, v38 :: v_dual_max_f32 v17, 0, v39
	v_dual_max_f32 v18, 0, v40 :: v_dual_max_f32 v41, 0, v53
	v_dual_max_f32 v26, 0, v42 :: v_dual_max_f32 v43, 0, v56
	v_max_f32_e32 v32, 0, v48
	v_dual_max_f32 v38, 0, v50 :: v_dual_max_f32 v39, 0, v51
	v_dual_max_f32 v40, 0, v52 :: v_dual_max_f32 v85, 0, v70
	v_dual_max_f32 v28, 0, v44 :: v_dual_max_f32 v47, 0, v58
	v_dual_max_f32 v30, 0, v46 :: v_dual_max_f32 v51, 0, v60
	v_dual_max_f32 v0, 0, v0 :: v_dual_max_f32 v87, 0, v67
	v_dual_max_f32 v42, 0, v55 :: v_dual_max_f32 v83, 0, v72
	v_dual_max_f32 v44, 0, v57 :: v_dual_max_f32 v35, 0, v35
	v_dual_max_f32 v48, 0, v59 :: v_dual_max_f32 v69, 0, v69
	v_dual_max_f32 v52, 0, v61 :: v_dual_max_f32 v89, 0, v74
	v_max_f32_e32 v55, 0, v62
	v_dual_max_f32 v59, 0, v65 :: v_dual_max_f32 v60, 0, v66
	v_dual_max_f32 v97, 0, v81 :: v_dual_max_f32 v84, 0, v71
	v_dual_max_f32 v93, 0, v78 :: v_dual_max_f32 v36, 0, v36
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v86, 0, v68
	v_max_f32_e32 v23, 0, v23
	v_dual_max_f32 v94, 0, v79 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v96, 0, v80 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v82, 0, v82 :: v_dual_mul_f32 v45, v16, v16
	v_dual_max_f32 v20, 0, v20 :: v_dual_mul_f32 v53, v26, v26
	v_dual_max_f32 v14, 0, v14 :: v_dual_mul_f32 v65, v32, v32
	v_dual_max_f32 v12, 0, v12 :: v_dual_mul_f32 v71, v39, v39
	v_dual_max_f32 v4, 0, v4 :: v_dual_mul_f32 v79, v42, v42
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v46, v17, v17
	v_mul_f32_e32 v50, v19, v19
	v_mul_f32_e32 v54, v27, v27
	v_mul_f32_e32 v62, v31, v31
	v_mul_f32_e32 v66, v33, v33
	v_mul_f32_e32 v70, v38, v38
	v_mul_f32_e32 v74, v40, v40
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v56, 0, v63 :: v_dual_max_f32 v91, 0, v76
	v_dual_max_f32 v88, 0, v73 :: v_dual_max_f32 v15, 0, v15
	v_dual_max_f32 v90, 0, v75 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v92, 0, v77 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v98, 0, v37 :: v_dual_mul_f32 v49, v18, v18
	v_dual_max_f32 v22, 0, v22 :: v_dual_mul_f32 v57, v28, v28
	v_dual_max_f32 v24, 0, v24 :: v_dual_mul_f32 v61, v30, v30
	v_dual_max_f32 v10, 0, v10 :: v_dual_mul_f32 v75, v0, v0
	v_dual_max_f32 v2, 0, v2 :: v_dual_mul_f32 v81, v44, v44
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v58, v29, v29 :: v_dual_mul_f32 v67, v55, v55
	v_mul_f32_e32 v77, v47, v47
	v_dual_mul_f32 v72, v51, v51 :: v_dual_mul_f32 v37, v94, v94
	v_mul_f32_e32 v73, v52, v52
	v_mul_f32_e32 v63, v59, v59
	v_mul_f32_e32 v59, v83, v83
	v_mul_f32_e32 v55, v36, v36
	v_mul_f32_e32 v51, v86, v86
	v_dual_mul_f32 v47, v35, v35 :: v_dual_mul_f32 v36, v93, v93
	v_dual_mul_f32 v17, v3, v3 :: v_dual_mul_f32 v32, v82, v82
	v_dual_mul_f32 v19, v1, v1 :: v_dual_mul_f32 v16, v4, v4
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v45, v46
	v_max3_f32 v1, v50, v53, v54
	v_max3_f32 v3, v62, v65, v66
	v_max3_f32 v4, v70, v71, v74
.Ltmp6:
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v25, 0, v25
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v78, v41, v41 :: v_dual_mul_f32 v41, v90, v90
	v_dual_mul_f32 v76, v48, v48 :: v_dual_mul_f32 v39, v91, v91
	v_dual_mul_f32 v68, v56, v56 :: v_dual_mul_f32 v33, v98, v98
	v_dual_mul_f32 v64, v60, v60 :: v_dual_mul_f32 v31, v21, v21
	v_mul_f32_e32 v60, v84, v84
	v_dual_mul_f32 v56, v85, v85 :: v_dual_mul_f32 v35, v96, v96
	v_mul_f32_e32 v18, v2, v2
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v57, v58, v61
	v_max3_f32 v0, v0, v49, v1
	v_max3_f32 v1, v3, v4, v75
.Ltmp8:
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v80, v43, v43 :: v_dual_mul_f32 v43, v69, v69
	v_dual_mul_f32 v52, v87, v87 :: v_dual_mul_f32 v29, v20, v20
	v_dual_mul_f32 v48, v34, v34 :: v_dual_mul_f32 v27, v24, v24
	v_dual_mul_f32 v44, v88, v88 :: v_dual_mul_f32 v21, v11, v11
	v_mul_f32_e32 v40, v89, v89
	v_mul_f32_e32 v38, v92, v92
	v_mul_f32_e32 v34, v97, v97
	v_mul_f32_e32 v30, v22, v22
	v_mul_f32_e32 v28, v23, v23
	v_dual_mul_f32 v22, v15, v15 :: v_dual_mul_f32 v23, v14, v14
	v_dual_mul_f32 v24, v13, v13 :: v_dual_mul_f32 v15, v10, v10
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v78, v79
	v_max3_f32 v11, v81, v77, v76
	v_max3_f32 v13, v59, v60, v56
	v_max3_f32 v0, v0, v2, v1
.Ltmp10:
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v26, v25, v25 :: v_dual_mul_f32 v25, v12, v12
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v12, v68, v63, v64
	v_max3_f32 v3, v72, v73, v67
	v_max3_f32 v4, v10, v80, v11
	v_max_f32_e32 v11, v51, v52
	v_max3_f32 v14, v35, v34, v32
	v_max3_f32 v10, v12, v13, v55
	v_max3_f32 v12, v48, v43, v44
	v_max3_f32 v13, v38, v36, v37
	v_max3_f32 v1, v40, v41, v39
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v42, 8, v117
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v4, v3, v10
	v_max3_f32 v3, v11, v47, v12
	v_max3_f32 v4, v13, v14, v33
	v_max_f32_e32 v10, v31, v29
	v_max3_f32 v11, v28, v27, v26
	v_max3_f32 v12, v25, v21, v15
	v_max3_f32 v13, v16, v17, v18
	v_max3_f32 v3, v3, v1, v4
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v14, v0, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v10, v30, v11
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v84, 1, v9
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v10, v12, v13, v19
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v13, v3, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v14, v14
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v12, v2, s26, 0xfedcba98 op_sel:[1,0]
	v_lshrrev_b32_e32 v85, 3, v9
.Ltmp21:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s27, s74, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v12, v12, v12
.Ltmp23:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s75, 0, s27
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v88.h, 0
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v13
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v13, 4, v117
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v1, v22, v23, v24
	v_max_f32_e32 v2, v2, v12
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v12, 4, v117
.Ltmp28:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[76:77], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[78:79], v[82:83]
.Ltmp29:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v4, v1, v10
	v_dual_max_f32 v1, v0, v11 :: v_dual_and_b32 v0, 3, v117
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v11, 0x60, v117
	v_lshl_add_u32 v86, v12, 6, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v10, v4, s26, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v14, v0, 9, 0
	v_lshlrev_b32_e32 v20, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v10, v10
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v14, v12, 2, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_or_b32 v69, 0x680, v13, v20
	v_xor_b32_e32 v20, v20, v11
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v10 :: v_dual_and_b32 v13, 0x2f0, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v14, v42, 4, v14
	v_xor_b32_e32 v69, v69, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v14, v84, v20
	v_add3_u32 v20, v86, v85, v69
.Ltmp35:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v14, 34, v7
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v10, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v20
.Ltmp37:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v84, s26, s74, v14
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v10, 32, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v85, null, s75, 0, s26
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v14, 30, v7
	v_or_b32_e32 v20, 28, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s31, s74, v10
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[76:77], v[84:85]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[78:79], v[84:85]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s75, 0, s31
	v_add_co_u32 v84, s31, s74, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v85, null, s75, 0, s31
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[76:77], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[78:79], v[82:83]
.Ltmp38:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v10, v1
	v_dual_mov_b32 v14, v2 :: v_dual_mov_b32 v69, v3
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v69, v69 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v82, v4, v4
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v10, v10
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v3, v3, v3
	v_dual_max_f32 v69, v69, v69 :: v_dual_max_f32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v10, v1, v10
	v_max_f32_e32 v14, v2, v14
.Ltmp44:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s36, s74, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v69 :: v_dual_mov_b32 v20, v10
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v83, v14
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v82, v4
.Ltmp48:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s75, 0, s36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v83, v83 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v69, v3 :: v_dual_mov_b32 v82, v4
.Ltmp50:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[76:77], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[78:79], v[1:2]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp51:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v20, v20 :: v_dual_max_f32 v2, v83, v83
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v69, v69 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v20, 26, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v10, v1
	v_max_f32_e32 v2, v14, v2
	v_max_f32_e32 v10, v69, v69
	v_max_f32_e32 v14, v82, v82
.Ltmp55:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s38, s74, v20
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v20, v1 :: v_dual_max_f32 v3, v3, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v14 :: v_dual_mov_b32 v69, v2
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v10, v3
	v_mov_b32_e32 v14, v4
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_barrier
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v20, v20, v20
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v69, v69, v69
.Ltmp62:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[76:77], v[84:85]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v20 :: v_dual_max_f32 v10, v10, v10
	v_max_f32_e32 v20, v14, v14
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v14, 4, v0
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v69
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v69, 1, v11
	v_lshlrev_b32_e32 v0, 3, v42
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v10 :: v_dual_add_nc_u32 v42, 0, v9
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v10, 5, v12
	v_add_nc_u32_e32 v12, 0, v14
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v20
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v20, v42, v69, v0
.Ltmp71:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[78:79], v[84:85]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v84, 24, v7
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v12, v10, v0
.Ltmp73:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v42, 22, v7
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v20, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v0
.Ltmp75:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s75, 0, s38
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 20, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v84, s39, s74, v84
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v85, null, s75, 0, s39
	v_add_co_u32 v86, s39, s74, v42
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[76:77], v[82:83]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v87, null, s75, 0, s39
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[78:79], v[82:83]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s44, s74, v0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v10, 18, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s75, 0, s44
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s40, s[76:77], v[84:85]
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v0, v1, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 16, v7
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[78:79], v[84:85]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v84, s44, s74, v10
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, 0x2b8cbccc, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v85, null, s75, 0, s44
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[76:77], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[78:79], v[82:83]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v82, s48, s74, v1
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v1, 14, v7
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v12, null, 0x40e00000, 0x40e00000, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[76:77], v[84:85]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[78:79], v[84:85]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s75, 0, s48
	v_add_co_u32 v84, s48, s74, v1
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v1, v12
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v10, 12, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[76:77], v[86:87]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[78:79], v[86:87]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v85, null, s75, 0, s48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add_co_u32 v86, s48, s74, v10
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v10, 10, v7
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v3, v3, v3
	v_fma_f32 v20, -v12, v1, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v87, null, s75, 0, s48
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[76:77], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[78:79], v[82:83]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v82, s54, s74, v10
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v10, 8, v7
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v3, 0x2b8cbccc, v3
	v_fmac_f32_e32 v1, v20, v1
	v_div_scale_f32 v20, vcc_lo, v0, 0x40e00000, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[76:77], v[84:85]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[78:79], v[84:85]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s75, 0, s54
	v_add_co_u32 v84, s54, s74, v10
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v42, null, 0x40e00000, 0x40e00000, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v85, null, s75, 0, s54
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v10, v20, v1
	v_max_f32_e32 v2, v2, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[76:77], v[82:83]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v69, v42
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[78:79], v[82:83]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[76:77], v[84:85]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v82, -v12, v10, v20
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[78:79], v[84:85]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v84, 0x2b8cbccc, v2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v83, 6, v7
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v10, v82, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[76:77], v[86:87]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v82, 0x2b8cbccc, v4
	v_div_scale_f32 v4, null, 0x40e00000, 0x40e00000, v84
	v_fma_f32 v2, -v42, v69, 1.0
	v_fma_f32 v12, -v12, v10, v20
	v_div_scale_f32 v20, s60, v3, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v85, v4
	v_fmac_f32_e32 v69, v2, v69
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[78:79], v[86:87]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v10, v12, v1, v10
	v_div_scale_f32 v86, null, 0x40e00000, 0x40e00000, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v12, v20, v69
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s58, s74, v83
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v10, 0x40e00000, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v4, v85, 1.0
	v_fma_f32 v10, -v42, v12, v20
	v_rcp_f32_e32 v87, v86
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s75, 0, s58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v85, v83, v85
	v_div_scale_f32 v83, s61, v84, 0x40e00000, v84
	v_fmac_f32_e32 v12, v10, v69
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v10.l, v0.h
	v_mov_b16_e32 v10.h, v88.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v89, v83, v85
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[76:77], v[1:2]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v90, -v86, v87, 1.0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[78:79], v[1:2]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v10
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v10, -v4, v89, v83
	v_fma_f32 v1, -v42, v12, v20
	v_fmac_f32_e32 v87, v90, v87
	v_div_scale_f32 v20, s62, v82, 0x40e00000, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v89, v10, v85
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v10, v0, v2, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s60
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v0, 4, v7
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v1, v1, v69, v12
	v_mul_f32_e32 v12, v20, v87
	v_fma_f32 v2, -v4, v89, v83
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v83, 0xffff0000, v10
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v1, v1, 0x40e00000, v3
	v_fma_f32 v3, -v86, v12, v20
	v_div_fmas_f32 v2, v2, v85, v89
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v85, null, v83, v83, v45
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v12, v3, v87
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s60, s74, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v0, v85
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v88.l, v1.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v20, -v86, v12, v20
	v_div_fixup_f32 v2, v2, 0x40e00000, v84
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v84, null, v83, v83, v46
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v42, 1, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v12, v20, v87, v12
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v87, vcc_lo, v45, v83, v45
	v_fma_f32 v20, -v85, v0, 1.0
	v_rcp_f32_e32 v86, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v69, v12, 0x40e00000, v82
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v12.h, v88.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v90, null, v83, v83, v49
	v_fmac_f32_e32 v0, v20, v0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v88.l, v69.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v92, null, v83, v83, v50
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v1, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v89, v87, v0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v82, 1, v88
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v42, -v84, v86, 1.0
	v_rcp_f32_e32 v91, v90
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s75, 0, s60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v85, v89, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v42, v86
	v_div_scale_f32 v93, s60, v46, v83, v46
	v_div_scale_f32 v97, null, v83, v83, v53
	v_fmac_f32_e32 v89, v88, v0
	v_rcp_f32_e32 v88, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v94, v93, v86
	v_fma_f32 v95, -v90, v91, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v12.l, v2.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v85, v89, v87
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[78:79], v[102:103]
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v84, v94, v93
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, s61, v49, v83, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v96, -v92, v88, 1.0
	v_div_fmas_f32 v0, v85, v0, v89
	v_fmac_f32_e32 v94, v87, v86
	v_mul_f32_e32 v85, v95, v91
	v_rcp_f32_e32 v87, v97
	v_fmac_f32_e32 v88, v96, v88
	v_div_scale_f32 v96, null, v83, v83, v54
	v_div_scale_f32 v89, s62, v50, v83, v50
	v_div_fixup_f32 v45, v0, v83, v45
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v98, v96
	v_fma_f32 v0, -v84, v94, v93
	v_fma_f32 v84, -v90, v85, v95
	v_mul_f32_e32 v93, v89, v88
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v99, -v97, v87, 1.0
	v_div_fmas_f32 v0, v0, v86, v94
	v_fmac_f32_e32 v85, v84, v91
	v_fma_f32 v84, -v92, v93, v89
	v_div_scale_f32 v86, s60, v53, v83, v53
	v_fma_f32 v94, -v96, v98, 1.0
	v_fmac_f32_e32 v87, v99, v87
	v_div_fixup_f32 v46, v0, v83, v46
	v_fma_f32 v0, -v90, v85, v95
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v93, v84, v88 :: v_dual_fmac_f32 v98, v94, v98
	v_div_scale_f32 v94, null, v83, v83, v57
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v84, v86, v87
	v_div_scale_f32 v90, s63, v54, v83, v54
	v_div_fmas_f32 v0, v0, v91, v85
	v_fma_f32 v85, -v92, v93, v89
	v_rcp_f32_e32 v91, v94
	v_div_scale_f32 v95, null, v83, v83, v58
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v89, -v97, v84, v86
	v_mul_f32_e32 v92, v90, v98
	v_div_fmas_f32 v85, v85, v88, v93
	v_rcp_f32_e32 v88, v95
	v_div_fixup_f32 v49, v0, v83, v49
	v_fmac_f32_e32 v84, v89, v87
	v_fma_f32 v89, -v96, v92, v90
	v_fma_f32 v93, -v94, v91, 1.0
	v_div_fixup_f32 v50, v85, v83, v50
	v_div_scale_f32 v85, s61, v57, v83, v57
	v_fma_f32 v0, -v97, v84, v86
	v_fmac_f32_e32 v92, v89, v98
	v_fmac_f32_e32 v91, v93, v91
	v_fma_f32 v86, -v95, v88, 1.0
	v_div_scale_f32 v89, null, v83, v83, v61
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v93, null, v83, v83, v62
	v_div_fmas_f32 v0, v0, v87, v84
	v_fma_f32 v84, -v96, v92, v90
	v_dual_mul_f32 v87, v85, v91 :: v_dual_fmac_f32 v88, v86, v88
	v_rcp_f32_e32 v86, v89
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v90, s60, v58, v83, v58
	v_div_fmas_f32 v84, v84, v98, v92
	v_fma_f32 v92, -v94, v87, v85
	v_rcp_f32_e32 v98, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v96, v90, v88
	v_div_fixup_f32 v53, v0, v83, v53
	v_div_fixup_f32 v54, v84, v83, v54
	v_fma_f32 v97, -v89, v86, 1.0
	v_fmac_f32_e32 v87, v92, v91
	v_div_scale_f32 v92, null, v83, v83, v65
	v_fma_f32 v0, -v95, v96, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v86, v97, v86
	v_div_scale_f32 v84, s62, v61, v83, v61
	v_fma_f32 v97, -v93, v98, 1.0
	v_fma_f32 v85, -v94, v87, v85
	v_rcp_f32_e32 v94, v92
	v_fmac_f32_e32 v96, v0, v88
	v_mul_f32_e32 v0, v84, v86
	v_fmac_f32_e32 v98, v97, v98
	v_div_scale_f32 v97, s63, v62, v83, v62
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v99, null, v83, v83, v66
	v_div_fmas_f32 v85, v85, v91, v87
	v_fma_f32 v87, -v95, v96, v90
	v_fma_f32 v90, -v89, v0, v84
	v_mul_f32_e32 v91, v97, v98
	v_fma_f32 v95, -v92, v94, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v57, v85, v83, v57
	v_div_fmas_f32 v87, v87, v88, v96
	v_fmac_f32_e32 v0, v90, v86
	v_rcp_f32_e32 v88, v99
	v_fma_f32 v90, -v93, v91, v97
	v_fmac_f32_e32 v94, v95, v94
	v_div_scale_f32 v95, s60, v65, v83, v65
	v_fma_f32 v84, -v89, v0, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v91, v90, v98
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v85, v95, v94
	v_div_fixup_f32 v58, v87, v83, v58
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v99, v88, 1.0
	v_div_scale_f32 v89, null, v83, v83, v70
	v_div_fmas_f32 v0, v84, v86, v0
	v_fma_f32 v84, -v93, v91, v97
	v_fma_f32 v86, -v92, v85, v95
	v_div_scale_f32 v93, null, v83, v83, v71
	v_fmac_f32_e32 v88, v87, v88
	v_rcp_f32_e32 v87, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v86, v94
	v_rcp_f32_e32 v86, v93
	v_div_scale_f32 v90, s61, v66, v83, v66
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v61, v0, v83, v61
	v_div_fmas_f32 v84, v84, v98, v91
	v_mul_f32_e32 v91, v90, v88
	v_fma_f32 v0, -v92, v85, v95
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v96, -v89, v87, 1.0
	v_div_scale_f32 v92, s62, v70, v83, v70
	v_fma_f32 v95, -v93, v86, 1.0
	v_div_fixup_f32 v62, v84, v83, v62
	v_fma_f32 v84, -v99, v91, v90
	v_fmac_f32_e32 v87, v96, v87
	v_div_scale_f32 v96, null, v83, v83, v74
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v95, null, v83, v83, v75
	s_mov_b32 vcc_lo, s60
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v12, 1, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v94, v85
	v_fmac_f32_e32 v91, v84, v88
	v_mul_f32_e32 v84, v92, v87
	v_rcp_f32_e32 v85, v96
	v_div_scale_f32 v94, s60, v71, v83, v71
	v_rcp_f32_e32 v98, v95
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v12, v2, v12, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v65, v0, v83, v65
	v_fma_f32 v0, -v99, v91, v90
	v_fma_f32 v90, -v89, v84, v92
	v_mul_f32_e32 v97, v94, v86
	s_mov_b32 vcc_lo, s61
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v69, v82, 0x7fff
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v82, 0xffff0000, v12
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v99, -v96, v85, 1.0
	v_div_fmas_f32 v0, v0, v88, v91
	v_fmac_f32_e32 v84, v90, v87
	v_fma_f32 v88, -v93, v97, v94
	v_fma_f32 v91, -v95, v98, 1.0
	v_fmac_f32_e32 v85, v99, v85
	v_div_scale_f32 v90, s61, v74, v83, v74
	v_div_fixup_f32 v66, v0, v83, v66
	v_fma_f32 v0, -v89, v84, v92
	v_fmac_f32_e32 v97, v88, v86
	v_fmac_f32_e32 v98, v91, v98
	v_div_scale_f32 v91, null, v82, v82, v78
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v88, v90, v85
	v_div_scale_f32 v89, s63, v75, v83, v75
	v_div_fmas_f32 v0, v0, v87, v84
	v_fma_f32 v84, -v93, v97, v94
	v_rcp_f32_e32 v92, v91
	v_div_scale_f32 v94, null, v82, v82, v79
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v87, -v96, v88, v90
	v_mul_f32_e32 v93, v89, v98
	v_div_fmas_f32 v84, v84, v86, v97
	v_rcp_f32_e32 v86, v94
	v_div_fixup_f32 v70, v0, v83, v70
	v_fmac_f32_e32 v88, v87, v85
	v_fma_f32 v87, -v95, v93, v89
	v_fma_f32 v97, -v91, v92, 1.0
	v_div_fixup_f32 v71, v84, v83, v71
	v_div_scale_f32 v84, s60, v78, v82, v78
	v_fma_f32 v0, -v96, v88, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v93, v87, v98 :: v_dual_fmac_f32 v92, v97, v92
	v_fma_f32 v87, -v94, v86, 1.0
	v_div_scale_f32 v90, null, v82, v82, v80
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v69, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v85, v88
	v_fma_f32 v85, -v95, v93, v89
	v_mul_f32_e32 v88, v84, v92
	v_fmac_f32_e32 v86, v87, v86
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v89, s61, v79, v82, v79
	v_div_scale_f32 v95, null, v82, v82, v81
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v96, v89, v86
	v_div_fmas_f32 v85, v85, v98, v93
	v_fma_f32 v93, -v91, v88, v84
	v_rcp_f32_e32 v98, v95
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v90, v87, 1.0
	v_div_fixup_f32 v74, v0, v83, v74
	v_fma_f32 v0, -v94, v96, v89
	v_fmac_f32_e32 v88, v93, v92
	v_div_fixup_f32 v75, v85, v83, v75
	v_fmac_f32_e32 v87, v97, v87
	v_div_scale_f32 v83, s62, v80, v82, v80
	v_div_scale_f32 v85, null, v82, v82, v77
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v95, v98, 1.0
	v_fma_f32 v84, -v91, v88, v84
	v_fmac_f32_e32 v96, v0, v86
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v0, v83, v87
	v_rcp_f32_e32 v91, v85
	v_fmac_f32_e32 v98, v93, v98
	v_div_scale_f32 v93, s63, v81, v82, v81
	v_div_fmas_f32 v84, v84, v92, v88
	v_fma_f32 v88, -v94, v96, v89
	v_div_scale_f32 v97, null, v82, v82, v76
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v89, -v90, v0, v83
	v_mul_f32_e32 v92, v93, v98
	v_div_fmas_f32 v86, v88, v86, v96
	v_rcp_f32_e32 v88, v97
	v_fma_f32 v94, -v85, v91, 1.0
	v_fmac_f32_e32 v0, v89, v87
	v_fma_f32 v89, -v95, v92, v93
	v_div_fixup_f32 v79, v86, v82, v79
	v_div_fixup_f32 v78, v84, v82, v78
	v_fmac_f32_e32 v91, v94, v91
	v_div_scale_f32 v94, s60, v77, v82, v77
	v_fmac_f32_e32 v92, v89, v98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v97, v88, 1.0
	v_div_scale_f32 v89, null, v82, v82, v72
	v_fma_f32 v83, -v90, v0, v83
	v_mul_f32_e32 v84, v94, v91
	v_fmac_f32_e32 v88, v86, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v86, v89
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v90, s61, v76, v82, v76
	v_div_fmas_f32 v0, v83, v87, v0
	v_fma_f32 v83, -v95, v92, v93
	v_fma_f32 v87, -v85, v84, v94
	v_div_scale_f32 v93, null, v82, v82, v73
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v89, v86, 1.0
	v_fmac_f32_e32 v84, v87, v91
	v_rcp_f32_e32 v87, v93
	v_div_fmas_f32 v83, v83, v98, v92
	v_mul_f32_e32 v92, v90, v88
	v_div_fixup_f32 v80, v0, v82, v80
	v_fma_f32 v0, -v85, v84, v94
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v95, null, v82, v82, v67
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v81, v83, v82, v81
	v_fma_f32 v83, -v97, v92, v90
	v_div_scale_f32 v85, s62, v72, v82, v72
	v_fma_f32 v94, -v93, v87, 1.0
	v_div_fmas_f32 v0, v0, v91, v84
	v_rcp_f32_e32 v84, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v92, v83, v88 :: v_dual_mul_f32 v83, v85, v86
	v_fmac_f32_e32 v87, v94, v87
	v_div_scale_f32 v91, s60, v73, v82, v73
	v_div_scale_f32 v94, null, v82, v82, v68
	v_div_fixup_f32 v77, v0, v82, v77
	v_fma_f32 v0, -v97, v92, v90
	v_fma_f32 v90, -v89, v83, v85
	v_mul_f32_e32 v96, v91, v87
	v_rcp_f32_e32 v97, v94
	v_fma_f32 v98, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v83, v90, v86
	v_div_fmas_f32 v0, v0, v88, v92
	v_fma_f32 v88, -v93, v96, v91
	v_fmac_f32_e32 v84, v98, v84
	v_div_scale_f32 v90, s61, v67, v82, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v76, v0, v82, v76
	v_fma_f32 v92, -v94, v97, 1.0
	v_fma_f32 v0, -v89, v83, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v96, v88, v87 :: v_dual_mul_f32 v85, v90, v84
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v97, v92, v97
	v_div_scale_f32 v88, s63, v68, v82, v68
	v_div_fmas_f32 v0, v0, v86, v83
	v_fma_f32 v83, -v93, v96, v91
	v_fma_f32 v86, -v95, v85, v90
	v_div_scale_f32 v93, null, v82, v82, v64
	v_mul_f32_e32 v92, v88, v97
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v86, v84
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v83, v83, v87, v96
	v_fma_f32 v87, -v94, v92, v88
	v_div_fixup_f32 v72, v0, v82, v72
	v_fma_f32 v0, -v95, v85, v90
	s_mov_b32 vcc_lo, s61
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	v_lshlrev_b32_e32 v9, 3, v9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v92, v87, v97 :: v_dual_lshlrev_b32 v11, 5, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v0, v0, v84, v85
	v_fma_f32 v87, -v93, v86, 1.0
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v84, -v94, v92, v88
	v_div_scale_f32 v88, s61, v64, v82, v64
	v_fmac_f32_e32 v86, v87, v86
	v_div_fixup_f32 v67, v0, v82, v67
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v84, v84, v97, v92
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v77, v77
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v95, v88, v86
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_barrier
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v76
	v_rndne_f32_e32 v72, v72
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v0, -v93, v95, v88
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	v_xor_b32_e32 v8, v8, v14
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v20, 2, v7
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v0, v86
	v_div_scale_f32 v89, null, v82, v82, v63
	v_div_fixup_f32 v73, v83, v82, v73
	v_div_scale_f32 v83, s60, v63, v82, v63
	v_rcp_f32_e32 v91, v89
	v_div_scale_f32 v90, null, v82, v82, v59
	v_div_scale_f32 v94, null, v82, v82, v60
	v_div_fixup_f32 v68, v84, v82, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v84, s62, v59, v82, v59
	v_rcp_f32_e32 v97, v94
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v96, -v89, v91, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v98, null, v82, v82, v55
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v96, v91
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v96, -v90, v87, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v85, v83, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v96, v87
	v_fma_f32 v96, -v94, v97, 1.0
	v_fma_f32 v92, -v89, v85, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v0, v84, v87
	v_fmac_f32_e32 v97, v96, v97
	v_div_scale_f32 v96, s63, v60, v82, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v92, v91
	v_div_scale_f32 v92, null, v82, v82, v56
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v42, 0xffff0000, v2
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v12.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v89, v85, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v89, v92
	v_div_fmas_f32 v83, v83, v91, v85
	v_fma_f32 v85, -v93, v95, v88
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v88, -v90, v0, v84
	v_mul_f32_e32 v91, v96, v97
	v_div_fixup_f32 v63, v83, v82, v63
	v_div_fmas_f32 v85, v85, v86, v95
	v_rcp_f32_e32 v86, v98
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v92, v89, 1.0
	v_fmac_f32_e32 v0, v88, v87
	v_fma_f32 v88, -v94, v91, v96
	v_div_fixup_f32 v64, v85, v82, v64
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s60, v56, v82, v56
	v_fmac_f32_e32 v91, v88, v97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v98, v86, 1.0
	v_div_scale_f32 v88, null, v69, v69, v51
	v_fma_f32 v83, -v90, v0, v84
	v_mul_f32_e32 v84, v93, v89
	v_fmac_f32_e32 v86, v85, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v90, s61, v55, v82, v55
	v_div_fmas_f32 v0, v83, v87, v0
	v_fma_f32 v83, -v94, v91, v96
	v_fma_f32 v87, -v92, v84, v93
	v_div_scale_f32 v94, null, v69, v69, v52
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v59, v0, v82, v59
	v_fmac_f32_e32 v84, v87, v89
	v_rcp_f32_e32 v87, v94
	v_fma_f32 v95, -v88, v85, 1.0
	v_div_fmas_f32 v83, v83, v97, v91
	v_mul_f32_e32 v91, v90, v86
	v_fma_f32 v0, -v92, v84, v93
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v95, null, v69, v69, v47
	v_div_fixup_f32 v60, v83, v82, v60
	v_fma_f32 v83, -v98, v91, v90
	v_div_scale_f32 v92, s62, v51, v69, v51
	v_fma_f32 v93, -v94, v87, 1.0
	v_div_fmas_f32 v0, v0, v89, v84
	v_rcp_f32_e32 v84, v95
	v_fmac_f32_e32 v91, v83, v86
	v_mul_f32_e32 v83, v92, v85
	v_fmac_f32_e32 v87, v93, v87
	v_div_scale_f32 v89, s60, v52, v69, v52
	v_div_scale_f32 v93, null, v69, v69, v48
	v_div_fixup_f32 v56, v0, v82, v56
	v_fma_f32 v0, -v98, v91, v90
	v_fma_f32 v90, -v88, v83, v92
	v_mul_f32_e32 v96, v89, v87
	v_rcp_f32_e32 v97, v93
	v_fma_f32 v98, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v83, v90, v85
	v_div_fmas_f32 v0, v0, v86, v91
	v_fma_f32 v86, -v94, v96, v89
	v_fmac_f32_e32 v84, v98, v84
	v_div_scale_f32 v90, s61, v47, v69, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v55, v0, v82, v55
	v_fma_f32 v91, -v93, v97, 1.0
	v_fma_f32 v0, -v88, v83, v92
	v_fmac_f32_e32 v96, v86, v87
	v_mul_f32_e32 v82, v90, v84
	v_div_scale_f32 v88, null, v69, v69, v43
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v97, v91, v97
	v_div_scale_f32 v86, s63, v48, v69, v48
	v_div_fmas_f32 v0, v0, v85, v83
	v_fma_f32 v83, -v94, v96, v89
	v_fma_f32 v85, -v95, v82, v90
	v_rcp_f32_e32 v89, v88
	v_div_scale_f32 v92, null, v69, v69, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v91, v86, v97 :: v_dual_fmac_f32 v82, v85, v84
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v85, v92
	v_div_fmas_f32 v83, v83, v87, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v87, -v93, v91, v86
	v_div_fixup_f32 v51, v0, v69, v51
	v_fma_f32 v94, -v88, v89, 1.0
	v_fma_f32 v0, -v95, v82, v90
	v_div_fixup_f32 v52, v83, v69, v52
	v_fmac_f32_e32 v91, v87, v97
	v_div_scale_f32 v83, s60, v43, v69, v43
	v_fmac_f32_e32 v89, v94, v89
	v_fma_f32 v87, -v92, v85, 1.0
	v_div_scale_f32 v90, null, v69, v69, v40
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v84, v82
	v_fma_f32 v82, -v93, v91, v86
	v_mul_f32_e32 v84, v83, v89
	v_fmac_f32_e32 v85, v87, v85
	v_rcp_f32_e32 v86, v90
	v_div_scale_f32 v87, s61, v44, v69, v44
	v_div_scale_f32 v93, null, v69, v69, v41
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v94, v87, v85
	v_div_fmas_f32 v82, v82, v97, v91
	v_fma_f32 v91, -v88, v84, v83
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v90, v86, 1.0
	v_div_fixup_f32 v47, v0, v69, v47
	v_fma_f32 v0, -v92, v94, v87
	v_fmac_f32_e32 v84, v91, v89
	v_div_scale_f32 v91, null, v69, v69, v39
	v_div_fixup_f32 v48, v82, v69, v48
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v82, s62, v40, v69, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v93, v96, 1.0
	v_fma_f32 v83, -v88, v84, v83
	v_fmac_f32_e32 v94, v0, v85
	v_rcp_f32_e32 v88, v91
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v0, v82, v86
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s63, v41, v69, v41
	v_div_fmas_f32 v83, v83, v89, v84
	v_fma_f32 v84, -v92, v94, v87
	v_div_scale_f32 v97, null, v69, v69, v38
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v87, -v90, v0, v82
	v_mul_f32_e32 v89, v95, v96
	v_fma_f32 v92, -v91, v88, 1.0
	v_div_fmas_f32 v84, v84, v85, v94
	v_rcp_f32_e32 v85, v97
	v_fmac_f32_e32 v0, v87, v86
	v_fma_f32 v87, -v93, v89, v95
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s60, v39, v69, v39
	v_div_fixup_f32 v43, v83, v69, v43
	v_div_fixup_f32 v44, v84, v69, v44
	v_fma_f32 v82, -v90, v0, v82
	v_fmac_f32_e32 v89, v87, v96
	v_mul_f32_e32 v83, v92, v88
	v_fma_f32 v84, -v97, v85, 1.0
	v_div_scale_f32 v87, null, v69, v69, v36
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v90, s61, v38, v69, v38
	v_div_fmas_f32 v0, v82, v86, v0
	v_fma_f32 v82, -v93, v89, v95
	v_fma_f32 v86, -v91, v83, v92
	v_fmac_f32_e32 v85, v84, v85
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v93, null, v69, v69, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v86, v88
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v40, v0, v69, v40
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v82, v82, v96, v89
	v_mul_f32_e32 v89, v90, v85
	v_fma_f32 v0, -v91, v83, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v87, v84, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v41, v82, v69, v41
	v_fma_f32 v82, -v97, v89, v90
	v_div_scale_f32 v91, s62, v36, v69, v36
	v_fmac_f32_e32 v84, v94, v84
	v_fma_f32 v92, -v93, v86, 1.0
	v_div_scale_f32 v94, null, v69, v69, v35
	v_div_fmas_f32 v0, v0, v88, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v89, v82, v85 :: v_dual_fmac_f32 v86, v92, v86
	v_rcp_f32_e32 v83, v94
	v_div_scale_f32 v92, null, v69, v69, v34
	v_mul_f32_e32 v82, v91, v84
	v_div_scale_f32 v88, s60, v37, v69, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v96, v92
	v_div_fixup_f32 v0, v0, v69, v39
	v_fma_f32 v39, -v97, v89, v90
	v_fma_f32 v90, -v87, v82, v91
	v_mul_f32_e32 v95, v88, v86
	v_fma_f32 v97, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v39, v39, v85, v89
	v_fmac_f32_e32 v82, v90, v84
	v_fma_f32 v85, -v93, v95, v88
	v_fmac_f32_e32 v83, v97, v83
	v_div_scale_f32 v89, s61, v35, v69, v35
	v_fma_f32 v90, -v92, v96, 1.0
	v_div_fixup_f32 v38, v39, v69, v38
	v_fma_f32 v39, -v87, v82, v91
	v_fmac_f32_e32 v95, v85, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v85, v89, v83 :: v_dual_fmac_f32 v96, v90, v96
	v_div_scale_f32 v90, null, v69, v69, v32
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v87, s63, v34, v69, v34
	v_div_fmas_f32 v39, v39, v84, v82
	v_fma_f32 v82, -v93, v95, v88
	v_fma_f32 v84, -v94, v85, v89
	v_rcp_f32_e32 v88, v90
	v_div_scale_f32 v93, null, v69, v69, v33
	v_mul_f32_e32 v91, v87, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v84, v83
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v84, v93
	v_div_fmas_f32 v82, v82, v86, v95
	v_fma_f32 v86, -v92, v91, v87
	v_div_fixup_f32 v36, v39, v69, v36
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v90, v88, 1.0
	v_fma_f32 v39, -v94, v85, v89
	v_div_fixup_f32 v37, v82, v69, v37
	v_fmac_f32_e32 v91, v86, v96
	v_div_scale_f32 v82, s60, v32, v69, v32
	v_fmac_f32_e32 v88, v95, v88
	v_fma_f32 v86, -v93, v84, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v94, null, v42, v42, v29
	v_div_fmas_f32 v39, v39, v83, v85
	v_fma_f32 v83, -v92, v91, v87
	v_mul_f32_e32 v85, v82, v88
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v86, null, v42, v42, v31
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v87, s61, v33, v69, v33
	v_div_fmas_f32 v83, v83, v96, v91
	v_rcp_f32_e32 v89, v86
	v_fma_f32 v91, -v90, v85, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v92, v87, v84
	v_div_fixup_f32 v35, v39, v69, v35
	v_div_fixup_f32 v34, v83, v69, v34
	v_rcp_f32_e32 v83, v94
	v_fmac_f32_e32 v85, v91, v88
	v_fma_f32 v39, -v93, v92, v87
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v96, null, v42, v42, v28
	v_fma_f32 v91, -v86, v89, 1.0
	v_fma_f32 v82, -v90, v85, v82
	v_div_scale_f32 v90, null, v42, v42, v30
	v_fmac_f32_e32 v92, v39, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v89, v91, v89
	v_div_fmas_f32 v82, v82, v88, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v91, v90
	v_div_scale_f32 v39, s62, v31, v42, v31
	v_fma_f32 v85, -v93, v92, v87
	v_fma_f32 v95, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v87, v39, v89
	v_div_scale_f32 v88, s60, v29, v42, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v83, v95, v83
	v_fma_f32 v93, -v90, v91, 1.0
	v_rcp_f32_e32 v98, v96
	v_div_fmas_f32 v84, v85, v84, v92
	v_fma_f32 v95, -v86, v87, v39
	v_mul_f32_e32 v97, v88, v83
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s63, v30, v42, v30
	v_div_fixup_f32 v32, v82, v69, v32
	v_div_fixup_f32 v33, v84, v69, v33
	v_div_scale_f32 v84, null, v42, v42, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v92, v93, v91 :: v_dual_fmac_f32 v87, v95, v89
	v_fma_f32 v85, -v94, v97, v88
	v_fma_f32 v82, -v96, v98, 1.0
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v69, -v90, v92, v93
	v_fma_f32 v39, -v86, v87, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v97, v85, v83 :: v_dual_fmac_f32 v98, v82, v98
	v_div_scale_f32 v82, s61, v28, v42, v28
	v_fmac_f32_e32 v92, v69, v91
	v_rcp_f32_e32 v69, v84
	v_div_fmas_f32 v39, v39, v89, v87
	v_fma_f32 v85, -v94, v97, v88
	v_mul_f32_e32 v86, v82, v98
	v_div_scale_f32 v87, null, v42, v42, v26
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v31, v39, v42, v31
	v_div_fmas_f32 v83, v85, v83, v97
	v_fma_f32 v85, -v90, v92, v93
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v84, v69, 1.0
	v_rcp_f32_e32 v89, v87
	v_fma_f32 v90, -v96, v86, v82
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v29, v83, v42, v29
	v_fmac_f32_e32 v69, v88, v69
	v_div_scale_f32 v88, s60, v27, v42, v27
	v_fmac_f32_e32 v86, v90, v98
	v_div_fmas_f32 v85, v85, v91, v92
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v39, v88, v69
	v_fma_f32 v83, -v87, v89, 1.0
	v_fma_f32 v82, -v96, v86, v82
	v_div_fixup_f32 v30, v85, v42, v30
	v_div_scale_f32 v85, null, v42, v42, v22
	v_fma_f32 v90, -v84, v39, v88
	v_fmac_f32_e32 v89, v83, v89
	v_div_scale_f32 v83, s62, v26, v42, v26
	v_div_fmas_f32 v82, v82, v98, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v90, v69
	v_rcp_f32_e32 v91, v85
	v_mul_f32_e32 v86, v83, v89
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v28, v82, v42, v28
	v_fma_f32 v82, -v84, v39, v88
	v_div_scale_f32 v90, null, v42, v42, v23
	v_fma_f32 v84, -v87, v86, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v39, v82, v69, v39
	v_div_scale_f32 v69, null, v42, v42, v24
	v_fma_f32 v88, -v85, v91, 1.0
	v_rcp_f32_e32 v92, v90
	v_fmac_f32_e32 v86, v84, v89
	v_rcp_f32_e32 v84, v69
	v_div_scale_f32 v82, s60, v22, v42, v22
	v_fmac_f32_e32 v91, v88, v91
	v_div_scale_f32 v88, null, v42, v42, v25
	v_div_fixup_f32 v27, v39, v42, v27
	v_fma_f32 v83, -v87, v86, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v90, v92, 1.0
	v_rcp_f32_e32 v94, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v69, v84, 1.0
	v_mul_f32_e32 v87, v82, v91
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v92, v39, v92
	v_div_scale_f32 v39, s61, v23, v42, v23
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v93, null, v42, v42, v21
	v_div_fmas_f32 v83, v83, v89, v86
	v_fma_f32 v86, -v85, v87, v82
	v_mul_f32_e32 v89, v39, v92
	v_div_scale_f32 v95, s62, v24, v42, v24
	v_fma_f32 v96, -v88, v94, 1.0
	v_rcp_f32_e32 v97, v93
	v_fmac_f32_e32 v87, v86, v91
	v_fma_f32 v86, -v90, v89, v39
	v_mul_f32_e32 v98, v95, v84
	v_fmac_f32_e32 v94, v96, v94
	v_div_scale_f32 v96, s63, v25, v42, v25
	v_div_fixup_f32 v26, v83, v42, v26
	v_fma_f32 v82, -v85, v87, v82
	v_fmac_f32_e32 v89, v86, v92
	v_fma_f32 v83, -v69, v98, v95
	v_mul_f32_e32 v85, v96, v94
	v_fma_f32 v86, -v93, v97, 1.0
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v39, -v90, v89, v39
	v_fmac_f32_e32 v98, v83, v84
	v_fma_f32 v83, -v88, v85, v96
	v_fmac_f32_e32 v97, v86, v97
	v_div_scale_f32 v86, s60, v21, v42, v21
	v_div_fmas_f32 v82, v82, v91, v87
	v_fma_f32 v69, -v69, v98, v95
	v_fmac_f32_e32 v85, v83, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v83, v86, v97
	v_div_scale_f32 v87, null, v42, v42, v15
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v22, v82, v42, v22
	v_div_fmas_f32 v39, v39, v92, v89
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v89, v87
	v_div_fmas_f32 v69, v69, v84, v98
	v_fma_f32 v84, -v88, v85, v96
	v_fma_f32 v88, -v93, v83, v86
	v_div_fixup_f32 v23, v39, v42, v23
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v24, v69, v42, v24
	v_div_fmas_f32 v84, v84, v94, v85
	v_fmac_f32_e32 v83, v88, v97
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v82, -v87, v89, 1.0
	v_div_scale_f32 v69, null, v42, v42, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v93, v83, v86
	v_div_fixup_f32 v25, v84, v42, v25
	v_fmac_f32_e32 v89, v82, v89
	v_div_scale_f32 v82, null, v42, v42, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v97, v83
	v_div_scale_f32 v85, vcc_lo, v15, v42, v15
	v_rcp_f32_e32 v83, v69
	v_rcp_f32_e32 v86, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v21, v39, v42, v21
	v_mul_f32_e32 v90, v85, v89
	v_div_scale_f32 v84, null, v42, v42, v18
	v_div_scale_f32 v91, null, v42, v42, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v94, -v87, v90, v85
	v_rcp_f32_e32 v88, v84
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v39, -v69, v83, 1.0
	v_fma_f32 v92, -v82, v86, 1.0
	v_rcp_f32_e32 v93, v91
	v_fmac_f32_e32 v90, v94, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v39, v83
	v_div_scale_f32 v39, s60, v16, v42, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v87, v90, v85
	v_fmac_f32_e32 v86, v92, v86
	v_div_scale_f32 v92, s61, v17, v42, v17
	v_fma_f32 v95, -v84, v88, 1.0
	v_div_fmas_f32 v85, v85, v89, v90
	s_mov_b32 vcc_lo, s60
	s_mov_b32 s60, 0xc1000000
	v_mul_f32_e32 v98, v92, v86
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v32, v32, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v97, -v91, v93, 1.0
	v_fmac_f32_e32 v88, v95, v88
	v_div_scale_f32 v95, s62, v18, v42, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v96, v39, v83
	v_fma_f32 v87, -v82, v98, v92
	v_fmac_f32_e32 v93, v97, v93
	v_div_scale_f32 v97, s63, v19, v42, v19
	v_fma_f32 v94, -v69, v96, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v98, v87, v86
	v_dual_mul_f32 v99, v95, v88 :: v_dual_mul_f32 v100, v97, v93
	v_div_fixup_f32 v15, v85, v42, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v96, v94, v83
	v_fma_f32 v82, -v82, v98, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v94, -v84, v99, v95
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v39, -v69, v96, v39
	v_fma_f32 v69, -v91, v100, v97
	v_fmac_f32_e32 v99, v94, v88
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v51, v51, s60, 0x40e00000
	v_med3_f32 v0, v0, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v39, v39, v83, v96
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v100, v69, v93
	v_div_fmas_f32 v82, v82, v86, v98
	v_fma_f32 v69, -v84, v99, v95
	v_div_fixup_f32 v16, v39, v42, v16
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v91, v100, v97
	v_div_fixup_f32 v17, v82, v42, v17
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v49
	v_rndne_f32_e32 v49, v53
	v_rndne_f32_e32 v53, v57
	v_rndne_f32_e32 v57, v61
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v61, v65
	v_rndne_f32_e32 v65, v70
	v_rndne_f32_e32 v70, v75
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v15, v15
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_med3_f32 v52, v52, s60, 0x40e00000
	v_med3_f32 v48, v48, s60, 0x40e00000
	v_med3_f32 v44, v44, s60, 0x40e00000
	v_med3_f32 v17, v17, s60, 0x40e00000
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v70, v70, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v69, v69, v88, v99
	s_mov_b32 vcc_lo, s63
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v60, v60, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v93, v100
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v31, v31, s60, 0x40e00000
	v_med3_f32 v23, v23, s60, 0x40e00000
	v_med3_f32 v15, v15, s60, 0x40e00000
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v101, v17
	v_and_b32_e32 v17, 15, v51
	v_and_b32_e32 v51, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 16, v117
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v18, v69, v42, v18
	v_div_fixup_f32 v19, v83, v42, v19
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v46
	v_rndne_f32_e32 v46, v50
	v_rndne_f32_e32 v50, v54
	v_rndne_f32_e32 v54, v58
	v_rndne_f32_e32 v58, v62
	v_rndne_f32_e32 v62, v66
	v_rndne_f32_e32 v66, v71
	v_rndne_f32_e32 v71, v78
	v_rndne_f32_e32 v24, v24
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v77, v77, s60, 0x40e00000
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v88, v31
	v_cvt_i32_f32_e32 v95, v23
	v_cvt_i32_f32_e32 v99, v15
	v_and_b32_e32 v15, 15, v39
	v_and_b32_e32 v23, 15, v52
	v_and_b32_e32 v31, 15, v48
	v_and_b32_e32 v39, 15, v44
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v44, 13, v117
	v_lshlrev_b32_e32 v48, 8, v0
	v_and_b32_e32 v52, 64, v117
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v75, v80
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v18, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v49, v49, s60, 0x40e00000
	v_med3_f32 v50, v50, s60, 0x40e00000
	v_med3_f32 v57, v57, s60, 0x40e00000
	v_med3_f32 v71, v71, s60, 0x40e00000
	v_med3_f32 v67, v67, s60, 0x40e00000
	v_med3_f32 v24, v24, s60, 0x40e00000
	v_cvt_i32_f32_e32 v80, v77
	v_and_b32_e32 v77, 15, v70
	v_and_b32_e32 v70, 15, v60
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v60, 0xe000, v44, v48
	v_xor_b32_e32 v13, v13, v52
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v74
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v25, v25
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v45, v45, s60, 0x40e00000
	v_med3_f32 v54, v54, s60, 0x40e00000
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_med3_f32 v66, v66, s60, 0x40e00000
	v_med3_f32 v68, v68, s60, 0x40e00000
	v_med3_f32 v59, v59, s60, 0x40e00000
	v_med3_f32 v43, v43, s60, 0x40e00000
	v_med3_f32 v36, v36, s60, 0x40e00000
	v_med3_f32 v35, v35, s60, 0x40e00000
	v_med3_f32 v27, v27, s60, 0x40e00000
	v_med3_f32 v16, v16, s60, 0x40e00000
	v_med3_f32 v37, v37, s60, 0x40e00000
	v_med3_f32 v33, v33, s60, 0x40e00000
	v_med3_f32 v18, v18, s60, 0x40e00000
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v96, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v9, v60, v9, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v69, v69, s60, 0x40e00000
	v_med3_f32 v34, v34, s60, 0x40e00000
	v_med3_f32 v25, v25, s60, 0x40e00000
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v85, v35
	v_cvt_i32_f32_e32 v92, v27
	v_cvt_i32_f32_e32 v100, v16
	v_cvt_i32_f32_e32 v84, v37
	v_cvt_i32_f32_e32 v87, v33
	v_cvt_i32_f32_e32 v102, v18
	v_and_b32_e32 v33, 15, v49
	v_and_b32_e32 v37, 15, v50
	v_and_b32_e32 v49, 15, v57
	v_and_b32_e32 v16, 15, v71
	v_and_b32_e32 v50, 15, v67
	v_and_b32_e32 v18, 15, v88
	v_and_b32_e32 v52, 15, v96
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v13, 0, v9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v79
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v79, v69
	v_cvt_i32_f32_e32 v86, v34
	v_cvt_i32_f32_e32 v97, v25
	v_and_b32_e32 v25, 15, v45
	v_and_b32_e32 v45, 15, v54
	v_and_b32_e32 v65, 15, v65
	v_and_b32_e32 v69, 15, v66
	v_and_b32_e32 v34, 15, v80
	v_and_b32_e32 v54, 15, v68
	v_and_b32_e32 v66, 15, v59
	v_and_b32_e32 v35, 15, v43
	v_and_b32_e32 v59, 15, v36
	v_and_b32_e32 v67, 15, v85
	v_and_b32_e32 v36, 15, v92
	v_and_b32_e32 v68, 15, v100
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v78, v81
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v21, v21
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v13, v[15:18]
	ds_store_b128 v13, v[33:36] offset:256
	ds_store_b128 v13, v[49:52] offset:2048
	ds_store_b128 v13, v[65:68] offset:2304
	v_lshlrev_b32_e32 v13, 6, v117
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v41, v41
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s60, 0x40e00000
	v_med3_f32 v53, v53, s60, 0x40e00000
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_med3_f32 v61, v61, s60, 0x40e00000
	v_med3_f32 v62, v62, s60, 0x40e00000
	v_med3_f32 v74, v74, s60, 0x40e00000
	v_med3_f32 v75, v75, s60, 0x40e00000
	v_med3_f32 v78, v78, s60, 0x40e00000
	v_med3_f32 v63, v63, s60, 0x40e00000
	v_med3_f32 v64, v64, s60, 0x40e00000
	v_med3_f32 v56, v56, s60, 0x40e00000
	v_med3_f32 v55, v55, s60, 0x40e00000
	v_med3_f32 v47, v47, s60, 0x40e00000
	v_med3_f32 v38, v38, s60, 0x40e00000
	v_med3_f32 v29, v29, s60, 0x40e00000
	v_med3_f32 v30, v30, s60, 0x40e00000
	v_med3_f32 v21, v21, s60, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v17, 2, v0
	v_and_or_b32 v11, 0x300, v13, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v76, v76, s60, 0x40e00000
	v_med3_f32 v72, v72, s60, 0x40e00000
	v_med3_f32 v40, v40, s60, 0x40e00000
	v_med3_f32 v26, v26, s60, 0x40e00000
	v_med3_f32 v22, v22, s60, 0x40e00000
	v_med3_f32 v19, v19, s60, 0x40e00000
	v_med3_f32 v46, v46, s60, 0x40e00000
	v_med3_f32 v28, v28, s60, 0x40e00000
	v_med3_f32 v73, v73, s60, 0x40e00000
	v_med3_f32 v41, v41, s60, 0x40e00000
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v78, v78
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v83, v38
	v_cvt_i32_f32_e32 v89, v29
	v_cvt_i32_f32_e32 v90, v30
	v_cvt_i32_f32_e32 v98, v21
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v8, v8, v11, v17
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v93, v26
	v_cvt_i32_f32_e32 v94, v22
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v91, v28
	v_cvt_i32_f32_e32 v81, v73
	v_cvt_i32_f32_e32 v82, v41
	v_and_b32_e32 v21, 15, v42
	v_and_b32_e32 v41, 15, v53
	v_and_b32_e32 v53, 15, v58
	v_and_b32_e32 v57, 15, v61
	v_and_b32_e32 v61, 15, v62
	v_and_b32_e32 v22, 15, v74
	v_and_b32_e32 v26, 15, v75
	v_and_b32_e32 v30, 15, v78
	v_and_b32_e32 v58, 15, v63
	v_and_b32_e32 v62, 15, v64
	v_and_b32_e32 v74, 15, v56
	v_and_b32_e32 v78, 15, v55
	v_and_b32_e32 v27, 15, v47
	v_and_b32_e32 v55, 15, v83
	v_and_b32_e32 v63, 15, v84
	v_and_b32_e32 v24, 15, v89
	v_and_b32_e32 v28, 15, v90
	v_and_b32_e32 v56, 15, v97
	v_and_b32_e32 v60, 15, v98
	v_and_b32_e32 v64, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v15, v9, 16, 0
	v_xad_u32 v16, v9, 32, 0
	v_xad_u32 v9, v9, 48, 0
	v_add_nc_u32_e32 v11, 0, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v73, 15, v79
	v_and_b32_e32 v38, 15, v76
	v_and_b32_e32 v42, 15, v72
	v_and_b32_e32 v43, 15, v40
	v_and_b32_e32 v71, 15, v86
	v_and_b32_e32 v75, 15, v32
	v_and_b32_e32 v79, 15, v87
	v_and_b32_e32 v40, 15, v93
	v_and_b32_e32 v44, 15, v94
	v_and_b32_e32 v72, 15, v101
	v_and_b32_e32 v76, 15, v102
	v_and_b32_e32 v80, 15, v19
	v_and_b32_e32 v29, 15, v46
	v_and_b32_e32 v32, 15, v91
	v_and_b32_e32 v46, 15, v81
	v_and_b32_e32 v47, 15, v82
	v_and_b32_e32 v48, 15, v95
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v15, v[21:24]
	ds_store_b128 v15, v[37:40] offset:256
	ds_store_b128 v15, v[53:56] offset:2048
	ds_store_b128 v15, v[69:72] offset:2304
	ds_store_b128 v16, v[25:28]
	ds_store_b128 v16, v[41:44] offset:256
	ds_store_b128 v16, v[57:60] offset:2048
	ds_store_b128 v16, v[73:76] offset:2304
	ds_store_b128 v9, v[29:32]
	ds_store_b128 v9, v[45:48] offset:256
	ds_store_b128 v9, v[61:64] offset:2048
	ds_store_b128 v9, v[77:80] offset:2304
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v11
	ds_load_b128 v[21:24], v11 offset:128
	ds_load_b128 v[25:28], v11 offset:4096
	ds_load_b128 v[29:32], v11 offset:4224
	v_xad_u32 v11, 0x8040, v8, 0
	v_xad_u32 v9, 0x4020, v8, 0
	v_xad_u32 v8, 0xc060, v8, 0
	ds_load_b128 v[49:52], v11
	ds_load_b128 v[53:56], v11 offset:128
	ds_load_b128 v[57:60], v11 offset:4096
	ds_load_b128 v[61:64], v11 offset:4224
	ds_load_b128 v[65:68], v8 offset:4096
	ds_load_b128 v[69:72], v8
	ds_load_b128 v[73:76], v8 offset:128
	ds_load_b128 v[77:80], v8 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v8, s60, s74, v20
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[33:36], v9
	ds_load_b128 v[37:40], v9 offset:128
	ds_load_b128 v[41:44], v9 offset:4096
	ds_load_b128 v[45:48], v9 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, s75, 0, s60
	v_add_co_u32 v17, s60, s74, v7
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s75, 0, s60
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[76:77], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s60, s[78:79], v[3:4]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v4, v7, v6
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_and_b32_e32 v3, 0x7f, v117
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(13)
	v_lshl_or_b32 v11, v25, 4, v13
	s_waitcnt lgkmcnt(9)
	v_lshl_or_b32 v50, v58, 4, v50
	v_lshl_or_b32 v51, v59, 4, v51
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 6, v4
	v_lshl_or_b32 v3, s80, 7, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(6)
	v_lshl_or_b32 v58, v66, 4, v70
	v_lshl_or_b32 v70, v27, 4, v15
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 8, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v59, v67, 4, v71
	v_lshl_or_b32 v71, v28, 4, v16
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 10, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s63, s[76:77], v[17:18]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s64, s[78:79], v[17:18]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 12, v4
	v_add_nc_u32_e32 v18, 14, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v49, v57, 4, v49
	v_lshl_or_b32 v57, v65, 4, v69
	v_lshl_or_b32 v69, v26, 4, v14
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v19, 16, v4
	v_mad_u64_u32 v[13:14], null, v13, s73, v[3:4]
	v_add_nc_u32_e32 v20, 18, v4
	v_mad_u64_u32 v[14:15], null, v15, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v65, v29, 4, v21
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v21, 20, v4
	v_mad_u64_u32 v[15:16], null, v16, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v66, v30, 4, v22
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v22, 22, v4
	v_mad_u64_u32 v[16:17], null, v17, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v67, v31, 4, v23
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v23, 24, v4
	v_mad_u64_u32 v[17:18], null, v18, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v52, v60, 4, v52
	v_lshl_or_b32 v60, v68, 4, v72
	v_lshl_or_b32 v68, v32, 4, v24
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v24, 26, v4
	v_mad_u64_u32 v[18:19], null, v19, s73, v[3:4]
	v_add_nc_u32_e32 v25, 28, v4
	v_mad_u64_u32 v[19:20], null, v20, s73, v[3:4]
	v_add_nc_u32_e32 v26, 30, v4
	v_mad_u64_u32 v[20:21], null, v21, s73, v[3:4]
	v_add_nc_u32_e32 v27, 32, v4
	v_mad_u64_u32 v[21:22], null, v22, s73, v[3:4]
	v_add_nc_u32_e32 v28, 34, v4
	v_mad_u64_u32 v[22:23], null, v23, s73, v[3:4]
	v_add_nc_u32_e32 v29, 36, v4
	v_mad_u64_u32 v[23:24], null, v24, s73, v[3:4]
	v_add_nc_u32_e32 v30, 38, v4
	v_mad_u64_u32 v[24:25], null, v25, s73, v[3:4]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s61, s[76:77], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s62, s[78:79], v[8:9]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 2, v4
	v_add_nc_u32_e32 v31, 40, v4
	v_mad_u64_u32 v[25:26], null, v26, s73, v[3:4]
	v_add_nc_u32_e32 v9, 4, v4
	v_add_nc_u32_e32 v32, 42, v4
	v_mad_u64_u32 v[6:7], null, v4, s73, v[3:4]
	v_mad_u64_u32 v[26:27], null, v27, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(1)
	v_lshl_or_b32 v81, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v33, 44, v4
	v_mad_u64_u32 v[27:28], null, v28, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v42, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v34, 46, v4
	v_mad_u64_u32 v[28:29], null, v29, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v43, v43, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v35, 48, v4
	v_mad_u64_u32 v[29:30], null, v30, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v44, v44, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v36, 50, v4
	v_mad_u64_u32 v[7:8], null, v8, s73, v[3:4]
	v_mad_u64_u32 v[30:31], null, v31, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v45, v45, 4, v37
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v37, 52, v4
	v_mad_u64_u32 v[8:9], null, v9, s73, v[3:4]
	v_mad_u64_u32 v[31:32], null, v32, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v46, v46, 4, v38
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v38, 54, v4
	v_mad_u64_u32 v[32:33], null, v33, s73, v[3:4]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s63, s63, s64
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v47, v47, 4, v39
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v39, 56, v4
	v_mad_u64_u32 v[33:34], null, v34, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v48, v48, 4, v40
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v40, 58, v4
	v_mad_u64_u32 v[34:35], null, v35, s73, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v41, 60, v4
	v_add_nc_u32_e32 v72, 62, v4
	v_mad_u64_u32 v[35:36], null, v36, s73, v[3:4]
	v_mad_u64_u32 v[36:37], null, v37, s73, v[3:4]
	v_mad_u64_u32 v[37:38], null, v38, s73, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s64, s68
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s60
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[38:39], null, v39, s73, v[3:4]
	v_mad_u64_u32 v[39:40], null, v40, s73, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v11, v6, s[64:67], 0 offen
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s61, s61, s62
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s58, s59
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[40:41], null, v41, s73, v[3:4]
	v_mad_u64_u32 v[3:4], null, v72, s73, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v4, 0x80000000, v7, s61
	v_cndmask_b32_e32 v7, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s56, s57
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v53, v61, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s54, s55
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v61, v77, 4, v73
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s52, s53
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v81, v4, s[64:67], 0 offen
	buffer_store_b8 v49, v6, s[64:67], 0 offen
	buffer_store_b8 v57, v7, s[64:67], 0 offen
	buffer_store_b8 v65, v8, s[64:67], 0 offen
	buffer_store_b8 v45, v9, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s50, s51
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v54, v62, 4, v54
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s48, s49
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v62, v78, 4, v74
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v55, v63, 4, v55
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v63, v79, 4, v75
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s42, s43
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v53, v4, s[64:67], 0 offen
	buffer_store_b8 v61, v6, s[64:67], 0 offen
	buffer_store_b8 v69, v7, s[64:67], 0 offen
	buffer_store_b8 v42, v8, s[64:67], 0 offen
	buffer_store_b8 v50, v9, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s40, s41
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v56, v64, 4, v56
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s38, s39
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v0, 2, v0
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s36, s37
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v64, v80, 4, v76
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v24, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s34, s35
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v9, 0x80000000, v25 :: v_dual_add_nc_u32 v0, 0, v0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s31, s33
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v58, v4, s[64:67], 0 offen
	buffer_store_b8 v66, v6, s[64:67], 0 offen
	buffer_store_b8 v46, v7, s[64:67], 0 offen
	buffer_store_b8 v54, v8, s[64:67], 0 offen
	buffer_store_b8 v62, v9, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v26, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s29, s30
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v27, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s27, s28
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s25, s26
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s23, s24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s21, s22
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v70, v4, s[64:67], 0 offen
	buffer_store_b8 v43, v6, s[64:67], 0 offen
	buffer_store_b8 v51, v7, s[64:67], 0 offen
	buffer_store_b8 v59, v8, s[64:67], 0 offen
	buffer_store_b8 v67, v9, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s19, s20
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s17, s18
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s15, s16
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s13, s14
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s11, s12
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v47, v4, s[64:67], 0 offen
	buffer_store_b8 v55, v6, s[64:67], 0 offen
	buffer_store_b8 v63, v7, s[64:67], 0 offen
	buffer_store_b8 v71, v8, s[64:67], 0 offen
	buffer_store_b8 v44, v9, s[64:67], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s9, s10
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v39, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s3, s72, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v40, vcc_lo
	s_clause 0x4
	buffer_store_b8 v52, v4, s[64:67], 0 offen
	buffer_store_b8 v60, v6, s[64:67], 0 offen
	buffer_store_b8 v68, v7, s[64:67], 0 offen
	buffer_store_b8 v48, v8, s[64:67], 0 offen
	buffer_store_b8 v56, v9, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v117
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v4, 3, v106
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s3, 24
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s72, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v64, v3, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v3, 0, v4
	v_add3_u32 v0, v0, v6, v4
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v3, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v0
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v117
	s_and_b32 s65, s71, 0xffff
	s_mov_b32 s64, s70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s80, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[64:67], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp76:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 84
		.amdhsa_kernarg_size 120
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 81
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 81
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 84
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19476
; TotalNumSgprs: 83
; NumVgprs: 256
; ScratchSize: 84
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 83
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 84
    .sgpr_count:     83
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 20
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
