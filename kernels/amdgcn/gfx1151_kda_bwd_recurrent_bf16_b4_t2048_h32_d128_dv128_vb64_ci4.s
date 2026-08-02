	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_kda_bwd_recurrent_bf16_b4_t2048_h32_d128_dv128_vb64_ci4                          ; -- Begin function amd_strix_halo_gfx1151_kda_bwd_recurrent_bf16_b4_t2048_h32_d128_dv128_vb64_ci4
	.p2align	8
	.type	amd_strix_halo_gfx1151_kda_bwd_recurrent_bf16_b4_t2048_h32_d128_dv128_vb64_ci4,@function
amd_strix_halo_gfx1151_kda_bwd_recurrent_bf16_b4_t2048_h32_d128_dv128_vb64_ci4:                                 ; @amd_strix_halo_gfx1151_kda_bwd_recurrent_bf16_b4_t2048_h32_d128_dv128_vb64_ci4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "kda_gluon_backward.py"
	.loc	1 45 0                          ; kda_gluon_backward.py:45:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[42:43], s[0:1], 0x80
.Ltmp0:
	.loc	1 83 23 prologue_end            ; kda_gluon_backward.py:83:23
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s4, s43
	.loc	1 137 9                         ; kda_gluon_backward.py:137:9
	s_cmp_lt_i32 s42, 1
	.loc	1 83 23                         ; kda_gluon_backward.py:83:23
	s_cvt_f32_u32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	.loc	1 137 9                         ; kda_gluon_backward.py:137:9
	s_cbranch_scc1 .LBB0_24
; %bb.1:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; kda_gluon_backward.py:0:9
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_clause 0x1
	s_load_b64 s[40:41], s[0:1], 0x94
	s_load_b64 s[80:81], s[0:1], 0x88
	.loc	1 83 23 is_stmt 1               ; kda_gluon_backward.py:83:23
	s_sub_i32 s6, 0, s4
	s_abs_i32 s7, s2
	s_cvt_u32_f32 s5, s5
	.loc	1 96 27                         ; kda_gluon_backward.py:96:27
	v_lshrrev_b32_e32 v8, 3, v0
	s_ashr_i32 s8, s43, 31
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v10, 7, v0
	.loc	1 83 23                         ; kda_gluon_backward.py:83:23
	s_mul_i32 s6, s6, s5
	s_clause 0x1
	s_load_b64 s[82:83], s[0:1], 0x70
	s_load_b128 s[60:63], s[0:1], 0x60
	s_mul_hi_u32 s6, s5, s6
	s_load_b256 s[44:51], s[0:1], 0x40
	s_add_i32 s5, s5, s6
	s_ashr_i32 s6, s2, 31
	s_mul_hi_u32 s5, s7, s5
	s_xor_b32 s6, s6, s8
	s_mul_i32 s9, s5, s4
	s_add_i32 s8, s5, 1
	s_sub_i32 s7, s7, s9
	s_load_b256 s[52:59], s[0:1], 0x0
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	.loc	1 110 13                        ; kda_gluon_backward.py:110:13
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s81, v8
	.loc	1 83 23                         ; kda_gluon_backward.py:83:23
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_clause 0x1
	s_load_b64 s[84:85], s[0:1], 0x20
	s_load_b64 s[64:65], s[0:1], 0x30
	s_cselect_b32 s0, s8, s5
	.loc	1 89 21                         ; kda_gluon_backward.py:89:21
	s_lshl_b32 s3, s3, 6
	.loc	1 110 13                        ; kda_gluon_backward.py:110:13
	v_mad_u64_u32 v[2:3], null, s81, 48, v[1:2]
	.loc	1 97 27                         ; kda_gluon_backward.py:97:27
	v_lshl_or_b32 v14, v10, 2, s3
	.loc	1 110 13                        ; kda_gluon_backward.py:110:13
	v_lshl_add_u32 v20, s81, 4, v1
	v_lshl_add_u32 v21, s81, 5, v1
	v_lshl_add_u32 v22, s81, 6, v1
	.loc	1 83 23                         ; kda_gluon_backward.py:83:23
	s_xor_b32 s0, s0, s6
	.loc	1 97 27                         ; kda_gluon_backward.py:97:27
	v_or_b32_e32 v19, 32, v14
	.loc	1 110 13                        ; kda_gluon_backward.py:110:13
	v_mad_u64_u32 v[3:4], null, 0x50, s81, v[1:2]
	v_mad_u64_u32 v[4:5], null, 0x60, s81, v[1:2]
	v_mad_u64_u32 v[5:6], null, 0x70, s81, v[1:2]
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v6, v1, v14
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v1, v1, v19
	v_mov_b32_e32 v104, 0
	scratch_store_b32 off, v6, off          ; 4-byte Folded Spill
	v_mov_b32_e32 v106, 0
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, v20, v14
	.loc	1 83 23                         ; kda_gluon_backward.py:83:23
	s_sub_i32 s93, s0, s6
	v_mov_b32_e32 v84, 0
	.loc	1 84 22                         ; kda_gluon_backward.py:84:22
	s_mul_i32 s0, s93, s43
	v_dual_mov_b32 v46, 0 :: v_dual_and_b32 v7, 63, v0
	.loc	1 110 13                        ; kda_gluon_backward.py:110:13
	scratch_store_b32 off, v1, off offset:8 ; 4-byte Folded Spill
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v1, v20, v19
	.loc	1 84 22                         ; kda_gluon_backward.py:84:22
	s_sub_i32 s89, s2, s0
	.loc	1 116 17                        ; kda_gluon_backward.py:116:17
	s_add_i32 s5, s2, 0xffffff81
	.loc	1 96 27                         ; kda_gluon_backward.py:96:27
	v_or_b32_e32 v17, 0x60, v8
	.loc	1 110 13                        ; kda_gluon_backward.py:110:13
	scratch_store_b32 off, v1, off offset:12 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, v21, v14
	.loc	1 114 17                        ; kda_gluon_backward.py:114:17
	s_cmpk_lt_i32 s2, 0x7f
	v_mov_b32_e32 v88, 0
	.loc	1 96 27                         ; kda_gluon_backward.py:96:27
	v_or_b32_e32 v18, 0x70, v8
	.loc	1 114 17                        ; kda_gluon_backward.py:114:17
	s_cselect_b32 s17, -1, 0
	.loc	1 110 13                        ; kda_gluon_backward.py:110:13
	scratch_store_b32 off, v1, off offset:16 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, v21, v19
	.loc	1 89 21                         ; kda_gluon_backward.py:89:21
	v_or_b32_e32 v25, s3, v7
	.loc	1 113 32                        ; kda_gluon_backward.py:113:32
	s_and_b32 s3, s17, exec_lo
	.loc	1 96 27                         ; kda_gluon_backward.py:96:27
	v_or_b32_e32 v13, 48, v8
	.loc	1 103 24                        ; kda_gluon_backward.py:103:24
	v_cmp_gt_i32_e64 s4, s81, v19
	.loc	1 110 13                        ; kda_gluon_backward.py:110:13
	scratch_store_b32 off, v1, off offset:20 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, v2, v14
	.loc	1 113 32                        ; kda_gluon_backward.py:113:32
	s_cselect_b32 s7, s2, s5
	.loc	1 103 24                        ; kda_gluon_backward.py:103:24
	v_cmp_gt_i32_e64 s5, s81, v14
	.loc	1 102 24                        ; kda_gluon_backward.py:102:24
	v_cmp_gt_i32_e64 s6, s80, v17
	v_mov_b32_e32 v90, 0
	.loc	1 110 13                        ; kda_gluon_backward.py:110:13
	scratch_store_b32 off, v1, off offset:24 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, v2, v19
	.loc	1 96 27                         ; kda_gluon_backward.py:96:27
	v_or_b32_e32 v15, 64, v8
	v_or_b32_e32 v16, 0x50, v8
	.loc	1 102 24                        ; kda_gluon_backward.py:102:24
	v_cmp_gt_i32_e64 s3, s80, v18
	.loc	1 104 22                        ; kda_gluon_backward.py:104:22
	s_and_b32 s31, s6, s4
	.loc	1 110 13                        ; kda_gluon_backward.py:110:13
	scratch_store_b32 off, v1, off offset:28 ; 4-byte Folded Spill
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v1, v22, v14
	.loc	1 104 22                        ; kda_gluon_backward.py:104:22
	s_and_b32 s30, s6, s5
	.loc	1 102 24                        ; kda_gluon_backward.py:102:24
	v_cmp_gt_i32_e64 s6, s80, v13
	.loc	1 96 27                         ; kda_gluon_backward.py:96:27
	v_or_b32_e32 v11, 16, v8
	.loc	1 110 13                        ; kda_gluon_backward.py:110:13
	scratch_store_b32 off, v1, off offset:32 ; 4-byte Folded Spill
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v1, v22, v19
	.loc	1 96 27                         ; kda_gluon_backward.py:96:27
	v_or_b32_e32 v12, 32, v8
	.loc	1 121 13                        ; kda_gluon_backward.py:121:13
	s_mul_i32 s90, s40, s7
	.loc	1 104 22                        ; kda_gluon_backward.py:104:22
	s_and_b32 s34, s3, s4
	.loc	1 102 24                        ; kda_gluon_backward.py:102:24
	v_cmp_gt_i32_e64 s7, s80, v16
	.loc	1 104 22                        ; kda_gluon_backward.py:104:22
	s_and_b32 s33, s3, s5
	.loc	1 102 24                        ; kda_gluon_backward.py:102:24
	v_cmp_gt_i32_e64 s3, s80, v15
	.loc	1 110 13                        ; kda_gluon_backward.py:110:13
	scratch_store_b32 off, v1, off offset:36 ; 4-byte Folded Spill
	.loc	1 104 22                        ; kda_gluon_backward.py:104:22
	s_and_b32 s25, s6, s4
	s_and_b32 s24, s6, s5
	.loc	1 102 24                        ; kda_gluon_backward.py:102:24
	v_cmp_gt_i32_e64 s6, s80, v8
	v_dual_mov_b32 v58, 0 :: v_dual_and_b32 v1, 15, v0
	v_dual_mov_b32 v87, 0 :: v_dual_lshlrev_b32 v2, 2, v0
	v_bfe_i32 v6, v0, 4, 1
	v_bfe_i32 v8, v0, 6, 1
	.loc	1 104 22                        ; kda_gluon_backward.py:104:22
	s_and_b32 s29, s7, s4
	s_and_b32 s28, s7, s5
	s_and_b32 s27, s3, s4
	s_and_b32 s26, s3, s5
	.loc	1 102 24                        ; kda_gluon_backward.py:102:24
	v_cmp_gt_i32_e64 s3, s80, v12
	v_cmp_gt_i32_e64 s7, s80, v11
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v39, v3, v14
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v40, v3, v19
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v41, v4, v14
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v42, v4, v19
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v43, v5, v14
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v44, v5, v19
	v_dual_mov_b32 v56, 0 :: v_dual_and_b32 v3, 16, v0
	v_dual_mov_b32 v91, 0 :: v_dual_lshlrev_b32 v4, 3, v1
	v_dual_mov_b32 v52, 0 :: v_dual_and_b32 v5, 0x180, v2
	v_dual_mov_b32 v54, 0 :: v_dual_lshlrev_b32 v45, 4, v10
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v2, 0x80, v2
	v_dual_mov_b32 v95, 0 :: v_dual_and_b32 v8, 0x140, v8
	v_dual_mov_b32 v68, 0 :: v_dual_lshlrev_b32 v1, 4, v1
	v_dual_mov_b32 v97, 0 :: v_dual_and_b32 v6, 0x140, v6
	.loc	1 104 22                        ; kda_gluon_backward.py:104:22
	s_and_b32 s23, s3, s4
	s_and_b32 s22, s3, s5
	s_and_b32 s21, s7, s4
	s_and_b32 s20, s7, s5
	s_and_b32 s19, s6, s4
	s_and_b32 s18, s6, s5
	s_and_b32 s3, s17, s19
	s_and_b32 s39, s17, s18
	s_and_b32 s4, s17, s20
	s_and_b32 s5, s17, s21
	s_and_b32 s6, s17, s22
	s_and_b32 s7, s17, s23
	s_and_b32 s8, s17, s24
	s_and_b32 s9, s17, s25
	s_and_b32 s10, s17, s26
	s_and_b32 s11, s17, s27
	s_and_b32 s12, s17, s28
	s_and_b32 s13, s17, s29
	s_and_b32 s14, s17, s30
	s_and_b32 s15, s17, s31
	s_and_b32 s16, s17, s33
	s_and_b32 s17, s17, s34
	s_and_b32 s45, s45, 0xffff
	v_dual_mov_b32 v93, 0 :: v_dual_and_b32 v10, 64, v0
	s_cmpk_gt_i32 s2, 0x7e
	v_dual_mov_b32 v100, 0 :: v_dual_and_b32 v9, 0x78, v0
	v_lshrrev_b32_e32 v3, 2, v3
	v_add3_u32 v4, 0, v4, v5
	v_xor_b32_e32 v5, v8, v45
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v2, 0, v2
	v_xor_b32_e32 v1, v6, v1
	v_dual_mov_b32 v57, 0 :: v_dual_lshlrev_b32 v6, 2, v7
	s_mul_i32 s92, s40, s2
	s_cselect_b32 s2, -1, 0
	.loc	1 95 18                         ; kda_gluon_backward.py:95:18
	v_cmp_gt_i32_e64 s1, s81, v25
	s_and_b32 s18, s2, s18
	s_and_b32 s19, s2, s19
	s_and_b32 s20, s2, s20
	s_and_b32 s21, s2, s21
	s_and_b32 s22, s2, s22
	s_and_b32 s23, s2, s23
	s_and_b32 s24, s2, s24
	s_and_b32 s25, s2, s25
	s_and_b32 s26, s2, s26
	s_and_b32 s27, s2, s27
	s_and_b32 s28, s2, s28
	s_and_b32 s29, s2, s29
	s_and_b32 s30, s2, s30
	s_and_b32 s31, s2, s31
	s_and_b32 s33, s2, s33
	s_and_b32 s34, s2, s34
	v_cmp_eq_u32_e64 s2, 0, v10
	.loc	1 94 18                         ; kda_gluon_backward.py:94:18
	v_cmp_le_i32_e64 s0, s80, v0
	v_cmp_eq_u32_e64 s36, 0, v0
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v47, v4, v3
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v48, 0, v9
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v49, v2, v5
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v50, 0, v1
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v51, 0, v6
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v114, 0
	v_mov_b32_e32 v77, 0
	v_mov_b32_e32 v75, 0
	v_mov_b32_e32 v109, 0
	v_mov_b32_e32 v111, 0
	v_mov_b32_e32 v113, 0
	v_mov_b32_e32 v115, 0
	s_mov_b64 s[86:87], s[62:63]
	s_mov_b32 s88, 0
	s_mul_i32 s91, s81, s80
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	s_and_b32 s73, s47, 0xffff
	s_mov_b32 s72, s46
	s_mul_i32 s93, s93, s42
	s_and_b32 s69, s55, 0xffff
	s_mov_b32 s68, s54
	s_and_b32 s57, s57, 0xffff
	s_and_b32 s77, s59, 0xffff
	s_mov_b32 s76, s58
	s_and_b32 s53, s53, 0xffff
	s_waitcnt lgkmcnt(0)
	s_and_b32 s65, s65, 0xffff
	s_and_b32 s61, s61, 0xffff
	s_and_b32 s35, s2, s1
	.loc	1 349 20                        ; kda_gluon_backward.py:349:20
	s_mov_b32 s94, s41
	s_mov_b32 s95, s41
	s_mov_b32 s96, s41
	s_mov_b32 s97, s41
	s_mov_b32 s98, s41
	s_mov_b32 s99, s41
	s_mov_b32 s100, s41
	s_mov_b32 s101, 0x76543210
	.loc	1 94 18                         ; kda_gluon_backward.py:94:18
	v_cmp_gt_i32_e32 vcc_lo, s80, v0
	s_branch .LBB0_3
.LBB0_2:                                ; %Flow111
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 18 is_stmt 0                ; kda_gluon_backward.py:0:18
	s_or_b32 exec_lo, exec_lo, s37
	.loc	1 366 26 is_stmt 1              ; kda_gluon_backward.py:366:26
	v_dual_mul_f32 v100, v9, v200 :: v_dual_mul_f32 v109, v10, v198
	v_dual_mul_f32 v102, v9, v201 :: v_dual_mul_f32 v113, v10, v199
	v_dual_mul_f32 v101, v9, v202 :: v_dual_mul_f32 v108, v10, v224
	v_dual_mul_f32 v104, v9, v203 :: v_dual_mul_f32 v111, v10, v225
	v_dual_mul_f32 v103, v9, v204 :: v_dual_mul_f32 v110, v10, v222
	v_dual_mul_f32 v106, v9, v205 :: v_dual_mul_f32 v85, v11, v210
	v_dual_mul_f32 v105, v9, v206 :: v_dual_mul_f32 v112, v10, v120
	v_dual_mul_f32 v107, v9, v207 :: v_dual_mul_f32 v84, v11, v208
	v_dual_mul_f32 v114, v10, v223 :: v_dual_mul_f32 v87, v11, v212
	v_dual_mul_f32 v115, v10, v197 :: v_dual_mul_f32 v88, v11, v211
	v_dual_mul_f32 v86, v11, v209 :: v_dual_mul_f32 v95, v12, v219
	v_dual_mul_f32 v91, v11, v213 :: v_dual_mul_f32 v90, v12, v215
	v_dual_mul_f32 v89, v11, v214 :: v_dual_mul_f32 v94, v12, v216
	v_dual_mul_f32 v93, v11, v15 :: v_dual_mul_f32 v92, v12, v217
	v_dual_mul_f32 v96, v12, v218 :: v_dual_mul_f32 v55, v1, v228
	v_dual_mul_f32 v98, v12, v220 :: v_dual_mul_f32 v57, v1, v226
	v_dual_mul_f32 v97, v12, v221 :: v_dual_mul_f32 v60, v1, v227
	v_dual_mul_f32 v99, v12, v16 :: v_dual_mul_f32 v58, v1, v229
	v_dual_mul_f32 v53, v1, v230 :: v_dual_mul_f32 v68, v2, v235
	v_dual_mul_f32 v56, v1, v231 :: v_dual_mul_f32 v65, v2, v234
	v_dual_mul_f32 v52, v1, v232 :: v_dual_mul_f32 v61, v2, v238
	v_dual_mul_f32 v54, v1, v233 :: v_dual_mul_f32 v63, v2, v236
	v_dual_mul_f32 v66, v2, v237 :: v_dual_mul_f32 v73, v3, v242
	v_dual_mul_f32 v64, v2, v239 :: v_dual_mul_f32 v71, v3, v244
	v_dual_mul_f32 v59, v2, v240 :: v_dual_mul_f32 v76, v3, v243
	v_dual_mul_f32 v62, v2, v241 :: v_dual_mul_f32 v69, v3, v246
	v_dual_mul_f32 v74, v3, v245 :: v_dual_mul_f32 v81, v4, v250
	v_dual_mul_f32 v72, v3, v247 :: v_dual_mul_f32 v79, v4, v252
	v_dual_mul_f32 v67, v3, v248 :: v_dual_mul_f32 v82, v4, v253
	v_dual_mul_f32 v70, v3, v249 :: v_dual_mul_f32 v83, v4, v251
	v_mul_f32_e32 v77, v4, v254
	v_mul_f32_e32 v80, v4, v255
	v_mul_f32_e32 v75, v4, v29
	v_mul_f32_e32 v78, v4, v30
	.loc	1 137 9                         ; kda_gluon_backward.py:137:9
	s_add_i32 s88, s88, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s88, s42
	s_cbranch_scc0 .LBB0_24
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
                                        ;     Child Loop BB0_12 Depth 2
                                        ;     Child Loop BB0_14 Depth 2
                                        ;     Child Loop BB0_16 Depth 2
                                        ;     Child Loop BB0_19 Depth 2
                                        ;     Child Loop BB0_22 Depth 2
	.loc	1 0 9 is_stmt 0                 ; kda_gluon_backward.py:0:9
	s_clause 0x9                            ; 40-byte Folded Reload
	scratch_load_b32 v169, off, off offset:32
	scratch_load_b32 v174, off, off offset:36
	scratch_load_b32 v138, off, off
	scratch_load_b32 v141, off, off offset:4
	scratch_load_b32 v145, off, off offset:8
	scratch_load_b32 v150, off, off offset:12
	scratch_load_b32 v153, off, off offset:16
	scratch_load_b32 v157, off, off offset:20
	scratch_load_b32 v162, off, off offset:24
	scratch_load_b32 v165, off, off offset:28
	.loc	1 138 21 is_stmt 1              ; kda_gluon_backward.py:138:21
	s_not_b32 s2, s88
	.loc	1 157 29                        ; kda_gluon_backward.py:157:29
	s_mov_b32 s46, s70
	.loc	1 138 21                        ; kda_gluon_backward.py:138:21
	s_add_i32 s54, s42, s2
	.loc	1 157 29                        ; kda_gluon_backward.py:157:29
	s_mov_b32 s47, s71
	.loc	1 139 27                        ; kda_gluon_backward.py:139:27
	s_ashr_i32 s2, s54, 31
	.loc	1 163 30                        ; kda_gluon_backward.py:163:30
	s_mov_b32 s74, s70
	.loc	1 139 27                        ; kda_gluon_backward.py:139:27
	s_lshr_b32 s2, s2, 30
	.loc	1 163 30                        ; kda_gluon_backward.py:163:30
	s_mov_b32 s75, s71
	.loc	1 139 27                        ; kda_gluon_backward.py:139:27
	s_add_i32 s2, s54, s2
	s_mov_b32 s62, 0
	s_ashr_i32 s37, s2, 2
	.loc	1 177 27                        ; kda_gluon_backward.py:177:27
	s_and_b32 s55, s2, -4
	.loc	1 153 21                        ; kda_gluon_backward.py:153:21
	s_add_i32 s38, s37, s92
	.loc	1 141 17                        ; kda_gluon_backward.py:141:17
	s_add_i32 s37, s37, s90
	.loc	1 153 21                        ; kda_gluon_backward.py:153:21
	s_mul_i32 s38, s91, s38
	.loc	1 141 17                        ; kda_gluon_backward.py:141:17
	s_mul_i32 s37, s91, s37
	.loc	1 157 29                        ; kda_gluon_backward.py:157:29
	v_add_lshl_u32 v38, s38, v39, 2
	v_add_lshl_u32 v120, s38, v40, 2
	v_add_lshl_u32 v132, s38, v43, 2
	.loc	1 163 30                        ; kda_gluon_backward.py:163:30
	v_add_lshl_u32 v180, s37, v39, 2
	v_add_lshl_u32 v192, s37, v42, 2
	.loc	1 157 29                        ; kda_gluon_backward.py:157:29
	v_cndmask_b32_e64 v38, 0x80000000, v38, s12
	v_cndmask_b32_e64 v125, 0x80000000, v120, s13
	v_cndmask_b32_e64 v137, 0x80000000, v132, s16
	.loc	1 163 30                        ; kda_gluon_backward.py:163:30
	v_cndmask_b32_e64 v185, 0x80000000, v180, s28
	.loc	1 157 29                        ; kda_gluon_backward.py:157:29
	v_add_lshl_u32 v124, s38, v41, 2
	v_add_lshl_u32 v136, s38, v44, 2
	.loc	1 163 30                        ; kda_gluon_backward.py:163:30
	v_add_lshl_u32 v184, s37, v40, 2
	v_add_lshl_u32 v196, s37, v43, 2
	v_cndmask_b32_e64 v197, 0x80000000, v192, s31
	.loc	1 157 29                        ; kda_gluon_backward.py:157:29
	v_cndmask_b32_e64 v128, 0x80000000, v124, s14
	v_cndmask_b32_e64 v140, 0x80000000, v136, s17
	.loc	1 163 30                        ; kda_gluon_backward.py:163:30
	v_cndmask_b32_e64 v188, 0x80000000, v184, s29
	v_cndmask_b32_e64 v200, 0x80000000, v196, s33
	.loc	1 157 29                        ; kda_gluon_backward.py:157:29
	s_clause 0x1
	buffer_load_b128 v[124:127], v125, s[44:47], 0 offen
	buffer_load_b128 v[128:131], v128, s[44:47], 0 offen
	.loc	1 163 30                        ; kda_gluon_backward.py:163:30
	s_clause 0x1
	buffer_load_b128 v[196:199], v197, s[72:75], 0 offen
	buffer_load_b128 v[188:191], v188, s[72:75], 0 offen
	.loc	1 157 29                        ; kda_gluon_backward.py:157:29
	buffer_load_b128 v[120:123], v38, s[44:47], 0 offen
	v_add_lshl_u32 v38, s38, v42, 2
	.loc	1 163 30                        ; kda_gluon_backward.py:163:30
	buffer_load_b128 v[184:187], v185, s[72:75], 0 offen
	.loc	1 157 29                        ; kda_gluon_backward.py:157:29
	v_cndmask_b32_e64 v38, 0x80000000, v38, s15
	buffer_load_b128 v[132:135], v38, s[44:47], 0 offen
	s_waitcnt vmcnt(16)
	v_add_lshl_u32 v30, s38, v169, 2
	s_waitcnt vmcnt(15)
	v_add_lshl_u32 v34, s38, v174, 2
	.loc	1 163 30                        ; kda_gluon_backward.py:163:30
	s_waitcnt vmcnt(14)
	v_add_lshl_u32 v38, s37, v138, 2
	s_waitcnt vmcnt(13)
	v_add_lshl_u32 v144, s37, v141, 2
	s_waitcnt vmcnt(12)
	v_add_lshl_u32 v148, s37, v145, 2
	.loc	1 157 29                        ; kda_gluon_backward.py:157:29
	v_cndmask_b32_e64 v35, 0x80000000, v30, s10
	v_cndmask_b32_e64 v116, 0x80000000, v34, s11
	v_add_lshl_u32 v5, s38, v145, 2
	s_waitcnt vmcnt(10)
	v_add_lshl_u32 v13, s38, v153, 2
	.loc	1 163 30                        ; kda_gluon_backward.py:163:30
	v_cndmask_b32_e64 v152, 0x80000000, v148, s20
	.loc	1 157 29                        ; kda_gluon_backward.py:157:29
	s_clause 0x1
	buffer_load_b128 v[34:37], v35, s[44:47], 0 offen
	buffer_load_b128 v[116:119], v116, s[44:47], 0 offen
	.loc	1 163 30                        ; kda_gluon_backward.py:163:30
	v_cndmask_b32_e64 v149, 0x80000000, v144, s19
	v_add_lshl_u32 v156, s37, v153, 2
	.loc	1 157 29                        ; kda_gluon_backward.py:157:29
	v_add_lshl_u32 v9, s38, v150, 2
	s_waitcnt vmcnt(11)
	v_add_lshl_u32 v17, s38, v157, 2
	.loc	1 163 30                        ; kda_gluon_backward.py:163:30
	v_add_lshl_u32 v160, s37, v157, 2
	s_waitcnt vmcnt(9)
	v_add_lshl_u32 v168, s37, v165, 2
	v_cndmask_b32_e64 v161, 0x80000000, v156, s22
	.loc	1 157 29                        ; kda_gluon_backward.py:157:29
	v_add_lshl_u32 v21, s38, v162, 2
	.loc	1 163 30                        ; kda_gluon_backward.py:163:30
	v_add_lshl_u32 v172, s37, v169, 2
	v_cndmask_b32_e64 v164, 0x80000000, v160, s23
	v_cndmask_b32_e64 v173, 0x80000000, v168, s25
	.loc	1 157 29                        ; kda_gluon_backward.py:157:29
	v_add_lshl_u32 v26, s38, v165, 2
	v_add_lshl_u32 v1, s38, v138, 2
	.loc	1 163 30                        ; kda_gluon_backward.py:163:30
	v_cndmask_b32_e64 v38, 0x80000000, v38, s18
	buffer_load_b128 v[164:167], v164, s[72:75], 0 offen
	.loc	1 157 29                        ; kda_gluon_backward.py:157:29
	v_add_lshl_u32 v2, s38, v141, 2
	.loc	1 163 30                        ; kda_gluon_backward.py:163:30
	v_cndmask_b32_e64 v176, 0x80000000, v172, s26
	.loc	1 157 29                        ; kda_gluon_backward.py:157:29
	v_cndmask_b32_e64 v1, 0x80000000, v1, s39
	.loc	1 163 30                        ; kda_gluon_backward.py:163:30
	s_clause 0x1
	buffer_load_b128 v[144:147], v38, s[72:75], 0 offen
	buffer_load_b128 v[152:155], v152, s[72:75], 0 offen
	v_add_lshl_u32 v38, s37, v150, 2
	buffer_load_b128 v[148:151], v149, s[72:75], 0 offen
	.loc	1 157 29                        ; kda_gluon_backward.py:157:29
	v_cndmask_b32_e64 v6, 0x80000000, v2, s3
	v_cndmask_b32_e64 v10, 0x80000000, v5, s4
	v_cndmask_b32_e64 v14, 0x80000000, v9, s5
	.loc	1 163 30                        ; kda_gluon_backward.py:163:30
	v_cndmask_b32_e64 v38, 0x80000000, v38, s21
	.loc	1 157 29                        ; kda_gluon_backward.py:157:29
	v_cndmask_b32_e64 v18, 0x80000000, v13, s6
	v_cndmask_b32_e64 v22, 0x80000000, v17, s7
	v_cndmask_b32_e64 v27, 0x80000000, v21, s8
	v_cndmask_b32_e64 v31, 0x80000000, v26, s9
	.loc	1 163 30                        ; kda_gluon_backward.py:163:30
	buffer_load_b128 v[156:159], v38, s[72:75], 0 offen
	v_add_lshl_u32 v38, s37, v162, 2
	buffer_load_b128 v[160:163], v161, s[72:75], 0 offen
	.loc	1 157 29                        ; kda_gluon_backward.py:157:29
	s_clause 0x3
	buffer_load_b128 v[1:4], v1, s[44:47], 0 offen
	buffer_load_b128 v[5:8], v6, s[44:47], 0 offen
	buffer_load_b128 v[9:12], v10, s[44:47], 0 offen
	buffer_load_b128 v[13:16], v14, s[44:47], 0 offen
	.loc	1 163 30                        ; kda_gluon_backward.py:163:30
	v_cndmask_b32_e64 v38, 0x80000000, v38, s24
	.loc	1 157 29                        ; kda_gluon_backward.py:157:29
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_load_b128 v[17:20], v18, s[44:47], 0 offen
	buffer_load_b128 v[21:24], v22, s[44:47], 0 offen
	buffer_load_b128 v[26:29], v27, s[44:47], 0 offen
	buffer_load_b128 v[30:33], v31, s[44:47], 0 offen
	.loc	1 163 30                        ; kda_gluon_backward.py:163:30
	buffer_load_b128 v[168:171], v38, s[72:75], 0 offen
	v_add_lshl_u32 v38, s37, v174, 2
	buffer_load_b128 v[172:175], v173, s[72:75], 0 offen
	.loc	1 157 29                        ; kda_gluon_backward.py:157:29
	s_clause 0x1
	buffer_load_b128 v[136:139], v137, s[44:47], 0 offen
	buffer_load_b128 v[140:143], v140, s[44:47], 0 offen
	.loc	1 163 30                        ; kda_gluon_backward.py:163:30
	buffer_load_b128 v[176:179], v176, s[72:75], 0 offen
	v_cndmask_b32_e64 v38, 0x80000000, v38, s27
	.loc	1 157 29                        ; kda_gluon_backward.py:157:29
	s_waitcnt vmcnt(27)
	v_cndmask_b32_e64 v208, 0, v127, s13
	v_cndmask_b32_e64 v209, 0, v126, s13
	v_cndmask_b32_e64 v210, 0, v125, s13
	v_cndmask_b32_e64 v124, 0, v124, s13
	.loc	1 163 30                        ; kda_gluon_backward.py:163:30
	buffer_load_b128 v[180:183], v38, s[72:75], 0 offen
	v_add_lshl_u32 v38, s37, v41, 2
	.loc	1 157 29                        ; kda_gluon_backward.py:157:29
	s_waitcnt vmcnt(27)
	v_cndmask_b32_e64 v211, 0, v131, s14
	v_cndmask_b32_e64 v212, 0, v130, s14
	v_cndmask_b32_e64 v213, 0, v129, s14
	v_cndmask_b32_e64 v214, 0, v128, s14
	.loc	1 163 30                        ; kda_gluon_backward.py:163:30
	v_cndmask_b32_e64 v38, 0x80000000, v38, s30
	s_waitcnt vmcnt(25)
	v_cndmask_b32_e64 v191, 0, v191, s29
	v_cndmask_b32_e64 v190, 0, v190, s29
	v_cndmask_b32_e64 v189, 0, v189, s29
	v_cndmask_b32_e64 v188, 0, v188, s29
	buffer_load_b128 v[192:195], v38, s[72:75], 0 offen
	v_add_lshl_u32 v38, s37, v44, 2
	v_cndmask_b32_e64 v199, 0, v199, s31
	v_cndmask_b32_e64 v198, 0, v198, s31
	v_cndmask_b32_e64 v197, 0, v197, s31
	v_cndmask_b32_e64 v196, 0, v196, s31
	v_cndmask_b32_e64 v38, 0x80000000, v38, s34
	s_clause 0x1
	buffer_load_b128 v[200:203], v200, s[72:75], 0 offen
	buffer_load_b128 v[204:207], v38, s[72:75], 0 offen
	.loc	1 157 29                        ; kda_gluon_backward.py:157:29
	s_waitcnt vmcnt(27)
	v_cndmask_b32_e64 v123, 0, v123, s12
	v_cndmask_b32_e64 v122, 0, v122, s12
	v_cndmask_b32_e64 v121, 0, v121, s12
	v_cndmask_b32_e64 v120, 0, v120, s12
	.loc	1 163 30                        ; kda_gluon_backward.py:163:30
	s_waitcnt vmcnt(26)
	v_cndmask_b32_e64 v187, 0, v187, s28
	v_cndmask_b32_e64 v186, 0, v186, s28
	v_cndmask_b32_e64 v185, 0, v185, s28
	v_cndmask_b32_e64 v184, 0, v184, s28
	.loc	1 157 29                        ; kda_gluon_backward.py:157:29
	s_waitcnt vmcnt(25)
	v_cndmask_b32_e64 v215, 0, v135, s15
	v_cndmask_b32_e64 v216, 0, v134, s15
	v_cndmask_b32_e64 v217, 0, v133, s15
	v_cndmask_b32_e64 v218, 0, v132, s15
	s_waitcnt vmcnt(24)
	v_cndmask_b32_e64 v37, 0, v37, s10
	v_cndmask_b32_e64 v36, 0, v36, s10
	v_cndmask_b32_e64 v35, 0, v35, s10
	v_cndmask_b32_e64 v34, 0, v34, s10
	s_waitcnt vmcnt(23)
	v_cndmask_b32_e64 v38, 0, v119, s11
	v_cndmask_b32_e64 v118, 0, v118, s11
	v_cndmask_b32_e64 v119, 0, v117, s11
	v_cndmask_b32_e64 v116, 0, v116, s11
	.loc	1 163 30                        ; kda_gluon_backward.py:163:30
	s_waitcnt vmcnt(21)
	v_cndmask_b32_e64 v117, 0, v147, s18
	v_cndmask_b32_e64 v125, 0, v146, s18
	v_cndmask_b32_e64 v126, 0, v145, s18
	v_cndmask_b32_e64 v127, 0, v144, s18
	s_waitcnt vmcnt(19)
	v_cndmask_b32_e64 v130, 0, v151, s19
	v_cndmask_b32_e64 v131, 0, v150, s19
	v_cndmask_b32_e64 v133, 0, v149, s19
	v_cndmask_b32_e64 v134, 0, v148, s19
	v_cndmask_b32_e64 v135, 0, v155, s20
	v_cndmask_b32_e64 v155, 0, v166, s23
	s_waitcnt vmcnt(18)
	v_cndmask_b32_e64 v144, 0, v157, s21
	v_cndmask_b32_e64 v145, 0, v156, s21
	s_waitcnt vmcnt(17)
	v_cndmask_b32_e64 v146, 0, v163, s22
	.loc	1 157 29                        ; kda_gluon_backward.py:157:29
	s_waitcnt vmcnt(16)
	v_cndmask_b32_e64 v4, 0, v4, s39
	v_cndmask_b32_e64 v3, 0, v3, s39
	v_cndmask_b32_e64 v2, 0, v2, s39
	v_cndmask_b32_e64 v1, 0, v1, s39
	s_waitcnt vmcnt(15)
	v_cndmask_b32_e64 v8, 0, v8, s3
	v_cndmask_b32_e64 v7, 0, v7, s3
	v_cndmask_b32_e64 v6, 0, v6, s3
	v_cndmask_b32_e64 v5, 0, v5, s3
	s_waitcnt vmcnt(14)
	v_cndmask_b32_e64 v12, 0, v12, s4
	v_cndmask_b32_e64 v11, 0, v11, s4
	v_cndmask_b32_e64 v10, 0, v10, s4
	v_cndmask_b32_e64 v9, 0, v9, s4
	s_waitcnt vmcnt(13)
	v_cndmask_b32_e64 v16, 0, v16, s5
	v_cndmask_b32_e64 v15, 0, v15, s5
	v_cndmask_b32_e64 v14, 0, v14, s5
	v_cndmask_b32_e64 v13, 0, v13, s5
	s_waitcnt vmcnt(12)
	v_cndmask_b32_e64 v20, 0, v20, s6
	v_cndmask_b32_e64 v19, 0, v19, s6
	v_cndmask_b32_e64 v18, 0, v18, s6
	v_cndmask_b32_e64 v17, 0, v17, s6
	s_waitcnt vmcnt(11)
	v_cndmask_b32_e64 v24, 0, v24, s7
	v_cndmask_b32_e64 v23, 0, v23, s7
	v_cndmask_b32_e64 v22, 0, v22, s7
	v_cndmask_b32_e64 v21, 0, v21, s7
	s_waitcnt vmcnt(10)
	v_cndmask_b32_e64 v29, 0, v29, s8
	v_cndmask_b32_e64 v28, 0, v28, s8
	v_cndmask_b32_e64 v27, 0, v27, s8
	v_cndmask_b32_e64 v26, 0, v26, s8
	s_waitcnt vmcnt(9)
	v_cndmask_b32_e64 v33, 0, v33, s9
	v_cndmask_b32_e64 v32, 0, v32, s9
	v_cndmask_b32_e64 v31, 0, v31, s9
	v_cndmask_b32_e64 v30, 0, v30, s9
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v219, 0, v139, s16
	v_cndmask_b32_e64 v220, 0, v138, s16
	v_cndmask_b32_e64 v137, 0, v137, s16
	v_cndmask_b32_e64 v221, 0, v136, s16
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v222, 0, v143, s17
	v_cndmask_b32_e64 v142, 0, v142, s17
	v_cndmask_b32_e64 v223, 0, v141, s17
	v_cndmask_b32_e64 v224, 0, v140, s17
	.loc	1 163 30                        ; kda_gluon_backward.py:163:30
	v_cndmask_b32_e64 v136, 0, v154, s20
	v_cndmask_b32_e64 v138, 0, v153, s20
	v_cndmask_b32_e64 v139, 0, v152, s20
	v_cndmask_b32_e64 v140, 0, v159, s21
	v_cndmask_b32_e64 v143, 0, v158, s21
	v_cndmask_b32_e64 v147, 0, v162, s22
	v_cndmask_b32_e64 v150, 0, v161, s22
	v_cndmask_b32_e64 v151, 0, v160, s22
	v_cndmask_b32_e64 v153, 0, v167, s23
	v_cndmask_b32_e64 v157, 0, v165, s23
	v_cndmask_b32_e64 v160, 0, v164, s23
	v_cndmask_b32_e64 v161, 0, v171, s24
	v_cndmask_b32_e64 v162, 0, v170, s24
	v_cndmask_b32_e64 v163, 0, v169, s24
	v_cndmask_b32_e64 v167, 0, v168, s24
	v_cndmask_b32_e64 v175, 0, v175, s25
	v_cndmask_b32_e64 v169, 0, v174, s25
	v_cndmask_b32_e64 v173, 0, v173, s25
	v_cndmask_b32_e64 v174, 0, v172, s25
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v179, 0, v179, s26
	v_cndmask_b32_e64 v178, 0, v178, s26
	v_cndmask_b32_e64 v225, 0, v177, s26
	v_cndmask_b32_e64 v176, 0, v176, s26
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v183, 0, v183, s27
	v_cndmask_b32_e64 v182, 0, v182, s27
	v_cndmask_b32_e64 v181, 0, v181, s27
	v_cndmask_b32_e64 v180, 0, v180, s27
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v195, 0, v195, s30
	v_cndmask_b32_e64 v194, 0, v194, s30
	v_cndmask_b32_e64 v193, 0, v193, s30
	v_cndmask_b32_e64 v192, 0, v192, s30
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v203, 0, v203, s33
	v_cndmask_b32_e64 v202, 0, v202, s33
	v_cndmask_b32_e64 v201, 0, v201, s33
	v_cndmask_b32_e64 v200, 0, v200, s33
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v207, 0, v207, s34
	v_cndmask_b32_e64 v206, 0, v206, s34
	v_cndmask_b32_e64 v205, 0, v205, s34
	v_cndmask_b32_e64 v204, 0, v204, s34
	.loc	1 169 34                        ; kda_gluon_backward.py:169:34
	v_dual_add_f32 v129, v1, v127 :: v_dual_add_f32 v132, v2, v126
	v_dual_add_f32 v128, v3, v125 :: v_dual_add_f32 v159, v5, v134
	v_dual_add_f32 v141, v4, v117 :: v_dual_add_f32 v156, v7, v131
	v_dual_add_f32 v148, v6, v133 :: v_dual_add_f32 v131, v11, v136
	v_dual_add_f32 v170, v8, v130 :: v_dual_add_f32 v165, v13, v145
	v_dual_add_f32 v130, v9, v139 :: v_dual_add_f32 v171, v16, v140
	v_dual_add_f32 v134, v10, v138 :: v_dual_add_f32 v149, v12, v135
	v_dual_add_f32 v152, v14, v144 :: v_dual_add_f32 v135, v17, v151
	v_dual_add_f32 v158, v15, v143 :: v_dual_add_f32 v133, v18, v150
	v_dual_add_f32 v136, v19, v147 :: v_dual_add_f32 v145, v28, v162
	v_dual_add_f32 v154, v20, v146 :: v_dual_add_f32 v127, v26, v167
	v_add_f32_e32 v166, v21, v160
	v_dual_add_f32 v168, v22, v157 :: v_dual_add_f32 v125, v36, v178
	v_dual_add_f32 v164, v23, v155 :: v_dual_add_f32 v151, v29, v161
	v_dual_add_f32 v172, v24, v153 :: v_dual_add_f32 v117, v34, v176
	v_dual_add_f32 v140, v27, v163 :: v_dual_add_f32 v169, v32, v169
	v_add_f32_e32 v163, v30, v174
	v_dual_add_f32 v177, v31, v173 :: v_dual_add_f32 v174, v33, v175
	v_dual_add_f32 v9, v35, v225 :: v_dual_add_f32 v138, v116, v180
	v_dual_add_f32 v139, v37, v179 :: v_dual_add_f32 v160, v118, v182
	v_dual_add_f32 v143, v119, v181 :: v_dual_add_f32 v118, v120, v184
	v_dual_add_f32 v167, v38, v183 :: v_dual_add_f32 v10, v121, v185
	v_dual_add_f32 v126, v122, v186 :: v_dual_add_f32 v161, v123, v187
	v_dual_add_f32 v147, v124, v188 :: v_dual_add_f32 v144, v210, v189
	v_dual_add_f32 v175, v209, v190 :: v_dual_add_f32 v178, v208, v191
	v_dual_add_f32 v122, v214, v192 :: v_dual_add_f32 v11, v213, v193
	v_dual_add_f32 v146, v212, v194 :: v_dual_add_f32 v173, v217, v197
	v_dual_add_f32 v162, v211, v195 :: v_dual_add_f32 v181, v216, v198
	v_dual_add_f32 v150, v218, v196 :: v_dual_add_f32 v179, v215, v199
	v_dual_add_f32 v121, v221, v200 :: v_dual_add_f32 v182, v219, v203
	v_dual_add_f32 v12, v137, v201 :: v_dual_add_f32 v155, v220, v202
	v_dual_add_f32 v153, v224, v204 :: v_dual_add_f32 v176, v223, v205
	v_add_f32_e32 v183, v142, v206
	v_add_f32_e32 v180, v222, v207
	s_branch .LBB0_5
.LBB0_4:                                ;   in Loop: Header=BB0_5 Depth=2
	.loc	1 223 32                        ; kda_gluon_backward.py:223:32
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v3, 0x3fb8aa3b, v2
	.loc	1 185 30                        ; kda_gluon_backward.py:185:30
	v_cndmask_b32_e64 v1, 0, v1, s2
	.loc	1 236 36                        ; kda_gluon_backward.py:236:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 179 13                        ; kda_gluon_backward.py:179:13
	s_add_i32 s62, s62, 1
	.loc	1 223 32                        ; kda_gluon_backward.py:223:32
	v_cmp_gt_f32_e64 s40, 0xc2fc0000, v3
	.loc	1 236 36                        ; kda_gluon_backward.py:236:36
	ds_store_b32 v47, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 179 13                        ; kda_gluon_backward.py:179:13
	s_cmp_lg_u32 s62, 4
	.loc	1 223 32                        ; kda_gluon_backward.py:223:32
	v_cndmask_b32_e64 v3, 0, 0x42800000, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v3, 0x3fb8aa3b, v2
	v_exp_f32_e32 v2, v3
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, s40
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v2, v2, v3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 224 21                        ; kda_gluon_backward.py:224:21
	v_cndmask_b32_e64 v5, 1.0, v2, s2
	.loc	1 236 36                        ; kda_gluon_backward.py:236:36
	ds_load_2addr_b64 v[206:209], v48 offset1:16
	ds_load_2addr_b64 v[1:4], v48 offset0:32 offset1:48
	.loc	1 240 38                        ; kda_gluon_backward.py:240:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v47, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[210:213], v48 offset1:16
	ds_load_2addr_b64 v[192:195], v48 offset0:32 offset1:48
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:245:37 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp2:
	.loc	1 244 34                        ; kda_gluon_backward.py:244:34
	v_dual_mul_f32 v197, v132, v210 :: v_dual_mul_f32 v20, v151, v213
	v_dual_mul_f32 v15, v164, v212 :: v_dual_mul_f32 v24, v174, v213
	v_dual_mul_f32 v18, v140, v213 :: v_dual_mul_f32 v27, v9, v192
	v_dual_mul_f32 v19, v145, v213 :: v_dual_mul_f32 v30, v138, v192
	v_dual_mul_f32 v21, v163, v213 :: v_dual_mul_f32 v26, v117, v192
	v_dual_mul_f32 v23, v169, v213 :: v_dual_mul_f32 v32, v160, v192
	v_dual_mul_f32 v28, v125, v192 :: v_dual_mul_f32 v35, v10, v193
	v_dual_mul_f32 v29, v139, v192 :: v_dual_mul_f32 v34, v118, v193
	v_dual_mul_f32 v31, v143, v192 :: v_dual_mul_f32 v36, v126, v193
	v_dual_mul_f32 v33, v167, v192 :: v_dual_mul_f32 v124, v122, v194
	v_dual_mul_f32 v38, v147, v193 :: v_dual_mul_f32 v157, v162, v194
	v_dual_mul_f32 v119, v144, v193 :: v_dual_mul_f32 v184, v150, v194
	v_dual_mul_f32 v123, v178, v193 :: v_dual_mul_f32 v186, v181, v194
	v_dual_mul_f32 v137, v11, v194 :: v_dual_mul_f32 v188, v121, v195
	v_dual_mul_f32 v187, v179, v194 :: v_dual_mul_f32 v192, v153, v195
	v_mul_f32_e32 v190, v155, v195
	v_dual_mul_f32 v196, v129, v210 :: v_dual_mul_f32 v5, v135, v212
	v_dual_mul_f32 v198, v128, v210 :: v_dual_mul_f32 v13, v166, v212
	v_dual_mul_f32 v199, v141, v210 :: v_dual_mul_f32 v14, v168, v212
	v_dual_mul_f32 v200, v159, v210 :: v_dual_mul_f32 v7, v136, v212
	v_dual_mul_f32 v201, v148, v210 :: v_dual_mul_f32 v22, v177, v213
	v_dual_mul_f32 v202, v156, v210 :: v_dual_mul_f32 v17, v127, v213
	v_dual_mul_f32 v203, v170, v210 :: v_dual_mul_f32 v16, v172, v212
	v_dual_mul_f32 v37, v161, v193 :: v_dual_mul_f32 v142, v146, v194
	v_dual_mul_f32 v120, v175, v193 :: v_dual_mul_f32 v185, v173, v194
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v189, v12, v195 :: v_dual_mul_f32 v116, v209, v17
	v_dual_mul_f32 v191, v182, v195 :: v_dual_mul_f32 v210, v209, v18
	v_dual_mul_f32 v193, v176, v195 :: v_dual_mul_f32 v214, v209, v21
	v_dual_mul_f32 v194, v183, v195 :: v_dual_mul_f32 v215, v209, v22
	v_dual_mul_f32 v195, v180, v195 :: v_dual_mul_f32 v218, v2, v34
	.loc	1 246 21                        ; kda_gluon_backward.py:246:21
	v_mul_f32_e32 v213, v209, v20
	v_dual_mul_f32 v217, v209, v24 :: v_dual_mul_f32 v222, v2, v38
	v_dual_mul_f32 v219, v2, v35 :: v_dual_mul_f32 v226, v4, v188
	v_dual_mul_f32 v220, v2, v36 :: v_dual_mul_f32 v229, v4, v191
	v_dual_mul_f32 v223, v2, v119 :: v_dual_mul_f32 v228, v4, v190
	v_dual_mul_f32 v225, v2, v123 :: v_dual_mul_f32 v230, v4, v192
	.loc	1 244 34                        ; kda_gluon_backward.py:244:34
	v_mul_f32_e32 v6, v133, v212
	v_mul_f32_e32 v8, v154, v212
	.loc	1 246 21                        ; kda_gluon_backward.py:246:21
	v_dual_mul_f32 v212, v209, v19 :: v_dual_mul_f32 v221, v2, v37
	v_dual_mul_f32 v216, v209, v23 :: v_dual_mul_f32 v227, v4, v189
	v_dual_mul_f32 v224, v2, v120 :: v_dual_mul_f32 v231, v4, v193
	v_dual_mul_f32 v232, v4, v194 :: v_dual_fmac_f32 v219, v1, v27
	v_dual_mul_f32 v233, v4, v195 :: v_dual_fmac_f32 v218, v1, v26
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:245:37 ] ]
	v_dual_fmac_f32 v226, v3, v124 :: v_dual_fmac_f32 v221, v1, v29
	v_dual_fmac_f32 v220, v1, v28 :: v_dual_fmac_f32 v215, v208, v14
	v_dual_fmac_f32 v228, v3, v142 :: v_dual_fmac_f32 v213, v208, v8
	v_dual_fmac_f32 v222, v1, v30 :: v_dual_fmac_f32 v231, v3, v185
	v_dual_fmac_f32 v230, v3, v184 :: v_dual_fmac_f32 v223, v1, v31
.Ltmp4:
	.loc	1 244 34                        ; kda_gluon_backward.py:244:34
	v_dual_mul_f32 v234, v165, v211 :: v_dual_fmac_f32 v227, v3, v137
.Ltmp5:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:245:37 ] ]
	v_add_f32_e32 v218, v218, v226
	v_dual_fmac_f32 v210, v208, v6 :: v_dual_fmac_f32 v229, v3, v157
	v_dual_add_f32 v220, v220, v228 :: v_dual_fmac_f32 v225, v1, v33
	v_dual_fmac_f32 v214, v208, v13 :: v_dual_fmac_f32 v233, v3, v187
	v_dual_add_f32 v222, v222, v230 :: v_dual_add_f32 v223, v223, v231
	v_fmac_f32_e32 v224, v1, v32
	v_dual_fmac_f32 v232, v3, v186 :: v_dual_fmac_f32 v217, v208, v16
.Ltmp6:
	.loc	1 244 34                        ; kda_gluon_backward.py:244:34
	v_dual_mul_f32 v230, v134, v211 :: v_dual_mul_f32 v237, v207, v234
	v_mul_f32_e32 v226, v130, v211
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:245:37 ] ]
	v_dual_fmac_f32 v116, v208, v5 :: v_dual_add_f32 v219, v219, v227
	v_dual_fmac_f32 v212, v208, v7 :: v_dual_add_f32 v221, v221, v229
	v_dual_fmac_f32 v216, v208, v15 :: v_dual_add_f32 v225, v225, v233
.Ltmp8:
	.loc	1 244 34                        ; kda_gluon_backward.py:244:34
	v_dual_mul_f32 v227, v171, v211 :: v_dual_add_f32 v224, v224, v232
	v_mul_f32_e32 v232, v131, v211
	v_mul_f32_e32 v228, v158, v211
	v_mul_f32_e32 v233, v149, v211
	v_mul_f32_e32 v229, v152, v211
	.loc	1 246 21                        ; kda_gluon_backward.py:246:21
	v_mul_f32_e32 v211, v207, v230
	v_mul_f32_e32 v231, v207, v226
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:245:37 ] ]
	v_fmac_f32_e32 v237, v206, v200
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v211, v206, v197
	v_fmac_f32_e32 v231, v206, v196
.Ltmp10:
	.loc	1 246 21                        ; kda_gluon_backward.py:246:21
	v_mul_f32_e32 v235, v207, v232
	v_mul_f32_e32 v238, v207, v228
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:245:37 ] ]
	v_add_f32_e32 v210, v211, v210
	v_add_f32_e32 v116, v231, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp12:
	.loc	1 246 21                        ; kda_gluon_backward.py:246:21
	v_dual_mul_f32 v236, v207, v233 :: v_dual_fmac_f32 v235, v206, v198
	v_dual_mul_f32 v231, v207, v229 :: v_dual_add_f32 v210, v210, v219
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:245:37 ] ]
	v_add_f32_e32 v116, v116, v218
	v_dual_fmac_f32 v236, v206, v199 :: v_dual_add_f32 v211, v235, v212
.Ltmp14:
	.loc	1 246 21                        ; kda_gluon_backward.py:246:21
	v_mul_f32_e32 v239, v207, v227
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:245:37 ] ]
	v_fmac_f32_e32 v231, v206, v201
	v_fmac_f32_e32 v238, v206, v202
	v_dual_add_f32 v212, v236, v213 :: v_dual_add_f32 v211, v211, v220
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v213, v237, v214 :: v_dual_add_f32 v214, v231, v215
	v_dual_add_f32 v215, v238, v216 :: v_dual_add_f32 v212, v212, v221
.Ltmp16:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:245:37 ]
	v_permlanex16_b32 v216, v116, s101, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v218, v210, s101, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v219, v211, s101, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:245:37 ] ]
	v_fmac_f32_e32 v239, v206, v203
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v213, v213, v222 :: v_dual_add_f32 v116, v116, v216
	v_add_f32_e32 v216, v210, v218
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_f32_e32 v218, v211, v219
.Ltmp18:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:245:37 ]
	v_permlanex16_b32 v210, v212, s101, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:245:37 ] ]
	v_add_f32_e32 v211, v239, v217
.Ltmp20:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:245:37 ]
	v_mov_b32_e32 v217, v116
	v_dual_mov_b32 v219, v216 :: v_dual_mov_b32 v220, v218
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:245:37 ] ]
	v_dual_add_f32 v214, v214, v223 :: v_dual_add_f32 v215, v215, v224
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp22:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:245:37 ]
	v_mov_b32_dpp v217, v217 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v219, v219 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v220, v220 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:245:37 ] ]
	v_add_f32_e32 v221, v212, v210
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:245:37 ]
	v_permlanex16_b32 v224, v213, s101, 0xfedcba98 op_sel:[1,0]
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:245:37 ] ]
	v_add_f32_e32 v210, v116, v217
	v_add_f32_e32 v222, v211, v225
	v_dual_add_f32 v212, v218, v220 :: v_dual_mov_b32 v223, v221
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_add_f32 v211, v216, v219 :: v_dual_add_f32 v116, v213, v224
.Ltmp26:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:245:37 ]
	v_permlanex16_b32 v216, v214, s101, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v217, v215, s101, 0xfedcba98 op_sel:[1,0]
	v_mov_b32_dpp v223, v223 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_permlanex16_b32 v218, v222, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v219, v116 :: v_dual_add_f32 v216, v214, v216
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:245:37 ] ]
	v_dual_add_f32 v213, v221, v223 :: v_dual_add_f32 v218, v222, v218
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp28:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:245:37 ]
	v_mov_b32_dpp v219, v219 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:245:37 ] ]
	v_add_f32_e32 v217, v215, v217
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:245:37 ]
	ds_store_b128 v49, v[210:213]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[210:213], v50
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:245:37 ] ]
	v_add_f32_e32 v214, v116, v219
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:245:37 ]
	v_dual_mov_b32 v215, v216 :: v_dual_mov_b32 v220, v217
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v215, v215 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v220, v220 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v221, v218
	v_permlanex16_b32 v116, v210, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:245:37 ] ]
	v_dual_add_f32 v215, v216, v215 :: v_dual_add_f32 v216, v217, v220
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:245:37 ]
	v_mov_b32_dpp v221, v221 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_permlanex16_b32 v219, v212, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:245:37 ] ]
	v_add_f32_e32 v116, v210, v116
	v_dual_add_f32 v217, v218, v221 :: v_dual_add_f32 v212, v212, v219
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:245:37 ]
	v_permlanex16_b32 v218, v211, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v210, v116
	ds_store_b128 v49, v[214:217]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[214:217], v50
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:245:37 ] ]
	v_add_f32_e32 v211, v211, v218
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:245:37 ]
	v_mov_b32_e32 v219, v212
	v_mov_b32_dpp v210, v210 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	1 249 37                        ; kda_gluon_backward.py:249:37
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:245:37 ]
	v_mov_b32_e32 v218, v211
	v_mov_b32_dpp v219, v219 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v218, v218 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:245:37 ] ]
	v_dual_add_f32 v212, v212, v219 :: v_dual_add_f32 v211, v211, v218
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:245:37 ]
	v_permlanex16_b32 v218, v214, s101, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v219, v215, s101, 0xfedcba98 op_sel:[1,0]
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:245:37 ] ]
	v_add_f32_e32 v210, v116, v210
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:245:37 ]
	v_permlanex16_b32 v116, v213, s101, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v220, v216, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:245:37 ] ]
	v_dual_add_f32 v214, v214, v218 :: v_dual_add_f32 v215, v215, v219
	v_add_f32_e32 v116, v213, v116
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:245:37 ]
	v_permlanex16_b32 v213, v217, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:245:37 ] ]
	v_add_f32_e32 v217, v217, v213
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:245:37 ]
	v_dual_mov_b32 v219, v214 :: v_dual_mov_b32 v222, v217
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v219, v219 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v222, v222 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:245:37 ] ]
	v_add_f32_e32 v216, v216, v220
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v214, v214, v219 :: v_dual_add_f32 v217, v217, v222
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:245:37 ]
	v_dual_mov_b32 v220, v215 :: v_dual_mov_b32 v221, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v220, v220 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v218, v116
	v_mov_b32_dpp v221, v221 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:245:37 ] ]
	v_add_f32_e32 v215, v215, v220
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:245:37 ]
	v_mov_b32_dpp v218, v218 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:245:37 ] ]
	v_add_f32_e32 v216, v216, v221
	v_dual_add_f32 v213, v116, v218 :: v_dual_add_nc_u32 v116, 0, v45
.Ltmp54:
	.loc	1 249 37                        ; kda_gluon_backward.py:249:37
	ds_store_b128 v116, v[210:213]
	ds_store_b128 v116, v[214:217] offset:128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v210, v51
	v_mov_b16_e64 v211.l, 0
	.loc	1 217 36                        ; kda_gluon_backward.py:217:36
	v_mov_b16_e64 v211.h, v204.l
	.loc	1 254 33                        ; kda_gluon_backward.py:254:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 217 36                        ; kda_gluon_backward.py:217:36
	v_cndmask_b32_e64 v204, 0, v211, s38
	.loc	1 253 35                        ; kda_gluon_backward.py:253:35
	v_sub_f32_e32 v204, v204, v210
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 255 21                        ; kda_gluon_backward.py:255:21
	v_mul_f32_e32 v204, v205, v204
	.loc	1 254 33                        ; kda_gluon_backward.py:254:33
	ds_store_b32 v51, v204
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[210:213], v116
	ds_load_b128 v[214:217], v116 offset:128
	.loc	1 259 21                        ; kda_gluon_backward.py:259:21
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v196, v206, v210 :: v_dual_fmac_f32 v229, v207, v215
	v_fmac_f32_e32 v197, v206, v211
	v_dual_fmac_f32 v198, v206, v212 :: v_dual_fmac_f32 v233, v207, v213
	v_fmac_f32_e32 v199, v206, v213
	v_dual_fmac_f32 v200, v206, v214 :: v_dual_fmac_f32 v7, v208, v212
	v_fmac_f32_e32 v201, v206, v215
	v_dual_fmac_f32 v202, v206, v216 :: v_dual_fmac_f32 v5, v208, v210
	v_fmac_f32_e32 v203, v206, v217
	v_fmac_f32_e32 v227, v207, v217
	v_dual_fmac_f32 v228, v207, v216 :: v_dual_fmac_f32 v13, v208, v214
	v_dual_fmac_f32 v234, v207, v214 :: v_dual_fmac_f32 v15, v208, v216
	v_dual_fmac_f32 v232, v207, v212 :: v_dual_fmac_f32 v17, v209, v210
	v_dual_fmac_f32 v230, v207, v211 :: v_dual_fmac_f32 v19, v209, v212
	v_dual_fmac_f32 v226, v207, v210 :: v_dual_fmac_f32 v23, v209, v216
	v_dual_fmac_f32 v6, v208, v211 :: v_dual_fmac_f32 v21, v209, v214
	v_dual_fmac_f32 v8, v208, v213 :: v_dual_fmac_f32 v27, v1, v211
	v_dual_fmac_f32 v14, v208, v215 :: v_dual_fmac_f32 v29, v1, v213
	v_dual_fmac_f32 v16, v208, v217 :: v_dual_fmac_f32 v31, v1, v215
	v_dual_fmac_f32 v18, v209, v211 :: v_dual_fmac_f32 v37, v2, v213
	v_dual_fmac_f32 v20, v209, v213 :: v_dual_fmac_f32 v35, v2, v211
	v_dual_fmac_f32 v22, v209, v215 :: v_dual_fmac_f32 v123, v2, v217
	v_dual_fmac_f32 v24, v209, v217 :: v_dual_fmac_f32 v119, v2, v215
	v_dual_fmac_f32 v26, v1, v210 :: v_dual_fmac_f32 v137, v3, v211
	v_dual_fmac_f32 v28, v1, v212 :: v_dual_fmac_f32 v157, v3, v213
	v_dual_fmac_f32 v30, v1, v214 :: v_dual_fmac_f32 v185, v3, v215
	v_dual_fmac_f32 v32, v1, v216 :: v_dual_fmac_f32 v187, v3, v217
	v_dual_fmac_f32 v33, v1, v217 :: v_dual_fmac_f32 v34, v2, v210
	v_dual_fmac_f32 v36, v2, v212 :: v_dual_fmac_f32 v189, v4, v211
	v_dual_fmac_f32 v38, v2, v214 :: v_dual_fmac_f32 v191, v4, v213
	v_dual_fmac_f32 v120, v2, v216 :: v_dual_fmac_f32 v193, v4, v215
	v_dual_fmac_f32 v124, v3, v210 :: v_dual_fmac_f32 v195, v4, v217
	v_fmac_f32_e32 v142, v3, v212
	v_fmac_f32_e32 v184, v3, v214
	v_fmac_f32_e32 v186, v3, v216
	v_fmac_f32_e32 v188, v4, v210
	v_fmac_f32_e32 v190, v4, v212
	v_fmac_f32_e32 v192, v4, v214
	v_fmac_f32_e32 v194, v4, v216
	.loc	1 262 34                        ; kda_gluon_backward.py:262:34
	v_cndmask_b32_e64 v129, v129, v196, s37
	v_cndmask_b32_e64 v132, v132, v197, s37
	v_cndmask_b32_e64 v128, v128, v198, s37
	v_cndmask_b32_e64 v141, v141, v199, s37
	v_cndmask_b32_e64 v159, v159, v200, s37
	v_cndmask_b32_e64 v148, v148, v201, s37
	v_cndmask_b32_e64 v156, v156, v202, s37
	v_cndmask_b32_e64 v170, v170, v203, s37
	v_cndmask_b32_e64 v130, v130, v226, s37
	v_cndmask_b32_e64 v134, v134, v230, s37
	v_cndmask_b32_e64 v131, v131, v232, s37
	v_cndmask_b32_e64 v149, v149, v233, s37
	v_cndmask_b32_e64 v165, v165, v234, s37
	v_cndmask_b32_e64 v152, v152, v229, s37
	v_cndmask_b32_e64 v158, v158, v228, s37
	v_cndmask_b32_e64 v171, v171, v227, s37
	v_cndmask_b32_e64 v135, v135, v5, s37
	v_cndmask_b32_e64 v133, v133, v6, s37
	v_cndmask_b32_e64 v136, v136, v7, s37
	v_cndmask_b32_e64 v154, v154, v8, s37
	v_cndmask_b32_e64 v166, v166, v13, s37
	v_cndmask_b32_e64 v168, v168, v14, s37
	v_cndmask_b32_e64 v164, v164, v15, s37
	v_cndmask_b32_e64 v172, v172, v16, s37
	v_cndmask_b32_e64 v127, v127, v17, s37
	v_cndmask_b32_e64 v140, v140, v18, s37
	v_cndmask_b32_e64 v145, v145, v19, s37
	v_cndmask_b32_e64 v151, v151, v20, s37
	v_cndmask_b32_e64 v163, v163, v21, s37
	v_cndmask_b32_e64 v177, v177, v22, s37
	v_cndmask_b32_e64 v169, v169, v23, s37
	v_cndmask_b32_e64 v174, v174, v24, s37
	v_cndmask_b32_e64 v117, v117, v26, s37
	v_cndmask_b32_e64 v9, v9, v27, s37
	v_cndmask_b32_e64 v125, v125, v28, s37
	v_cndmask_b32_e64 v139, v139, v29, s37
	v_cndmask_b32_e64 v138, v138, v30, s37
	v_cndmask_b32_e64 v143, v143, v31, s37
	v_cndmask_b32_e64 v160, v160, v32, s37
	v_cndmask_b32_e64 v167, v167, v33, s37
	v_cndmask_b32_e64 v118, v118, v34, s37
	v_cndmask_b32_e64 v10, v10, v35, s37
	v_cndmask_b32_e64 v126, v126, v36, s37
	v_cndmask_b32_e64 v161, v161, v37, s37
	v_cndmask_b32_e64 v147, v147, v38, s37
	v_cndmask_b32_e64 v144, v144, v119, s37
	v_cndmask_b32_e64 v175, v175, v120, s37
	v_cndmask_b32_e64 v178, v178, v123, s37
	v_cndmask_b32_e64 v122, v122, v124, s37
	v_cndmask_b32_e64 v11, v11, v137, s37
	v_cndmask_b32_e64 v146, v146, v142, s37
	v_cndmask_b32_e64 v162, v162, v157, s37
	v_cndmask_b32_e64 v150, v150, v184, s37
	v_cndmask_b32_e64 v173, v173, v185, s37
	v_cndmask_b32_e64 v181, v181, v186, s37
	v_cndmask_b32_e64 v179, v179, v187, s37
	v_cndmask_b32_e64 v121, v121, v188, s37
	v_cndmask_b32_e64 v12, v12, v189, s37
	v_cndmask_b32_e64 v155, v155, v190, s37
	v_cndmask_b32_e64 v182, v182, v191, s37
	v_cndmask_b32_e64 v153, v153, v192, s37
	v_cndmask_b32_e64 v176, v176, v193, s37
	v_cndmask_b32_e64 v183, v183, v194, s37
	v_cndmask_b32_e64 v180, v180, v195, s37
	.loc	1 179 13                        ; kda_gluon_backward.py:179:13
	s_cbranch_scc0 .LBB0_7
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 180 32                        ; kda_gluon_backward.py:180:32
	s_add_i32 s40, s62, s55
	.loc	1 217 36                        ; kda_gluon_backward.py:217:36
	s_mov_b32 s58, s70
	.loc	1 181 33                        ; kda_gluon_backward.py:181:33
	s_cmp_lt_i32 s40, s54
	.loc	1 217 36                        ; kda_gluon_backward.py:217:36
	s_mov_b32 s59, s71
	.loc	1 181 33                        ; kda_gluon_backward.py:181:33
	s_cselect_b32 s37, -1, 0
	.loc	1 183 22                        ; kda_gluon_backward.py:183:22
	s_add_i32 s2, s40, s93
	.loc	1 224 21                        ; kda_gluon_backward.py:224:21
	s_mov_b32 s78, s70
	.loc	1 183 21                        ; kda_gluon_backward.py:183:21
	s_mul_i32 s2, s2, s43
	.loc	1 224 21                        ; kda_gluon_backward.py:224:21
	s_mov_b32 s79, s71
	.loc	1 183 21                        ; kda_gluon_backward.py:183:21
	s_add_i32 s46, s2, s89
	.loc	1 231 31                        ; kda_gluon_backward.py:231:31
	v_mov_b32_e32 v205, 0
	.loc	1 187 21                        ; kda_gluon_backward.py:187:21
	s_mul_i32 s2, s46, s80
	.loc	1 219 25                        ; kda_gluon_backward.py:219:25
	s_mul_i32 s38, s46, s81
	.loc	1 185 30                        ; kda_gluon_backward.py:185:30
	v_add_lshl_u32 v1, s2, v0, 2
	.loc	1 217 36                        ; kda_gluon_backward.py:217:36
	v_add_lshl_u32 v2, s38, v25, 1
	.loc	1 188 26                        ; kda_gluon_backward.py:188:26
	s_and_b32 s2, vcc_lo, s37
	.loc	1 220 30                        ; kda_gluon_backward.py:220:30
	s_and_b32 s38, s1, s37
	.loc	1 181 33                        ; kda_gluon_backward.py:181:33
	s_cmp_ge_i32 s40, s54
	.loc	1 185 30                        ; kda_gluon_backward.py:185:30
	v_cndmask_b32_e64 v3, 0x80000000, v1, s2
	.loc	1 217 36                        ; kda_gluon_backward.py:217:36
	v_cndmask_b32_e64 v2, 0x80000000, v2, s38
	.loc	1 185 30                        ; kda_gluon_backward.py:185:30
	buffer_load_b32 v1, v3, s[68:71], 0 offen
	.loc	1 217 36                        ; kda_gluon_backward.py:217:36
	buffer_load_u16 v204, v2, s[56:59], 0 offen
	.loc	1 224 21                        ; kda_gluon_backward.py:224:21
	buffer_load_b32 v2, v3, s[76:79], 0 offen
	.loc	1 231 31                        ; kda_gluon_backward.py:231:31
	s_cbranch_scc1 .LBB0_4
; %bb.6:                                ;   in Loop: Header=BB0_5 Depth=2
	.loc	1 0 31 is_stmt 0                ; kda_gluon_backward.py:0:31
	s_ashr_i32 s47, s46, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b64 s[46:47], s[46:47], 2
	s_add_u32 s46, s84, s46
	s_addc_u32 s47, s85, s47
	.loc	1 231 31                        ; kda_gluon_backward.py:231:31
	global_load_b32 v205, v46, s[46:47]
	s_branch .LBB0_4
.LBB0_7:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 268 26 is_stmt 1              ; kda_gluon_backward.py:268:26
	s_add_i32 s2, s54, s93
	.loc	1 311 17                        ; kda_gluon_backward.py:311:17
	s_mov_b32 s78, s70
	.loc	1 268 25                        ; kda_gluon_backward.py:268:25
	s_mul_i32 s2, s2, s43
	.loc	1 311 17                        ; kda_gluon_backward.py:311:17
	s_mov_b32 s79, s71
	.loc	1 268 25                        ; kda_gluon_backward.py:268:25
	s_add_i32 s62, s2, s89
	.loc	1 270 29                        ; kda_gluon_backward.py:270:29
	s_mov_b32 s54, s70
	.loc	1 269 26                        ; kda_gluon_backward.py:269:26
	v_mad_u64_u32 v[26:27], null, s62, s80, v[0:1]
	.loc	1 270 29                        ; kda_gluon_backward.py:270:29
	s_mov_b32 s55, s71
	.loc	1 304 33                        ; kda_gluon_backward.py:304:33
	s_mov_b32 s58, s70
	s_mov_b32 s59, s71
	.loc	1 319 33                        ; kda_gluon_backward.py:319:33
	s_mov_b32 s66, s70
	s_mov_b32 s67, s71
	.loc	1 318 34                        ; kda_gluon_backward.py:318:34
	s_ashr_i32 s63, s62, 31
	.loc	1 270 29                        ; kda_gluon_backward.py:270:29
	v_lshlrev_b32_e32 v1, 2, v26
	.loc	1 306 21                        ; kda_gluon_backward.py:306:21
	v_mad_u64_u32 v[27:28], null, s62, s81, v[25:26]
	.loc	1 318 34                        ; kda_gluon_backward.py:318:34
	s_lshl_b64 s[46:47], s[62:63], 2
	.loc	1 270 29                        ; kda_gluon_backward.py:270:29
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_lshlrev_b32 v4, 1, v27
	.loc	1 311 17                        ; kda_gluon_backward.py:311:17
	buffer_load_b32 v2, v1, s[76:79], 0 offen
	.loc	1 304 33                        ; kda_gluon_backward.py:304:33
	v_cndmask_b32_e64 v4, 0x80000000, v4, s1
	buffer_load_u16 v185, v4, s[56:59], 0 offen
	.loc	1 319 33                        ; kda_gluon_backward.py:319:33
	buffer_load_u16 v184, v4, s[64:67], 0 offen
	.loc	1 310 21                        ; kda_gluon_backward.py:310:21
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v3, 0x3fb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v3
	v_cndmask_b32_e64 v3, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v3, 0x3fb8aa3b, v2
	.loc	1 270 29                        ; kda_gluon_backward.py:270:29
	buffer_load_b32 v2, v1, s[52:55], 0 offen
	.loc	1 276 27                        ; kda_gluon_backward.py:276:27
	buffer_load_b32 v1, v1, s[68:71], 0 offen
	.loc	1 318 34                        ; kda_gluon_backward.py:318:34
	s_add_u32 s54, s84, s46
	s_addc_u32 s55, s85, s47
	.loc	1 318 26 is_stmt 0              ; kda_gluon_backward.py:318:26
	global_load_b32 v120, v46, s[54:55]
	.loc	1 326 27 is_stmt 1              ; kda_gluon_backward.py:326:27
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 270 29                        ; kda_gluon_backward.py:270:29
	s_waitcnt vmcnt(1)
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_cndmask_b32 v1, 0, v1
	.loc	1 326 27                        ; kda_gluon_backward.py:326:27
	ds_store_b32 v47, v2
	.loc	1 310 21                        ; kda_gluon_backward.py:310:21
	v_exp_f32_e32 v2, v3
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, s2
	.loc	1 326 27                        ; kda_gluon_backward.py:326:27
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[21:24], v48 offset1:16
	ds_load_2addr_b64 v[17:20], v48 offset0:32 offset1:48
	.loc	1 330 25                        ; kda_gluon_backward.py:330:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v47, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 310 21                        ; kda_gluon_backward.py:310:21
	v_ldexp_f32 v2, v2, v3
	.loc	1 330 25                        ; kda_gluon_backward.py:330:25
	ds_load_2addr_b64 v[13:16], v48 offset1:16
	ds_load_2addr_b64 v[5:8], v48 offset0:32 offset1:48
	.loc	1 331 27                        ; kda_gluon_backward.py:331:27
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 311 17                        ; kda_gluon_backward.py:311:17
	v_cndmask_b32_e32 v1, 1.0, v2, vcc_lo
	.loc	1 331 27                        ; kda_gluon_backward.py:331:27
	ds_store_b32 v47, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[1:4], v48 offset0:32 offset1:48
	.loc	1 337 29                        ; kda_gluon_backward.py:337:29
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v123, v10, v2
	v_dual_mul_f32 v118, v118, v2 :: v_dual_mul_f32 v119, v117, v1
	v_dual_mul_f32 v117, v122, v3 :: v_dual_mul_f32 v124, v9, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 338 33                        ; kda_gluon_backward.py:338:33
	v_dual_mul_f32 v9, v6, v123 :: v_dual_mul_f32 v28, v121, v4
	.loc	1 337 29                        ; kda_gluon_backward.py:337:29
	v_mul_f32_e32 v122, v11, v3
	v_dual_mul_f32 v160, v160, v1 :: v_dual_fmac_f32 v9, v5, v124
	v_mul_f32_e32 v121, v12, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 338 33                        ; kda_gluon_backward.py:338:33
	v_dual_mul_f32 v29, v6, v118 :: v_dual_mul_f32 v30, v8, v28
	v_dual_mul_f32 v10, v8, v121 :: v_dual_fmac_f32 v29, v5, v119
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_fmac_f32_e32 v30, v7, v117
	v_fmac_f32_e32 v10, v7, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v29, v29, v30
	v_add_f32_e32 v30, v9, v10
.Ltmp56:
	.loc	1 331 27                        ; kda_gluon_backward.py:331:27
	ds_load_2addr_b64 v[9:12], v48 offset1:16
	.loc	1 332 27                        ; kda_gluon_backward.py:332:27
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 337 29                        ; kda_gluon_backward.py:337:29
	v_dual_mul_f32 v147, v147, v2 :: v_dual_mul_f32 v166, v166, v11
	v_dual_mul_f32 v127, v127, v12 :: v_dual_mul_f32 v142, v132, v9
	v_mul_f32_e32 v137, v129, v9
	v_mul_f32_e32 v129, v135, v11
	v_dual_mul_f32 v133, v133, v11 :: v_dual_mul_f32 v132, v126, v2
	v_mul_f32_e32 v135, v130, v10
	.loc	1 338 33                        ; kda_gluon_backward.py:338:33
	v_mul_f32_e32 v31, v16, v127
	.loc	1 337 29                        ; kda_gluon_backward.py:337:29
	v_mul_f32_e32 v130, v140, v12
	v_mul_f32_e32 v140, v134, v10
	v_mul_f32_e32 v134, v125, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 338 33                        ; kda_gluon_backward.py:338:33
	v_dual_mul_f32 v32, v14, v135 :: v_dual_fmac_f32 v31, v15, v129
	.loc	1 337 29                        ; kda_gluon_backward.py:337:29
	v_mul_f32_e32 v126, v146, v3
	.loc	1 338 33                        ; kda_gluon_backward.py:338:33
	v_mul_f32_e32 v33, v14, v140
	.loc	1 337 29                        ; kda_gluon_backward.py:337:29
	v_dual_mul_f32 v125, v155, v4 :: v_dual_mul_f32 v146, v136, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_fmac_f32_e32 v32, v13, v137
.Ltmp58:
	.loc	1 337 29                        ; kda_gluon_backward.py:337:29
	v_mul_f32_e32 v145, v145, v12
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_fmac_f32_e32 v33, v13, v142
.Ltmp60:
	.loc	1 337 29                        ; kda_gluon_backward.py:337:29
	v_dual_mul_f32 v157, v128, v9 :: v_dual_mul_f32 v136, v161, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v31, v32, v31
.Ltmp62:
	.loc	1 338 33                        ; kda_gluon_backward.py:338:33
	v_mul_f32_e32 v32, v16, v130
	.loc	1 337 29                        ; kda_gluon_backward.py:337:29
	v_dual_mul_f32 v155, v131, v10 :: v_dual_mul_f32 v128, v182, v4
	v_mul_f32_e32 v131, v162, v3
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v29, v31, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v32, v15, v133
.Ltmp64:
	.loc	1 337 29                        ; kda_gluon_backward.py:337:29
	v_mul_f32_e32 v162, v141, v9
	v_dual_mul_f32 v154, v154, v11 :: v_dual_mul_f32 v161, v149, v10
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_permlanex16_b32 v31, v29, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_dual_add_f32 v32, v33, v32 :: v_dual_mul_f32 v33, v14, v155
.Ltmp67:
	.loc	1 337 29                        ; kda_gluon_backward.py:337:29
	v_mul_f32_e32 v141, v150, v3
	.loc	1 338 33                        ; kda_gluon_backward.py:338:33
	v_dual_mul_f32 v34, v14, v161 :: v_dual_add_f32 v29, v29, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_dual_add_f32 v30, v32, v30 :: v_dual_fmac_f32 v33, v13, v157
.Ltmp69:
	.loc	1 337 29                        ; kda_gluon_backward.py:337:29
	v_dual_mul_f32 v139, v139, v1 :: v_dual_fmac_f32 v34, v13, v162
	v_dual_mul_f32 v149, v138, v1 :: v_dual_mul_f32 v150, v144, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_permlanex16_b32 v31, v30, s101, 0xfedcba98 op_sel:[1,0]
.Ltmp71:
	.loc	1 337 29                        ; kda_gluon_backward.py:337:29
	v_mul_f32_e32 v138, v153, v4
	v_dual_mul_f32 v151, v151, v12 :: v_dual_mul_f32 v144, v173, v3
	v_dual_mul_f32 v153, v143, v1 :: v_dual_add_f32 v30, v30, v31
	v_mul_f32_e32 v173, v165, v10
	v_dual_mul_f32 v143, v176, v4 :: v_dual_mul_f32 v176, v159, v9
	v_mul_f32_e32 v182, v148, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_dual_mov_b32 v32, v30 :: v_dual_mul_f32 v165, v177, v12
.Ltmp73:
	.loc	1 337 29                        ; kda_gluon_backward.py:337:29
	v_mul_f32_e32 v186, v156, v9
	v_dual_mul_f32 v168, v168, v11 :: v_dual_mul_f32 v163, v163, v12
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_mov_b32_dpp v32, v32 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	1 337 29                        ; kda_gluon_backward.py:337:29
	v_dual_mul_f32 v177, v152, v10 :: v_dual_mul_f32 v152, v181, v3
	v_dual_mul_f32 v188, v170, v9 :: v_dual_mul_f32 v187, v171, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v30, v30, v32
.Ltmp77:
	.loc	1 338 33                        ; kda_gluon_backward.py:338:33
	v_dual_mul_f32 v32, v8, v125 :: v_dual_mov_b32 v31, v29
	.loc	1 337 29                        ; kda_gluon_backward.py:337:29
	v_dual_mul_f32 v167, v167, v1 :: v_dual_mul_f32 v38, v14, v187
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v169, v169, v12 :: v_dual_fmac_f32 v32, v7, v126
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_mov_b32_dpp v31, v31 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	1 337 29                        ; kda_gluon_backward.py:337:29
	v_dual_mul_f32 v159, v175, v2 :: v_dual_mul_f32 v156, v180, v4
	v_dual_mul_f32 v175, v164, v11 :: v_dual_mul_f32 v148, v183, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v29, v29, v31
.Ltmp81:
	.loc	1 338 33                        ; kda_gluon_backward.py:338:33
	v_mul_f32_e32 v31, v6, v132
	.loc	1 337 29                        ; kda_gluon_backward.py:337:29
	v_mul_f32_e32 v183, v174, v12
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_fmac_f32_e32 v38, v13, v188
.Ltmp83:
	.loc	1 337 29                        ; kda_gluon_backward.py:337:29
	v_mul_f32_e32 v164, v178, v2
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_fmac_f32_e32 v31, v5, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v31, v31, v32 :: v_dual_mul_f32 v32, v16, v145
	v_fmac_f32_e32 v32, v15, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v32, v33, v32
.Ltmp85:
	.loc	1 338 33                        ; kda_gluon_backward.py:338:33
	v_mul_f32_e32 v33, v8, v128
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v31, v32, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v33, v7, v131
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_permlanex16_b32 v32, v31, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v31, v31, v32
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_mov_b32_e32 v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v32, v32 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v31, v31, v32
.Ltmp91:
	.loc	1 338 33                        ; kda_gluon_backward.py:338:33
	v_mul_f32_e32 v32, v6, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_fmac_f32_e32 v32, v5, v139
	v_add_f32_e32 v32, v32, v33
.Ltmp93:
	.loc	1 338 33                        ; kda_gluon_backward.py:338:33
	v_mul_f32_e32 v33, v16, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_fmac_f32_e32 v33, v15, v154
	v_add_f32_e32 v33, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v32, v33, v32
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_permlanex16_b32 v33, v32, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v32, v32, v33
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_mov_b32_e32 v33, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v33, v33 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v32, v32, v33
.Ltmp99:
	.loc	1 304 33                        ; kda_gluon_backward.py:304:33
	v_lshlrev_b32_e32 v33, 16, v185
	.loc	1 337 29                        ; kda_gluon_backward.py:337:29
	v_dual_mul_f32 v185, v158, v10 :: v_dual_mul_f32 v158, v179, v3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 304 33                        ; kda_gluon_backward.py:304:33
	v_cndmask_b32_e64 v33, 0, v33, s1
	.loc	1 332 27                        ; kda_gluon_backward.py:332:27
	ds_store_b32 v51, v33
	.loc	1 319 33                        ; kda_gluon_backward.py:319:33
	v_lshlrev_b32_e32 v33, 16, v184
	.loc	1 332 27                        ; kda_gluon_backward.py:332:27
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 337 29                        ; kda_gluon_backward.py:337:29
	v_mul_f32_e32 v184, v172, v11
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 319 33                        ; kda_gluon_backward.py:319:33
	v_cndmask_b32_e64 v37, 0, v33, s1
	.loc	1 332 27                        ; kda_gluon_backward.py:332:27
	ds_load_b128 v[33:36], v116
	ds_load_b128 v[189:192], v116 offset:128
	.loc	1 333 33                        ; kda_gluon_backward.py:333:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v51, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[193:196], v116
	ds_load_b128 v[213:216], v116 offset:128
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v49, v[29:32]
.Ltmp101:
	.loc	1 338 33                        ; kda_gluon_backward.py:338:33
	v_dual_mul_f32 v29, v6, v147 :: v_dual_mul_f32 v30, v8, v138
	v_dual_mul_f32 v32, v14, v173 :: v_dual_mul_f32 v31, v8, v143
	v_mul_f32_e32 v37, v14, v177
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_fmac_f32_e32 v29, v5, v149
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	s_waitcnt lgkmcnt(0)
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_fmac_f32_e32 v32, v13, v176
	v_fmac_f32_e32 v30, v7, v141
	v_fmac_f32_e32 v31, v7, v144
	v_fmac_f32_e32 v37, v13, v182
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	s_barrier
	ds_load_b128 v[178:181], v50
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v29, v29, v30
.Ltmp107:
	.loc	1 338 33                        ; kda_gluon_backward.py:338:33
	v_mul_f32_e32 v30, v6, v150
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_fmac_f32_e32 v30, v5, v153
	v_add_f32_e32 v30, v30, v31
.Ltmp110:
	.loc	1 338 33                        ; kda_gluon_backward.py:338:33
	v_mul_f32_e32 v31, v16, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_fmac_f32_e32 v31, v15, v166
	v_add_f32_e32 v31, v32, v31
.Ltmp112:
	.loc	1 338 33                        ; kda_gluon_backward.py:338:33
	v_mul_f32_e32 v32, v16, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_fmac_f32_e32 v32, v15, v168
	v_dual_add_f32 v32, v37, v32 :: v_dual_mul_f32 v37, v14, v185
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v30, v32, v30
	v_fmac_f32_e32 v37, v13, v186
	v_add_f32_e32 v29, v31, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_permlanex16_b32 v31, v29, s101, 0xfedcba98 op_sel:[1,0]
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v29, v29, v31
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_permlanex16_b32 v31, v30, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_dual_add_f32 v30, v30, v31 :: v_dual_mov_b32 v31, v29
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_mov_b32_e32 v32, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v31, v31 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v32, v32 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v29, v29, v31
.Ltmp120:
	.loc	1 338 33                        ; kda_gluon_backward.py:338:33
	v_mul_f32_e32 v31, v6, v159
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v30, v30, v32
.Ltmp122:
	.loc	1 338 33                        ; kda_gluon_backward.py:338:33
	v_mul_f32_e32 v32, v8, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_fmac_f32_e32 v31, v5, v160
	v_fmac_f32_e32 v32, v7, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v31, v31, v32 :: v_dual_mul_f32 v32, v16, v169
	v_fmac_f32_e32 v32, v15, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v32, v37, v32
.Ltmp124:
	.loc	1 338 33                        ; kda_gluon_backward.py:338:33
	v_mul_f32_e32 v37, v8, v156
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v31, v32, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v7, v158
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_permlanex16_b32 v32, v31, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v31, v31, v32
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_mov_b32_e32 v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v32, v32 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v31, v31, v32
.Ltmp130:
	.loc	1 338 33                        ; kda_gluon_backward.py:338:33
	v_mul_f32_e32 v32, v6, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_fmac_f32_e32 v32, v5, v167
	v_add_f32_e32 v32, v32, v37
.Ltmp132:
	.loc	1 338 33                        ; kda_gluon_backward.py:338:33
	v_mul_f32_e32 v37, v16, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_fmac_f32_e32 v37, v15, v184
	v_add_f32_e32 v37, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v32, v37, v32
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_permlanex16_b32 v37, v32, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v32, v32, v37
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_mov_b32_e32 v37, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v37, v37 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v32, v32, v37
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	ds_store_b128 v49, v[29:32]
	v_permlanex16_b32 v29, v178, s101, 0xfedcba98 op_sel:[1,0]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v37, v178, v29
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_permlanex16_b32 v29, v179, s101, 0xfedcba98 op_sel:[1,0]
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v38, v179, v29
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_permlanex16_b32 v29, v180, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v170, v180, v29
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_permlanex16_b32 v29, v181, s101, 0xfedcba98 op_sel:[1,0]
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v171, v181, v29
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	ds_load_b128 v[29:32], v50
.Ltmp147:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_permlanex16_b32 v172, v32, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp149:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v32, v32, v172
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_permlanex16_b32 v172, v31, s101, 0xfedcba98 op_sel:[1,0]
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v31, v31, v172
.Ltmp152:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_permlanex16_b32 v172, v30, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp153:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v30, v30, v172
.Ltmp154:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_permlanex16_b32 v172, v29, s101, 0xfedcba98 op_sel:[1,0]
.Ltmp155:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v29, v29, v172
.Ltmp156:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_mov_b32_e32 v172, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v172, v172 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp157:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_dual_add_f32 v37, v37, v172 :: v_dual_mov_b32 v172, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp158:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_mov_b32_dpp v172, v172 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp159:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v38, v38, v172
.Ltmp160:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_mov_b32_e32 v172, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v172, v172 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp161:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v174, v170, v172
.Ltmp162:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_mov_b32_e32 v170, v171
.Ltmp163:
	.loc	1 339 30                        ; kda_gluon_backward.py:339:30
	v_sub_f32_e32 v172, v34, v38
	.loc	1 349 20                        ; kda_gluon_backward.py:349:20
	v_mul_f32_e32 v34, s94, v193
	v_mul_f32_e32 v38, s97, v213
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp164:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_mov_b32_dpp v170, v170 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp165:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v178, v171, v170
.Ltmp166:
	.loc	1 339 30                        ; kda_gluon_backward.py:339:30
	v_dual_sub_f32 v170, v33, v37 :: v_dual_mov_b32 v33, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp167:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_mov_b32_dpp v33, v33 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp168:
	.loc	1 339 30                        ; kda_gluon_backward.py:339:30
	v_sub_f32_e32 v171, v35, v174
	v_sub_f32_e32 v174, v36, v178
	.loc	1 349 20                        ; kda_gluon_backward.py:349:20
	v_mul_f32_e32 v36, s99, v215
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp169:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_dual_add_f32 v32, v32, v33 :: v_dual_mov_b32 v33, v31
.Ltmp170:
	.loc	1 347 13                        ; kda_gluon_backward.py:347:13
	v_fmac_f32_e32 v52, v17, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 339 30                        ; kda_gluon_backward.py:339:30
	v_sub_f32_e32 v179, v192, v32
.Ltmp171:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_mov_b32_dpp v33, v33 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp172:
	.loc	1 340 28                        ; kda_gluon_backward.py:340:28
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v192, v120, v174
	.loc	1 349 20                        ; kda_gluon_backward.py:349:20
	v_dual_mul_f32 v32, s95, v195 :: v_dual_fmac_f32 v87, v23, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp173:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v31, v31, v33
.Ltmp174:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_dual_mov_b32 v33, v30 :: v_dual_fmac_f32 v92, v24, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v33, v33 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp175:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_dual_add_f32 v30, v30, v33 :: v_dual_mov_b32 v33, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp176:
	.loc	1 339 30                        ; kda_gluon_backward.py:339:30
	v_sub_f32_e32 v181, v190, v30
.Ltmp177:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:338:26 ]
	v_mov_b32_dpp v33, v33 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp178:
	.loc	1 340 28                        ; kda_gluon_backward.py:340:28
	v_mul_f32_e32 v190, v120, v170
	.loc	1 339 30                        ; kda_gluon_backward.py:339:30
	v_sub_f32_e32 v178, v191, v31
	.loc	1 340 28                        ; kda_gluon_backward.py:340:28
	v_mul_f32_e32 v191, v120, v171
	.loc	1 349 20                        ; kda_gluon_backward.py:349:20
	v_mul_f32_e32 v31, s96, v196
.Ltmp179:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:338:26 ] ]
	v_add_f32_e32 v29, v29, v33
.Ltmp180:
	.loc	1 349 20                        ; kda_gluon_backward.py:349:20
	v_mul_f32_e32 v33, s41, v194
	v_mul_f32_e32 v37, s98, v214
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 347 13                        ; kda_gluon_backward.py:347:13
	v_dual_fmac_f32 v113, v22, v36 :: v_dual_fmac_f32 v104, v21, v31
	.loc	1 339 30                        ; kda_gluon_backward.py:339:30
	v_dual_sub_f32 v180, v189, v29 :: v_dual_mul_f32 v189, v120, v172
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 347 13                        ; kda_gluon_backward.py:347:13
	v_fmac_f32_e32 v86, v23, v33
	v_dual_fmac_f32 v85, v23, v32 :: v_dual_fmac_f32 v94, v24, v33
	v_dual_fmac_f32 v95, v24, v38 :: v_dual_fmac_f32 v68, v18, v33
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v13, v189, v142
	.loc	1 347 13                        ; kda_gluon_backward.py:347:13
	v_dual_fmac_f32 v97, v24, v36 :: v_dual_fmac_f32 v76, v19, v33
	v_fmac_f32_e32 v83, v20, v33
	v_dual_fmac_f32 v55, v17, v32 :: v_dual_fmac_f32 v64, v18, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v217, v194, v29
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v13, v190, v137
	.loc	1 347 13                        ; kda_gluon_backward.py:347:13
	v_dual_fmac_f32 v63, v18, v32 :: v_dual_fmac_f32 v72, v19, v37
	v_dual_fmac_f32 v71, v19, v32 :: v_dual_fmac_f32 v80, v20, v37
.Ltmp181:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v217, v193, v29
.Ltmp182:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v13, v192, v162
	.loc	1 347 13                        ; kda_gluon_backward.py:347:13
	v_fmac_f32_e32 v58, v17, v31
	v_fmac_f32_e32 v66, v18, v31
	v_fmac_f32_e32 v74, v19, v31
	v_fmac_f32_e32 v82, v20, v31
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v218, v196, v29
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v13, v191, v157
	.loc	1 347 13                        ; kda_gluon_backward.py:347:13
	v_dual_fmac_f32 v101, v21, v32 :: v_dual_fmac_f32 v112, v22, v31
	v_dual_fmac_f32 v103, v21, v38 :: v_dual_fmac_f32 v110, v22, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp183:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v218, v195, v29
.Ltmp184:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v14, v189, v140
	.loc	1 347 13                        ; kda_gluon_backward.py:347:13
	v_dual_fmac_f32 v111, v22, v38 :: v_dual_fmac_f32 v88, v23, v31
	v_dual_fmac_f32 v91, v23, v37 :: v_dual_fmac_f32 v96, v24, v31
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v219, v194, v29
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v14, v190, v135
	.loc	1 347 13                        ; kda_gluon_backward.py:347:13
	v_dual_fmac_f32 v89, v23, v36 :: v_dual_fmac_f32 v98, v24, v37
	v_fmac_f32_e32 v114, v22, v37
	v_fmac_f32_e32 v102, v21, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp185:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v219, v193, v29
.Ltmp186:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v14, v192, v161
	.loc	1 347 13                        ; kda_gluon_backward.py:347:13
	v_fmac_f32_e32 v60, v17, v33
	v_fmac_f32_e32 v56, v17, v37
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v220, v196, v29
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v14, v191, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp187:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v220, v195, v29
.Ltmp188:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v15, v189, v133
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v221, v194, v29
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v15, v190, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp189:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v221, v193, v29
.Ltmp190:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v15, v192, v154
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v222, v196, v29
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v15, v191, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp191:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v222, v195, v29
.Ltmp192:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v16, v189, v130
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v223, v194, v29
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v16, v190, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp193:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v223, v193, v29
.Ltmp194:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v16, v192, v151
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v224, v196, v29
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v16, v191, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp195:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v224, v195, v29
.Ltmp196:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v5, v189, v124
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v197, v194, v29
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v5, v190, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp197:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v197, v193, v29
.Ltmp198:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v5, v192, v139
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v198, v196, v29
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v5, v191, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp199:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v198, v195, v29
.Ltmp200:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v6, v189, v123
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v199, v194, v29
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v6, v190, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp201:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v199, v193, v29
.Ltmp202:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v6, v192, v136
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v200, v196, v29
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v6, v191, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp203:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v200, v195, v29
.Ltmp204:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v7, v189, v122
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v201, v194, v29
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v7, v190, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp205:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v201, v193, v29
.Ltmp206:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v7, v192, v131
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v202, v196, v29
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v7, v191, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp207:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v202, v195, v29
.Ltmp208:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v8, v189, v121
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v203, v194, v29
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v8, v190, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 340 28                        ; kda_gluon_backward.py:340:28
	v_dual_mul_f32 v194, v120, v179 :: v_dual_fmac_f32 v203, v193, v29
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v8, v192, v128
	.loc	1 340 28                        ; kda_gluon_backward.py:340:28
	v_mul_f32_e32 v193, v120, v178
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v204, v196, v29
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v8, v191, v125
	.loc	1 340 28                        ; kda_gluon_backward.py:340:28
	v_mul_f32_e32 v196, v120, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v30, v13, v193, v186
.Ltmp209:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v204, v195, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp210:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v13, v196, v182
	.loc	1 340 28                        ; kda_gluon_backward.py:340:28
	v_mul_f32_e32 v195, v120, v180
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v225, v214, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v13, v195, v176
	v_fma_f32 v35, v14, v195, v173
.Ltmp211:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v225, v213, v29
.Ltmp212:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v29, v13, v194, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v29, v216, v29
.Ltmp213:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v29, v215, v30
.Ltmp214:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v30, v14, v196, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v30, v214, v30
.Ltmp215:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v30, v213, v35
.Ltmp216:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v35, v14, v194, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v226, v216, v35
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v35, v14, v193, v185
.Ltmp217:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v226, v215, v35
.Ltmp218:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v35, v15, v196, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v227, v214, v35
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v35, v15, v195, v166
.Ltmp219:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v227, v213, v35
.Ltmp220:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v35, v15, v194, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v228, v216, v35
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v35, v15, v193, v175
.Ltmp221:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v228, v215, v35
.Ltmp222:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v35, v16, v196, v165
.Ltmp223:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_add_f32_e32 v31, v223, v224
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp224:
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v229, v214, v35
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v35, v16, v195, v163
.Ltmp225:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v229, v213, v35
.Ltmp226:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v35, v16, v194, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v230, v216, v35
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v35, v16, v193, v169
.Ltmp227:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v230, v215, v35
.Ltmp228:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v35, v5, v196, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v205, v214, v35
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v35, v5, v195, v149
.Ltmp229:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v205, v213, v35
.Ltmp230:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v35, v5, v194, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v206, v216, v35
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v35, v5, v193, v160
.Ltmp231:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v206, v215, v35
.Ltmp232:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v35, v6, v196, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v207, v214, v35
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v35, v6, v195, v147
.Ltmp233:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v207, v213, v35
.Ltmp234:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v35, v6, v194, v164
	.loc	1 347 13                        ; kda_gluon_backward.py:347:13
	v_fmac_f32_e32 v100, v21, v34
	v_dual_fmac_f32 v105, v21, v36 :: v_dual_fmac_f32 v108, v22, v34
	v_dual_fmac_f32 v109, v22, v32 :: v_dual_fmac_f32 v90, v24, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v208, v216, v35
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v35, v6, v193, v159
	.loc	1 347 13                        ; kda_gluon_backward.py:347:13
	v_fmac_f32_e32 v81, v20, v34
	v_fmac_f32_e32 v84, v23, v34
	v_fmac_f32_e32 v57, v17, v34
	v_dual_fmac_f32 v65, v18, v34 :: v_dual_fmac_f32 v208, v215, v35
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v35, v7, v196, v144
	.loc	1 347 13                        ; kda_gluon_backward.py:347:13
	v_fmac_f32_e32 v73, v19, v34
	v_fmac_f32_e32 v59, v18, v36
	v_fmac_f32_e32 v67, v19, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v209, v214, v35
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v35, v7, v195, v141
.Ltmp235:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v209, v213, v35
.Ltmp236:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v35, v7, v194, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v210, v216, v35
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v35, v7, v193, v152
.Ltmp237:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v210, v215, v35
.Ltmp238:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v35, v8, v196, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v211, v214, v35
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v35, v8, v195, v138
.Ltmp239:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_fmac_f32_e32 v211, v213, v35
.Ltmp240:
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v35, v8, v194, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 344 24                        ; kda_gluon_backward.py:344:24
	v_mul_f32_e32 v212, v216, v35
	.loc	1 341 21                        ; kda_gluon_backward.py:341:21
	v_fma_f32 v35, v8, v193, v148
.Ltmp241:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_dual_fmac_f32 v212, v215, v35 :: v_dual_mul_f32 v35, s100, v216
.Ltmp242:
	.loc	1 347 13                        ; kda_gluon_backward.py:347:13
	v_fmac_f32_e32 v79, v20, v32
	v_fmac_f32_e32 v53, v17, v38
	v_fmac_f32_e32 v61, v18, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v69, v19, v38 :: v_dual_fmac_f32 v78, v20, v35
	v_fmac_f32_e32 v107, v21, v35
	v_fmac_f32_e32 v93, v23, v35
	v_fmac_f32_e32 v99, v24, v35
	v_fmac_f32_e32 v54, v17, v35
	v_fmac_f32_e32 v62, v18, v35
	v_dual_fmac_f32 v70, v19, v35 :: v_dual_mul_f32 v17, v14, v108
	.loc	1 351 34                        ; kda_gluon_backward.py:351:34
	v_mul_f32_e32 v18, v16, v90
	v_mul_f32_e32 v19, v8, v81
	.loc	1 347 13                        ; kda_gluon_backward.py:347:13
	v_dual_fmac_f32 v77, v20, v38 :: v_dual_fmac_f32 v106, v21, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v115, v22, v35 :: v_dual_fmac_f32 v18, v15, v84
.Ltmp243:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_fmac_f32_e32 v19, v7, v73
	v_fmac_f32_e32 v17, v13, v100
.Ltmp244:
	.loc	1 351 34                        ; kda_gluon_backward.py:351:34
	v_mul_f32_e32 v21, v8, v83
	v_mul_f32_e32 v22, v8, v82
.Ltmp245:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_add_f32_e32 v32, v229, v230
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp246:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_dual_add_f32 v17, v17, v18 :: v_dual_mul_f32 v18, v6, v65
.Ltmp247:
	.loc	1 347 13 is_stmt 1              ; kda_gluon_backward.py:347:13
	v_fmac_f32_e32 v75, v20, v36
	.loc	1 351 34                        ; kda_gluon_backward.py:351:34
	v_dual_mul_f32 v20, v16, v94 :: v_dual_fmac_f32 v21, v7, v76
.Ltmp248:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_fmac_f32_e32 v22, v7, v74
	v_fmac_f32_e32 v18, v5, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v20, v15, v86
	v_add_f32_e32 v18, v18, v19
.Ltmp249:
	.loc	1 351 34                        ; kda_gluon_backward.py:351:34
	v_mul_f32_e32 v19, v14, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp250:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_fmac_f32_e32 v19, v13, v102
	v_add_f32_e32 v19, v19, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp251:
	.loc	1 351 34                        ; kda_gluon_backward.py:351:34
	v_dual_mul_f32 v20, v6, v68 :: v_dual_add_f32 v17, v17, v18
.Ltmp252:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_fmac_f32_e32 v20, v5, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v20, v20, v21
.Ltmp253:
	.loc	1 351 34                        ; kda_gluon_backward.py:351:34
	v_dual_mul_f32 v21, v8, v79 :: v_dual_add_f32 v18, v19, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp254:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_permlanex16_b32 v19, v17, s101, 0xfedcba98 op_sel:[1,0]
.Ltmp255:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_fmac_f32_e32 v21, v7, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v17, v17, v19
.Ltmp256:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_permlanex16_b32 v19, v18, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp257:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_add_f32_e32 v18, v18, v19
.Ltmp258:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_mov_b32_e32 v20, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp259:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_add_f32_e32 v18, v18, v20
.Ltmp260:
	.loc	1 351 34                        ; kda_gluon_backward.py:351:34
	v_dual_mul_f32 v20, v16, v92 :: v_dual_mov_b32 v19, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp261:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_fmac_f32_e32 v20, v15, v85
.Ltmp262:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp263:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_add_f32_e32 v17, v17, v19
.Ltmp264:
	.loc	1 351 34                        ; kda_gluon_backward.py:351:34
	v_mul_f32_e32 v19, v14, v109
.Ltmp265:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_fmac_f32_e32 v19, v13, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v19, v19, v20 :: v_dual_mul_f32 v20, v6, v63
	v_fmac_f32_e32 v20, v5, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v20, v20, v21
.Ltmp266:
	.loc	1 351 34                        ; kda_gluon_backward.py:351:34
	v_mul_f32_e32 v21, v16, v96
.Ltmp267:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_add_f32_e32 v19, v19, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v21, v15, v88
.Ltmp268:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_permlanex16_b32 v20, v19, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp269:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_add_f32_e32 v19, v19, v20
.Ltmp270:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_mov_b32_e32 v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp271:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_add_f32_e32 v19, v19, v20
.Ltmp272:
	.loc	1 351 34                        ; kda_gluon_backward.py:351:34
	v_mul_f32_e32 v20, v14, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp273:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_fmac_f32_e32 v20, v13, v104
	v_dual_add_f32 v20, v20, v21 :: v_dual_mul_f32 v21, v6, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v5, v58
	v_add_f32_e32 v21, v21, v22
.Ltmp274:
	.loc	1 351 34                        ; kda_gluon_backward.py:351:34
	v_mul_f32_e32 v22, v8, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp275:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_add_f32_e32 v20, v20, v21
	v_fmac_f32_e32 v22, v7, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp276:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_permlanex16_b32 v21, v20, s101, 0xfedcba98 op_sel:[1,0]
.Ltmp277:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_add_f32_e32 v20, v20, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp278:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_mov_b32_e32 v21, v20
	v_mov_b32_dpp v21, v21 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp279:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_add_f32_e32 v20, v20, v21
.Ltmp280:
	.loc	1 351 34                        ; kda_gluon_backward.py:351:34
	v_mul_f32_e32 v21, v8, v80
.Ltmp281:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	ds_store_b128 v49, v[17:20]
.Ltmp282:
	.loc	1 351 34                        ; kda_gluon_backward.py:351:34
	v_mul_f32_e32 v17, v14, v111
	v_mul_f32_e32 v18, v16, v95
	v_mul_f32_e32 v19, v8, v77
	v_dual_mul_f32 v20, v16, v98 :: v_dual_fmac_f32 v21, v7, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp283:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_fmac_f32_e32 v17, v13, v103
	v_fmac_f32_e32 v18, v15, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v19, v7, v69
	v_fmac_f32_e32 v20, v15, v91
.Ltmp284:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp285:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_dual_add_f32 v17, v17, v18 :: v_dual_mul_f32 v18, v6, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v5, v53
	v_add_f32_e32 v18, v18, v19
.Ltmp286:
	.loc	1 351 34                        ; kda_gluon_backward.py:351:34
	v_mul_f32_e32 v19, v14, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp287:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_fmac_f32_e32 v19, v13, v106
	v_add_f32_e32 v19, v19, v20
.Ltmp288:
	.loc	1 351 34                        ; kda_gluon_backward.py:351:34
	v_mul_f32_e32 v20, v6, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp289:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_fmac_f32_e32 v20, v5, v56
	v_dual_add_f32 v20, v20, v21 :: v_dual_add_f32 v17, v17, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp290:
	.loc	1 351 34                        ; kda_gluon_backward.py:351:34
	v_dual_mul_f32 v21, v8, v75 :: v_dual_add_f32 v18, v19, v20
.Ltmp291:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_permlanex16_b32 v19, v17, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp292:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_fmac_f32_e32 v21, v7, v67
	v_add_f32_e32 v17, v17, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp293:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_permlanex16_b32 v19, v18, s101, 0xfedcba98 op_sel:[1,0]
.Ltmp294:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_add_f32_e32 v18, v18, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp295:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_mov_b32_e32 v20, v18
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp296:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_add_f32_e32 v18, v18, v20
.Ltmp297:
	.loc	1 351 34                        ; kda_gluon_backward.py:351:34
	v_dual_mul_f32 v20, v16, v97 :: v_dual_mov_b32 v19, v17
.Ltmp298:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_fmac_f32_e32 v20, v15, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp299:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp300:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_add_f32_e32 v17, v17, v19
.Ltmp301:
	.loc	1 351 34                        ; kda_gluon_backward.py:351:34
	v_mul_f32_e32 v19, v14, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp302:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_fmac_f32_e32 v19, v13, v105
	v_dual_add_f32 v19, v19, v20 :: v_dual_mul_f32 v20, v6, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, v5, v52
	v_add_f32_e32 v20, v20, v21
.Ltmp303:
	.loc	1 351 34                        ; kda_gluon_backward.py:351:34
	v_mul_f32_e32 v21, v16, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp304:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_fmac_f32_e32 v21, v15, v93
	v_add_f32_e32 v19, v19, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp305:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_permlanex16_b32 v20, v19, s101, 0xfedcba98 op_sel:[1,0]
.Ltmp306:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_add_f32_e32 v19, v19, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp307:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_mov_b32_e32 v20, v19
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp308:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_dual_add_f32 v19, v19, v20 :: v_dual_mul_f32 v20, v14, v115
	v_fmac_f32_e32 v20, v13, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v20, v20, v21 :: v_dual_mul_f32 v21, v6, v62
	v_fmac_f32_e32 v21, v5, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v21, v21, v22
	v_add_f32_e32 v20, v20, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp309:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_permlanex16_b32 v21, v20, s101, 0xfedcba98 op_sel:[1,0]
.Ltmp310:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_add_f32_e32 v20, v20, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp311:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_mov_b32_e32 v21, v20
	v_mov_b32_dpp v21, v21 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp312:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_add_f32_e32 v20, v20, v21
.Ltmp313:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	ds_load_b128 v[21:24], v50
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v49, v[17:20]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_permlanex16_b32 v17, v21, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp314:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_add_f32_e32 v21, v21, v17
.Ltmp315:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_permlanex16_b32 v17, v22, s101, 0xfedcba98 op_sel:[1,0]
.Ltmp316:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_add_f32_e32 v213, v22, v17
.Ltmp317:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_permlanex16_b32 v17, v23, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp318:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_add_f32_e32 v22, v23, v17
.Ltmp319:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_permlanex16_b32 v17, v24, s101, 0xfedcba98 op_sel:[1,0]
.Ltmp320:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_add_f32_e32 v215, v24, v17
.Ltmp321:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	ds_load_b128 v[17:20], v50
.Ltmp322:
	.loc	1 368 34                        ; kda_gluon_backward.py:368:34
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp323:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_permlanex16_b32 v23, v20, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp324:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_add_f32_e32 v23, v20, v23
.Ltmp325:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_permlanex16_b32 v20, v19, s101, 0xfedcba98 op_sel:[1,0]
.Ltmp326:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_add_f32_e32 v24, v19, v20
.Ltmp327:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_permlanex16_b32 v19, v18, s101, 0xfedcba98 op_sel:[1,0]
.Ltmp328:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_add_f32_e32 v20, v30, v226
	v_add_f32_e32 v30, v227, v228
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp329:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_add_f32_e32 v216, v18, v19
.Ltmp330:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_permlanex16_b32 v18, v17, s101, 0xfedcba98 op_sel:[1,0]
.Ltmp331:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_dual_add_f32 v19, v219, v220 :: v_dual_add_f32 v214, v17, v18
	v_add_f32_e32 v17, v217, v218
	v_add_f32_e32 v18, v225, v29
	v_add_f32_e32 v29, v221, v222
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v17, v17, v18 :: v_dual_add_f32 v18, v19, v20
	v_dual_add_f32 v20, v31, v32 :: v_dual_add_f32 v19, v29, v30
	v_add_f32_e32 v30, v209, v210
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp332:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_dual_mov_b32 v29, v17 :: v_dual_add_f32 v32, v211, v212
.Ltmp333:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_add_f32_e32 v31, v203, v204
.Ltmp334:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_dpp v29, v29 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp335:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_add_f32_e32 v17, v17, v29
.Ltmp336:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_e32 v29, v18
	v_mov_b32_dpp v29, v29 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp337:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_dual_add_f32 v18, v18, v29 :: v_dual_mov_b32 v29, v19
.Ltmp338:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_dpp v29, v29 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp339:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_add_f32_e32 v19, v19, v29
.Ltmp340:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_e32 v29, v20
	v_mov_b32_dpp v29, v29 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp341:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_dual_add_f32 v20, v20, v29 :: v_dual_mov_b32 v29, v17
.Ltmp342:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_dpp v29, v29 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp343:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_add_f32_e32 v17, v17, v29
.Ltmp344:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_e32 v29, v18
	v_mov_b32_dpp v29, v29 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp345:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_dual_add_f32 v18, v18, v29 :: v_dual_mov_b32 v29, v19
.Ltmp346:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_dpp v29, v29 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp347:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_add_f32_e32 v19, v19, v29
.Ltmp348:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_e32 v29, v20
	v_mov_b32_dpp v29, v29 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp349:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_dual_add_f32 v20, v20, v29 :: v_dual_mov_b32 v29, v17
.Ltmp350:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_dpp v29, v29 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp351:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_add_f32_e32 v17, v17, v29
.Ltmp352:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_e32 v29, v18
.Ltmp353:
	.loc	1 344 17                        ; kda_gluon_backward.py:344:17
	v_mul_f32_e32 v17, s41, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp354:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_dpp v29, v29 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp355:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_dual_add_f32 v18, v18, v29 :: v_dual_mov_b32 v29, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp356:
	.loc	1 344 17                        ; kda_gluon_backward.py:344:17
	v_mul_f32_e32 v18, s41, v18
.Ltmp357:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_dpp v29, v29 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp358:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_add_f32_e32 v19, v19, v29
.Ltmp359:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_e32 v29, v20
.Ltmp360:
	.loc	1 344 17                        ; kda_gluon_backward.py:344:17
	v_mul_f32_e32 v19, s41, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp361:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_dpp v29, v29 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp362:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_dual_add_f32 v20, v20, v29 :: v_dual_add_f32 v29, v201, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
.Ltmp363:
	.loc	1 344 17                        ; kda_gluon_backward.py:344:17
	v_mul_f32_e32 v20, s41, v20
	.loc	1 368 34                        ; kda_gluon_backward.py:368:34
	ds_store_2addr_b64 v48, v[17:18], v[19:20] offset1:16
.Ltmp364:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_add_f32_e32 v17, v197, v198
	v_dual_add_f32 v18, v205, v206 :: v_dual_add_f32 v19, v199, v200
	v_dual_add_f32 v20, v207, v208 :: v_dual_add_f32 v17, v17, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v18, v19, v20 :: v_dual_add_f32 v19, v29, v30
.Ltmp365:
	.loc	1 355 17                        ; kda_gluon_backward.py:355:17
	v_dual_mul_f32 v30, v107, v194 :: v_dual_mov_b32 v29, v17
.Ltmp366:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_add_f32_e32 v20, v31, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp367:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_fmac_f32_e32 v30, v105, v193
.Ltmp368:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_dpp v29, v29 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp369:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_add_f32_e32 v17, v17, v29
.Ltmp370:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_e32 v29, v18
	v_mov_b32_dpp v29, v29 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp371:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_dual_add_f32 v18, v18, v29 :: v_dual_mov_b32 v29, v19
.Ltmp372:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_dpp v29, v29 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp373:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_add_f32_e32 v19, v19, v29
.Ltmp374:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_e32 v29, v20
	v_mov_b32_dpp v29, v29 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp375:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_dual_add_f32 v20, v20, v29 :: v_dual_mov_b32 v29, v17
.Ltmp376:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_dpp v29, v29 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp377:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_add_f32_e32 v17, v17, v29
.Ltmp378:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_e32 v29, v18
	v_mov_b32_dpp v29, v29 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp379:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_dual_add_f32 v18, v18, v29 :: v_dual_mov_b32 v29, v19
.Ltmp380:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_dpp v29, v29 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp381:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_add_f32_e32 v19, v19, v29
.Ltmp382:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_e32 v29, v20
	v_mov_b32_dpp v29, v29 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp383:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_dual_add_f32 v20, v20, v29 :: v_dual_mov_b32 v29, v17
.Ltmp384:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_dpp v29, v29 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp385:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_add_f32_e32 v17, v17, v29
.Ltmp386:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_e32 v29, v18
.Ltmp387:
	.loc	1 344 17                        ; kda_gluon_backward.py:344:17
	v_mul_f32_e32 v17, s41, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp388:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_dpp v29, v29 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp389:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_dual_add_f32 v18, v18, v29 :: v_dual_mov_b32 v29, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp390:
	.loc	1 344 17                        ; kda_gluon_backward.py:344:17
	v_mul_f32_e32 v18, s41, v18
.Ltmp391:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_dpp v29, v29 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp392:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_add_f32_e32 v19, v19, v29
.Ltmp393:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_e32 v29, v20
.Ltmp394:
	.loc	1 344 17                        ; kda_gluon_backward.py:344:17
	v_mul_f32_e32 v19, s41, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp395:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:344:17 ]
	v_mov_b32_dpp v29, v29 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp396:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:344:17 ] ]
	v_dual_add_f32 v20, v20, v29 :: v_dual_mul_f32 v29, v106, v196
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp397:
	.loc	1 344 17                        ; kda_gluon_backward.py:344:17
	v_dual_mul_f32 v20, s41, v20 :: v_dual_fmac_f32 v29, v103, v195
	.loc	1 368 34                        ; kda_gluon_backward.py:368:34
	ds_store_2addr_b64 v48, v[17:18], v[19:20] offset0:32 offset1:48
.Ltmp398:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_mov_b32_e32 v17, v213
.Ltmp399:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_add_f32_e32 v29, v29, v30
.Ltmp400:
	.loc	1 368 34                        ; kda_gluon_backward.py:368:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp401:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp402:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_add_f32_e32 v31, v213, v17
.Ltmp403:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_mov_b32_e32 v17, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp404:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_dual_add_f32 v32, v215, v17 :: v_dual_mov_b32 v17, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp405:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp406:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_add_f32_e32 v33, v216, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp407:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_dual_mov_b32 v17, v21 :: v_dual_mul_f32 v18, v120, v33
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp408:
	.loc	1 361 28                        ; kda_gluon_backward.py:361:28
	v_fma_f32 v205, -v13, v18, v106
.Ltmp409:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_dual_add_f32 v34, v21, v17 :: v_dual_mov_b32 v17, v22
.Ltmp410:
	.loc	1 361 28                        ; kda_gluon_backward.py:361:28
	v_fma_f32 v223, -v14, v18, v114
	v_fma_f32 v239, -v6, v18, v64
	v_fma_f32 v231, -v5, v18, v56
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 352 29                        ; kda_gluon_backward.py:352:29
	v_mul_f32_e32 v21, v120, v34
.Ltmp411:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp412:
	.loc	1 361 28                        ; kda_gluon_backward.py:361:28
	v_fma_f32 v247, -v7, v18, v72
	v_fma_f32 v255, -v8, v18, v80
	v_fma_f32 v213, -v15, v18, v91
	v_fma_f32 v200, -v13, v21, v100
.Ltmp413:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_add_f32_e32 v35, v22, v17
.Ltmp414:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_dual_mov_b32 v17, v214 :: v_dual_mul_f32 v22, v120, v31
.Ltmp415:
	.loc	1 361 28                        ; kda_gluon_backward.py:361:28
	v_fma_f32 v224, -v14, v21, v108
	v_fma_f32 v220, -v16, v18, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp416:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp417:
	.loc	1 361 28                        ; kda_gluon_backward.py:361:28
	v_fma_f32 v201, -v13, v22, v102
	v_fma_f32 v222, -v14, v22, v110
	v_fma_f32 v209, -v15, v22, v86
	v_fma_f32 v235, -v6, v22, v68
.Ltmp418:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_dual_add_f32 v36, v214, v17 :: v_dual_mov_b32 v17, v24
.Ltmp419:
	.loc	1 361 28                        ; kda_gluon_backward.py:361:28
	v_fma_f32 v227, -v5, v22, v60
	v_fma_f32 v243, -v7, v22, v76
	v_fma_f32 v251, -v8, v22, v83
	v_fma_f32 v216, -v16, v22, v94
.Ltmp420:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp421:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_add_f32_e32 v37, v24, v17
.Ltmp422:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_dual_mov_b32 v17, v23 :: v_dual_mul_f32 v24, v120, v32
.Ltmp423:
	.loc	1 352 29                        ; kda_gluon_backward.py:352:29
	v_mul_f32_e32 v19, v120, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp424:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:351:27 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp425:
	.loc	1 361 28                        ; kda_gluon_backward.py:361:28
	v_fma_f32 v203, -v13, v24, v104
	v_fma_f32 v237, -v6, v24, v66
	v_fma_f32 v229, -v5, v24, v58
	v_fma_f32 v206, -v13, v19, v105
.Ltmp426:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:351:27 ] ]
	v_dual_add_f32 v38, v23, v17 :: v_dual_mul_f32 v17, v120, v36
.Ltmp427:
	.loc	1 352 29                        ; kda_gluon_backward.py:352:29
	v_mul_f32_e32 v23, v120, v35
	.loc	1 361 28                        ; kda_gluon_backward.py:361:28
	v_fma_f32 v199, -v14, v19, v113
	v_fma_f32 v245, -v7, v24, v74
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 352 29                        ; kda_gluon_backward.py:352:29
	v_mul_f32_e32 v20, v120, v38
	.loc	1 361 28                        ; kda_gluon_backward.py:361:28
	v_fma_f32 v204, -v13, v17, v103
	v_fma_f32 v202, -v13, v23, v101
	v_fma_f32 v120, -v14, v24, v112
	v_fma_f32 v198, -v14, v23, v109
	v_fma_f32 v207, -v13, v20, v107
	v_fma_f32 v197, -v14, v20, v115
	v_fma_f32 v225, -v14, v17, v111
	.loc	1 355 17                        ; kda_gluon_backward.py:355:17
	v_dual_mul_f32 v13, v102, v189 :: v_dual_mul_f32 v14, v104, v192
	v_mul_f32_e32 v102, v115, v194
	.loc	1 361 28                        ; kda_gluon_backward.py:361:28
	v_fma_f32 v241, -v6, v20, v62
	v_fma_f32 v233, -v5, v20, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp428:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_dual_fmac_f32 v13, v100, v190 :: v_dual_fmac_f32 v14, v101, v191
.Ltmp429:
	.loc	1 355 17                        ; kda_gluon_backward.py:355:17
	v_mul_f32_e32 v100, v112, v192
	v_dual_mul_f32 v101, v114, v196 :: v_dual_fmac_f32 v102, v113, v193
	.loc	1 361 28                        ; kda_gluon_backward.py:361:28
	v_fma_f32 v249, -v7, v20, v70
.Ltmp430:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_dual_add_f32 v13, v13, v14 :: v_dual_mul_f32 v14, v110, v189
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v100, v109, v191
	v_fmac_f32_e32 v101, v111, v195
.Ltmp431:
	.loc	1 361 28                        ; kda_gluon_backward.py:361:28
	v_fma_f32 v253, -v8, v24, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp432:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_dual_add_f32 v13, v13, v29 :: v_dual_fmac_f32 v14, v108, v190
.Ltmp433:
	.loc	1 361 28                        ; kda_gluon_backward.py:361:28
	v_fma_f32 v211, -v15, v24, v88
.Ltmp434:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_add_f32_e32 v30, v101, v102
.Ltmp435:
	.loc	1 358 17                        ; kda_gluon_backward.py:358:17
	v_mul_f32_e32 v101, v161, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp436:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_dual_mov_b32 v29, v13 :: v_dual_add_f32 v14, v14, v100
.Ltmp437:
	.loc	1 358 17                        ; kda_gluon_backward.py:358:17
	v_mul_f32_e32 v100, v188, v20
	v_mul_f32_e32 v102, v187, v20
.Ltmp438:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_fmac_f32_e32 v101, v155, v23
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp439:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_dpp v29, v29 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp440:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_add_f32_e32 v14, v14, v30
.Ltmp441:
	.loc	1 358 17                        ; kda_gluon_backward.py:358:17
	v_mul_f32_e32 v30, v162, v24
.Ltmp442:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_fmac_f32_e32 v100, v186, v19
	v_fmac_f32_e32 v102, v185, v19
.Ltmp443:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_add_f32_e32 v13, v13, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp444:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_dual_mov_b32 v29, v14 :: v_dual_fmac_f32 v30, v157, v23
.Ltmp445:
	.loc	1 361 28                        ; kda_gluon_backward.py:361:28
	v_fma_f32 v218, -v16, v24, v96
.Ltmp446:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_dpp v29, v29 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp447:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_dual_add_f32 v14, v14, v29 :: v_dual_mov_b32 v29, v13
.Ltmp448:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_dpp v29, v29 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp449:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_add_f32_e32 v13, v13, v29
.Ltmp450:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_e32 v29, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v29, v29 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp451:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_dual_add_f32 v14, v14, v29 :: v_dual_mov_b32 v29, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp452:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_dpp v29, v29 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp453:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_add_f32_e32 v13, v13, v29
.Ltmp454:
	.loc	1 358 17                        ; kda_gluon_backward.py:358:17
	v_mul_f32_e32 v29, v142, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp455:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_fmac_f32_e32 v29, v137, v21
	v_add_f32_e32 v29, v29, v30
.Ltmp456:
	.loc	1 358 17                        ; kda_gluon_backward.py:358:17
	v_mul_f32_e32 v30, v182, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp457:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_fmac_f32_e32 v30, v176, v17
	v_add_f32_e32 v30, v30, v100
.Ltmp458:
	.loc	1 358 17                        ; kda_gluon_backward.py:358:17
	v_mul_f32_e32 v100, v140, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp459:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_dual_add_f32 v29, v29, v30 :: v_dual_fmac_f32 v100, v135, v21
.Ltmp460:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_e32 v30, v14
.Ltmp461:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_dual_add_f32 v100, v100, v101 :: v_dual_mul_f32 v101, v177, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp462:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_dpp v30, v30 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp463:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_dual_fmac_f32 v101, v173, v17 :: v_dual_add_f32 v14, v14, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v101, v101, v102
	v_add_f32_e32 v30, v100, v101
.Ltmp464:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_e32 v100, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v100, v100 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp465:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_dual_add_f32 v29, v29, v100 :: v_dual_mov_b32 v100, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp466:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_dpp v100, v100 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp467:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_add_f32_e32 v30, v30, v100
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp468:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_e32 v100, v29
.Ltmp469:
	.loc	1 361 28                        ; kda_gluon_backward.py:361:28
	v_fma_f32 v212, -v15, v17, v87
	v_fma_f32 v238, -v6, v17, v61
	v_fma_f32 v240, -v6, v19, v59
	v_fma_f32 v230, -v5, v17, v53
.Ltmp470:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_dpp v100, v100 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp471:
	.loc	1 361 28                        ; kda_gluon_backward.py:361:28
	v_fma_f32 v232, -v5, v19, v52
	v_fma_f32 v246, -v7, v17, v69
	v_fma_f32 v248, -v7, v19, v67
	v_fma_f32 v254, -v8, v17, v77
.Ltmp472:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_dual_add_f32 v29, v29, v100 :: v_dual_mov_b32 v100, v30
.Ltmp473:
	.loc	1 361 28                        ; kda_gluon_backward.py:361:28
	v_fma_f32 v210, -v15, v23, v85
	v_fma_f32 v236, -v6, v23, v63
	v_fma_f32 v228, -v5, v23, v55
	v_fma_f32 v244, -v7, v23, v71
.Ltmp474:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_dpp v100, v100 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp475:
	.loc	1 361 28                        ; kda_gluon_backward.py:361:28
	v_fma_f32 v252, -v8, v23, v79
	v_fma_f32 v214, -v15, v19, v89
	v_fma_f32 v217, -v16, v23, v92
	v_fma_f32 v219, -v16, v17, v95
.Ltmp476:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_add_f32_e32 v30, v30, v100
.Ltmp477:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_e32 v100, v29
.Ltmp478:
	.loc	1 361 28                        ; kda_gluon_backward.py:361:28
	v_fma_f32 v208, -v15, v21, v84
	v_fma_f32 v234, -v6, v21, v65
	.loc	1 355 17                        ; kda_gluon_backward.py:355:17
	v_mul_f32_e32 v6, v68, v189
	.loc	1 361 28                        ; kda_gluon_backward.py:361:28
	v_fma_f32 v226, -v5, v21, v57
.Ltmp479:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_dpp v100, v100 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp480:
	.loc	1 355 17                        ; kda_gluon_backward.py:355:17
	v_mul_f32_e32 v5, v60, v189
	v_mul_f32_e32 v60, v72, v196
.Ltmp481:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_fmac_f32_e32 v6, v65, v190
.Ltmp482:
	.loc	1 361 28                        ; kda_gluon_backward.py:361:28
	v_fma_f32 v242, -v7, v21, v73
.Ltmp483:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_dual_add_f32 v29, v29, v100 :: v_dual_mov_b32 v100, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp484:
	.loc	1 355 17                        ; kda_gluon_backward.py:355:17
	v_dual_mul_f32 v7, v76, v189 :: v_dual_fmac_f32 v60, v69, v195
	.loc	1 361 28                        ; kda_gluon_backward.py:361:28
	v_fma_f32 v250, -v8, v21, v81
	.loc	1 354 32                        ; kda_gluon_backward.py:354:32
	v_sub_f32_e32 v13, v13, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp485:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_dpp v100, v100 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp486:
	.loc	1 355 17                        ; kda_gluon_backward.py:355:17
	v_mul_f32_e32 v29, v86, v189
	v_mul_f32_e32 v86, v98, v196
	.loc	1 361 28                        ; kda_gluon_backward.py:361:28
	v_fma_f32 v15, -v15, v20, v93
	v_fma_f32 v215, -v16, v21, v90
.Ltmp487:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_dual_add_f32 v30, v30, v100 :: v_dual_fmac_f32 v29, v84, v190
.Ltmp488:
	.loc	1 355 17                        ; kda_gluon_backward.py:355:17
	v_mul_f32_e32 v84, v91, v196
.Ltmp489:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_fmac_f32_e32 v86, v95, v195
.Ltmp490:
	.loc	1 361 28                        ; kda_gluon_backward.py:361:28
	v_fma_f32 v221, -v16, v19, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 354 32                        ; kda_gluon_backward.py:354:32
	v_sub_f32_e32 v14, v14, v30
	.loc	1 355 17                        ; kda_gluon_backward.py:355:17
	v_mul_f32_e32 v30, v88, v192
.Ltmp491:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_fmac_f32_e32 v84, v87, v195
.Ltmp492:
	.loc	1 361 28                        ; kda_gluon_backward.py:361:28
	v_fma_f32 v16, -v16, v20, v99
.Ltmp493:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_fmac_f32_e32 v30, v85, v191
.Ltmp494:
	.loc	1 355 17                        ; kda_gluon_backward.py:355:17
	v_mul_f32_e32 v85, v93, v194
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp495:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_add_f32_e32 v29, v29, v30
	v_fmac_f32_e32 v85, v89, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v30, v84, v85
.Ltmp496:
	.loc	1 355 17                        ; kda_gluon_backward.py:355:17
	v_dual_mul_f32 v84, v94, v189 :: v_dual_mul_f32 v85, v96, v192
.Ltmp497:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_add_f32_e32 v29, v29, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v84, v90, v190 :: v_dual_fmac_f32 v85, v92, v191
.Ltmp498:
	.loc	1 355 17                        ; kda_gluon_backward.py:355:17
	v_dual_mul_f32 v30, v99, v194 :: v_dual_mov_b32 v87, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp499:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_add_f32_e32 v84, v84, v85
	v_fmac_f32_e32 v30, v97, v193
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp500:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_dpp v87, v87 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp501:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_add_f32_e32 v30, v86, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp502:
	.loc	1 358 17                        ; kda_gluon_backward.py:358:17
	v_dual_mul_f32 v86, v184, v20 :: v_dual_add_f32 v29, v29, v87
	v_dual_mul_f32 v87, v183, v20 :: v_dual_add_f32 v30, v84, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp503:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_dual_fmac_f32 v86, v175, v19 :: v_dual_mov_b32 v85, v29
	v_fmac_f32_e32 v87, v169, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp504:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_dpp v85, v85 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp505:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_add_f32_e32 v29, v29, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp506:
	.loc	1 358 17                        ; kda_gluon_backward.py:358:17
	v_dual_mul_f32 v85, v154, v24 :: v_dual_mov_b32 v84, v29
.Ltmp507:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_fmac_f32_e32 v85, v146, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp508:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_dpp v84, v84 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp509:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_dual_add_f32 v29, v29, v84 :: v_dual_mov_b32 v84, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp510:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_dpp v84, v84 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp511:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_add_f32_e32 v30, v30, v84
.Ltmp512:
	.loc	1 358 17                        ; kda_gluon_backward.py:358:17
	v_mul_f32_e32 v84, v133, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp513:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_fmac_f32_e32 v84, v129, v21
	v_add_f32_e32 v84, v84, v85
.Ltmp514:
	.loc	1 358 17                        ; kda_gluon_backward.py:358:17
	v_mul_f32_e32 v85, v168, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp515:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_fmac_f32_e32 v85, v166, v17
	v_dual_add_f32 v85, v85, v86 :: v_dual_mov_b32 v86, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v84, v84, v85
.Ltmp516:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_dpp v86, v86 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp517:
	.loc	1 358 17                        ; kda_gluon_backward.py:358:17
	v_mul_f32_e32 v85, v130, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp518:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_add_f32_e32 v30, v30, v86
.Ltmp519:
	.loc	1 358 17                        ; kda_gluon_backward.py:358:17
	v_mul_f32_e32 v86, v151, v24
.Ltmp520:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_dual_fmac_f32 v85, v127, v21 :: v_dual_fmac_f32 v86, v145, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v85, v85, v86
.Ltmp521:
	.loc	1 358 17                        ; kda_gluon_backward.py:358:17
	v_mul_f32_e32 v86, v165, v18
.Ltmp522:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_fmac_f32_e32 v86, v163, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v86, v86, v87
	v_dual_add_f32 v85, v85, v86 :: v_dual_mov_b32 v86, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp523:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_dpp v86, v86 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp524:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_add_f32_e32 v84, v84, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp525:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_e32 v86, v85
	v_mov_b32_dpp v86, v86 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp526:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_dual_add_f32 v85, v85, v86 :: v_dual_mov_b32 v86, v84
.Ltmp527:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_e32 v87, v30
.Ltmp528:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_dpp v86, v86 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp529:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_add_f32_e32 v84, v84, v86
.Ltmp530:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_e32 v86, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp531:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_dpp v87, v87 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp532:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_dpp v86, v86 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp533:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_dual_add_f32 v30, v30, v87 :: v_dual_add_f32 v85, v85, v86
.Ltmp534:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_e32 v86, v84
	v_mov_b32_dpp v86, v86 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp535:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_add_f32_e32 v84, v84, v86
.Ltmp536:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_e32 v86, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v86, v86 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp537:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_add_f32_e32 v85, v85, v86
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp538:
	.loc	1 354 32                        ; kda_gluon_backward.py:354:32
	v_dual_sub_f32 v30, v30, v85 :: v_dual_sub_f32 v29, v29, v84
	.loc	1 368 34                        ; kda_gluon_backward.py:368:34
	ds_load_b32 v84, v47
	.loc	1 372 32                        ; kda_gluon_backward.py:372:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b64 v48, v[13:14], v[29:30] offset1:16
	.loc	1 355 17                        ; kda_gluon_backward.py:355:17
	v_mul_f32_e32 v13, v58, v192
	v_mul_f32_e32 v14, v66, v192
	.loc	1 361 28                        ; kda_gluon_backward.py:361:28
	v_fma_f32 v29, -v8, v19, v75
	v_fma_f32 v30, -v8, v20, v78
	.loc	1 355 17                        ; kda_gluon_backward.py:355:17
	v_mul_f32_e32 v8, v83, v189
.Ltmp539:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_fmac_f32_e32 v13, v55, v191
	v_dual_fmac_f32 v14, v63, v191 :: v_dual_mul_f32 v55, v56, v196
.Ltmp540:
	.loc	1 355 17                        ; kda_gluon_backward.py:355:17
	v_mul_f32_e32 v56, v64, v196
	v_mul_f32_e32 v58, v82, v192
.Ltmp541:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_fmac_f32_e32 v8, v81, v190
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_add_f32 v6, v6, v14 :: v_dual_fmac_f32 v55, v53, v195
.Ltmp542:
	.loc	1 355 17                        ; kda_gluon_backward.py:355:17
	v_mul_f32_e32 v53, v54, v194
	v_mul_f32_e32 v54, v62, v194
.Ltmp543:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_fmac_f32_e32 v56, v61, v195
	v_fmac_f32_e32 v5, v57, v190
.Ltmp544:
	.loc	1 355 17                        ; kda_gluon_backward.py:355:17
	v_dual_mul_f32 v62, v78, v194 :: v_dual_fmac_f32 v53, v52, v193
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp545:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_dual_fmac_f32 v54, v59, v193 :: v_dual_mul_f32 v57, v74, v192
.Ltmp546:
	.loc	1 358 17                        ; kda_gluon_backward.py:358:17
	v_dual_mul_f32 v52, v167, v20 :: v_dual_mul_f32 v61, v70, v194
.Ltmp547:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_fmac_f32_e32 v58, v79, v191
	v_dual_add_f32 v14, v56, v54 :: v_dual_fmac_f32 v57, v71, v191
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp548:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_dual_fmac_f32 v52, v160, v19 :: v_dual_fmac_f32 v61, v67, v193
.Ltmp549:
	.loc	1 358 17 is_stmt 1              ; kda_gluon_backward.py:358:17
	v_mul_f32_e32 v54, v164, v20
.Ltmp550:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_add_f32_e32 v6, v6, v14
.Ltmp551:
	.loc	1 358 17                        ; kda_gluon_backward.py:358:17
	v_dual_mul_f32 v14, v139, v24 :: v_dual_add_f32 v5, v5, v13
.Ltmp552:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_add_f32_e32 v13, v55, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp553:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_dual_fmac_f32 v54, v159, v19 :: v_dual_mul_f32 v53, v136, v24
.Ltmp554:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_add_f32_e32 v8, v8, v58
	v_dual_fmac_f32 v7, v73, v190 :: v_dual_fmac_f32 v14, v134, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v5, v5, v13
.Ltmp555:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_fmac_f32_e32 v53, v132, v23
.Ltmp556:
	.loc	1 355 17 is_stmt 1              ; kda_gluon_backward.py:355:17
	v_dual_mul_f32 v63, v80, v196 :: v_dual_fmac_f32 v62, v75, v193
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp557:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_e32 v13, v5
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp558:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_add_f32_e32 v5, v5, v13
.Ltmp559:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_e32 v13, v6
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp560:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_dual_add_f32 v6, v6, v13 :: v_dual_mov_b32 v13, v5
.Ltmp561:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp562:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_add_f32_e32 v5, v5, v13
.Ltmp563:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_e32 v13, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp564:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_dual_add_f32 v6, v6, v13 :: v_dual_mov_b32 v13, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp565:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp566:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_add_f32_e32 v5, v5, v13
.Ltmp567:
	.loc	1 358 17                        ; kda_gluon_backward.py:358:17
	v_mul_f32_e32 v13, v124, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp568:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_fmac_f32_e32 v13, v119, v21
	v_add_f32_e32 v13, v13, v14
.Ltmp569:
	.loc	1 358 17                        ; kda_gluon_backward.py:358:17
	v_mul_f32_e32 v14, v153, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp570:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_fmac_f32_e32 v14, v149, v17
.Ltmp571:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_dual_fmac_f32 v63, v77, v195 :: v_dual_add_f32 v14, v14, v52
.Ltmp572:
	.loc	1 358 17 is_stmt 1              ; kda_gluon_backward.py:358:17
	v_mul_f32_e32 v52, v123, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp573:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_dual_add_f32 v13, v13, v14 :: v_dual_fmac_f32 v52, v118, v21
.Ltmp574:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_e32 v14, v6
.Ltmp575:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_dual_add_f32 v52, v52, v53 :: v_dual_mul_f32 v53, v150, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp576:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp577:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_dual_add_f32 v6, v6, v14 :: v_dual_fmac_f32 v53, v147, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp578:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_dual_add_f32 v53, v53, v54 :: v_dual_mul_f32 v54, v156, v20
	v_add_f32_e32 v14, v52, v53
.Ltmp579:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_e32 v52, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp580:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_fmac_f32_e32 v54, v148, v19
.Ltmp581:
	.loc	1 358 17                        ; kda_gluon_backward.py:358:17
	v_mul_f32_e32 v53, v128, v24
.Ltmp582:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_dpp v52, v52 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp583:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_fmac_f32_e32 v53, v125, v23
	v_dual_add_f32 v13, v13, v52 :: v_dual_mov_b32 v52, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp584:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_dpp v52, v52 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp585:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_add_f32_e32 v14, v14, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp586:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_e32 v52, v13
	v_mov_b32_dpp v52, v52 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp587:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_dual_add_f32 v13, v13, v52 :: v_dual_mov_b32 v52, v14
.Ltmp588:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_dpp v52, v52 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp589:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_add_f32_e32 v14, v14, v52
.Ltmp590:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_e32 v52, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp591:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_dual_add_f32 v13, v13, v52 :: v_dual_mov_b32 v52, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp592:
	.loc	1 354 32                        ; kda_gluon_backward.py:354:32
	v_sub_f32_e32 v5, v5, v13
.Ltmp593:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp594:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_add_f32_e32 v14, v14, v52
.Ltmp595:
	.loc	1 358 17                        ; kda_gluon_backward.py:358:17
	v_dual_mul_f32 v52, v158, v20 :: v_dual_add_f32 v7, v7, v57
	.loc	1 354 32                        ; kda_gluon_backward.py:354:32
	v_sub_f32_e32 v6, v6, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp596:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_fmac_f32_e32 v52, v152, v19
.Ltmp597:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_dual_add_f32 v13, v60, v61 :: v_dual_add_f32 v14, v63, v62
	v_dual_add_f32 v7, v7, v13 :: v_dual_add_f32 v8, v8, v14
.Ltmp598:
	.loc	1 358 17 is_stmt 1              ; kda_gluon_backward.py:358:17
	v_mul_f32_e32 v14, v131, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp599:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_dual_mov_b32 v13, v7 :: v_dual_fmac_f32 v14, v126, v23
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp600:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_add_f32_e32 v7, v7, v13
.Ltmp601:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_e32 v13, v8
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp602:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_dual_add_f32 v8, v8, v13 :: v_dual_mov_b32 v13, v7
.Ltmp603:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp604:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_add_f32_e32 v7, v7, v13
.Ltmp605:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_e32 v13, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp606:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_dual_add_f32 v8, v8, v13 :: v_dual_mov_b32 v13, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp607:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp608:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:354:32 ] ]
	v_add_f32_e32 v7, v7, v13
.Ltmp609:
	.loc	1 358 17                        ; kda_gluon_backward.py:358:17
	v_mul_f32_e32 v13, v122, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp610:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_fmac_f32_e32 v13, v117, v21
	v_add_f32_e32 v13, v13, v14
.Ltmp611:
	.loc	1 358 17                        ; kda_gluon_backward.py:358:17
	v_mul_f32_e32 v14, v144, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp612:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_fmac_f32_e32 v14, v141, v17
	v_add_f32_e32 v14, v14, v52
.Ltmp613:
	.loc	1 358 17                        ; kda_gluon_backward.py:358:17
	v_mul_f32_e32 v52, v121, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp614:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_dual_add_f32 v13, v13, v14 :: v_dual_fmac_f32 v52, v28, v21
.Ltmp615:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_e32 v14, v8
.Ltmp616:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_dual_add_f32 v52, v52, v53 :: v_dual_mul_f32 v53, v143, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp617:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:354:32 ]
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp618:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_dual_fmac_f32 v53, v138, v17 :: v_dual_add_f32 v8, v8, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v53, v53, v54
	v_add_f32_e32 v14, v52, v53
.Ltmp619:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_e32 v52, v13
.Ltmp620:
	.loc	1 363 17                        ; kda_gluon_backward.py:363:17
	v_mul_f32_e32 v53, v165, v220
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp621:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_dpp v52, v52 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp622:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_dual_add_f32 v13, v13, v52 :: v_dual_mov_b32 v52, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp623:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_dpp v52, v52 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp624:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_add_f32_e32 v14, v14, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp625:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_e32 v52, v13
	v_mov_b32_dpp v52, v52 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp626:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_dual_add_f32 v13, v13, v52 :: v_dual_mov_b32 v52, v14
.Ltmp627:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_dpp v52, v52 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp628:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_add_f32_e32 v14, v14, v52
.Ltmp629:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_e32 v52, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp630:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_dual_add_f32 v13, v13, v52 :: v_dual_mov_b32 v52, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp631:
	.loc	1 354 32                        ; kda_gluon_backward.py:354:32
	v_sub_f32_e32 v7, v7, v13
.Ltmp632:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:357:17 ]
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp633:
	.loc	1 363 17                        ; kda_gluon_backward.py:363:17
	v_mul_f32_e32 v13, v161, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp634:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:357:17 ] ]
	v_add_f32_e32 v14, v14, v52
.Ltmp635:
	.loc	1 363 17                        ; kda_gluon_backward.py:363:17
	v_mul_f32_e32 v52, v187, v197
	.loc	1 354 32                        ; kda_gluon_backward.py:354:32
	v_sub_f32_e32 v8, v8, v14
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 17                        ; kda_gluon_backward.py:363:17
	v_dual_mul_f32 v14, v177, v223 :: v_dual_fmac_f32 v13, v155, v198
	.loc	1 372 32                        ; kda_gluon_backward.py:372:32
	ds_store_2addr_b64 v48, v[5:6], v[7:8] offset0:32 offset1:48
	.loc	1 363 17                        ; kda_gluon_backward.py:363:17
	v_mul_f32_e32 v6, v162, v203
	v_mul_f32_e32 v5, v142, v201
	v_dual_mul_f32 v7, v182, v205 :: v_dual_mul_f32 v8, v188, v207
.Ltmp636:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_fmac_f32_e32 v14, v173, v225
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v6, v157, v202
	v_fmac_f32_e32 v5, v137, v200
.Ltmp637:
	.loc	1 372 32                        ; kda_gluon_backward.py:372:32
	s_waitcnt lgkmcnt(0)
.Ltmp638:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_fmac_f32_e32 v8, v186, v206
.Ltmp639:
	.loc	1 372 32                        ; kda_gluon_backward.py:372:32
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp640:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_add_f32_e32 v5, v5, v6
.Ltmp641:
	.loc	1 363 17                        ; kda_gluon_backward.py:363:17
	v_mul_f32_e32 v6, v140, v222
.Ltmp642:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_dual_fmac_f32 v7, v176, v204 :: v_dual_fmac_f32 v52, v185, v199
	v_fmac_f32_e32 v6, v135, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v7, v7, v8 :: v_dual_add_f32 v6, v6, v13
	v_dual_add_f32 v5, v5, v7 :: v_dual_add_f32 v8, v14, v52
.Ltmp643:
	.loc	1 363 17                        ; kda_gluon_backward.py:363:17
	v_mul_f32_e32 v14, v184, v15
	v_dual_mul_f32 v13, v168, v213 :: v_dual_mul_f32 v52, v151, v218
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp644:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:362:34 ]
	v_dual_mov_b32 v7, v5 :: v_dual_fmac_f32 v14, v175, v214
.Ltmp645:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_fmac_f32_e32 v52, v145, v217
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp646:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:362:34 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp647:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_dual_add_f32 v6, v6, v8 :: v_dual_add_f32 v5, v5, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp648:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:362:34 ]
	v_mov_b32_e32 v7, v6
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp649:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_dual_add_f32 v6, v6, v7 :: v_dual_mov_b32 v7, v5
.Ltmp650:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:362:34 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp651:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_add_f32_e32 v5, v5, v7
.Ltmp652:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:362:34 ]
	v_mov_b32_e32 v7, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp653:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_add_f32_e32 v6, v6, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp654:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:362:34 ]
	v_dual_mov_b32 v8, v6 :: v_dual_mov_b32 v7, v5
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v7, v7 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp655:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_dual_add_f32 v6, v6, v8 :: v_dual_add_f32 v5, v5, v7
.Ltmp656:
	.loc	1 363 17                        ; kda_gluon_backward.py:363:17
	v_dual_mul_f32 v7, v133, v209 :: v_dual_mul_f32 v8, v154, v211
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp657:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_dual_fmac_f32 v7, v129, v208 :: v_dual_fmac_f32 v8, v146, v210
	v_add_f32_e32 v7, v7, v8
.Ltmp658:
	.loc	1 363 17                        ; kda_gluon_backward.py:363:17
	v_mul_f32_e32 v8, v130, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp659:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_dual_fmac_f32 v13, v166, v212 :: v_dual_fmac_f32 v8, v127, v215
.Ltmp660:
	.loc	1 363 17                        ; kda_gluon_backward.py:363:17
	v_dual_mul_f32 v54, v183, v16 :: v_dual_add_f32 v13, v13, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp661:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_dual_fmac_f32 v53, v163, v219 :: v_dual_add_f32 v8, v8, v52
	v_fmac_f32_e32 v54, v169, v221
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v7, v7, v13
.Ltmp662:
	.loc	1 372 32                        ; kda_gluon_backward.py:372:32
	ds_load_b32 v52, v47
	.loc	1 376 34                        ; kda_gluon_backward.py:376:34
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp663:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_dual_add_f32 v14, v53, v54 :: v_dual_mov_b32 v13, v7
.Ltmp664:
	.loc	1 363 17                        ; kda_gluon_backward.py:363:17
	v_mul_f32_e32 v54, v164, v241
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp665:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:362:34 ]
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp666:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_add_f32_e32 v8, v8, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v54, v159, v240
	v_add_f32_e32 v7, v7, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp667:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:362:34 ]
	v_mov_b32_e32 v13, v8
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp668:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_dual_add_f32 v8, v8, v13 :: v_dual_mov_b32 v13, v7
.Ltmp669:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:362:34 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp670:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_add_f32_e32 v7, v7, v13
.Ltmp671:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:362:34 ]
	v_mov_b32_e32 v13, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp672:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_add_f32_e32 v8, v8, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp673:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:362:34 ]
	v_dual_mov_b32 v14, v8 :: v_dual_mov_b32 v13, v7
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp674:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_dual_add_f32 v8, v8, v14 :: v_dual_add_f32 v7, v7, v13
.Ltmp675:
	.loc	1 363 17                        ; kda_gluon_backward.py:363:17
	v_dual_mul_f32 v14, v136, v237 :: v_dual_mul_f32 v13, v123, v235
	.loc	1 376 34                        ; kda_gluon_backward.py:376:34
	ds_store_2addr_b64 v48, v[5:6], v[7:8] offset1:16
	.loc	1 363 17                        ; kda_gluon_backward.py:363:17
	v_dual_mul_f32 v5, v124, v227 :: v_dual_mul_f32 v8, v167, v233
	v_dual_mul_f32 v6, v139, v229 :: v_dual_mul_f32 v7, v153, v231
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp676:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_dual_fmac_f32 v14, v132, v236 :: v_dual_fmac_f32 v5, v119, v226
	v_fmac_f32_e32 v8, v160, v232
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v6, v134, v228 :: v_dual_fmac_f32 v7, v149, v230
.Ltmp677:
	.loc	1 363 17                        ; kda_gluon_backward.py:363:17
	v_mul_f32_e32 v53, v150, v239
.Ltmp678:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_fmac_f32_e32 v13, v118, v234
	v_dual_add_f32 v5, v5, v6 :: v_dual_add_f32 v6, v7, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v53, v147, v238
	v_dual_add_f32 v7, v13, v14 :: v_dual_mul_f32 v14, v158, v249
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v5, v5, v6
	v_dual_add_f32 v8, v53, v54 :: v_dual_mul_f32 v53, v143, v255
.Ltmp679:
	.loc	1 363 17                        ; kda_gluon_backward.py:363:17
	v_mul_f32_e32 v54, v156, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp680:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_fmac_f32_e32 v14, v152, v248
	v_dual_add_f32 v6, v7, v8 :: v_dual_mov_b32 v7, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v54, v148, v29 :: v_dual_fmac_f32 v53, v138, v254
.Ltmp681:
	.loc	1 363 17                        ; kda_gluon_backward.py:363:17
	v_mul_f32_e32 v13, v144, v247
.Ltmp682:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:362:34 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp683:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_add_f32_e32 v5, v5, v7
.Ltmp684:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:362:34 ]
	v_mov_b32_e32 v7, v6
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp685:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_dual_add_f32 v6, v6, v7 :: v_dual_mov_b32 v7, v5
.Ltmp686:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:362:34 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp687:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_add_f32_e32 v5, v5, v7
.Ltmp688:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:362:34 ]
	v_mov_b32_e32 v7, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp689:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_dual_add_f32 v6, v6, v7 :: v_dual_mov_b32 v7, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp690:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:362:34 ]
	v_mov_b32_e32 v8, v6
	v_mov_b32_dpp v7, v7 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp691:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_add_f32_e32 v5, v5, v7
.Ltmp692:
	.loc	1 363 17                        ; kda_gluon_backward.py:363:17
	v_mul_f32_e32 v7, v122, v243
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp693:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_add_f32_e32 v6, v6, v8
.Ltmp694:
	.loc	1 363 17                        ; kda_gluon_backward.py:363:17
	v_dual_mul_f32 v8, v131, v245 :: v_dual_fmac_f32 v7, v117, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp695:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_fmac_f32_e32 v8, v126, v244
	v_dual_add_f32 v7, v7, v8 :: v_dual_mul_f32 v8, v121, v251
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v8, v28, v250
.Ltmp696:
	.loc	1 363 17                        ; kda_gluon_backward.py:363:17
	v_mul_f32_e32 v28, v128, v253
.Ltmp697:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_fmac_f32_e32 v28, v125, v252
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v13, v141, v246 :: v_dual_add_f32 v8, v8, v28
	v_add_f32_e32 v13, v13, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v14, v53, v54 :: v_dual_add_f32 v7, v7, v13
	v_dual_add_f32 v8, v8, v14 :: v_dual_mov_b32 v13, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp698:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:362:34 ]
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp699:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_add_f32_e32 v7, v7, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp700:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:362:34 ]
	v_mov_b32_e32 v13, v8
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp701:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_dual_add_f32 v8, v8, v13 :: v_dual_mov_b32 v13, v7
.Ltmp702:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:362:34 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp703:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_add_f32_e32 v7, v7, v13
.Ltmp704:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:362:34 ]
	v_mov_b32_e32 v13, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp705:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_dual_add_f32 v8, v8, v13 :: v_dual_mov_b32 v13, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp706:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:362:34 ]
	v_mov_b32_e32 v14, v8
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp707:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:362:34 ] ]
	v_dual_add_f32 v7, v7, v13 :: v_dual_add_f32 v8, v8, v14
.Ltmp708:
	.loc	1 376 34                        ; kda_gluon_backward.py:376:34
	ds_store_2addr_b64 v48, v[5:6], v[7:8] offset0:32 offset1:48
	.loc	1 353 40                        ; kda_gluon_backward.py:353:40
	v_dual_mul_f32 v7, v181, v33 :: v_dual_mul_f32 v8, v179, v38
	v_mul_f32_e32 v6, v174, v32
	.loc	1 376 34                        ; kda_gluon_backward.py:376:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp709:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:353:33 ] ]
	v_dual_fmac_f32 v7, v180, v36 :: v_dual_fmac_f32 v8, v178, v37
.Ltmp710:
	.loc	1 353 40                        ; kda_gluon_backward.py:353:40
	v_mul_f32_e32 v5, v172, v31
.Ltmp711:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:353:33 ] ]
	v_fmac_f32_e32 v6, v171, v35
.Ltmp712:
	.loc	1 376 34                        ; kda_gluon_backward.py:376:34
	ds_load_b32 v28, v47
	.loc	1 380 32                        ; kda_gluon_backward.py:380:32
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp713:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:353:33 ] ]
	v_fmac_f32_e32 v5, v170, v34
.Ltmp714:
	.loc	1 380 32                        ; kda_gluon_backward.py:380:32
	ds_store_b128 v116, v[21:24]
	ds_store_b128 v116, v[17:20] offset:128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v19, v51
.Ltmp715:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:353:33 ] ]
	v_dual_add_f32 v5, v5, v6 :: v_dual_add_f32 v6, v7, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v5, v5, v6
.Ltmp716:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:353:33 ]
	v_mov_b32_e32 v6, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp717:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:353:33 ] ]
	v_add_f32_e32 v5, v5, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp718:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:353:33 ]
	v_mov_b32_e32 v6, v5
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp719:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:353:33 ] ]
	v_add_f32_e32 v17, v5, v6
.Ltmp720:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon_backward.py:353:33 ]
	v_dual_mov_b32 v18, v17 :: v_dual_lshlrev_b32 v5, 2, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v20, 0x80000000, v5, s35
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp721:
	.loc	1 384 13                        ; kda_gluon_backward.py:384:13
	s_and_saveexec_b32 s2, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_xor_b32 s2, exec_lo, s2
	s_cbranch_execnz .LBB0_10
; %bb.8:                                ; %Flow113
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; kda_gluon_backward.py:0:13
	s_and_not1_saveexec_b32 s37, s2
	s_cbranch_execnz .LBB0_11
.LBB0_9:                                ; %Flow114
                                        ;   in Loop: Header=BB0_3 Depth=1
	s_or_b32 exec_lo, exec_lo, s37
	.loc	1 409 17 is_stmt 1              ; kda_gluon_backward.py:409:17
	s_and_saveexec_b32 s37, s36
	s_cbranch_execz .LBB0_2
	s_branch .LBB0_18
.LBB0_10:                               ; %.critedge130
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 396 13                        ; kda_gluon_backward.py:396:13
	s_mov_b32 s62, s70
	s_mov_b32 s63, s71
                                        ; implicit-def: $vgpr28
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr84
                                        ; implicit-def: $vgpr26_vgpr27
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v19, v20, s[60:63], 0 offen
                                        ; implicit-def: $vgpr19
                                        ; implicit-def: $vgpr20
	s_and_not1_saveexec_b32 s37, s2
	s_cbranch_execz .LBB0_9
.LBB0_11:                               ; %.critedge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 385 17                        ; kda_gluon_backward.py:385:17
	v_ashrrev_i32_e32 v27, 31, v26
	s_mov_b32 s38, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[5:6], 2, v[26:27]
	v_add_co_u32 v7, s2, s48, v5
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s49, v6, s2
	.loc	1 384 13                        ; kda_gluon_backward.py:384:13
	global_load_b32 v14, v[7:8], off
.LBB0_12:                               ; %atomicrmw.start8
                                        ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v13, v14, v84
	global_atomic_cmpswap_b32 v13, v[7:8], v[13:14], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e64 s2, v13, v14
	v_mov_b32_e32 v14, v13
	s_or_b32 s38, s2, s38
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s38
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end7
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; kda_gluon_backward.py:0:13
	s_or_b32 exec_lo, exec_lo, s38
	.loc	1 391 17 is_stmt 1              ; kda_gluon_backward.py:391:17
	v_add_co_u32 v7, s2, s50, v5
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s51, v6, s2
	s_mov_b32 s38, 0
	.loc	1 390 13                        ; kda_gluon_backward.py:390:13
	global_load_b32 v14, v[7:8], off
.LBB0_14:                               ; %atomicrmw.start2
                                        ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v13, v14, v52
	global_atomic_cmpswap_b32 v13, v[7:8], v[13:14], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e64 s2, v13, v14
	v_mov_b32_e32 v14, v13
	s_or_b32 s38, s2, s38
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s38
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end1
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; kda_gluon_backward.py:0:13
	s_or_b32 exec_lo, exec_lo, s38
	.loc	1 403 17 is_stmt 1              ; kda_gluon_backward.py:403:17
	v_add_co_u32 v5, s2, s86, v5
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s87, v6, s2
	.loc	1 396 13                        ; kda_gluon_backward.py:396:13
	s_mov_b32 s62, s70
	s_mov_b32 s63, s71
	s_mov_b32 s38, 0
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v19, v20, s[60:63], 0 offen
	.loc	1 402 13                        ; kda_gluon_backward.py:402:13
	global_load_b32 v8, v[5:6], off
.LBB0_16:                               ; %atomicrmw.start
                                        ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v7, v8, v28
	global_atomic_cmpswap_b32 v7, v[5:6], v[7:8], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e64 s2, v7, v8
	v_mov_b32_e32 v8, v7
	s_or_b32 s38, s2, s38
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s38
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %Flow112
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; kda_gluon_backward.py:0:13
	s_or_b32 exec_lo, exec_lo, s38
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 exec_lo, exec_lo, s37
	.loc	1 409 17 is_stmt 1              ; kda_gluon_backward.py:409:17
	s_and_saveexec_b32 s37, s36
	s_cbranch_execz .LBB0_2
.LBB0_18:                               ;   in Loop: Header=BB0_3 Depth=1
.Ltmp722:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon_backward.py:353:33 ] ]
	v_add_f32_e32 v5, v17, v18
	s_mov_b32 s2, exec_lo
	s_brev_b32 s38, 1
.Ltmp723:
.LBB0_19:                               ; %ComputeLoop
                                        ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 409 17                        ; kda_gluon_backward.py:409:17
	s_ctz_i32_b32 s40, s2
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	v_readlane_b32 s54, v5, s40
	s_lshl_b32 s40, 1, s40
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 s2, s2, s40
	s_add_f32 s38, s38, s54
	s_cbranch_scc1 .LBB0_19
; %bb.20:                               ; %ComputeEnd
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_mbcnt_lo_u32_b32 v5, exec_lo, 0
	s_mov_b32 s40, exec_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cmpx_eq_u32_e32 0, v5
	s_xor_b32 s40, exec_lo, s40
	s_cbranch_execz .LBB0_2
; %bb.21:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 17 is_stmt 0                ; kda_gluon_backward.py:0:17
	s_add_u32 s46, s82, s46
	s_addc_u32 s47, s83, s47
	s_mov_b32 s40, 0
	.loc	1 409 17                        ; kda_gluon_backward.py:409:17
	global_load_b32 v6, v46, s[46:47]
.LBB0_22:                               ; %atomicrmw.start14
                                        ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, s38, v6
	global_atomic_cmpswap_b32 v5, v46, v[5:6], s[46:47] glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e64 s2, v5, v6
	v_mov_b32_e32 v6, v5
	s_or_b32 s40, s2, s40
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s40
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %Flow
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 17                          ; kda_gluon_backward.py:0:17
	s_or_b32 exec_lo, exec_lo, s40
	s_branch .LBB0_2
.LBB0_24:                               ; %._crit_edge
	.loc	1 45 5 is_stmt 1                ; kda_gluon_backward.py:45:5
	s_endpgm
.Ltmp724:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_kda_bwd_recurrent_bf16_b4_t2048_h32_d128_dv128_vb64_ci4
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 44
		.amdhsa_kernarg_size 176
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
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 102
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
	.size	amd_strix_halo_gfx1151_kda_bwd_recurrent_bf16_b4_t2048_h32_d128_dv128_vb64_ci4, .Lfunc_end0-amd_strix_halo_gfx1151_kda_bwd_recurrent_bf16_b4_t2048_h32_d128_dv128_vb64_ci4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_kda_bwd_recurrent_bf16_b4_t2048_h32_d128_dv128_vb64_ci4.num_vgpr, 256
	.set amd_strix_halo_gfx1151_kda_bwd_recurrent_bf16_b4_t2048_h32_d128_dv128_vb64_ci4.num_agpr, 0
	.set amd_strix_halo_gfx1151_kda_bwd_recurrent_bf16_b4_t2048_h32_d128_dv128_vb64_ci4.numbered_sgpr, 102
	.set amd_strix_halo_gfx1151_kda_bwd_recurrent_bf16_b4_t2048_h32_d128_dv128_vb64_ci4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_kda_bwd_recurrent_bf16_b4_t2048_h32_d128_dv128_vb64_ci4.private_seg_size, 44
	.set amd_strix_halo_gfx1151_kda_bwd_recurrent_bf16_b4_t2048_h32_d128_dv128_vb64_ci4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_kda_bwd_recurrent_bf16_b4_t2048_h32_d128_dv128_vb64_ci4.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_kda_bwd_recurrent_bf16_b4_t2048_h32_d128_dv128_vb64_ci4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_kda_bwd_recurrent_bf16_b4_t2048_h32_d128_dv128_vb64_ci4.has_recursion, 0
	.set amd_strix_halo_gfx1151_kda_bwd_recurrent_bf16_b4_t2048_h32_d128_dv128_vb64_ci4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15860
; TotalNumSgprs: 104
; NumVgprs: 256
; ScratchSize: 44
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 104
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x10f DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0xe9 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	245                             ; DW_AT_call_line
	.byte	37                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	338                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x76:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	351                             ; DW_AT_call_line
	.byte	27                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x83:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x91:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	344                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x9e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0xac:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	354                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xb9:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0xc7:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges10                ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	357                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xd4:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges11                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0xe2:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	362                             ; DW_AT_call_line
	.byte	34                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xef:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges13                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0xfd:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges14                ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	353                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x10a:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges15                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
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
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges10:
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges11:
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges12:
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp658-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	.Ltmp677-.Lfunc_begin0
	.quad	.Ltmp678-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp692-.Lfunc_begin0
	.quad	.Ltmp693-.Lfunc_begin0
	.quad	.Ltmp694-.Lfunc_begin0
	.quad	.Ltmp695-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp708-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp658-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	.Ltmp670-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	.Ltmp677-.Lfunc_begin0
	.quad	.Ltmp678-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp686-.Lfunc_begin0
	.quad	.Ltmp687-.Lfunc_begin0
	.quad	.Ltmp688-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp692-.Lfunc_begin0
	.quad	.Ltmp693-.Lfunc_begin0
	.quad	.Ltmp694-.Lfunc_begin0
	.quad	.Ltmp695-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp698-.Lfunc_begin0
	.quad	.Ltmp699-.Lfunc_begin0
	.quad	.Ltmp700-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp704-.Lfunc_begin0
	.quad	.Ltmp705-.Lfunc_begin0
	.quad	.Ltmp706-.Lfunc_begin0
	.quad	.Ltmp707-.Lfunc_begin0
	.quad	.Ltmp708-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges14:
	.quad	.Ltmp709-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp711-.Lfunc_begin0
	.quad	.Ltmp712-.Lfunc_begin0
	.quad	.Ltmp713-.Lfunc_begin0
	.quad	.Ltmp714-.Lfunc_begin0
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp721-.Lfunc_begin0
	.quad	.Ltmp722-.Lfunc_begin0
	.quad	.Ltmp723-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges15:
	.quad	.Ltmp709-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp711-.Lfunc_begin0
	.quad	.Ltmp712-.Lfunc_begin0
	.quad	.Ltmp713-.Lfunc_begin0
	.quad	.Ltmp714-.Lfunc_begin0
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.quad	.Ltmp718-.Lfunc_begin0
	.quad	.Ltmp719-.Lfunc_begin0
	.quad	.Ltmp720-.Lfunc_begin0
	.quad	.Ltmp722-.Lfunc_begin0
	.quad	.Ltmp723-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"kda_gluon_backward.py"         ; string offset=7 ; kda_gluon_backward.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=29 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_kda_bwd_recurrent_bf16_b4_t2048_h32_d128_dv128_vb64_ci4"                        ; string offset=97 ; amd_strix_halo_gfx1151_kda_bwd_recurrent_bf16_b4_t2048_h32_d128_dv128_vb64_ci4
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
      - .address_space:  global
        .offset:         80
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         88
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         96
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         120
        .size:           8
        .value_kind:     global_buffer
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .offset:         140
        .size:           4
        .value_kind:     by_value
      - .offset:         144
        .size:           4
        .value_kind:     by_value
      - .offset:         148
        .size:           4
        .value_kind:     by_value
      - .offset:         152
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         160
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         168
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 176
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_kda_bwd_recurrent_bf16_b4_t2048_h32_d128_dv128_vb64_ci4
    .private_segment_fixed_size: 44
    .sgpr_count:     104
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_kda_bwd_recurrent_bf16_b4_t2048_h32_d128_dv128_vb64_ci4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 10
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
