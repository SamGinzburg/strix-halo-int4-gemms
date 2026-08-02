	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_bfe_u32 v136, v0, 4, 1
	s_load_b128 s[80:83], s[0:1], 0x60
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v0
	s_clause 0x1
	s_load_b256 s[64:71], s[0:1], 0x0
	s_load_b64 s[4:5], s[0:1], 0x70
	v_or_b32_e32 v72, 2, v136
	v_dual_mov_b32 v38, 0x7632 :: v_dual_lshlrev_b32 v1, 4, v1
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 6
	v_mov_b32_e32 v9, 0
	.loc	1 759 31                        ; attention.py:759:31
	scratch_store_b32 off, v72, off offset:124 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 4, v136
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v4, s6, v2
	v_lshlrev_b32_e32 v66, 2, v0
	.loc	1 772 26 is_stmt 1              ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	v_dual_mov_b32 v10, v9 :: v_dual_and_b32 v39, 0x60, v0
	.loc	1 759 31                        ; attention.py:759:31
	scratch_store_b32 off, v72, off offset:120 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 6, v136
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s7, s6, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v4
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[5:6], null, s80, v2, v[1:2]
	.loc	1 759 31                        ; attention.py:759:31
	scratch_store_b32 off, v72, off offset:116 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 8, v136
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s80, v1
	s_mov_b32 s91, 0x31027000
	s_mov_b32 s90, 0x7ffffffe
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s89, s65, 0xffff
	.loc	1 759 31                        ; attention.py:759:31
	scratch_store_b32 off, v72, off offset:112 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 10, v136
	v_mov_b32_e32 v2, v5
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 774 26                        ; attention.py:774:26
	s_mov_b32 s88, s64
	v_dual_mov_b32 v158, 0xff800000 :: v_dual_and_b32 v73, 15, v0
	.loc	1 759 31                        ; attention.py:759:31
	scratch_store_b32 off, v72, off offset:108 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 12, v136
	s_clause 0x1
	s_load_b64 s[92:93], s[0:1], 0x20
	s_load_b128 s[84:87], s[0:1], 0x30
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v37, 0x5410 :: v_dual_and_b32 v42, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	scratch_store_b32 off, v72, off offset:104 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 14, v136
	v_dual_mov_b32 v161, 0xff800000 :: v_dual_and_b32 v44, 16, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v41, 3, v0
	scratch_store_b32 off, v72, off offset:100 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 18, v136
	v_bfe_i32 v56, v0, 2, 1
	v_bfe_i32 v58, v0, 3, 1
	v_bfe_i32 v59, v0, 5, 1
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	.loc	1 759 31                        ; attention.py:759:31
	scratch_store_b32 off, v72, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 20, v136
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	v_dual_mov_b32 v205, 0xff800000 :: v_dual_and_b32 v50, 12, v0
	.loc	1 773 86                        ; attention.py:773:86
	v_bfe_i32 v46, v0, 0, 1
	.loc	1 759 31                        ; attention.py:759:31
	scratch_store_b32 off, v72, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 22, v136
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v61, s6, v41
	v_mul_u32_u24_e32 v71, 0x90, v42
	.loc	1 756 22 is_stmt 1              ; attention.py:756:22
	s_sub_i32 s3, s3, s1
	v_lshrrev_b32_e32 v67, 3, v39
	.loc	1 759 31                        ; attention.py:759:31
	scratch_store_b32 off, v72, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 24, v136
	v_dual_mov_b32 v207, 0xff800000 :: v_dual_lshlrev_b32 v48, 4, v0
	v_bfe_i32 v45, v0, 4, 1
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s10, s82, 0x3fb8aa3b
	.loc	1 759 31                        ; attention.py:759:31
	scratch_store_b32 off, v72, off offset:84 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 26, v136
	v_dual_mov_b32 v53, 0xff800000 :: v_dual_mov_b32 v160, 0xff800000
	v_dual_mov_b32 v159, 0xff800000 :: v_dual_mov_b32 v206, 0xff800000
	scratch_store_b32 off, v72, off offset:80 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 28, v136
	s_mov_b32 s72, 0
	s_and_b32 s67, s67, 0xffff
	s_waitcnt lgkmcnt(0)
	s_and_b32 s85, s85, 0xffff
	s_mov_b32 s100, 0x76543210
	scratch_store_b32 off, v72, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 30, v136
	s_mov_b32 s73, s72
	s_mov_b32 s74, s72
	s_mov_b32 s75, s72
	s_mov_b32 s76, s72
	scratch_store_b32 off, v72, off offset:72 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 34, v136
	s_mov_b32 s77, s72
	s_mov_b32 s78, s72
	s_mov_b32 s79, s72
	s_mov_b32 s94, s90
	scratch_store_b32 off, v72, off offset:68 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 36, v136
	s_mov_b32 s95, s91
	s_mov_b32 s98, s90
	s_mov_b32 s99, s91
	s_mov_b32 s101, s72
	scratch_store_b32 off, v72, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 38, v136
	s_and_b32 s93, s93, 0xffff
	s_and_b32 s69, s69, 0xffff
	s_mov_b32 s96, s84
	s_mov_b32 s97, s85
	scratch_store_b32 off, v72, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 40, v136
	v_lshlrev_b32_e32 v64, 4, v42
	v_lshlrev_b32_e32 v69, 6, v44
	v_and_b32_e32 v59, 0x2040, v59
	v_and_b32_e32 v70, 0x410, v58
	scratch_store_b32 off, v72, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 42, v136
	v_lshlrev_b32_e32 v65, 2, v39
	v_lshlrev_b32_e32 v63, 1, v50
	v_lshlrev_b32_e32 v50, 5, v50
	v_lshlrev_b32_e32 v40, 3, v42
	scratch_store_b32 off, v72, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 44, v136
	v_and_b32_e32 v45, 0x2040, v45
	scratch_store_b32 off, v73, off offset:128 ; 4-byte Folded Spill
	v_xor_b32_e32 v166, v71, v70
	v_lshl_or_b32 v165, v73, 5, v63
	scratch_store_b32 off, v72, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 46, v136
	v_and_b32_e32 v56, 0x2040, v56
	v_xor_b32_e32 v76, 0x1860, v166
	v_xor_b32_e32 v77, 0x1870, v166
	v_xor_b32_e32 v70, 0x1050, v166
	scratch_store_b32 off, v72, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 48, v136
	v_xor_b32_e32 v71, 0x1070, v166
	v_xor_b32_e32 v75, 0x1030, v166
	v_xor_b32_e32 v78, 0x1840, v166
	v_xor_b32_e32 v79, 0x1850, v166
	scratch_store_b32 off, v72, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 50, v136
	v_xor_b32_e32 v80, 0x1820, v166
	v_xor_b32_e32 v81, 0x1830, v166
	v_xor_b32_e32 v82, 0x1810, v166
	v_and_or_b32 v46, 0x1020, v46, v56
	scratch_store_b32 off, v72, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 52, v136
	v_add_nc_u32_e32 v198, 0, v76
	v_add_nc_u32_e32 v199, 0, v77
	v_add_nc_u32_e32 v192, 0, v70
	v_add_nc_u32_e32 v194, 0, v71
	scratch_store_b32 off, v72, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 54, v136
	v_add_nc_u32_e32 v197, 0, v75
	v_add_nc_u32_e32 v200, 0, v78
	v_add_nc_u32_e32 v201, 0, v79
	v_add_nc_u32_e32 v202, 0, v80
	scratch_store_b32 off, v72, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 56, v136
	v_add_nc_u32_e32 v203, 0, v81
	v_dual_mov_b32 v245, 0xff800000 :: v_dual_add_nc_u32 v204, 0, v82
	scratch_store_b32 off, v72, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 58, v136
	scratch_store_b32 off, v72, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v72, 60, v136
	.loc	1 758 19                        ; attention.py:758:19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v66, off offset:136
	scratch_store_b32 off, v72, off offset:16
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v72, 62, v136
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[2:3], off      ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s80, s7, v[5:6]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v39
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[33:36], v1, s[88:91], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, v2, v73
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s89, s71, 0xffff
	s_mov_b32 s88, s70
	v_xor_b32_e32 v73, 0x1010, v166
	s_mov_b32 s70, s90
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v2, s7, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s6, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s7, s0, 4
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s0, s3, 0x10007
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s8, s7, 14
	scratch_store_b32 off, v2, off offset:8 ; 4-byte Folded Spill
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	v_dual_mov_b32 v12, v9 :: v_dual_lshlrev_b32 v47, 1, v0
	v_mov_b32_e32 v13, v9
	v_dual_mov_b32 v19, v9 :: v_dual_and_b32 v66, 0x7c, v66
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_dual_mov_b32 v11, v9 :: v_dual_and_b32 v74, 0x78, v0
	v_dual_mov_b32 v28, v9 :: v_dual_and_b32 v57, 8, v0
	buffer_load_u16 v43, v1, s[88:91], 0 offen
	v_mov_b32_e32 v29, v9
	v_mov_b32_e32 v20, v9
	v_mov_b32_e32 v22, v9
	v_mov_b32_e32 v1, v9
	v_mov_b32_e32 v3, v9
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v62, v47, 30, v136
	v_mov_b32_e32 v32, v9
	v_lshl_or_b32 v39, v39, 4, v66
	v_dual_mov_b32 v14, v9 :: v_dual_and_b32 v49, 24, v0
	v_dual_mov_b32 v16, v9 :: v_dual_and_b32 v51, 3, v0
	v_mov_b32_e32 v30, v9
	v_mov_b32_e32 v31, v9
	v_mov_b32_e32 v2, v9
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s1, s3, s0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, 0x800, v61
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v61, 2, v62
	v_lshl_or_b32 v56, v57, 4, v69
	v_and_or_b32 v57, 0x1020, v58, v59
	v_xor_b32_e32 v58, v64, v74
	v_xor_b32_e32 v169, v39, v67
	v_mul_lo_u32 v39, s5, v41
	v_dual_mov_b32 v26, v9 :: v_dual_and_b32 v55, 4, v0
	v_mov_b32_e32 v27, v9
	v_mov_b32_e32 v17, v9
	v_mov_b32_e32 v18, v9
	v_dual_mov_b32 v21, v9 :: v_dual_lshlrev_b32 v68, 5, v51
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v60, 1, v74
	v_xor_b32_e32 v164, v48, v49
	v_and_b32_e32 v48, 0x630, v48
	v_lshl_or_b32 v50, v51, 11, v50
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v59, 4, v61
	v_lshl_or_b32 v172, v42, 10, v58
	v_xor_b32_e32 v42, 16, v166
	v_dual_mov_b32 v24, v9 :: v_dual_and_b32 v47, 0x80, v47
	v_mov_b32_e32 v111, v9
	v_lshl_add_u32 v55, v55, 9, 0
	v_or3_b32 v168, v48, v45, v50
	v_xor_b32_e32 v45, v57, v68
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[114:115], null, s81, v60, v[40:41]
	v_add_nc_u32_e32 v146, 0, v42
	v_lshl_add_u32 v76, s5, 4, v39
	v_lshl_add_u32 v77, s5, 5, v39
	v_mad_u64_u32 v[41:42], null, s5, 48, v[39:40]
	v_add_nc_u32_e32 v208, v40, v39
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s7, s83, s7
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s4, s3
	v_add3_u32 v45, v55, v47, v45
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s83, s3, s7
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s3, 0, v44
	v_dual_mov_b32 v15, v9 :: v_dual_and_b32 v52, 28, v0
	v_dual_mov_b32 v25, v9 :: v_dual_lshlrev_b32 v54, 3, v0
	v_add_nc_u32_e32 v209, v45, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v37, 0x1054, v37, s3
	v_cndmask_b32_e64 v38, 0x3276, v38, s3
	v_dual_mov_b32 v23, v9 :: v_dual_and_b32 v54, 0x310, v54
	v_xor_b32_e32 v62, 8, v164
	v_lshl_or_b32 v63, v49, 8, v64
	v_lshl_or_b32 v49, v49, 1, v65
	v_lshl_or_b32 v51, v52, 7, v68
	v_lshl_or_b32 v37, v37, 8, v37
	v_lshl_or_b32 v38, v38, 8, v38
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[115:116], null, s81, 3, v[114:115]
	v_dual_mov_b32 v4, v9 :: v_dual_add_nc_u32 v173, 0, v62
	.loc	1 758 19                        ; attention.py:758:19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v72, off offset:12
	scratch_store_b32 off, v74, off offset:132
	v_xor_b32_e32 v64, 8, v165
	v_xor_b32_e32 v66, 16, v165
	v_xor_b32_e32 v69, 24, v165
	v_xor_b32_e32 v167, v63, v49
	v_or3_b32 v170, v51, v65, v52
	v_or3_b32 v171, v46, v56, v54
	v_xor_b32_e32 v46, 32, v166
	v_xor_b32_e32 v48, 48, v166
	v_xor_b32_e32 v49, 64, v166
	v_xor_b32_e32 v50, 0x50, v166
	v_xor_b32_e32 v51, 0x60, v166
	v_xor_b32_e32 v52, 0x70, v166
	v_xor_b32_e32 v54, 0x820, v166
	v_xor_b32_e32 v56, 0x830, v166
	v_xor_b32_e32 v57, 0x810, v166
	v_xor_b32_e32 v58, 0x860, v166
	v_xor_b32_e32 v63, 0x870, v166
	v_xor_b32_e32 v65, 0x840, v166
	v_xor_b32_e32 v67, 0x850, v166
	v_xor_b32_e32 v68, 0x1040, v166
	v_xor_b32_e32 v62, 0x1060, v166
	v_xor_b32_e32 v74, 0x1020, v166
	s_bfe_i32 s1, s1, 0x80000
	v_dual_mov_b32 v5, v9 :: v_dual_add_nc_u32 v174, 0, v64
	s_sext_i32_i16 s1, s1
	v_dual_mov_b32 v6, v9 :: v_dual_add_nc_u32 v175, 0, v66
	v_dual_mov_b32 v7, v9 :: v_dual_add_nc_u32 v176, 0, v69
	v_dual_mov_b32 v8, v9 :: v_dual_add_nc_u32 v147, 0, v46
	v_dual_mov_b32 v110, v9 :: v_dual_add_nc_u32 v135, 0, v49
	v_dual_mov_b32 v112, v9 :: v_dual_add_nc_u32 v145, 0, v51
	v_dual_mov_b32 v113, v9 :: v_dual_add_nc_u32 v148, 0, v48
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v72, 4, v40
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s9, s1, 10
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s81, v40
	v_add_nc_u32_e32 v132, 0, v50
	v_add_nc_u32_e32 v149, 0, v52
	v_add_nc_u32_e32 v185, 0, v56
	v_add_nc_u32_e32 v186, 0, v57
	v_add_nc_u32_e32 v187, 0, v58
	v_add_nc_u32_e32 v188, 0, v63
	v_add_nc_u32_e32 v189, 0, v65
	v_add_nc_u32_e32 v190, 0, v67
	v_add_nc_u32_e32 v191, 0, v68
	v_add_nc_u32_e32 v193, 0, v62
	v_add_nc_u32_e32 v195, 0, v73
	v_add_nc_u32_e32 v196, 0, v74
	v_xor_b32_e32 v46, 0x2040, v167
	v_xor_b32_e32 v47, 16, v168
	v_xor_b32_e32 v48, 32, v168
	v_xor_b32_e32 v49, 48, v168
	v_xor_b32_e32 v50, 64, v168
	v_xor_b32_e32 v51, 0x50, v168
	v_xor_b32_e32 v52, 0x60, v168
	v_xor_b32_e32 v55, 0x810, v169
	v_xor_b32_e32 v56, 4, v170
	v_xor_b32_e32 v57, 8, v170
	v_xor_b32_e32 v58, 12, v170
	v_xor_b32_e32 v60, 16, v170
	v_xor_b32_e32 v62, 20, v170
	v_xor_b32_e32 v63, 24, v170
	v_xor_b32_e32 v64, 28, v170
	v_xor_b32_e32 v65, 32, v171
	v_xor_b32_e32 v66, 64, v171
	v_xor_b32_e32 v67, 0x60, v171
	v_xor_b32_e32 v68, 0x90, v172
	v_xor_b32_e32 v69, 0x120, v172
	v_xor_b32_e32 v70, 0x1b0, v172
	v_xor_b32_e32 v71, 0x240, v172
	v_xor_b32_e32 v73, 0x2d0, v172
	v_xor_b32_e32 v74, 0x360, v172
	v_xor_b32_e32 v75, 0x3f0, v172
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v236, v40, v76
	v_add_nc_u32_e32 v237, v40, v77
	v_add_nc_u32_e32 v240, v40, v41
	v_add_nc_u32_e32 v210, 0, v46
	v_add_nc_u32_e32 v211, 0, v47
	v_add_nc_u32_e32 v212, 0, v48
	v_add_nc_u32_e32 v213, 0, v49
	v_add_nc_u32_e32 v214, 0, v50
	v_add_nc_u32_e32 v215, 0, v51
	v_add_nc_u32_e32 v216, 0, v52
	v_add_nc_u32_e32 v218, 0, v55
	v_add_nc_u32_e32 v219, 0, v56
	v_add_nc_u32_e32 v220, 0, v57
	v_add_nc_u32_e32 v221, 0, v58
	v_add_nc_u32_e32 v222, 0, v60
	v_add_nc_u32_e32 v223, 0, v62
	v_add_nc_u32_e32 v224, 0, v63
	v_add_nc_u32_e32 v225, 0, v64
	v_add_nc_u32_e32 v226, 0, v65
	v_add_nc_u32_e32 v227, 0, v66
	v_add_nc_u32_e32 v228, 0, v67
	v_add_nc_u32_e32 v229, 0, v68
	v_add_nc_u32_e32 v230, 0, v69
	v_add_nc_u32_e32 v231, 0, v70
	v_add_nc_u32_e32 v232, 0, v71
	v_add_nc_u32_e32 v233, 0, v73
	v_add_nc_u32_e32 v234, 0, v74
	v_add_nc_u32_e32 v235, 0, v75
	v_add_nc_u32_e32 v238, v72, v76
	v_add_nc_u32_e32 v239, v72, v77
	v_add_nc_u32_e32 v241, v72, v41
	.loc	1 821 32                        ; attention.py:821:32
	s_and_b32 s9, s9, 0xfffff800
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s4, s5, s6
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s82, s9, s8
	s_add_i32 s83, s83, s4
	s_mov_b32 s71, s91
	s_mov_b32 s88, s66
	s_mov_b32 s89, s67
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v39, v61, v33
	ds_bpermute_b32 v33, v59, v33
	ds_bpermute_b32 v42, v61, v34
	ds_bpermute_b32 v34, v59, v34
	ds_bpermute_b32 v45, v61, v35
	ds_bpermute_b32 v35, v59, v35
	ds_bpermute_b32 v44, v61, v36
	ds_bpermute_b32 v36, v59, v36
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v116, v33, v39, s3
	v_cndmask_b32_e64 v118, v39, v33, s3
	v_and_b32_e32 v33, 0x540054, v37
	v_and_b32_e32 v37, 0x760076, v38
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v40, 16, v43
	v_add_nc_u32_e32 v109, 0, v54
	v_xor_b32_e32 v54, 0x70, v168
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v117, v34, v42, s3
	v_cndmask_b32_e64 v119, v42, v34, s3
	v_lshl_or_b32 v33, v33, 4, v33
	v_lshl_or_b32 v34, v37, 4, v37
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v242, s10, v40 :: v_dual_add_nc_u32 v217, 0, v54
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v120, v35, v45, s3
	v_cndmask_b32_e64 v122, v45, v35, s3
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v121, v36, v44, s3
	v_cndmask_b32_e64 v123, v44, v36, s3
	v_and_b32_e32 v243, 0x5040504, v33
	v_and_b32_e32 v244, 0x7060706, v34
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	scratch_load_b64 v[33:34], off, off     ; 8-byte Folded Reload
	s_or_b32 s57, s101, s82
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v37, 0, v164
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s3, s83, s101
	v_or_b32_e32 v102, 32, v136
	v_or_b32_e32 v103, 34, v136
	v_or_b32_e32 v104, 36, v136
	v_or_b32_e32 v105, 38, v136
	v_or_b32_e32 v106, 40, v136
	v_or_b32_e32 v107, 42, v136
	v_or_b32_e32 v108, 44, v136
	v_or_b32_e32 v133, 46, v136
	v_or_b32_e32 v102, s82, v102
	v_or_b32_e32 v103, s82, v103
	v_or_b32_e32 v104, s82, v104
	v_or_b32_e32 v105, s82, v105
	v_or_b32_e32 v106, s82, v106
	v_or_b32_e32 v107, s82, v107
	v_or_b32_e32 v108, s82, v108
	v_or_b32_e32 v133, s82, v133
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v102, s101, v102, 1
	v_add_lshl_u32 v103, s101, v103, 1
	v_add_lshl_u32 v104, s101, v104, 1
	v_add_lshl_u32 v105, s101, v105, 1
	v_add_lshl_u32 v106, s101, v106, 1
	v_add_lshl_u32 v107, s101, v107, 1
	v_add_lshl_u32 v108, s101, v108, 1
	v_add_lshl_u32 v133, s101, v133, 1
	v_or_b32_e32 v98, 24, v136
	v_or_b32_e32 v99, 26, v136
	v_or_b32_e32 v100, 28, v136
	v_or_b32_e32 v101, 30, v136
	.loc	1 881 25                        ; attention.py:881:25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v98, s82, v98
	v_or_b32_e32 v99, s82, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v100, s82, v100
	v_or_b32_e32 v101, s82, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v98, s101, v98, 1
	v_add_lshl_u32 v99, s101, v99, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_lshl_u32 v100, s101, v100, 1
	v_add_lshl_u32 v101, s101, v101, 1
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 822 32                        ; attention.py:822:32
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[33:34], null, s57, s80, v[33:34]
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s57, s57, s81
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	buffer_load_b128 v[33:36], v33, s[88:91], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v37, v[33:34]
	ds_store_b64 v173, v[35:36]
	v_add_nc_u32_e32 v33, 0, v165
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[62:65], v175 offset1:1
	ds_load_2addr_stride64_b64 v[90:93], v175 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[49:52], v33 offset1:1
	ds_load_2addr_stride64_b64 v[54:57], v33 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[58:61], v174 offset1:1
	ds_load_2addr_stride64_b64 v[86:89], v174 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v33, s72 :: v_dual_mov_b32 v38, s77
	v_dual_mov_b32 v34, s73 :: v_dual_mov_b32 v35, s74
	v_mov_b32_e32 v40, s79
	v_dual_mov_b32 v36, s75 :: v_dual_mov_b32 v37, s76
	v_mov_b32_e32 v39, s78
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[66:69], v176 offset1:1
	ds_load_2addr_stride64_b64 v[94:97], v176 offset0:2 offset1:3
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x7
	buffer_load_u16 v102, v102, s[92:95], 0 offen
	buffer_load_u16 v103, v103, s[92:95], 0 offen
	buffer_load_u16 v104, v104, s[92:95], 0 offen
	buffer_load_u16 v105, v105, s[92:95], 0 offen
	buffer_load_u16 v106, v106, s[92:95], 0 offen
	buffer_load_u16 v107, v107, s[92:95], 0 offen
	buffer_load_u16 v108, v108, s[92:95], 0 offen
	buffer_load_u16 v246, v133, s[92:95], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[49:50], v[116:117], v[33:40] neg_lo:[1,1,0]
	v_or_b32_e32 v133, 48, v136
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x3
	buffer_load_u16 v98, v98, s[92:95], 0 offen
	buffer_load_u16 v99, v99, s[92:95], 0 offen
	buffer_load_u16 v100, v100, s[92:95], 0 offen
	buffer_load_u16 v101, v101, s[92:95], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[58:59], v[120:121], v[41:48] neg_lo:[1,1,0]
	v_or_b32_e32 v133, s82, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[62:63], v[118:119], v[41:48] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v133, s101, v133, 1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[66:67], v[122:123], v[41:48] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v247, v133, s[92:95], 0 offen
	v_or_b32_e32 v133, 50, v136
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v85, v41
	v_cvt_f32_i32_e32 v84, v42
	v_cvt_f32_i32_e32 v83, v43
	v_cvt_f32_i32_e32 v82, v44
	v_cvt_f32_i32_e32 v81, v45
	v_cvt_f32_i32_e32 v80, v46
	v_cvt_f32_i32_e32 v78, v47
	v_cvt_f32_i32_e32 v76, v48
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[51:52], v[116:117], v[33:40] neg_lo:[1,1,0]
	v_or_b32_e32 v133, s82, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[60:61], v[120:121], v[41:48] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v133, s101, v133, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[64:65], v[118:119], v[41:48] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v248, v133, s[92:95], 0 offen
	v_or_b32_e32 v133, 52, v136
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[68:69], v[122:123], v[41:48] neg_lo:[1,1,0]
	v_or_b32_e32 v133, s82, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v79, v41
	v_cvt_f32_i32_e32 v77, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v75, v43
	v_cvt_f32_i32_e32 v74, v44
	v_cvt_f32_i32_e32 v73, v45
	v_cvt_f32_i32_e32 v72, v46
	v_cvt_f32_i32_e32 v70, v47
	v_cvt_f32_i32_e32 v68, v48
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[54:55], v[116:117], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v133, s101, v133, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[86:87], v[120:121], v[41:48] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v249, v133, s[92:95], 0 offen
	v_or_b32_e32 v133, 54, v136
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[90:91], v[118:119], v[41:48] neg_lo:[1,1,0]
	v_or_b32_e32 v133, s82, v133
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[94:95], v[122:123], v[41:48] neg_lo:[1,1,0]
	v_or_b32_e32 v94, 16, v136
	v_or_b32_e32 v95, 18, v136
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v133, s101, v133, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v71, v41
	v_cvt_f32_i32_e32 v69, v42
	v_cvt_f32_i32_e32 v67, v43
	v_cvt_f32_i32_e32 v66, v44
	v_cvt_f32_i32_e32 v65, v45
	v_cvt_f32_i32_e32 v64, v46
	v_cvt_f32_i32_e32 v62, v47
	v_cvt_f32_i32_e32 v60, v48
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[56:57], v[116:117], v[33:40] neg_lo:[1,1,0]
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v34, 4, v208
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v33, s3, v208, 2
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v250, v133, s[92:95], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[88:89], v[120:121], v[41:48] neg_lo:[1,1,0]
	v_or_b32_e32 v133, 56, v136
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v34, s3, v34, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s0
	v_or_b32_e32 v94, s82, v94
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[92:93], v[118:119], v[41:48] neg_lo:[1,1,0]
	v_or_b32_e32 v133, s82, v133
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0x80000000, v34, s0
	v_or_b32_e32 v95, s82, v95
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v94, s101, v94, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[96:97], v[122:123], v[41:48] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v133, s101, v133, 1
	v_or_b32_e32 v96, 20, v136
	v_add_lshl_u32 v95, s101, v95, 1
	buffer_load_u16 v94, v94, s[92:95], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v63, v41
	v_cvt_f32_i32_e32 v61, v42
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1
	buffer_load_b128 v[35:38], v33, s[96:99], 0 offen
	buffer_load_b128 v[39:42], v34, s[96:99], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v59, v43
	v_cvt_f32_i32_e32 v58, v44
	v_cvt_f32_i32_e32 v57, v45
	v_cvt_f32_i32_e32 v56, v46
	v_cvt_f32_i32_e32 v55, v47
	v_cvt_f32_i32_e32 v54, v48
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v251, v133, s[92:95], 0 offen
	v_or_b32_e32 v133, 58, v136
	v_or_b32_e32 v96, s82, v96
	v_or_b32_e32 v97, 22, v136
	buffer_load_u16 v95, v95, s[92:95], 0 offen
	v_or_b32_e32 v133, s82, v133
	v_add_lshl_u32 v96, s101, v96, 1
	v_or_b32_e32 v97, s82, v97
	s_delay_alu instid0(VALU_DEP_3)
	v_add_lshl_u32 v133, s101, v133, 1
	buffer_load_u16 v96, v96, s[92:95], 0 offen
	v_add_lshl_u32 v97, s101, v97, 1
	buffer_load_u16 v252, v133, s[92:95], 0 offen
	v_or_b32_e32 v133, 60, v136
	buffer_load_u16 v97, v97, s[92:95], 0 offen
	v_or_b32_e32 v133, s82, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v133, s101, v133, 1
	buffer_load_u16 v253, v133, s[92:95], 0 offen
	v_or_b32_e32 v133, 62, v136
	v_or_b32_e32 v133, s82, v133
	s_delay_alu instid0(VALU_DEP_1)
	v_add_lshl_u32 v133, s101, v133, 1
	buffer_load_u16 v254, v133, s[92:95], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v133, 0, v167
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(8)
	v_cndmask_b32_e64 v34, 0xff800000, v38, s0
	v_cndmask_b32_e64 v38, 0xff800000, v37, s0
	v_cndmask_b32_e64 v37, 0xff800000, v35, s0
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v35, 0xff800000, v40, s0
	v_cndmask_b32_e64 v40, 0xff800000, v41, s0
	v_add_lshl_u32 v41, s3, v236, 2
	v_cndmask_b32_e64 v33, 0xff800000, v36, s0
	v_cndmask_b32_e64 v36, 0xff800000, v42, s0
	v_add_lshl_u32 v42, s3, v238, 2
	v_cndmask_b32_e64 v39, 0xff800000, v39, s0
	v_cndmask_b32_e64 v41, 0x80000000, v41, s0
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s24, 0xff800000, v33
	v_cmp_neq_f32_e64 s7, 0xff800000, v37
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v42, 0x80000000, v42, s0
	s_clause 0x1
	buffer_load_b128 v[43:46], v41, s[96:99], 0 offen
	buffer_load_b128 v[47:50], v42, s[96:99], 0 offen
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v38
	v_cmp_neq_f32_e64 s9, 0xff800000, v39
	v_cmp_neq_f32_e64 s10, 0xff800000, v40
	v_cmp_neq_f32_e64 s30, 0xff800000, v34
	v_cmp_neq_f32_e64 s31, 0xff800000, v35
	v_cmp_neq_f32_e64 s34, 0xff800000, v36
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s18, s0, s9
	s_and_b32 s17, s0, s10
	s_and_b32 s25, s0, s8
	s_and_b32 s27, s0, s7
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v42, 0xff800000, v46, s0
	v_cndmask_b32_e64 v46, 0xff800000, v45, s0
	v_cndmask_b32_e64 v45, 0xff800000, v43, s0
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v43, 0xff800000, v48, s0
	v_cndmask_b32_e64 v48, 0xff800000, v49, s0
	v_add_lshl_u32 v49, s3, v237, 2
	v_cndmask_b32_e64 v41, 0xff800000, v44, s0
	v_cndmask_b32_e64 v44, 0xff800000, v50, s0
	v_add_lshl_u32 v50, s3, v239, 2
	v_cndmask_b32_e64 v47, 0xff800000, v47, s0
	v_cndmask_b32_e64 v49, 0x80000000, v49, s0
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s21, 0xff800000, v41
	v_cmp_neq_f32_e64 s22, 0xff800000, v42
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v50, 0x80000000, v50, s0
	s_clause 0x1
	buffer_load_b128 v[86:89], v49, s[96:99], 0 offen
	buffer_load_b128 v[90:93], v50, s[96:99], 0 offen
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s23, 0xff800000, v43
	v_cmp_neq_f32_e64 s29, 0xff800000, v44
	v_cmp_neq_f32_e64 s12, 0xff800000, v46
	v_cmp_neq_f32_e64 s11, 0xff800000, v45
	v_cmp_neq_f32_e64 s14, 0xff800000, v47
	v_cmp_neq_f32_e64 s16, 0xff800000, v48
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s10, s0, s14
	s_and_b32 s9, s0, s16
	s_and_b32 s14, s0, s12
	s_and_b32 s16, s0, s11
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v124, 0xff800000, v86, s0
	v_add_lshl_u32 v86, s3, v240, 2
	v_cndmask_b32_e64 v49, 0xff800000, v87, s0
	v_add_lshl_u32 v87, s3, v241, 2
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v126, 0xff800000, v90, s0
	v_cndmask_b32_e64 v50, 0xff800000, v89, s0
	v_cndmask_b32_e64 v86, 0x80000000, v86, s0
	v_cndmask_b32_e64 v125, 0xff800000, v88, s0
	v_cndmask_b32_e64 v90, 0x80000000, v87, s0
	v_cndmask_b32_e64 v52, 0xff800000, v93, s0
	v_cndmask_b32_e64 v51, 0xff800000, v91, s0
	v_cndmask_b32_e64 v127, 0xff800000, v92, s0
	s_clause 0x1
	buffer_load_b128 v[86:89], v86, s[96:99], 0 offen
	buffer_load_b128 v[90:93], v90, s[96:99], 0 offen
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v49
	v_cmp_neq_f32_e64 s26, 0xff800000, v50
	v_cmp_neq_f32_e64 s28, 0xff800000, v51
	v_cmp_neq_f32_e64 s37, 0xff800000, v52
	v_cmp_neq_f32_e64 s4, 0xff800000, v125
	v_cmp_neq_f32_e64 s39, 0xff800000, v127
	v_cmp_neq_f32_e64 s3, 0xff800000, v124
	v_cmp_neq_f32_e64 s38, 0xff800000, v126
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s26, s0, s26
	s_and_b32 s11, s0, s4
	s_and_b32 s7, s0, s39
	s_and_b32 s12, s0, s3
	s_and_b32 s8, s0, s38
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v128, 0xff800000, v87, s0
	v_cndmask_b32_e64 v137, 0xff800000, v86, s0
	v_or_b32_e32 v86, s82, v136
	v_or_b32_e32 v87, 2, v136
	v_cndmask_b32_e64 v138, 0xff800000, v88, s0
	v_or_b32_e32 v88, 4, v136
	v_cndmask_b32_e64 v129, 0xff800000, v89, s0
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v86, s101, v86, 1
	v_or_b32_e32 v87, s82, v87
	v_or_b32_e32 v89, 6, v136
	v_or_b32_e32 v88, s82, v88
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v139, 0xff800000, v90, s0
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v86, v86, s[92:95], 0 offen
	v_add_lshl_u32 v87, s101, v87, 1
	v_or_b32_e32 v89, s82, v89
	v_add_lshl_u32 v88, s101, v88, 1
	v_or_b32_e32 v90, 8, v136
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v130, 0xff800000, v91, s0
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v87, v87, s[92:95], 0 offen
	v_add_lshl_u32 v89, s101, v89, 1
	buffer_load_u16 v88, v88, s[92:95], 0 offen
	v_or_b32_e32 v90, s82, v90
	v_or_b32_e32 v91, 10, v136
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v140, 0xff800000, v92, s0
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v89, v89, s[92:95], 0 offen
	v_or_b32_e32 v92, 12, v136
	v_add_lshl_u32 v90, s101, v90, 1
	v_or_b32_e32 v91, s82, v91
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v131, 0xff800000, v93, s0
	v_or_b32_e32 v93, 14, v136
	v_or_b32_e32 v92, s82, v92
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v90, v90, s[92:95], 0 offen
	v_add_lshl_u32 v91, s101, v91, 1
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v137
	v_or_b32_e32 v93, s82, v93
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v92, s101, v92, 1
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s33, 0xff800000, v138
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v91, v91, s[92:95], 0 offen
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v139
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v93, s101, v93, 1
	buffer_load_u16 v92, v92, s[92:95], 0 offen
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s35, 0xff800000, v140
	v_cmp_neq_f32_e64 s36, 0xff800000, v129
	v_cmp_neq_f32_e64 s19, 0xff800000, v128
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v93, v93, s[92:95], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v133, v[37:40]
	ds_store_b128 v133, v[45:48] offset:512
	ds_store_b128 v210, v[33:36]
	ds_store_b128 v210, v[41:44] offset:512
	ds_store_b128 v133, v[124:127] offset:1024
	ds_store_b128 v133, v[137:140] offset:1536
	ds_store_b128 v210, v[49:52] offset:1024
	ds_store_b128 v210, v[128:131] offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v212
	ds_load_b128 v[49:52], v213
	v_add_nc_u32_e32 v33, 0, v168
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s20, 0xff800000, v131
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s3, s0, s35
	s_and_b32 s4, s0, s6
	s_and_b32 s6, s0, s5
	s_and_b32 s5, s0, s33
	s_and_b32 s33, s0, s31
	s_and_b32 s31, s0, s34
	s_and_b32 s34, s0, s30
	s_and_b32 s35, s0, s24
	s_and_b32 s24, s0, s23
	s_and_b32 s23, s0, s29
	s_and_b32 s29, s0, s22
	s_and_b32 s30, s0, s21
	s_and_b32 s21, s0, s37
	s_and_b32 s22, s0, s28
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v130
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s28, s0, s15
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v46, 0x3fb8aa3b, v42
	ds_load_b128 v[33:36], v33
	ds_load_b128 v[37:40], v211
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v45, 0x3fb8aa3b, v41 :: v_dual_mul_f32 v162, 0x3fb8aa3b, v51
	v_dual_mul_f32 v47, 0x3fb8aa3b, v43 :: v_dual_mul_f32 v52, 0x3fb8aa3b, v52
	v_mul_f32_e32 v48, 0x3fb8aa3b, v44
	ds_load_b128 v[41:44], v214
	ds_load_b128 v[137:140], v215
	v_mul_f32_e32 v124, 0x3fb8aa3b, v49
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v49, 0, 1, s18
	s_and_b32 s15, s0, s13
	s_and_b32 s13, s0, s20
	s_and_b32 s20, s0, s19
	s_and_b32 s19, s0, s36
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v50, 0x3fb8aa3b, v50 :: v_dual_mul_f32 v35, 0x3fb8aa3b, v35
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v34, 0x3fb8aa3b, v34 :: v_dual_mul_f32 v39, 0x3fb8aa3b, v39
	v_dual_mul_f32 v36, 0x3fb8aa3b, v36 :: v_dual_mul_f32 v33, 0x3fb8aa3b, v33
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v40, 0x3fb8aa3b, v40 :: v_dual_mul_f32 v129, 0x3fb8aa3b, v41
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v128, 0x3fb8aa3b, v44 :: v_dual_mul_f32 v125, 0x3fb8aa3b, v137
	v_mul_f32_e32 v41, 0x3fb8aa3b, v138
	v_mul_f32_e32 v127, 0x3fb8aa3b, v139
	v_mul_f32_e32 v163, 0x3fb8aa3b, v140
	ds_load_b128 v[137:140], v216
	ds_load_b128 v[141:144], v217
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v44, 0, 1, s17
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v51, 0x3fb8aa3b, v42
	v_mul_f32_e32 v131, 0x3fb8aa3b, v43
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshlrev_b16 v44.l, 8, v44.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v38, 0x3fb8aa3b, v38 :: v_dual_mul_f32 v37, 0x3fb8aa3b, v37
	v_mul_f32_e32 v133, 0x3fb8aa3b, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v137.h, v49.l, v44.l
	v_cndmask_b32_e64 v44, 0, 1, s25
	v_cndmask_b32_e64 v49, 0, 1, s27
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v42, 0x3fb8aa3b, v138
	v_dual_mul_f32 v134, 0x3fb8aa3b, v139 :: v_dual_mul_f32 v43, 0x3fb8aa3b, v142
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v44.l, 8, v44.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v157, 0x3fb8aa3b, v141
	v_mul_f32_e32 v255, 0x3fb8aa3b, v144
	v_mul_f32_e32 v130, 0x3fb8aa3b, v140
	v_mul_f32_e32 v126, 0x3fb8aa3b, v143
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v137.l, v49.l, v44.l
	v_cndmask_b32_e64 v44, 0, 1, s9
	v_cndmask_b32_e64 v49, 0, 1, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v44.l, 8, v44.l
	v_or_b16 v138.h, v49.l, v44.l
	v_cndmask_b32_e64 v44, 0, 1, s14
	v_cndmask_b32_e64 v49, 0, 1, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v44.l, 8, v44.l
	v_or_b16 v138.l, v49.l, v44.l
	v_cndmask_b32_e64 v44, 0, 1, s7
	v_cndmask_b32_e64 v49, 0, 1, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v44.l, 8, v44.l
	v_or_b16 v139.h, v49.l, v44.l
	v_cndmask_b32_e64 v44, 0, 1, s11
	v_cndmask_b32_e64 v49, 0, 1, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v44.l, 8, v44.l
	v_or_b16 v139.l, v49.l, v44.l
	v_cndmask_b32_e64 v44, 0, 1, s3
	v_cndmask_b32_e64 v49, 0, 1, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v44.l, 8, v44.l
	v_or_b16 v44.h, v49.l, v44.l
	v_cndmask_b32_e64 v49, 0, 1, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v44.l, v49.l
	v_cndmask_b32_e64 v49, 0, 1, s6
	v_lshlrev_b16 v44.l, 8, v44.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v44.l, v49.l, v44.l
	v_add_nc_u32_e32 v49, 0, v169
	ds_store_2addr_b32 v49, v137, v138 offset1:32
	ds_store_2addr_b32 v49, v139, v44 offset0:64 offset1:96
	v_cndmask_b32_e64 v44, 0, 1, s31
	v_cndmask_b32_e64 v49, 0, 1, s33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v44.l, 8, v44.l
	v_or_b16 v137.h, v49.l, v44.l
	v_cndmask_b32_e64 v44, 0, 1, s34
	v_cndmask_b32_e64 v49, 0, 1, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v44.l, 8, v44.l
	v_or_b16 v137.l, v49.l, v44.l
	v_cndmask_b32_e64 v44, 0, 1, s23
	v_cndmask_b32_e64 v49, 0, 1, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v44.l, 8, v44.l
	v_or_b16 v138.h, v49.l, v44.l
	v_cndmask_b32_e64 v44, 0, 1, s29
	v_cndmask_b32_e64 v49, 0, 1, s30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v44.l, 8, v44.l
	v_or_b16 v138.l, v49.l, v44.l
	v_cndmask_b32_e64 v44, 0, 1, s21
	v_cndmask_b32_e64 v49, 0, 1, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v44.l, 8, v44.l
	v_or_b16 v139.h, v49.l, v44.l
	v_cndmask_b32_e64 v44, 0, 1, s26
	v_cndmask_b32_e64 v49, 0, 1, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v44.l, 8, v44.l
	v_or_b16 v139.l, v49.l, v44.l
	v_cndmask_b32_e64 v44, 0, 1, s13
	v_cndmask_b32_e64 v49, 0, 1, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v44.l, 8, v44.l
	v_or_b16 v44.h, v49.l, v44.l
	v_cndmask_b32_e64 v49, 0, 1, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v44.l, v49.l
	v_cndmask_b32_e64 v49, 0, 1, s20
	v_lshlrev_b16 v44.l, 8, v44.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v44.l, v49.l, v44.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v49, v242, v85
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_2addr_b32 v218, v137, v138 offset1:32
	ds_store_2addr_b32 v218, v139, v44 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v44, 0, v170
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v85, 16, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v33, v49, v85
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v49, v242, v84 :: v_dual_lshlrev_b32 v84, 16, v87
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v34, v49, v84 :: v_dual_mul_f32 v49, v242, v83
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v83, 16, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v35, v49, v83
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v49, v242, v82 :: v_dual_lshlrev_b32 v82, 16, v89
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v36, v49, v82 :: v_dual_mul_f32 v49, v242, v81
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v81, 16, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v37, v49, v81
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v49, v242, v80 :: v_dual_lshlrev_b32 v80, 16, v91
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v38, v49, v80 :: v_dual_mul_f32 v49, v242, v78
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v78, 16, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v39, v49, v78
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v49, v242, v76 :: v_dual_lshlrev_b32 v76, 16, v93
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v40, v49, v76 :: v_dual_mul_f32 v49, v242, v79
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v76, 16, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v45, v49, v76
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v49, v242, v77 :: v_dual_lshlrev_b32 v76, 16, v95
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v46, v49, v76 :: v_dual_mul_f32 v49, v242, v75
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v75, 16, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v47, v49, v75
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v49, v242, v74 :: v_dual_lshlrev_b32 v74, 16, v97
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v48, v49, v74 :: v_dual_mul_f32 v49, v242, v73
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v73, 16, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v124, v49, v73 :: v_dual_mul_f32 v49, v242, v72
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v72, 16, v99
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v50, v49, v72 :: v_dual_mul_f32 v49, v242, v70
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v70, 16, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v162, v49, v70 :: v_dual_mul_f32 v49, v242, v68
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v68, 16, v101
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v52, v49, v68 :: v_dual_mul_f32 v49, v242, v71
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v68, 16, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v129, v49, v68
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v49, v242, v69 :: v_dual_lshlrev_b32 v68, 16, v103
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v51, v49, v68
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v49, v242, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v67, 16, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v131, v49, v67
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v49, v242, v66 :: v_dual_lshlrev_b32 v66, 16, v105
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v128, v49, v66 :: v_dual_mul_f32 v49, v242, v65
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v65, 16, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v125, v49, v65
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v49, v242, v64 :: v_dual_lshlrev_b32 v64, 16, v107
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v41, v49, v64
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v49, v242, v62 :: v_dual_lshlrev_b32 v62, 16, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v127, v49, v62
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v49, v242, v60 :: v_dual_lshlrev_b32 v60, 16, v246
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v163, v49, v60
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v49, v242, v63
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v60, 16, v247
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v247.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v133, v49, v60
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v49, v242, v61 :: v_dual_lshlrev_b32 v60, 16, v248
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v248, 0, v166
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v42, v49, v60 :: v_dual_mul_f32 v49, v242, v59
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v59, 16, v249
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v134, v49, v59 :: v_dual_mul_f32 v49, v242, v58
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v58, 16, v250
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v130, v49, v58 :: v_dual_mul_f32 v49, v242, v57
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v57, 16, v251
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v157, v49, v57
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v49, v242, v56
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v56, 16, v252
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v43, v49, v56
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v49, v242, v55
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v55, 16, v253
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v126, v49, v55 :: v_dual_mul_f32 v49, v242, v54
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v54, 16, v254
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v255, v49, v54
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_b32 v54, v44
	ds_load_b32 v55, v219
	ds_load_b32 v56, v220
	ds_load_b32 v58, v221
	ds_load_b32 v62, v222
	ds_load_b32 v70, v223
	ds_load_b32 v49, v224
	ds_load_b32 v44, v225
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v57, 0x10000, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_ne_u32_e64 s62, 0, v57
	v_and_b32_e32 v57, 0x10000, v55
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v35, 0xff800000, v35, s62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s60, 0, v57
	v_and_b32_e32 v57, 0x10000, v56
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v39, 0xff800000, v39, s60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s50, 0, v57
	v_and_b32_e32 v57, 0x10000, v58
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v47, 0xff800000, v47, s50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s47, 0, v57
	v_and_b32_e32 v57, 0x10000, v62
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v75, 0xff800000, v162, s47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s43, 0, v57
	v_and_b32_e32 v57, 0x10000, v70
	v_cmp_ne_u32_e64 s42, 0, v57
	v_and_b32_e32 v57, 0x10000, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v71, 0xff800000, v127, s42
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s36, 0, v57
	v_and_b32_e32 v57, 1, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v59, 0xff800000, v134, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s65, 1, v57
	v_and_b32_e32 v57, 0x1000000, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v33, 0xff800000, v33, s65
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s64, 0, v57
	v_and_b32_e32 v57, 1, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, 0xff800000, v36, s64
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s63, 1, v57
	v_and_b32_e32 v57, 0x1000000, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, 0xff800000, v37, s63
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s61, 0, v57
	v_and_b32_e32 v57, 1, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, 0xff800000, v40, s61
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s54, 1, v57
	v_and_b32_e32 v57, 0x1000000, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v45, 0xff800000, v45, s54
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s53, 0, v57
	v_and_b32_e32 v57, 1, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v48, 0xff800000, v48, s53
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s52, 1, v57
	v_and_b32_e32 v57, 0x1000000, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v73, 0xff800000, v124, s52
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s49, 0, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v76, 0xff800000, v52, s49
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v52, 1, v62
	v_cmp_eq_u32_e64 s48, 1, v52
	v_and_b32_e32 v52, 0x1000000, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v65, 0xff800000, v129, s48
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s46, 0, v52
	v_and_b32_e32 v52, 1, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v68, 0xff800000, v128, s46
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s45, 1, v52
	v_and_b32_e32 v52, 0x1000000, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cmp_ne_u32_e64 s44, 0, v52
	v_and_b32_e32 v52, 1, v49
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v67, 0xff800000, v131, s43
	v_cndmask_b32_e64 v72, 0xff800000, v163, s44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s41, 1, v52
	v_and_b32_e32 v52, 0x1000000, v49
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v57, 0xff800000, v133, s41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s40, 0, v52
	v_and_b32_e32 v52, 0x10000, v44
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v60, 0xff800000, v130, s40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s38, 0, v52
	v_and_b32_e32 v52, 1, v44
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v63, 0xff800000, v126, s38
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s39, 1, v52
	v_and_b32_e32 v52, 0x1000000, v44
	v_lshrrev_b16 v44.h, 8, v54.l
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v54, s81, v114
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v69, 0xff800000, v125, s45
	v_cndmask_b32_e64 v61, 0xff800000, v157, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s37, 0, v52
	v_and_b16 v44.h, 1, v44.h
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v52, s57, v115, 1
	v_add_lshl_u32 v54, s57, v54, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v64, 0xff800000, v255, s37
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s67, 1, v44.h
	v_lshrrev_b16 v44.h, 8, v55.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v55, 0x80000000, v52, s1
	v_cndmask_b32_e64 v54, 0x80000000, v54, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v34, 0xff800000, v34, s67
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v44.h, 1, v44.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s66, 1, v44.h
	v_lshrrev_b16 v44.h, 8, v56.l
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v56, 0, v172
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, 0xff800000, v38, s66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v44.h, 1, v44.h
	v_cmp_eq_u16_e64 s56, 1, v44.h
	v_lshrrev_b16 v44.h, 8, v58.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v46, 0xff800000, v46, s56
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v44.h, 1, v44.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s55, 1, v44.h
	v_lshrrev_b16 v44.h, 8, v62.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v74, 0xff800000, v50, s55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v44.h, 1, v44.h
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v50, s57, v114, 1
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s51, 1, v44.h
	v_lshrrev_b16 v44.h, 8, v70.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v66, 0xff800000, v51, s51
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v44.h, 1, v44.h
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v51, s81, 1, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s59, 1, v44.h
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v51, s57, v51, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v70, 0xff800000, v41, s59
	.loc	1 881 25                        ; attention.py:881:25
	v_lshrrev_b16 v41.l, 8, v49.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v49, 0x80000000, v51, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v41.l, 1, v41.l
	v_cmp_eq_u16_e64 s58, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v44.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v58, 0xff800000, v42, s58
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v41.l, 1, v41.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s57, 1, v41.l
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v41, 0, v171
	ds_store_b128 v41, v[33:36]
	ds_store_b128 v41, v[65:68] offset:2048
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v41, 0x80000000, v50, s1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v62, 0xff800000, v43, s57
	ds_store_b128 v226, v[37:40]
	ds_store_b128 v226, v[69:72] offset:2048
	ds_store_b128 v227, v[45:48]
	ds_store_b128 v227, v[57:60] offset:2048
	ds_store_b128 v228, v[73:76]
	ds_store_b128 v228, v[61:64] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[41:44], v41, s[68:71], 0 offen
	buffer_load_b128 v[49:52], v49, s[68:71], 0 offen
	buffer_load_b128 v[125:128], v55, s[68:71], 0 offen
	buffer_load_b128 v[137:140], v54, s[68:71], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[105:108], v209
	ds_load_b128 v[97:100], v209 offset:256
	ds_load_b128 v[101:104], v209 offset:1024
	ds_load_b128 v[93:96], v209 offset:1280
	ds_load_b128 v[89:92], v209 offset:512
	ds_load_b128 v[81:84], v209 offset:768
	ds_load_b128 v[85:88], v209 offset:1536
	ds_load_b128 v[77:80], v209 offset:1792
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v54.l, v41.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v55.l, v49.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v55.h, v125.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v54.h, v137.l
	v_mov_b16_e64 v137.l, v41.h
	v_mov_b16_e32 v125.l, v49.h
	v_mov_b16_e32 v41.l, v43.l
	v_mov_b16_e64 v41.h, v139.l
	ds_store_b64 v56, v[54:55]
	v_mov_b16_e64 v54.h, v138.l
	v_mov_b32_e32 v124, v137
	v_mov_b16_e64 v138.l, v42.h
	v_mov_b16_e32 v55.l, v50.l
	v_mov_b16_e32 v55.h, v126.l
	v_mov_b16_e32 v54.l, v42.l
	ds_store_b64 v229, v[124:125]
	ds_store_b64 v230, v[54:55]
	v_mov_b16_e32 v126.l, v50.h
	v_mov_b32_e32 v125, v138
	v_mov_b16_e32 v42.l, v51.l
	v_mov_b16_e32 v42.h, v127.l
	v_mov_b16_e64 v139.l, v43.h
	ds_store_b64 v231, v[125:126]
	ds_store_b64 v232, v[41:42]
	v_mov_b16_e64 v42.h, v128.l
	v_mov_b16_e64 v128.l, v52.h
	v_mov_b16_e32 v127.l, v51.h
	v_mov_b32_e32 v126, v139
	v_mov_b16_e32 v42.l, v52.l
	v_mov_b16_e32 v41.l, v44.l
	v_mov_b16_e64 v41.h, v140.l
	v_mov_b32_e32 v141, v128
	v_mov_b16_e64 v140.l, v44.h
	ds_store_b64 v233, v[126:127]
	ds_store_b64 v234, v[41:42]
	ds_store_b64 v235, v[140:141]
.Ltmp0:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v41, v46, v47, v48
	v_max3_f32 v42, v73, v74, v75
	v_max3_f32 v43, v76, v65, v66
	v_max3_f32 v44, v57, v58, v59
.Ltmp1:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp2:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v41, v41, v42, v43
	v_max3_f32 v42, v67, v68, v69
	v_max3_f32 v43, v70, v71, v72
	v_max3_f32 v42, v42, v43, v44
	v_max_f32_e32 v43, v33, v34
	v_max3_f32 v44, v36, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v43, v43, v35, v44
	v_max3_f32 v44, v39, v40, v45
	v_max3_f32 v41, v43, v44, v41
	v_dual_max_f32 v43, v60, v61 :: v_dual_max_f32 v44, v63, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v43, v43, v62, v44
	v_max3_f32 v41, v41, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v42, v41, s100, 0xfedcba98 op_sel:[1,0]
.Ltmp4:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v246, v53, v41, v42
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v34, v246
	v_sub_f32_e32 v33, v33, v246
	v_sub_f32_e32 v35, v35, v246
	v_sub_f32_e32 v36, v36, v246
	v_sub_f32_e32 v37, v37, v246
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v38, v246
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v39, v246
	v_sub_f32_e32 v40, v40, v246
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s67
	v_cndmask_b32_e64 v33, 0, v33, s65
	v_cndmask_b32_e64 v35, 0, v35, s62
	v_cndmask_b32_e64 v36, 0, v36, s64
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v247.l, v34.h
	v_cmp_o_f32_e64 s67, v34, v34
	v_cmp_o_f32_e64 s65, v33, v33
	v_cmp_o_f32_e64 s62, v35, v35
	v_cmp_o_f32_e64 s64, v36, v36
	v_and_b32_e32 v41, 1, v247
	v_mov_b16_e64 v247.l, v36.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s63
	v_cndmask_b32_e64 v38, 0, v38, s66
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v34, v34, v41, 0x7fff
	v_mov_b16_e64 v41.h, v247.h
	v_mov_b16_e32 v41.l, v33.h
	v_cmp_o_f32_e64 s63, v38, v38
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s60
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v41, 1, v41
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s60, v39, v39
	v_add3_u32 v33, v33, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s61, v40, v40
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v41, v34, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v41, v34, v243
	v_perm_b32 v34, v41, v34, v244
	v_mov_b16_e64 v41.h, v247.h
	v_mov_b16_e32 v41.l, v35.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v35, v35, v41, 0x7fff
	v_and_b32_e32 v41, 1, v247
	v_mov_b16_e64 v247.l, v38.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v36, v36, v41, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s62
	v_cmp_o_f32_e64 s62, v37, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s64
	v_permlanex16_b32 v41, v36, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v41, v36, v243
	v_perm_b32 v36, v41, v36, v244
	v_mov_b16_e64 v41.h, v247.h
	v_mov_b16_e32 v41.l, v37.h
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v37, v37, v41, 0x7fff
	v_and_b32_e32 v41, 1, v247
	v_mov_b16_e64 v247.l, v40.h
	v_add3_u32 v38, v38, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s62
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v41, v38, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v41, v38, v243
	v_perm_b32 v38, v41, v38, v244
	v_mov_b16_e64 v41.h, v247.h
	v_mov_b16_e32 v41.l, v39.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v39, v39, v41, 0x7fff
	v_and_b32_e32 v41, 1, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v41, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s60
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s60, 0xff800000, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s61
	v_permlanex16_b32 v41, v40, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v39, v41, v40, v243
	v_perm_b32 v40, v41, v40, v244
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v41, v53, v246
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v249, 0, v41, s60
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[124:127], v248
	ds_load_b128 v[128:131], v146
	ds_load_b128 v[41:44], v147
	ds_load_b128 v[49:52], v248 offset:2048
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v249
	v_mul_f32_e32 v10, v10, v249
	v_mul_f32_e32 v11, v11, v249
	v_mul_f32_e32 v12, v12, v249
	v_mul_f32_e32 v13, v13, v249
	v_mul_f32_e32 v14, v14, v249
	v_mul_f32_e32 v15, v15, v249
	v_mul_f32_e32 v16, v16, v249
	v_mul_f32_e32 v25, v25, v249
	v_mul_f32_e32 v26, v26, v249
	v_mul_f32_e32 v27, v27, v249
	v_mul_f32_e32 v28, v28, v249
	v_mul_f32_e32 v29, v29, v249
	v_mul_f32_e32 v30, v30, v249
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[124:131], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[124:127], v109
	ds_load_b128 v[128:131], v185
	ds_load_b128 v[53:56], v186
	ds_load_b128 v[154:157], v149
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v31, v31, v249
	v_mul_f32_e32 v32, v32, v249
	v_mul_f32_e32 v17, v17, v249
	v_mul_f32_e32 v18, v18, v249
	v_mul_f32_e32 v19, v19, v249
	v_mul_f32_e32 v20, v20, v249
	v_mul_f32_e32 v21, v21, v249
	v_mul_f32_e32 v22, v22, v249
	v_mul_f32_e32 v23, v23, v249
	v_mul_f32_e32 v24, v24, v249
	v_mul_f32_e32 v1, v1, v249
	v_mul_f32_e32 v2, v2, v249
	v_mul_f32_e32 v3, v3, v249
	v_mul_f32_e32 v4, v4, v249
	v_mul_f32_e32 v5, v5, v249
	v_mul_f32_e32 v6, v6, v249
	v_mul_f32_e32 v7, v7, v249
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[124:131], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[124:127], v191
	ds_load_b128 v[128:131], v192
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v249
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[124:131], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[124:127], v198
	ds_load_b128 v[128:131], v199
	ds_load_b128 v[137:140], v200
	ds_load_b128 v[181:184], v197
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[124:131], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v45, v246
	v_sub_f32_e32 v34, v46, v246
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v45.h, v247.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v47, v246
	v_sub_f32_e32 v36, v48, v246
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v73, v246
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v74, v246
	v_sub_f32_e32 v39, v75, v246
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v76, v246
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[128:131], v132
	ds_load_b128 v[150:153], v145
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s54
	v_cndmask_b32_e64 v34, 0, v34, s56
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s50
	v_cndmask_b32_e64 v36, 0, v36, s53
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v45.l, v33.h
	v_mov_b16_e64 v247.l, v34.h
	v_cmp_o_f32_e64 s54, v33, v33
	v_cmp_o_f32_e64 s56, v34, v34
	v_cmp_o_f32_e64 s50, v35, v35
	v_and_b32_e32 v45, 1, v45
	v_cmp_o_f32_e64 s53, v36, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s52
	v_cndmask_b32_e64 v38, 0, v38, s55
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v33, v33, v45, 0x7fff
	v_and_b32_e32 v45, 1, v247
	v_mov_b16_e64 v247.l, v36.h
	v_cmp_o_f32_e64 s52, v38, v38
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v34, v34, v45, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s54
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s56
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s47, v39, v39
	v_permlanex16_b32 v45, v34, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s49, v40, v40
	v_perm_b32 v33, v45, v34, v243
	v_perm_b32 v34, v45, v34, v244
	v_mov_b16_e64 v45.h, v247.h
	v_mov_b16_e32 v45.l, v35.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v35, v35, v45, 0x7fff
	v_and_b32_e32 v45, 1, v247
	v_mov_b16_e64 v247.l, v38.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v36, v36, v45, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s50
	v_cmp_o_f32_e64 s50, v37, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s53
	v_permlanex16_b32 v45, v36, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v45, v36, v243
	v_perm_b32 v36, v45, v36, v244
	v_mov_b16_e64 v45.h, v247.h
	v_mov_b16_e32 v45.l, v37.h
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v37, v37, v45, 0x7fff
	v_and_b32_e32 v45, 1, v247
	v_mov_b16_e64 v247.l, v40.h
	v_add3_u32 v38, v38, v45, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s50
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v45, v38, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v45, v38, v243
	v_perm_b32 v38, v45, v38, v244
	v_mov_b16_e64 v45.h, v247.h
	v_mov_b16_e32 v45.l, v39.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v39, v39, v45, 0x7fff
	v_and_b32_e32 v45, 1, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v45, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s49
	v_permlanex16_b32 v45, v40, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v39, v45, v40, v243
	v_perm_b32 v40, v45, v40, v244
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[45:48], v148
	ds_load_b128 v[124:127], v135
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[49:56], v[33:40], v[25:32]
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v53, v86, v91, v87
.Ltmp6:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[41:44], v193
	ds_load_b128 v[45:48], v194
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[41:48], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[141:144], v201
	ds_load_b128 v[41:44], v202
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v45.h, v247.h
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[137:144], v[33:40], v[1:8]
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v33, v65, v246
	v_sub_f32_e32 v34, v66, v246
	v_sub_f32_e32 v35, v67, v246
	v_sub_f32_e32 v36, v68, v246
	v_sub_f32_e32 v37, v69, v246
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v70, v246
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v71, v246
	v_sub_f32_e32 v40, v72, v246
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s48
	v_cndmask_b32_e64 v34, 0, v34, s51
	v_cndmask_b32_e64 v35, 0, v35, s43
	v_cndmask_b32_e64 v36, 0, v36, s46
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v45.l, v33.h
	v_mov_b16_e64 v247.l, v34.h
	v_cmp_o_f32_e64 s47, v33, v33
	v_cmp_o_f32_e64 s48, v34, v34
	v_cmp_o_f32_e64 s43, v35, v35
	v_and_b32_e32 v45, 1, v45
	v_cmp_o_f32_e64 s46, v36, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s45
	v_cndmask_b32_e64 v38, 0, v38, s59
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v33, v33, v45, 0x7fff
	v_and_b32_e32 v45, 1, v247
	v_mov_b16_e64 v247.l, v36.h
	v_cmp_o_f32_e64 s45, v38, v38
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v34, v34, v45, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s47
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s42, v39, v39
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v45, v34, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v45, v34, v243
	v_perm_b32 v34, v45, v34, v244
	v_mov_b16_e64 v45.h, v247.h
	v_mov_b16_e32 v45.l, v35.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v35, v35, v45, 0x7fff
	v_and_b32_e32 v45, 1, v247
	v_mov_b16_e64 v247.l, v38.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v36, v36, v45, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s43
	v_cmp_o_f32_e64 s43, v37, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s46
	v_permlanex16_b32 v45, v36, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v45, v36, v243
	v_perm_b32 v36, v45, v36, v244
	v_mov_b16_e64 v45.h, v247.h
	v_mov_b16_e32 v45.l, v37.h
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v37, v37, v45, 0x7fff
	v_and_b32_e32 v45, 1, v247
	v_mov_b16_e64 v247.l, v40.h
	v_add3_u32 v38, v38, v45, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s43
	v_cmp_o_f32_e64 s43, v40, v40
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v45, v38, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v45, v38, v243
	v_perm_b32 v38, v45, v38, v244
	v_mov_b16_e64 v45.h, v247.h
	v_mov_b16_e32 v45.l, v39.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v39, v39, v45, 0x7fff
	v_and_b32_e32 v45, 1, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v45, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s43
	v_permlanex16_b32 v45, v40, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v39, v45, v40, v243
	v_perm_b32 v40, v45, v40, v244
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[45:48], v187
	ds_load_b128 v[49:52], v188
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[124:131], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[45:52], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[45:48], v248 offset:4096
	ds_load_b128 v[49:52], v195
	ds_load_b128 v[177:180], v196
	ds_load_b128 v[65:68], v248 offset:6144
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[45:52], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[45:48], v203
	ds_load_b128 v[69:72], v204
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v88, v88
	v_max_f32_e32 v52, v92, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v51, v52, v51
	v_max3_f32 v52, v89, v85, v90
	v_max3_f32 v51, v52, v53, v51
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v52, v51
.Ltmp9:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v57, v246
	v_sub_f32_e32 v34, v58, v246
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v41.h, v247.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v59, v246
	v_sub_f32_e32 v36, v60, v246
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v61, v246
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v62, v246
	v_sub_f32_e32 v39, v63, v246
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v64, v246
.Ltmp10:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v80, v80
.Ltmp11:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s41
	v_cndmask_b32_e64 v34, 0, v34, s58
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s36
	v_cndmask_b32_e64 v36, 0, v36, s40
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v41.l, v33.h
	v_mov_b16_e64 v247.l, v34.h
	v_cmp_o_f32_e64 s41, v33, v33
	v_cmp_o_f32_e64 s42, v34, v34
	v_cmp_o_f32_e64 s36, v35, v35
	v_and_b32_e32 v41, 1, v41
	v_cmp_o_f32_e64 s40, v36, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s39
	v_cndmask_b32_e64 v38, 0, v38, s57
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v33, v33, v41, 0x7fff
	v_and_b32_e32 v41, 1, v247
	v_mov_b16_e64 v247.l, v36.h
	v_cmp_o_f32_e64 s39, v38, v38
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v84, v84
.Ltmp13:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v34, v34, v41, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s41
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v62, v78, v83, v79
.Ltmp15:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s38
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v61, v60
.Ltmp17:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s42
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v61, v81, v77, v82
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v52, v52 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp20:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v41, v34, s100, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v60, v61, v62, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v52, v52, v52
.Ltmp22:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s37, v40, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v33, v41, v34, v243
	v_perm_b32 v34, v41, v34, v244
	v_mov_b16_e64 v41.h, v247.h
	v_mov_b16_e32 v41.l, v35.h
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v61, v60
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v51, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v41, 1, v41
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v61 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v52, v51
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v35, v35, v41, 0x7fff
	v_and_b32_e32 v41, 1, v247
	v_mov_b16_e64 v247.l, v38.h
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v52, v52 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp30:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v36, v36, v41, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s36
	v_cmp_o_f32_e64 s36, v37, v37
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v60, v61
	v_max_f32_e32 v52, v52, v52
.Ltmp32:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v61, v60
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v51, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v41, v36, s100, 0xfedcba98 op_sel:[1,0]
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v61 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v52, v51
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v35, v41, v36, v243
	v_perm_b32 v36, v41, v36, v244
	v_mov_b16_e64 v41.h, v247.h
	v_mov_b16_e32 v41.l, v37.h
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v41, 1, v41
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v60, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v52, v52, v52
.Ltmp42:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v37, v37, v41, 0x7fff
	v_and_b32_e32 v41, 1, v247
	v_mov_b16_e64 v247.l, v40.h
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v61, v60
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v51, v52
.Ltmp45:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v52, v160, v160
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v38, v38, v41, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s36
	v_cmp_o_f32_e64 s36, v39, v39
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v61 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v160, v52, v51
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
.Ltmp49:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v52, v89, v160
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v41, v38, s100, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v56, v85, v160
	v_dual_sub_f32 v53, v90, v160 :: v_dual_max_f32 v60, v60, v61
	v_sub_f32_e32 v57, v86, v160
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v37, v41, v38, v243
	v_perm_b32 v38, v41, v38, v244
	v_mov_b16_e64 v41.h, v247.h
	v_mov_b16_e32 v41.l, v39.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v54, v91, v160
	v_sub_f32_e32 v58, v87, v160
	v_sub_f32_e32 v55, v92, v160
	v_sub_f32_e32 v59, v88, v160
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v41, 1, v41
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v61, v161, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v39, v39, v41, 0x7fff
	v_and_b32_e32 v41, 1, v247
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v161, v61, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v40, v40, v41, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v61, v81, v161
	v_sub_f32_e32 v62, v82, v161
	v_sub_f32_e32 v63, v83, v161
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s37
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v84, v161
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v41, v40, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v39, v41, v40, v243
	v_perm_b32 v40, v41, v40, v244
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[41:44], v189
	ds_load_b128 v[45:48], v190
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[150:157], v[33:40], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[177:184], v[33:40], v[17:24]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[65:72], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v77, v161
	v_sub_f32_e32 v66, v78, v161
	v_sub_f32_e32 v67, v79, v161
	v_sub_f32_e32 v68, v80, v161
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[41:48], v[33:40], v[25:32]
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v104, v104
	v_max_f32_e32 v34, v108, v108
	v_max3_f32 v35, v102, v107, v103
	v_max_f32_e32 v42, v96, v96
	v_max_f32_e32 v43, v100, v100
	v_max3_f32 v44, v94, v99, v95
	v_max_f32_e32 v33, v34, v33
	v_max3_f32 v34, v105, v101, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v42, v43, v42
	v_max3_f32 v43, v97, v93, v98
	v_max3_f32 v33, v34, v35, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v42, v43, v44, v42
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v34, v33 :: v_dual_mov_b32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v43, v43, v43
	v_dual_max_f32 v33, v33, v34 :: v_dual_max_f32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v34, v33 :: v_dual_mov_b32 v43, v42
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v33, v33, v34 :: v_dual_max_f32 v42, v42, v43
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v34, v33 :: v_dual_mov_b32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v43, v43, v43
	v_max_f32_e32 v33, v33, v34
.Ltmp57:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v158, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v42, v43
.Ltmp59:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v43, v159, v159 :: v_dual_max_f32 v158, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v159, v43, v42
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v105, v158
	v_sub_f32_e32 v38, v101, v158
	v_sub_f32_e32 v35, v106, v158
	v_sub_f32_e32 v39, v102, v158
	v_sub_f32_e32 v36, v107, v158
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v35, v35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v103, v158
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v108, v158
	v_sub_f32_e32 v41, v104, v158
	v_sub_f32_e32 v43, v97, v159
	v_sub_f32_e32 v47, v93, v159
	v_sub_f32_e32 v44, v98, v159
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s27
	v_cndmask_b32_e64 v38, 0, v38, s35
	v_cndmask_b32_e64 v35, 0, v35, s25
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s18
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v48, v94, v159
.Ltmp60:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v38
.Ltmp61:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v39
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v45, v99, v159
	v_sub_f32_e32 v49, v95, v159
	v_sub_f32_e32 v46, v100, v159
	v_sub_f32_e32 v50, v96, v159
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s17
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s34
.Ltmp62:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v38
.Ltmp63:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v40
	v_exp_f32_e32 v40, v59
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s23
.Ltmp64:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp65:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s33
	v_cndmask_b32_e64 v40, 0, v40, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v36, v38
.Ltmp67:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v41
	v_exp_f32_e32 v41, v68
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v41, 0, v41, s13
.Ltmp68:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp69:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v35, v36, v37 :: v_dual_mov_b32 v36, v110
.Ltmp71:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v48
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp73:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s24
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp75:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s29
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v110, v34, v35
.Ltmp82:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v43
	v_exp_f32_e32 v35, v47
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v35, 0, v35, s30
.Ltmp83:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp84:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s14
.Ltmp85:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v37
.Ltmp86:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp88:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp90:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v46
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp91:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v38, v39
.Ltmp92:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v58
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v37, v38
	v_mov_b32_e32 v37, v112
.Ltmp94:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp96:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
.Ltmp98:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v112, v34, v35
.Ltmp105:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v52
	v_exp_f32_e32 v35, v56
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s12
	v_cndmask_b32_e64 v35, 0, v35, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
.Ltmp106:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp107:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v53
	v_mov_b32_e32 v53, v246
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp108:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v38
.Ltmp109:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v54
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp111:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s8
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v38, v39
.Ltmp113:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s7
.Ltmp114:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v39, v40
.Ltmp115:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v35, v38, v39 :: v_dual_mov_b32 v38, v111
.Ltmp117:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v66
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp119:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s15
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp121:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s19
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v111, v34, v35
.Ltmp128:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v61
	v_exp_f32_e32 v35, v65
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v35, 0, v35, s20
.Ltmp129:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp130:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s5
.Ltmp131:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v39
.Ltmp132:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp134:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v39, v40
.Ltmp136:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v64
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s3
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v207
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v40, v41
	v_add_f32_e32 v35, v39, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v39, v113 :: v_dual_add_f32 v34, v34, v35
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v113, v34, v35
.Ltmp144:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v207, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v34, v33
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v34, v207, v33 :: v_dual_mov_b32 v207, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v34, v34
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v34, 0, v34, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v206
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v110, v36, v34
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v206, v206
	v_max_f32_e32 v34, v34, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v35, v206, v34
	v_mov_b32_e32 v206, v34
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v35, 0, v35, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v205
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v112, v37, v35
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v35, v205, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v51
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v36, v205, v35 :: v_dual_mov_b32 v205, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v36, v36
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v36, 0, v36, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v111, v38, v36 :: v_dual_max_f32 v36, v245, v245
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v36, v36, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v37, v245, v36
	v_mov_b32_e32 v245, v36
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v37, 0, v37, s3
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_add_i32 s3, s101, 64
	s_cmpk_lt_u32 s101, 0x7c0
	s_mov_b32 s101, s3
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v113, v39, v37
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v33, off, off offset:136
	scratch_load_b32 v34, off, off offset:128
	scratch_load_b32 v35, off, off offset:132
	v_lshrrev_b32_e32 v0, 4, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	v_and_b32_e32 v0, 4, v0
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v33, 0x80, v33
	s_waitcnt vmcnt(1)
	v_lshl_add_u32 v34, v34, 3, 0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v35, 0, v35
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v0, v34, v33, v0
	ds_store_2addr_b64 v35, v[110:111], v[112:113] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v9
	v_div_scale_f32 v35, null, v0, v0, v10
	v_div_scale_f32 v37, null, v0, v0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v33
	v_div_scale_f32 v39, null, v0, v0, v12
	v_rcp_f32_e32 v46, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v37
	v_div_scale_f32 v41, null, v0, v0, v13
	v_div_scale_f32 v43, null, v0, v0, v14
	v_rcp_f32_e32 v48, v39
	v_rcp_f32_e32 v49, v41
	v_fma_f32 v54, -v33, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v50, v43
	v_fma_f32 v55, -v35, v46, 1.0
	v_fma_f32 v56, -v37, v47, 1.0
	v_div_scale_f32 v34, vcc_lo, v9, v0, v9
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v36, s0, v10, v0, v10
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v57, -v39, v48, 1.0
	v_fmac_f32_e32 v46, v55, v46
	v_div_scale_f32 v38, s1, v11, v0, v11
	v_dual_fmac_f32 v47, v56, v47 :: v_dual_mul_f32 v54, v34, v45
	v_fma_f32 v58, -v41, v49, 1.0
	v_div_scale_f32 v40, s3, v12, v0, v12
	v_fma_f32 v59, -v43, v50, 1.0
	v_dual_fmac_f32 v48, v57, v48 :: v_dual_mul_f32 v55, v36, v46
	v_mul_f32_e32 v56, v38, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v49, v58, v49 :: v_dual_fmac_f32 v50, v59, v50
	v_fma_f32 v58, -v33, v54, v34
	v_div_scale_f32 v42, s4, v13, v0, v13
	v_mul_f32_e32 v57, v40, v48
	v_fma_f32 v59, -v35, v55, v36
	v_fma_f32 v60, -v37, v56, v38
	v_fmac_f32_e32 v54, v58, v45
	v_div_scale_f32 v44, null, v0, v0, v15
	v_mul_f32_e32 v62, v42, v49
	v_fma_f32 v61, -v39, v57, v40
	v_dual_fmac_f32 v55, v59, v46 :: v_dual_fmac_f32 v56, v60, v47
	v_fma_f32 v33, -v33, v54, v34
	v_rcp_f32_e32 v53, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v57, v61, v48
	v_fma_f32 v34, -v35, v55, v36
	v_fma_f32 v35, -v37, v56, v38
	v_div_fmas_f32 v33, v33, v45, v54
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v36, -v39, v57, v40
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v51, s5, v14, v0, v14
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v9, v33, v0, v9
	v_div_fmas_f32 v33, v36, v48, v57
	v_fma_f32 v36, -v44, v53, 1.0
	v_div_scale_f32 v52, null, v0, v0, v16
	v_div_fixup_f32 v10, v34, v0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v34, v51, v50 :: v_dual_fmac_f32 v53, v36, v53
	v_div_scale_f32 v36, null, v0, v0, v25
	v_rcp_f32_e32 v37, v52
	v_fma_f32 v58, -v41, v62, v42
	v_div_fixup_f32 v12, v33, v0, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v36
	v_fma_f32 v33, -v43, v34, v51
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v11, v35, v0, v11
	v_div_scale_f32 v35, s1, v15, v0, v15
	v_fmac_f32_e32 v34, v33, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v38, -v52, v37, 1.0
	v_div_scale_f32 v46, null, v0, v0, v26
	v_fma_f32 v45, -v36, v40, 1.0
	v_mul_f32_e32 v33, v35, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, s3, v16, v0, v16
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s4, v25, v0, v25
	v_fmac_f32_e32 v62, v58, v49
	v_div_scale_f32 v47, null, v0, v0, v28
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v41, v62, v42
	v_fma_f32 v41, -v43, v34, v51
	v_fma_f32 v42, -v44, v33, v35
	v_mul_f32_e32 v43, v38, v37
	v_div_fmas_f32 v39, v39, v49, v62
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v33, v42, v53
	v_div_fmas_f32 v34, v41, v50, v34
	v_rcp_f32_e32 v41, v46
	v_fma_f32 v42, -v52, v43, v38
	v_div_fixup_f32 v13, v39, v0, v13
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v34, v0, v14
	v_fma_f32 v34, -v44, v33, v35
	v_fmac_f32_e32 v43, v42, v37
	v_div_scale_f32 v42, null, v0, v0, v27
	v_mul_f32_e32 v35, v45, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v46, v41, 1.0
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v38
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v38, -v36, v35, v45
	v_fmac_f32_e32 v41, v39, v41
	v_rcp_f32_e32 v39, v42
	v_div_scale_f32 v44, s1, v26, v0, v26
	v_div_fmas_f32 v34, v34, v37, v43
	v_rcp_f32_e32 v37, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v35, v38, v40 :: v_dual_mul_f32 v38, v44, v41
	v_div_fixup_f32 v15, v33, v0, v15
	v_div_fixup_f32 v16, v34, v0, v16
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v42, v39, 1.0
	v_fma_f32 v34, -v46, v38, v44
	v_fma_f32 v33, -v36, v35, v45
	v_div_scale_f32 v36, s3, v27, v0, v27
	v_dual_fmac_f32 v39, v43, v39 :: v_dual_fmac_f32 v38, v34, v41
	v_fma_f32 v43, -v47, v37, 1.0
	v_div_scale_f32 v45, null, v0, v0, v29
	v_div_fmas_f32 v33, v33, v40, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v34, v36, v39 :: v_dual_fmac_f32 v37, v43, v37
	v_div_scale_f32 v43, null, v0, v0, v30
	v_rcp_f32_e32 v35, v45
	v_div_scale_f32 v40, s4, v28, v0, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v48, v43
	v_div_fixup_f32 v25, v33, v0, v25
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v36
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v49, -v45, v35, 1.0
	v_mul_f32_e32 v46, v40, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v34, v44, v39
	v_fma_f32 v44, -v43, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v35, v49, v35 :: v_dual_fmac_f32 v48, v44, v48
	v_div_fmas_f32 v33, v33, v41, v38
	v_fma_f32 v38, -v47, v46, v40
	v_div_scale_f32 v41, s1, v29, v0, v29
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v33, v0, v26
	v_fma_f32 v33, -v42, v34, v36
	v_fmac_f32_e32 v46, v38, v37
	v_mul_f32_e32 v36, v41, v35
	v_div_scale_f32 v38, s5, v30, v0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v39, v34
	v_div_scale_f32 v42, null, v0, v0, v31
	v_fma_f32 v39, -v45, v36, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v44, v38, v48
	v_fma_f32 v34, -v47, v46, v40
	v_rcp_f32_e32 v40, v42
	v_div_scale_f32 v47, null, v0, v0, v32
	v_fmac_f32_e32 v36, v39, v35
	v_fma_f32 v39, -v43, v44, v38
	v_div_fixup_f32 v27, v33, v0, v27
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v45, v36, v41
	v_fmac_f32_e32 v44, v39, v48
	v_div_fmas_f32 v34, v34, v37, v46
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v37, v47
	v_div_fmas_f32 v33, v33, v35, v36
	v_fma_f32 v35, -v43, v44, v38
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_scale_f32 v45, null, v0, v0, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v35, v35, v48, v44
	v_div_fixup_f32 v28, v34, v0, v28
	v_div_scale_f32 v34, s3, v31, v0, v31
	v_fma_f32 v39, -v47, v37, 1.0
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v38, null, v0, v0, v17
	v_div_fixup_f32 v30, v35, v0, v30
	v_rcp_f32_e32 v35, v45
	v_fmac_f32_e32 v37, v39, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v41, v38
	v_mul_f32_e32 v36, v34, v40
	v_div_scale_f32 v39, s1, v32, v0, v32
	v_div_fixup_f32 v29, v33, v0, v29
	v_div_scale_f32 v48, null, v0, v0, v20
	v_fma_f32 v43, -v42, v36, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v45, v35, 1.0
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v35, v46, v35 :: v_dual_fmac_f32 v36, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v43, v41
	v_div_fmas_f32 v34, v34, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_div_scale_f32 v40, s3, v18, v0, v18
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v31, v34, v0, v31
	v_mul_f32_e32 v49, v40, v35
	v_fma_f32 v46, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v44, v39, v37 :: v_dual_fmac_f32 v43, v46, v43
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s5, v19, v0, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s4, v17, v0, v17
	v_fma_f32 v36, -v47, v44, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v39, v33, v41
	v_div_fmas_f32 v36, v36, v37, v44
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v47, -v38, v39, v33
	v_fma_f32 v37, -v45, v49, v40
	v_mul_f32_e32 v44, v46, v43
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v32, v36, v0, v32
	v_fmac_f32_e32 v39, v47, v41
	v_fma_f32 v36, -v48, v50, 1.0
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v42, v44, v46
	v_div_scale_f32 v37, null, v0, v0, v21
	v_fma_f32 v33, -v38, v39, v33
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s1, v20, v0, v20
	v_fma_f32 v38, -v45, v49, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v41, v39
	s_mov_b32 vcc_lo, s3
	v_dual_mul_f32 v39, v36, v50 :: v_dual_fmac_f32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	v_div_fmas_f32 v35, v38, v35, v49
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v17, v33, v0, v17
	v_fma_f32 v38, -v42, v44, v46
	v_div_scale_f32 v40, null, v0, v0, v22
	v_div_fixup_f32 v18, v35, v0, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v43, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v34, 1.0
	v_fma_f32 v43, -v48, v39, v36
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v19, v38, v0, v19
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v21, v0, v21
	v_fmac_f32_e32 v39, v43, v50
	v_div_scale_f32 v38, null, v0, v0, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v48, v39, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v38
	v_fma_f32 v35, -v40, v42, 1.0
	v_fma_f32 v43, -v37, v33, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v50, v39
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v42, v35, v42
	v_fmac_f32_e32 v33, v43, v34
	v_div_scale_f32 v43, null, v0, v0, v24
	v_div_fixup_f32 v20, v36, v0, v20
	v_div_scale_f32 v35, s4, v22, v0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v41, v44
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_scale_f32 v34, null, v0, v0, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v21, v33, v0, v21
	v_fma_f32 v33, -v43, v45, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v47, v41
	v_div_scale_f32 v36, s1, v23, v0, v23
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s3, v24, v0, v24
	v_mul_f32_e32 v39, v35, v42
	v_div_scale_f32 v48, s4, v1, v0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v41, v47, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v40, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v0, v2
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v39, v35
	v_mul_f32_e32 v40, v36, v44
	v_fma_f32 v46, -v34, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	v_mul_f32_e32 v51, v48, v37
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v33, v45
	v_rcp_f32_e32 v50, v46
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v35, v0, v22
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v38, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	v_fma_f32 v33, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v51, v36, v37
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v0, v0, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v0, v3
	v_div_fmas_f32 v33, v33, v45, v42
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v23, v35, v0, v23
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fixup_f32 v24, v33, v0, v24
	v_div_fmas_f32 v37, v37, v47, v38
	v_fmac_f32_e32 v36, v41, v50
	v_div_fixup_f32 v1, v34, v0, v1
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v0, v0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v46, v36, v39
	v_div_scale_f32 v34, null, v0, v0, v5
	v_rcp_f32_e32 v39, v35
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v2, v37, v0, v2
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v37, null, v0, v0, v7
	v_div_scale_f32 v44, null, v0, v0, v8
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v41, v37
	v_fma_f32 v45, -v35, v39, 1.0
	v_div_fixup_f32 v3, v33, v0, v3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v33, -v34, v36, 1.0
	v_rcp_f32_e32 v46, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v0, v6
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v5, v0, v5
	v_fma_f32 v48, -v37, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v45, v39
	v_mul_f32_e32 v43, v38, v42
	v_mul_f32_e32 v49, v33, v36
	v_fma_f32 v50, -v44, v46, 1.0
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v0, v7
	v_fma_f32 v47, -v40, v43, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v52, v48, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v0, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v40, v43, v38
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v40, -v35, v51, v45
	v_div_fmas_f32 v38, v38, v42, v43
	v_fma_f32 v33, -v34, v49, v33
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v34, -v44, v53, v50
	v_fmac_f32_e32 v51, v40, v39
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v33, v0, v5
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_mov_b32 s4, s86
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1051 17                       ; attention.py:1051:17
	scratch_load_b32 v35, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 1051 17                       ; attention.py:1051:17
	scratch_load_b32 v34, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s81, v136
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v9, s0
	v_cndmask_b32_e64 v9, 0, v10, s0
	v_cndmask_b32_e64 v10, 0, v11, s0
	v_cndmask_b32_e64 v11, 0, v12, s0
	v_cndmask_b32_e64 v12, 0, v13, s0
	v_cndmask_b32_e64 v13, 0, v14, s0
	v_cndmask_b32_e64 v14, 0, v15, s0
	v_cndmask_b32_e64 v15, 0, v16, s0
	v_cndmask_b32_e64 v16, 0, v25, s0
	v_cndmask_b32_e64 v25, 0, v26, s0
	v_cndmask_b32_e64 v26, 0, v27, s0
	v_cndmask_b32_e64 v27, 0, v28, s0
	v_cndmask_b32_e64 v28, 0, v29, s0
	v_cndmask_b32_e64 v29, 0, v30, s0
	v_cndmask_b32_e64 v30, 0, v31, s0
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v32, off, off offset:8
	scratch_load_b32 v36, off, off offset:40
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s5, s87, 0xffff
	v_or_b32_e32 v38, 16, v136
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s81, v38
	v_or_b32_e32 v37, 32, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cmp_gt_i32_e64 s1, s81, v37
	.loc	1 1046 24                       ; attention.py:1046:24
	s_waitcnt vmcnt(1)
	v_mul_lo_u32 v32, s81, v32
	.loc	1 1047 63                       ; attention.py:1047:63
	s_waitcnt vmcnt(0)
	v_cmp_gt_i32_e64 s3, s81, v36
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v33, v32, v136, 2
	v_add_lshl_u32 v34, v32, v34, 2
	v_add_lshl_u32 v35, v32, v35, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	s_clause 0x2
	buffer_store_b32 v8, v33, s[4:7], 0 offen
	buffer_store_b32 v9, v34, s[4:7], 0 offen
	buffer_store_b32 v10, v35, s[4:7], 0 offen
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v8, off, off offset:116
	scratch_load_b32 v9, off, off offset:112
	scratch_load_b32 v10, off, off offset:108
	scratch_load_b32 v33, off, off offset:104
	scratch_load_b32 v34, off, off offset:100
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v8, v32, v8, 2
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v9, v32, v9, 2
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v10, v32, v10, 2
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v33, v32, v33, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v34, v32, v34, 2
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v33, 0x80000000, v33
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	s_clause 0x4
	buffer_store_b32 v11, v8, s[4:7], 0 offen
	buffer_store_b32 v12, v9, s[4:7], 0 offen
	buffer_store_b32 v13, v10, s[4:7], 0 offen
	buffer_store_b32 v14, v33, s[4:7], 0 offen
	buffer_store_b32 v15, v34, s[4:7], 0 offen
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v9, off, off offset:96
	scratch_load_b32 v10, off, off offset:92
	scratch_load_b32 v11, off, off offset:88
	scratch_load_b32 v12, off, off offset:84
	v_add_lshl_u32 v8, v32, v38, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v9, v32, v9, 2
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v10, v32, v10, 2
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v11, v32, v11, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	s_clause 0x2
	buffer_store_b32 v16, v8, s[4:7], 0 offen
	buffer_store_b32 v25, v9, s[4:7], 0 offen
	buffer_store_b32 v26, v10, s[4:7], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:80
	scratch_load_b32 v10, off, off offset:76
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v12, v32, v12, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v8, 0x80000000, v12
	buffer_store_b32 v27, v11, s[4:7], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:72
	scratch_load_b32 v12, off, off offset:52
	buffer_store_b32 v28, v8, s[4:7], 0 offen
	v_add_lshl_u32 v8, v32, v37, 2
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v9, v32, v9, 2
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v10, v32, v10, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	buffer_store_b32 v29, v9, s[4:7], 0 offen
	scratch_load_b32 v9, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v11, v32, v11, 2
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x2
	buffer_store_b32 v30, v10, s[4:7], 0 offen
	buffer_store_b32 v31, v11, s[4:7], 0 offen
	buffer_store_b32 v17, v8, s[4:7], 0 offen
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v8, off, off offset:64
	scratch_load_b32 v10, off, off offset:60
	scratch_load_b32 v11, off, off offset:56
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v9, v32, v9, 2
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v8, v32, v8, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v10, v32, v10, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v11, v32, v11, 2
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v18, v9, s[4:7], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v10 :: v_dual_cndmask_b32 v10, 0x80000000, v11
	buffer_store_b32 v19, v8, s[4:7], 0 offen
	scratch_load_b32 v8, off, off offset:48 ; 4-byte Folded Reload
	v_add_lshl_u32 v12, v32, v12, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v11, 0x80000000, v12, vcc_lo
	s_clause 0x2
	buffer_store_b32 v20, v9, s[4:7], 0 offen
	buffer_store_b32 v21, v10, s[4:7], 0 offen
	buffer_store_b32 v22, v11, s[4:7], 0 offen
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v9, off, off offset:44
	scratch_load_b32 v11, off, off offset:36
	scratch_load_b32 v12, off, off offset:32
	v_add_lshl_u32 v10, v32, v36, 2
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v8, v32, v8, 2
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v9, v32, v9, 2
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v11, v32, v11, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v12, v32, v12, 2
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v23, v8, s[4:7], 0 offen
	buffer_store_b32 v24, v9, s[4:7], 0 offen
	buffer_store_b32 v1, v10, s[4:7], 0 offen
	buffer_store_b32 v2, v11, s[4:7], 0 offen
	buffer_store_b32 v3, v12, s[4:7], 0 offen
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v1, off, off offset:28
	scratch_load_b32 v2, off, off offset:24
	scratch_load_b32 v3, off, off offset:20
	scratch_load_b32 v8, off, off offset:16
	scratch_load_b32 v9, off, off offset:12
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v1, v32, v1, 2
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v2, v32, v2, 2
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v3, v32, v3, 2
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v8, v32, v8, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v9, v32, v9, 2
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[4:7], 0 offen
	buffer_store_b32 v5, v2, s[4:7], 0 offen
	buffer_store_b32 v6, v3, s[4:7], 0 offen
	buffer_store_b32 v7, v8, s[4:7], 0 offen
	buffer_store_b32 v0, v9, s[4:7], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp145:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 144
		.amdhsa_kernarg_size 152
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 102
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 144
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17560
; TotalNumSgprs: 104
; NumVgprs: 256
; ScratchSize: 144
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
	.byte	5                               ; DW_FORM_data2
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
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp0-.Lfunc_begin0
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp0-.Lfunc_begin0
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
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
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
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
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
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
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
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
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
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
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 144
    .sgpr_count:     104
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 35
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
