	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x5c
	v_dual_mov_b32 v39, 0x7632 :: v_dual_and_b32 v16, 7, v0
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v37, 3, v0
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[24:25], s[0:1], 0x10
	v_dual_mov_b32 v38, 0x5410 :: v_dual_lshlrev_b32 v15, 3, v16
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s30, s2, 6
	.loc	1 597 26                        ; attention.py:597:26
	s_lshl_b32 s29, s3, 9
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s30, v37
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s28, s30, s29
	s_clause 0x1
	s_load_b32 s2, s[0:1], 0x64
	s_load_b64 s[16:17], s[0:1], 0x38
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s0, 0x200, v1
	v_dual_mov_b32 v130, 0xff800000 :: v_dual_mov_b32 v25, 0
	v_and_b32_e32 v43, 16, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v40, 15, v0
	.loc	1 598 26                        ; attention.py:598:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[105:106], null, s18, v37, v[15:16]
	s_mul_i32 s1, s18, s28
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e32 vcc_lo, s18, v15
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s21, s5, 0xffff
	s_mov_b32 s20, s4
	v_dual_mov_b32 v26, v25 :: v_dual_and_b32 v41, 0x60, v0
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[106:107], null, s18, 48, v[105:106]
	v_lshl_add_u32 v113, s18, 4, v105
	v_lshl_add_u32 v114, s18, 5, v105
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v1, v105, s1, 1
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s0, s0, vcc_lo
	v_dual_mov_b32 v29, v25 :: v_dual_lshlrev_b32 v42, 1, v0
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v2, v113, s1, 1
	v_add_lshl_u32 v3, v114, s1, 1
	v_add_lshl_u32 v4, v106, s1, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_mov_b32_e32 v30, v25
	v_cndmask_b32_e64 v5, 0x80000000, v2, s0
	v_cndmask_b32_e64 v9, 0x80000000, v3, s0
	v_cndmask_b32_e64 v10, 0x80000000, v4, s0
	s_clause 0x3
	buffer_load_b128 v[1:4], v1, s[20:23], 0 offen
	buffer_load_b128 v[5:8], v5, s[20:23], 0 offen
	buffer_load_b128 v[11:14], v9, s[20:23], 0 offen
	buffer_load_b128 v[33:36], v10, s[20:23], 0 offen
	v_cmp_eq_u32_e64 s1, 0, v43
	v_dual_mov_b32 v28, v25 :: v_dual_lshlrev_b32 v115, 4, v0
	v_mov_b32_e32 v27, v25
	v_dual_mov_b32 v31, v25 :: v_dual_and_b32 v42, 0x70, v42
	v_dual_mov_b32 v32, v25 :: v_dual_lshlrev_b32 v45, 7, v40
	v_dual_mov_b32 v17, v25 :: v_dual_lshlrev_b32 v16, 4, v16
	v_mov_b32_e32 v18, v25
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v44, 1, v41
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v41, 6, v41
	v_cndmask_b32_e64 v38, 0x1054, v38, s1
	v_lshl_add_u32 v116, v40, 1, 0
	v_or_b32_e32 v117, v16, v45
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v111, v44, v40
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v40, v115, v42
	v_or3_b32 v41, v45, v41, v16
	v_cndmask_b32_e64 v16, 0x3276, v39, s1
	v_lshl_or_b32 v38, v38, 8, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v19, v25 :: v_dual_add_nc_u32 v118, 0, v40
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v40, 0, v41
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v23, v25 :: v_dual_and_b32 v38, 0x540054, v38
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v39, s30, v111
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v42, v41, 16, 0
	v_xad_u32 v43, v41, 32, 0
	v_xad_u32 v45, v41, 48, 0
	v_xad_u32 v49, v41, 64, 0
	v_xad_u32 v53, 0x50, v41, 0
	v_xad_u32 v57, 0x60, v41, 0
	v_xad_u32 v61, 0x70, v41, 0
	v_xor_b32_e32 v41, 16, v117
	v_xor_b32_e32 v44, 32, v117
	v_xor_b32_e32 v46, 48, v117
	v_xor_b32_e32 v47, 64, v117
	v_xor_b32_e32 v48, 0x50, v117
	v_xor_b32_e32 v50, 0x60, v117
	v_xor_b32_e32 v51, 0x70, v117
	v_lshl_or_b32 v16, v16, 8, v16
	v_dual_mov_b32 v20, v25 :: v_dual_add_nc_u32 v119, 0, v41
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v121, 0, v46
	v_dual_mov_b32 v24, v25 :: v_dual_add_nc_u32 v123, 0, v48
	v_dual_mov_b32 v10, v25 :: v_dual_add_nc_u32 v125, 0, v51
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s30, s2, 0x3fb8aa3b
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s2, s19, v15
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[107:108], null, s19, v37, v[15:16]
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s0, 0x200, v39
	v_lshl_or_b32 v15, v38, 4, v38
	v_add_nc_u32_e32 v120, 0, v44
	v_add_nc_u32_e32 v122, 0, v47
	v_dual_mov_b32 v9, v25 :: v_dual_add_nc_u32 v124, 0, v50
	v_and_b32_e32 v16, 0x760076, v16
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[108:109], null, s19, 48, v[107:108]
	v_lshl_add_u32 v126, s19, 4, v107
	v_lshl_add_u32 v127, s19, 5, v107
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v16, v16, 4, v16
	v_and_b32_e32 v109, 0x5040504, v15
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v112, v25
	s_mov_b32 s8, 0
	v_and_b32_e32 v110, 0x7060706, v16
	v_mov_b32_e32 v16, v25
	s_mov_b32 s5, 0x76543210
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_and_b32 s21, s7, 0xffff
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s20, s6
	s_mov_b32 s6, s8
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v118, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v118, v[5:8] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v118, v[11:14] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v118, v[33:36] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v40
	ds_load_b128 v[37:40], v42
	ds_load_b128 v[41:44], v43
	ds_load_b128 v[45:48], v45
	ds_load_b128 v[49:52], v49
	ds_load_b128 v[53:56], v53
	ds_load_b128 v[57:60], v57
	ds_load_b128 v[61:64], v61
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 657 32                        ; attention.py:657:32
	s_or_b32 s3, s6, s29
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v72, s15 :: v_dual_add_nc_u32 v97, 0, v117
	.loc	1 657 32                        ; attention.py:657:32
	s_mul_i32 s4, s3, s18
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v71, s14 :: v_dual_mov_b32 v70, s13
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v73, s4, v105, 1
	v_add_lshl_u32 v74, s4, v113, 1
	v_add_lshl_u32 v75, s4, v114, 1
	v_add_lshl_u32 v76, s4, v106, 1
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v69, s12 :: v_dual_mov_b32 v68, s11
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	v_cndmask_b32_e32 v77, 0x80000000, v74, vcc_lo
	v_cndmask_b32_e32 v81, 0x80000000, v75, vcc_lo
	v_cndmask_b32_e32 v85, 0x80000000, v76, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[73:76], v73, s[20:23], 0 offen
	buffer_load_b128 v[77:80], v77, s[20:23], 0 offen
	buffer_load_b128 v[81:84], v81, s[20:23], 0 offen
	buffer_load_b128 v[85:88], v85, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v67, s10 :: v_dual_mov_b32 v66, s9
	v_mov_b32_e32 v65, s8
	.loc	1 693 30                        ; attention.py:693:30
	s_mul_i32 s3, s3, s19
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v118, v[73:76]
	s_waitcnt vmcnt(2)
	ds_store_b128 v118, v[77:80] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v118, v[81:84] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v118, v[85:88] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[77:80], v119
	ds_load_b128 v[73:76], v97
	ds_load_b128 v[81:84], v97 offset:2048
	ds_load_b128 v[85:88], v119 offset:2048
	ds_load_b128 v[93:96], v119 offset:4096
	ds_load_b128 v[89:92], v97 offset:4096
	ds_load_b128 v[97:100], v97 offset:6144
	ds_load_b128 v[101:104], v119 offset:6144
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v163, s3, v107, 1
	v_add_lshl_u32 v164, s3, v126, 1
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[131:138], v[73:80], v[33:40], v[65:72]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[139:146], v[81:88], v[33:40], v[65:72]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[147:154], v[89:96], v[33:40], v[65:72]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[155:162], v[97:104], v[33:40], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[69:72], v121
	ds_load_b128 v[65:68], v120
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[131:138], v[65:72], v[41:48], v[131:138]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[65:68], v120 offset:2048
	ds_load_b128 v[69:72], v121 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[139:146], v[65:72], v[41:48], v[139:146]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[69:72], v121 offset:4096
	ds_load_b128 v[65:68], v120 offset:4096
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[147:154], v[65:72], v[41:48], v[147:154]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[65:68], v120 offset:6144
	ds_load_b128 v[69:72], v121 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[155:162], v[65:72], v[41:48], v[155:162]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[69:72], v123
	ds_load_b128 v[65:68], v122
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[131:138], v[65:72], v[49:56], v[131:138]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[65:68], v122 offset:2048
	ds_load_b128 v[69:72], v123 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[139:146], v[65:72], v[49:56], v[139:146]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[69:72], v123 offset:4096
	ds_load_b128 v[65:68], v122 offset:4096
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[147:154], v[65:72], v[49:56], v[147:154]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[65:68], v122 offset:6144
	ds_load_b128 v[69:72], v123 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[155:162], v[65:72], v[49:56], v[155:162]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[69:72], v125
	ds_load_b128 v[65:68], v124
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[131:138], v[65:72], v[57:64], v[131:138]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[65:68], v124 offset:2048
	ds_load_b128 v[69:72], v125 offset:2048
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v77, s30, v131 :: v_dual_mul_f32 v74, s30, v137
	v_dual_mul_f32 v78, s30, v132 :: v_dual_mul_f32 v73, s30, v133
	v_mul_f32_e32 v80, s30, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v77, 0xff800000, v77, s0
	v_cndmask_b32_e64 v74, 0xff800000, v74, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v78, 0xff800000, v78, s0
	v_cndmask_b32_e64 v73, 0xff800000, v73, s0
	v_cndmask_b32_e64 v80, 0xff800000, v80, s0
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[139:146], v[65:72], v[57:64], v[139:146]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[69:72], v125 offset:4096
	ds_load_b128 v[65:68], v124 offset:4096
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v79, s30, v134
	v_mul_f32_e32 v81, s30, v136
	v_dual_mul_f32 v75, s30, v138 :: v_dual_mul_f32 v96, s30, v140
	v_dual_mul_f32 v128, s30, v141 :: v_dual_mul_f32 v129, s30, v142
	v_dual_mul_f32 v132, s30, v143 :: v_dual_mul_f32 v133, s30, v144
	v_mul_f32_e32 v134, s30, v145
	v_mul_f32_e32 v76, s30, v139
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v79, 0xff800000, v79, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v144, 0xff800000, v132, s0
	v_cndmask_b32_e64 v145, 0xff800000, v133, s0
	v_cndmask_b32_e64 v142, 0xff800000, v134, s0
	v_cndmask_b32_e64 v81, 0xff800000, v81, s0
	v_cndmask_b32_e64 v75, 0xff800000, v75, s0
	v_cndmask_b32_e64 v76, 0xff800000, v76, s0
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[147:154], v[65:72], v[57:64], v[147:154]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[65:68], v124 offset:6144
	ds_load_b128 v[69:72], v125 offset:6144
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v135, s30, v146
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v146, 0xff800000, v128, s0
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v128.h, 0
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v136, s30, v147 :: v_dual_mul_f32 v137, s30, v148
	v_mul_f32_e32 v88, s30, v150
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v148, 0xff800000, v96, s0
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v131, 0, v115
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v147, 0xff800000, v129, s0
	v_cndmask_b32_e64 v143, 0xff800000, v135, s0
	v_cndmask_b32_e64 v140, 0xff800000, v136, s0
	v_cndmask_b32_e64 v141, 0xff800000, v137, s0
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v87, s30, v149 :: v_dual_mul_f32 v90, s30, v152
	v_dual_mul_f32 v89, s30, v151 :: v_dual_mul_f32 v92, s30, v154
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v139, 0xff800000, v88, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v138, 0xff800000, v87, s0
	v_cndmask_b32_e64 v137, 0xff800000, v90, s0
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[155:162], v[65:72], v[57:64], v[155:162]
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v65, s3, v127, 1
	v_add_lshl_u32 v66, s3, v108, 1
	v_cndmask_b32_e64 v67, 0x80000000, v163, s2
	v_cndmask_b32_e64 v69, 0x80000000, v164, s2
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v91, s30, v153 :: v_dual_mul_f32 v94, s30, v156
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v97, 0x80000000, v65, s2
	v_cndmask_b32_e64 v101, 0x80000000, v66, s2
	s_clause 0x3
	buffer_load_b128 v[65:68], v67, s[24:27], 0 offen
	buffer_load_b128 v[69:72], v69, s[24:27], 0 offen
	buffer_load_b128 v[97:100], v97, s[24:27], 0 offen
	buffer_load_b128 v[101:104], v101, s[24:27], 0 offen
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v93, s30, v155 :: v_dual_mul_f32 v82, s30, v160
	v_dual_mul_f32 v95, s30, v157 :: v_dual_mul_f32 v84, s30, v159
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v136, 0xff800000, v89, s0
	v_cndmask_b32_e64 v134, 0xff800000, v91, s0
	v_cndmask_b32_e64 v135, 0xff800000, v92, s0
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v83, s30, v158
	v_dual_mul_f32 v85, s30, v161 :: v_dual_mul_f32 v86, s30, v162
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(3)
	ds_store_b128 v131, v[65:68]
	s_waitcnt vmcnt(2)
	ds_store_b128 v131, v[69:72] offset:2048
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v65, v148, v146, v147
	v_max3_f32 v66, v144, v145, v142
	v_max3_f32 v67, v143, v140, v141
	v_max3_f32 v69, v138, v139, v136
	v_max3_f32 v70, v137, v134, v135
.Ltmp2:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v72, 0xff800000, v86, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v68, v65, v66, v67
.Ltmp4:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v65, 0xff800000, v93, s0
	v_cndmask_b32_e64 v66, 0xff800000, v94, s0
	v_cndmask_b32_e64 v67, 0xff800000, v95, s0
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v71, v65, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_max3_f32 v87, v69, v70, v71
	v_max_f32_e32 v69, v77, v78
	v_max3_f32 v70, v79, v80, v81
.Ltmp6:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v71, 0xff800000, v85, s0
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v69, v69, v73, v70
	v_max3_f32 v70, v74, v75, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_max3_f32 v88, v69, v70, v68
.Ltmp8:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v68, 0xff800000, v83, s0
	v_cndmask_b32_e64 v69, 0xff800000, v84, s0
	v_cndmask_b32_e64 v70, 0xff800000, v82, s0
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v83, v71, v72 :: v_dual_max_f32 v82, v68, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v82, v82, v70, v83
	v_max3_f32 v82, v88, v87, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v83, v82, s5, 0xfedcba98 op_sel:[1,0]
.Ltmp11:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v129, v130, v82, v83
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v78, v78, v129
	v_sub_f32_e32 v77, v77, v129
	v_sub_f32_e32 v73, v73, v129
	v_sub_f32_e32 v65, v65, v129
	v_sub_f32_e32 v67, v67, v129
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v78, v78
	v_exp_f32_e32 v77, v77
	v_exp_f32_e32 v73, v73
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v67, v67
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v69, v129
	v_sub_f32_e32 v71, v71, v129
	v_sub_f32_e32 v66, v66, v129
	v_sub_f32_e32 v68, v68, v129
	v_sub_f32_e32 v70, v70, v129
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v132, 0, v78, s0
	v_cndmask_b32_e64 v133, 0, v77, s0
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v77.h, v128.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v149, 0, v73, s0
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v73.h, v128.h
	v_mov_b16_e64 v128.l, v132.h
	v_mov_b16_e64 v77.l, v133.h
	v_cmp_o_f32_e64 s3, v132, v132
	v_cmp_o_f32_e64 s4, v133, v133
	v_mov_b16_e64 v73.l, v149.h
	v_and_b32_e32 v78, 1, v128
	v_and_b32_e32 v77, 1, v77
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v68, v68
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v78, v132, v78, 0x7fff
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v132, v133, v132
.Ltmp13:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v77, v133, v77, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v73, v149, v73, 0x7fff
	v_cndmask_b16 v78.h, 0x7fff, v78.h, s3
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v71, v71
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v78.l, 0x7fff, v77.h, s4
	v_cmp_o_f32_e64 s4, v149, v149
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v157, 0, v66, s0
	v_cndmask_b32_e64 v159, 0, v68, s0
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v70, v70
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_permlanex16_b32 v77, v78, s5, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v73.l, 0x7fff, v73.h, s4
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v72, v72, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v89, v77, v78, v109
	v_perm_b32 v90, v77, v78, v110
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v77, v79, v129
	v_sub_f32_e32 v78, v137, v129
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v161, 0, v70, s0
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v77, v77
	v_exp_f32_e32 v78, v78
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v163, 0, v72, s0
	v_cndmask_b32_e64 v150, 0, v77, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v137, 0, v78, s0
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v128.l, v150.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v150, v150
	v_and_b32_e32 v77, 1, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v77, v150, v77, 0x7fff
	v_cndmask_b16 v73.h, 0x7fff, v77.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v77, v73, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v91, v77, v73, v109
	v_perm_b32 v92, v77, v73, v110
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v73, v80, v129
	v_sub_f32_e32 v77, v81, v129
	v_sub_f32_e32 v80, v135, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v73, v73
	v_exp_f32_e32 v77, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v80, v80
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v151, 0, v73, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v152, 0, v77, s0
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v73.h, v128.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v135, 0, v80, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v73.l, v151.h
	v_mov_b16_e64 v128.l, v152.h
	v_cmp_o_f32_e64 s3, v152, v152
	v_cmp_o_f32_e64 s4, v151, v151
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v73, 1, v73
	v_and_b32_e32 v77, 1, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v73, v151, v73, 0x7fff
	v_add3_u32 v77, v152, v77, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v73.l, 0x7fff, v73.h, s4
	v_cndmask_b16 v73.h, 0x7fff, v77.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v77, v73, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v93, v77, v73, v109
	v_perm_b32 v94, v77, v73, v110
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v73, v74, v129
	v_sub_f32_e32 v74, v75, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v73, v73
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v153, 0, v73, s0
	v_cndmask_b32_e64 v154, 0, v74, s0
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v73.h, v128.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v73.l, v153.h
	v_mov_b16_e64 v128.l, v154.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v154, v154
	v_cmp_o_f32_e64 s4, v153, v153
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v74, 1, v128
	v_add3_u32 v73, v153, v73, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v74, v154, v74, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v73.h, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v73.h, 0x7fff, v74.h, s3
	v_permlanex16_b32 v74, v73, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v95, v74, v73, v109
	v_perm_b32 v96, v74, v73, v110
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v73, v76, v129
	v_sub_f32_e32 v74, v148, v129
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(1)
	ds_store_b128 v131, v[97:100] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v131, v[101:104] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v73, v73
	v_exp_f32_e32 v74, v74
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v97, v116
	ds_load_u16_d16 v100, v116 offset:768
	ds_load_u16_d16 v101, v116 offset:1024
	ds_load_u16_d16 v102, v116 offset:1280
	ds_load_u16_d16 v103, v116 offset:1536
	ds_load_u16_d16 v104, v116 offset:1792
	ds_load_u16_d16 v99, v116 offset:512
	ds_load_u16_d16 v98, v116 offset:256
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v97, v116 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v100, v116 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v101, v116 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v102, v116 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v103, v116 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v104, v116 offset:1920
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v99, v116 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v98, v116 offset:384
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v148, 0, v73, s0
	v_cndmask_b32_e64 v155, 0, v74, s0
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v73.h, v128.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v73.l, v148.h
	v_mov_b16_e64 v128.l, v155.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v155, v155
	v_cmp_o_f32_e64 s4, v148, v148
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v74, 1, v128
	v_add3_u32 v73, v148, v73, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v74, v155, v74, 0x7fff
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v148, v148, v155
.Ltmp15:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v73.l, 0x7fff, v73.h, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v73.h, 0x7fff, v74.h, s3
	v_permlanex16_b32 v74, v73, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v81, v74, v73, v109
	v_perm_b32 v82, v74, v73, v110
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v73, v146, v129
	v_sub_f32_e32 v74, v147, v129
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v74, v74
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v146, 0, v73, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v147, 0, v74, s0
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v73.h, v128.h
	v_mov_b16_e64 v73.l, v146.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v128.l, v147.h
	v_cmp_o_f32_e64 s3, v147, v147
	v_cmp_o_f32_e64 s4, v146, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v73, 1, v73
	v_and_b32_e32 v74, 1, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v73, v146, v73, 0x7fff
	v_add3_u32 v74, v147, v74, 0x7fff
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v146, v146, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp17:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v73.l, 0x7fff, v73.h, s4
	v_cndmask_b16 v73.h, 0x7fff, v74.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v74, v73, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v83, v74, v73, v109
	v_perm_b32 v84, v74, v73, v110
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v73, v144, v129
	v_sub_f32_e32 v74, v145, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v73, v73
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v144, 0, v73, s0
	v_cndmask_b32_e64 v145, 0, v74, s0
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v73.h, v128.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v73.l, v144.h
	v_mov_b16_e64 v128.l, v145.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v145, v145
	v_cmp_o_f32_e64 s4, v144, v144
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v74, 1, v128
	v_add3_u32 v73, v144, v73, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v74, v145, v74, 0x7fff
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v144, v144, v145
.Ltmp19:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v73.l, 0x7fff, v73.h, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v73.h, 0x7fff, v74.h, s3
	v_permlanex16_b32 v74, v73, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v85, v74, v73, v109
	v_perm_b32 v86, v74, v73, v110
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v73, v142, v129
	v_sub_f32_e32 v74, v143, v129
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v74, v74
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v142, 0, v73, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v143, 0, v74, s0
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v73.h, v128.h
	v_mov_b16_e64 v73.l, v142.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v128.l, v143.h
	v_cmp_o_f32_e64 s3, v143, v143
	v_cmp_o_f32_e64 s4, v142, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v73, 1, v73
	v_and_b32_e32 v74, 1, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v73, v142, v73, 0x7fff
	v_add3_u32 v74, v143, v74, 0x7fff
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v142, v142, v143 :: v_dual_add_f32 v143, v148, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp21:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v73.l, 0x7fff, v73.h, s4
	v_cndmask_b16 v73.h, 0x7fff, v74.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v142, v144, v142
.Ltmp23:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v74, v73, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v87, v74, v73, v109
	v_perm_b32 v88, v74, v73, v110
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v73, v140, v129
	v_sub_f32_e32 v74, v141, v129
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v74, v74
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v140, 0, v73, s0
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v73.h, v128.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v141, 0, v74, s0
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v73.l, v140.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s4, v140, v140
	v_mov_b16_e64 v128.l, v141.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v141, v141
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v73, v140, v73, 0x7fff
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v140, v140, v141
.Ltmp25:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v74.l, 0x7fff, v73.h, s4
	v_and_b32_e32 v73, 1, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v73, v141, v73, 0x7fff
	v_cndmask_b16 v74.h, 0x7fff, v73.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v75, v74, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v73, v75, v74, v109
	v_perm_b32 v74, v75, v74, v110
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v75, v138, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v75, v75
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v138, 0, v75, s0
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v75.h, v128.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v75.l, v138.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v76, v139, v129
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s4, v138, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v75, 1, v75
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v76, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v75, v138, v75, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v139, 0, v76, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v76.l, 0x7fff, v75.h, s4
	v_mov_b16_e64 v128.l, v139.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v139, v139
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v138, v138, v139 :: v_dual_and_b32 v75, 1, v128
.Ltmp27:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v128.l, v137.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v138, v140, v138
.Ltmp29:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v75, v139, v75, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v76.h, 0x7fff, v75.h, s3
	v_cmp_o_f32_e64 s3, v137, v137
	v_permlanex16_b32 v77, v76, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v75, v77, v76, v109
	v_perm_b32 v76, v77, v76, v110
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v77, v136, v129
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v77, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v136, 0, v77, s0
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v77.h, v128.h
	v_mov_b16_e64 v77.l, v136.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v136, v136
	v_and_b32_e32 v77, 1, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v77, v136, v77, 0x7fff
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v136, v136, v137
.Ltmp31:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v78.l, 0x7fff, v77.h, s4
	v_and_b32_e32 v77, 1, v128
	v_mov_b16_e64 v128.l, v135.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v77, v137, v77, 0x7fff
	v_cndmask_b16 v78.h, 0x7fff, v77.h, s3
	v_cmp_o_f32_e64 s3, v135, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v79, v78, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v77, v79, v78, v109
	v_perm_b32 v78, v79, v78, v110
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v79, v134, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v79, v79
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v134, 0, v79, s0
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v79.h, v128.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v79.l, v134.h
	v_cmp_o_f32_e64 s4, v134, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v79, 1, v79
	v_add3_u32 v79, v134, v79, 0x7fff
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v134, v134, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v80.l, 0x7fff, v79.h, s4
	v_and_b32_e32 v79, 1, v128
	v_mov_b16_e64 v128.l, v157.h
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v134, v136, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp35:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v79, v135, v79, 0x7fff
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v134, v138, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp37:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v80.h, 0x7fff, v79.h, s3
	v_cmp_o_f32_e64 s3, v157, v157
	v_permlanex16_b32 v156, v80, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v79, v156, v80, v109
	v_perm_b32 v80, v156, v80, v110
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v156, 0, v65, s0
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v65.h, v128.h
	v_mov_b16_e64 v65.l, v156.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v156, v156
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v65, v156, v65, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s4
	v_and_b32_e32 v65, 1, v128
	v_mov_b16_e64 v128.l, v159.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v65, v157, v65, 0x7fff
	v_cndmask_b16 v66.h, 0x7fff, v65.h, s3
	v_cmp_o_f32_e64 s3, v159, v159
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v158, v66, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v158, v66, v109
	v_perm_b32 v66, v158, v66, v110
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v158, 0, v67, s0
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v67.h, v128.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v67.l, v158.h
	v_cmp_o_f32_e64 s4, v158, v158
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v67, 1, v67
	v_add3_u32 v67, v158, v67, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s4
	v_and_b32_e32 v67, 1, v128
	v_mov_b16_e64 v128.l, v161.h
	v_add3_u32 v67, v159, v67, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v68.h, 0x7fff, v67.h, s3
	v_cmp_o_f32_e64 s3, v161, v161
	v_permlanex16_b32 v160, v68, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v67, v160, v68, v109
	v_perm_b32 v68, v160, v68, v110
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v160, 0, v69, s0
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v69.h, v128.h
	v_mov_b16_e64 v69.l, v160.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s4, v160, v160
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v139, v160, v161
.Ltmp39:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v69, v160, v69, 0x7fff
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s4
	v_and_b32_e32 v69, 1, v128
	v_mov_b16_e64 v128.l, v163.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v69, v161, v69, 0x7fff
	v_cndmask_b16 v70.h, 0x7fff, v69.h, s3
	v_cmp_o_f32_e64 s3, v163, v163
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v162, v70, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v162, v70, v109
	v_perm_b32 v70, v162, v70, v110
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v162, 0, v71, s0
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v71.h, v128.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v71.l, v162.h
	v_cmp_o_f32_e64 s4, v162, v162
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v141, v162, v163
	v_add_f32_e32 v133, v149, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v150, v153, v154 :: v_dual_and_b32 v71, 1, v71
	v_add_f32_e32 v136, v139, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v132, v132, v133 :: v_dual_add_f32 v149, v151, v152
.Ltmp41:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v71, v162, v71, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v133, v149, v150
.Ltmp43:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s4
	v_and_b32_e32 v71, 1, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v71, v163, v71, 0x7fff
	v_cndmask_b16 v72.h, 0x7fff, v71.h, s3
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v130
	.loc	1 689 74 is_stmt 0              ; attention.py:689:74
	v_sub_f32_e32 v130, v130, v129
.Ltmp44:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v132, v132, v133 :: v_dual_add_f32 v133, v143, v142
	v_add_f32_e32 v137, v158, v159
.Ltmp45:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v164, v72, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v130, v130
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v132, v132, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp47:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v71, v164, v72, v109
	v_perm_b32 v72, v164, v72, v110
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v130, 0, v130, s3
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v135, v156, v157
.Ltmp49:
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s3, s6, 64
	s_cmpk_lt_u32 s6, 0x1c0
	s_mov_b32 s6, s3
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v25, v25, v130
	v_mul_f32_e32 v26, v26, v130
	v_mul_f32_e32 v27, v27, v130
	v_mul_f32_e32 v28, v28, v130
	v_mul_f32_e32 v29, v29, v130
	v_mul_f32_e32 v30, v30, v130
	v_mul_f32_e32 v31, v31, v130
	v_mul_f32_e32 v32, v32, v130
	v_mul_f32_e32 v17, v17, v130
	v_mul_f32_e32 v18, v18, v130
	v_mul_f32_e32 v19, v19, v130
	v_mul_f32_e32 v20, v20, v130
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[97:104], v[89:96], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v97, v116 offset:32
	ds_load_u16_d16 v98, v116 offset:288
	ds_load_u16_d16 v99, v116 offset:544
	ds_load_u16_d16 v100, v116 offset:800
	ds_load_u16_d16 v101, v116 offset:1056
	ds_load_u16_d16 v102, v116 offset:1312
	ds_load_u16_d16 v103, v116 offset:1568
	ds_load_u16_d16 v104, v116 offset:1824
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v97, v116 offset:160
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v98, v116 offset:416
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v99, v116 offset:672
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v100, v116 offset:928
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v101, v116 offset:1184
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v102, v116 offset:1440
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v103, v116 offset:1696
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v104, v116 offset:1952
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v21, v21, v130
	v_mul_f32_e32 v22, v22, v130
	v_mul_f32_e32 v23, v23, v130
	v_mul_f32_e32 v24, v24, v130
	v_mul_f32_e32 v9, v9, v130
	v_mul_f32_e32 v10, v10, v130
	v_mul_f32_e32 v11, v11, v130
	v_mul_f32_e32 v12, v12, v130
	v_mul_f32_e32 v13, v13, v130
	v_mul_f32_e32 v14, v14, v130
	v_mul_f32_e32 v15, v15, v130
	v_mul_f32_e32 v16, v16, v130
	v_mul_f32_e32 v1, v1, v130
	v_mul_f32_e32 v2, v2, v130
	v_mul_f32_e32 v3, v3, v130
	v_mul_f32_e32 v4, v4, v130
	v_mul_f32_e32 v5, v5, v130
	v_dual_mul_f32 v6, v6, v130 :: v_dual_add_f32 v135, v135, v137
	v_mul_f32_e32 v8, v8, v130
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[97:104], v[89:96], v[17:24]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v99, v116 offset:576
	ds_load_u16_d16 v100, v116 offset:832
	ds_load_u16_d16 v101, v116 offset:1088
	ds_load_u16_d16 v102, v116 offset:1344
	ds_load_u16_d16 v103, v116 offset:1600
	ds_load_u16_d16 v104, v116 offset:1856
	ds_load_u16_d16 v97, v116 offset:64
	ds_load_u16_d16 v98, v116 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v99, v116 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v100, v116 offset:960
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v101, v116 offset:1216
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v102, v116 offset:1472
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v103, v116 offset:1728
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v104, v116 offset:1984
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v97, v116 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v98, v116 offset:448
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v7, v7, v130
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v135, v135, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v133, v134, v135
	v_add_f32_e32 v133, v132, v133
	v_mov_b32_e32 v132, v112
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v112, v133, s5, 0xfedcba98 op_sel:[1,0]
.Ltmp52:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[97:104], v[89:96], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v98, v116 offset:352
	ds_load_u16_d16 v97, v116 offset:96
	ds_load_u16_d16 v99, v116 offset:608
	ds_load_u16_d16 v100, v116 offset:864
	ds_load_u16_d16 v101, v116 offset:1120
	ds_load_u16_d16 v102, v116 offset:1376
	ds_load_u16_d16 v103, v116 offset:1632
	ds_load_u16_d16 v104, v116 offset:1888
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v98, v116 offset:480
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v97, v116 offset:224
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v99, v116 offset:736
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v100, v116 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v101, v116 offset:1248
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v102, v116 offset:1504
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v103, v116 offset:1760
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v104, v116 offset:2016
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v112, v133, v112
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp54:
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v112, v132, v130
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[97:104], v[89:96], v[1:8]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v89, v116 offset:2048
	ds_load_u16_d16 v91, v116 offset:2560
	ds_load_u16_d16 v92, v116 offset:2816
	ds_load_u16_d16 v93, v116 offset:3072
	ds_load_u16_d16 v94, v116 offset:3328
	ds_load_u16_d16 v95, v116 offset:3584
	ds_load_u16_d16 v96, v116 offset:3840
	ds_load_u16_d16 v90, v116 offset:2304
	ds_load_u16_d16 v97, v116 offset:2080
	ds_load_u16_d16 v98, v116 offset:2336
	ds_load_u16_d16 v99, v116 offset:2592
	ds_load_u16_d16 v100, v116 offset:2848
	ds_load_u16_d16 v101, v116 offset:3104
	ds_load_u16_d16 v102, v116 offset:3360
	ds_load_u16_d16 v103, v116 offset:3616
	ds_load_u16_d16 v104, v116 offset:3872
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v89, v116 offset:2176
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v91, v116 offset:2688
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v92, v116 offset:2944
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v93, v116 offset:3200
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v94, v116 offset:3456
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v95, v116 offset:3712
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v96, v116 offset:3968
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v90, v116 offset:2432
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[89:96], v[81:88], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v89, v116 offset:2112
	ds_load_u16_d16 v90, v116 offset:2368
	ds_load_u16_d16 v91, v116 offset:2624
	ds_load_u16_d16 v92, v116 offset:2880
	ds_load_u16_d16 v93, v116 offset:3136
	ds_load_u16_d16 v94, v116 offset:3392
	ds_load_u16_d16 v95, v116 offset:3648
	ds_load_u16_d16 v96, v116 offset:3904
	ds_load_u16_d16_hi v97, v116 offset:2208
	ds_load_u16_d16_hi v98, v116 offset:2464
	ds_load_u16_d16_hi v99, v116 offset:2720
	ds_load_u16_d16_hi v100, v116 offset:2976
	ds_load_u16_d16_hi v101, v116 offset:3232
	ds_load_u16_d16_hi v102, v116 offset:3488
	ds_load_u16_d16_hi v103, v116 offset:3744
	ds_load_u16_d16_hi v104, v116 offset:4000
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[97:104], v[81:88], v[17:24]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v97, v116 offset:2144
	ds_load_u16_d16 v98, v116 offset:2400
	ds_load_u16_d16 v99, v116 offset:2656
	ds_load_u16_d16 v100, v116 offset:2912
	ds_load_u16_d16 v101, v116 offset:3168
	ds_load_u16_d16 v102, v116 offset:3424
	ds_load_u16_d16 v103, v116 offset:3680
	ds_load_u16_d16 v104, v116 offset:3936
	ds_load_u16_d16_hi v89, v116 offset:2240
	ds_load_u16_d16_hi v90, v116 offset:2496
	ds_load_u16_d16_hi v91, v116 offset:2752
	ds_load_u16_d16_hi v92, v116 offset:3008
	ds_load_u16_d16_hi v93, v116 offset:3264
	ds_load_u16_d16_hi v94, v116 offset:3520
	ds_load_u16_d16_hi v95, v116 offset:3776
	ds_load_u16_d16_hi v96, v116 offset:4032
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[89:96], v[81:88], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v89, v116 offset:4096
	ds_load_u16_d16 v91, v116 offset:4608
	ds_load_u16_d16 v92, v116 offset:4864
	ds_load_u16_d16 v93, v116 offset:5120
	ds_load_u16_d16 v94, v116 offset:5376
	ds_load_u16_d16 v95, v116 offset:5632
	ds_load_u16_d16 v96, v116 offset:5888
	ds_load_u16_d16 v90, v116 offset:4352
	ds_load_u16_d16_hi v97, v116 offset:2272
	ds_load_u16_d16_hi v98, v116 offset:2528
	ds_load_u16_d16_hi v99, v116 offset:2784
	ds_load_u16_d16_hi v100, v116 offset:3040
	ds_load_u16_d16_hi v101, v116 offset:3296
	ds_load_u16_d16_hi v102, v116 offset:3552
	ds_load_u16_d16_hi v103, v116 offset:3808
	ds_load_u16_d16_hi v104, v116 offset:4064
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[97:104], v[81:88], v[1:8]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v83, v116 offset:4160
	ds_load_u16_d16 v84, v116 offset:4416
	ds_load_u16_d16 v97, v116 offset:4192
	ds_load_u16_d16_hi v89, v116 offset:4224
	ds_load_u16_d16_hi v91, v116 offset:4736
	ds_load_u16_d16_hi v92, v116 offset:4992
	ds_load_u16_d16_hi v93, v116 offset:5248
	ds_load_u16_d16_hi v94, v116 offset:5504
	ds_load_u16_d16_hi v95, v116 offset:5760
	ds_load_u16_d16_hi v96, v116 offset:6016
	ds_load_u16_d16_hi v90, v116 offset:4480
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[89:96], v[73:80], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v130, v116 offset:4128
	ds_load_u16_d16 v131, v116 offset:4384
	ds_load_u16_d16 v132, v116 offset:4640
	ds_load_u16_d16 v133, v116 offset:4896
	ds_load_u16_d16 v134, v116 offset:5152
	ds_load_u16_d16 v135, v116 offset:5408
	ds_load_u16_d16 v136, v116 offset:5664
	ds_load_u16_d16 v137, v116 offset:5920
	ds_load_u16_d16 v85, v116 offset:4672
	ds_load_u16_d16 v86, v116 offset:4928
	ds_load_u16_d16 v87, v116 offset:5184
	ds_load_u16_d16 v88, v116 offset:5440
	ds_load_u16_d16 v89, v116 offset:5696
	ds_load_u16_d16 v90, v116 offset:5952
	ds_load_u16_d16 v98, v116 offset:4448
	ds_load_u16_d16 v99, v116 offset:4704
	ds_load_u16_d16 v100, v116 offset:4960
	ds_load_u16_d16 v101, v116 offset:5216
	ds_load_u16_d16 v102, v116 offset:5472
	ds_load_u16_d16 v103, v116 offset:5728
	ds_load_u16_d16 v81, v116 offset:6208
	ds_load_u16_d16 v104, v116 offset:5984
	ds_load_u16_d16 v82, v116 offset:6464
	ds_load_u16_d16_hi v83, v116 offset:4288
	ds_load_u16_d16_hi v84, v116 offset:4544
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v85, v116 offset:4800
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v86, v116 offset:5056
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v87, v116 offset:5312
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v88, v116 offset:5568
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v89, v116 offset:5824
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v90, v116 offset:6080
	ds_load_u16_d16_hi v130, v116 offset:4256
	ds_load_u16_d16_hi v131, v116 offset:4512
	ds_load_u16_d16_hi v132, v116 offset:4768
	ds_load_u16_d16_hi v133, v116 offset:5024
	ds_load_u16_d16_hi v134, v116 offset:5280
	ds_load_u16_d16_hi v135, v116 offset:5536
	ds_load_u16_d16_hi v136, v116 offset:5792
	ds_load_u16_d16_hi v137, v116 offset:6048
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[83:90], v[73:80], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v89, v116 offset:6240
	ds_load_u16_d16_hi v97, v116 offset:4320
	ds_load_u16_d16_hi v98, v116 offset:4576
	ds_load_u16_d16_hi v99, v116 offset:4832
	ds_load_u16_d16_hi v100, v116 offset:5088
	ds_load_u16_d16_hi v101, v116 offset:5344
	ds_load_u16_d16_hi v102, v116 offset:5600
	ds_load_u16_d16_hi v103, v116 offset:5856
	ds_load_u16_d16_hi v104, v116 offset:6112
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(9)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[130:137], v[73:80], v[17:24]
	v_mov_b32_e32 v130, v129
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[97:104], v[73:80], v[1:8]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v73, v116 offset:6144
	ds_load_u16_d16 v75, v116 offset:6656
	ds_load_u16_d16 v83, v116 offset:6720
	ds_load_u16_d16 v76, v116 offset:6912
	ds_load_u16_d16 v84, v116 offset:6976
	ds_load_u16_d16 v77, v116 offset:7168
	ds_load_u16_d16 v85, v116 offset:7232
	ds_load_u16_d16 v78, v116 offset:7424
	ds_load_u16_d16 v86, v116 offset:7488
	ds_load_u16_d16 v79, v116 offset:7680
	ds_load_u16_d16 v87, v116 offset:7744
	ds_load_u16_d16 v80, v116 offset:7936
	ds_load_u16_d16 v74, v116 offset:6400
	ds_load_u16_d16 v88, v116 offset:8000
	ds_load_u16_d16 v90, v116 offset:6496
	ds_load_u16_d16 v91, v116 offset:6752
	ds_load_u16_d16 v92, v116 offset:7008
	ds_load_u16_d16 v93, v116 offset:7264
	ds_load_u16_d16 v94, v116 offset:7520
	ds_load_u16_d16 v95, v116 offset:7776
	ds_load_u16_d16 v96, v116 offset:8032
	ds_load_u16_d16 v97, v116 offset:6176
	ds_load_u16_d16 v98, v116 offset:6432
	ds_load_u16_d16 v99, v116 offset:6688
	ds_load_u16_d16 v100, v116 offset:6944
	ds_load_u16_d16 v101, v116 offset:7200
	ds_load_u16_d16 v102, v116 offset:7456
	ds_load_u16_d16 v103, v116 offset:7712
	ds_load_u16_d16 v104, v116 offset:7968
	ds_load_u16_d16_hi v81, v116 offset:6336
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v73, v116 offset:6272
	ds_load_u16_d16_hi v82, v116 offset:6592
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v75, v116 offset:6784
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v83, v116 offset:6848
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v76, v116 offset:7040
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v84, v116 offset:7104
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v77, v116 offset:7296
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v85, v116 offset:7360
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v78, v116 offset:7552
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v86, v116 offset:7616
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v79, v116 offset:7808
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v87, v116 offset:7872
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v80, v116 offset:8064
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v74, v116 offset:6528
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v88, v116 offset:8128
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v97, v116 offset:6304
	ds_load_u16_d16_hi v89, v116 offset:6368
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v98, v116 offset:6560
	ds_load_u16_d16_hi v90, v116 offset:6624
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v99, v116 offset:6816
	ds_load_u16_d16_hi v91, v116 offset:6880
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v100, v116 offset:7072
	ds_load_u16_d16_hi v92, v116 offset:7136
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v101, v116 offset:7328
	ds_load_u16_d16_hi v93, v116 offset:7392
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v102, v116 offset:7584
	ds_load_u16_d16_hi v94, v116 offset:7648
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v103, v116 offset:7840
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v104, v116 offset:8096
	ds_load_u16_d16_hi v95, v116 offset:7904
	ds_load_u16_d16_hi v96, v116 offset:8160
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[73:80], v[65:72], v[25:32]
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[65:72], v[9:16]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[97:104], v[65:72], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[89:96], v[65:72], v[1:8]
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 841 48                        ; attention.py:841:48
	v_div_scale_f32 v36, null, v112, v112, v25
	v_div_scale_f32 v37, null, v112, v112, v26
	.loc	1 598 79                        ; attention.py:598:79
	v_lshrrev_b32_e32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v38, v36
	v_div_scale_f32 v40, vcc_lo, v25, v112, v25
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v41, s2, v26, v112, v26
	v_div_scale_f32 v45, null, v112, v112, v28
	v_div_scale_f32 v42, null, v112, v112, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v36, v38, 1.0
	v_rcp_f32_e32 v49, v45
	v_div_scale_f32 v46, null, v112, v112, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v37, v39, 1.0
	v_fmac_f32_e32 v38, v33, v38
	v_rcp_f32_e32 v44, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v50, v46
	v_div_scale_f32 v43, s3, v27, v112, v27
	v_dual_fmac_f32 v39, v34, v39 :: v_dual_and_b32 v34, 8, v0
	v_mul_f32_e32 v47, v40, v38
	v_fma_f32 v52, -v45, v49, 1.0
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s18, 0x7ffffffe
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v0, -v42, v44, 1.0
	v_fma_f32 v35, -v36, v47, v40
	v_mul_f32_e32 v48, v41, v39
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v33, 32, v34
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v49, v52, v49
	v_div_scale_f32 v52, null, v112, v112, v31
	v_fmac_f32_e32 v47, v35, v38
	v_fma_f32 v51, -v37, v48, v41
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v35, 16, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v36, -v36, v47, v40
	v_fmac_f32_e32 v48, v51, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v38, v47
	v_fma_f32 v37, -v37, v48, v41
	v_div_scale_f32 v47, null, v112, v112, v30
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v41, -v46, v50, 1.0
	v_div_fmas_f32 v37, v37, v39, v48
	v_rcp_f32_e32 v39, v47
	v_div_scale_f32 v38, s4, v28, v112, v28
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v37, v112, v26
	v_div_fixup_f32 v36, v36, v112, v25
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s2, 0, v112
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v48, -v47, v39, 1.0
	v_fmac_f32_e32 v50, v41, v50
	v_div_scale_f32 v41, s5, v29, v112, v29
	v_fmac_f32_e32 v39, v48, v39
	v_fmac_f32_e32 v44, v0, v44
	v_div_scale_f32 v48, s3, v30, v112, v30
	.loc	1 598 79 is_stmt 1              ; attention.py:598:79
	v_or_b32_e32 v0, 48, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v51, v43, v44
	v_fma_f32 v40, -v42, v51, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v51, v40, v44 :: v_dual_mul_f32 v40, v38, v49
	v_fma_f32 v37, -v42, v51, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v45, v40, v38
	v_dual_mul_f32 v43, v41, v50 :: v_dual_fmac_f32 v40, v42, v49
	v_rcp_f32_e32 v42, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v37, v37, v44, v51
	v_fma_f32 v44, -v46, v43, v41
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v25, v37, v112, v27
	v_fma_f32 v27, -v45, v40, v38
	v_fmac_f32_e32 v43, v44, v50
	v_div_scale_f32 v45, s4, v31, v112, v31
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v38, -v52, v42, 1.0
	v_mul_f32_e32 v37, v48, v39
	v_div_fmas_f32 v27, v27, v49, v40
	v_fma_f32 v40, -v46, v43, v41
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v42, v38, v42
	v_div_scale_f32 v44, null, v112, v112, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v40, v40, v50, v43
	v_fma_f32 v41, -v47, v37, v48
	v_mul_f32_e32 v43, v45, v42
	v_div_scale_f32 v46, null, v112, v112, v17
	v_div_fixup_f32 v28, v27, v112, v28
	v_div_fixup_f32 v27, v40, v112, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v40, -v52, v43, v45
	v_rcp_f32_e32 v38, v44
	s_mov_b32 vcc_lo, s3
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v28, 0, v28, s2
	v_cndmask_b32_e64 v25, 0, v25, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v43, v40, v42
	v_div_scale_f32 v40, s3, v17, v112, v17
	v_fmac_f32_e32 v37, v41, v39
	v_rcp_f32_e32 v41, v46
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v27, s2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v49, -v44, v38, 1.0
	v_fma_f32 v29, -v47, v37, v48
	v_div_scale_f32 v47, s5, v32, v112, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cmp_o_f32_e64 s8, v27, v27
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v48, -v46, v41, 1.0
	v_fmac_f32_e32 v38, v49, v38
	v_div_scale_f32 v49, null, v112, v112, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, null, v112, v112, v19
	v_mul_f32_e32 v50, v40, v41
	v_div_fmas_f32 v29, v29, v39, v37
	v_rcp_f32_e32 v39, v49
	v_mul_f32_e32 v37, v47, v38
	v_rcp_f32_e32 v51, v48
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v30, v29, v112, v30
	v_fma_f32 v29, -v52, v43, v45
	v_fma_f32 v45, -v44, v37, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v30, 0, v30, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v52, -v49, v39, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v29, v29, v42, v43
	v_fma_f32 v42, -v46, v50, v40
	v_div_scale_f32 v43, s4, v18, v112, v18
	v_fmac_f32_e32 v39, v52, v39
	v_fmac_f32_e32 v37, v45, v38
	v_fma_f32 v45, -v48, v51, 1.0
	v_div_fixup_f32 v29, v29, v112, v31
	v_fmac_f32_e32 v50, v42, v41
	v_mul_f32_e32 v42, v43, v39
	v_fma_f32 v31, -v44, v37, v47
	v_fmac_f32_e32 v51, v45, v51
	v_div_scale_f32 v45, null, v112, v112, v20
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, s6, v19, v112, v19
	v_div_fmas_f32 v31, v31, v38, v37
	v_fma_f32 v37, -v46, v50, v40
	v_rcp_f32_e32 v40, v45
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v38, -v49, v42, v43
	v_div_scale_f32 v47, null, v112, v112, v21
	v_div_fmas_f32 v37, v37, v41, v50
	v_mul_f32_e32 v46, v44, v51
	v_div_fixup_f32 v31, v31, v112, v32
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v50, -v45, v40, 1.0
	v_fma_f32 v41, -v48, v46, v44
	v_div_fixup_f32 v17, v37, v112, v17
	v_div_scale_f32 v37, s3, v20, v112, v20
	v_fmac_f32_e32 v40, v50, v40
	v_fmac_f32_e32 v42, v38, v39
	v_rcp_f32_e32 v38, v47
	v_fmac_f32_e32 v46, v41, v51
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v17, 0, v17, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v32, -v49, v42, v43
	v_div_scale_f32 v43, null, v112, v112, v22
	v_div_fmas_f32 v32, v32, v39, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v47, v38, 1.0
	v_fma_f32 v39, -v48, v46, v44
	v_div_scale_f32 v44, s4, v21, v112, v21
	v_div_scale_f32 v48, null, v112, v112, v23
	v_fmac_f32_e32 v38, v41, v38
	v_rcp_f32_e32 v41, v43
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v32, v32, v112, v18
	v_div_fmas_f32 v39, v39, v51, v46
	v_rcp_f32_e32 v51, v48
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v18, v39, v112, v19
	v_div_scale_f32 v39, s5, v22, v112, v22
	v_fma_f32 v50, -v43, v41, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v41, v50, v41 :: v_dual_mul_f32 v42, v37, v40
	v_mul_f32_e32 v49, v44, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v48, v51, 1.0
	v_fma_f32 v46, -v45, v42, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v19, -v47, v49, v44
	v_fmac_f32_e32 v51, v50, v51
	v_div_scale_f32 v50, s6, v23, v112, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v46, v40
	v_div_scale_f32 v46, null, v112, v112, v24
	v_fmac_f32_e32 v49, v19, v38
	v_fma_f32 v37, -v45, v42, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v52, v46
	v_div_fmas_f32 v19, v37, v40, v42
	v_mul_f32_e32 v42, v50, v51
	v_fma_f32 v37, -v47, v49, v44
	v_div_scale_f32 v47, null, v112, v112, v9
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v44, -v46, v52, 1.0
	v_mul_f32_e32 v45, v39, v41
	v_div_fmas_f32 v38, v37, v38, v49
	v_fma_f32 v49, -v48, v42, v50
	v_div_fixup_f32 v37, v19, v112, v20
	v_fmac_f32_e32 v52, v44, v52
	v_fma_f32 v40, -v43, v45, v39
	v_div_fixup_f32 v19, v38, v112, v21
	v_fmac_f32_e32 v42, v49, v51
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, s3, v24, v112, v24
	v_fmac_f32_e32 v45, v40, v41
	v_rcp_f32_e32 v40, v47
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v20, -v43, v45, v39
	v_div_scale_f32 v39, null, v112, v112, v10
	v_div_fmas_f32 v20, v20, v41, v45
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v38, -v47, v40, 1.0
	v_fma_f32 v41, -v48, v42, v50
	v_div_scale_f32 v48, null, v112, v112, v11
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v40, v38, v40
	v_rcp_f32_e32 v38, v39
	v_div_scale_f32 v45, s4, v9, v112, v9
	v_div_fixup_f32 v22, v20, v112, v22
	v_div_scale_f32 v50, null, v112, v112, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v22, 0, v22, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v49, -v39, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v38, v49, v38
	v_div_fmas_f32 v41, v41, v51, v42
	v_rcp_f32_e32 v42, v48
	v_mul_f32_e32 v21, v44, v52
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v49, null, v112, v112, v12
	v_div_fixup_f32 v20, v41, v112, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v43, -v46, v21, v44
	v_rcp_f32_e32 v51, v50
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v21, v43, v52
	v_fma_f32 v23, -v46, v21, v44
	v_div_scale_f32 v44, s5, v10, v112, v10
	v_fma_f32 v46, -v48, v42, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v23, v52, v21
	v_mul_f32_e32 v23, v44, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v43, v45, v40 :: v_dual_fmac_f32 v42, v46, v42
	v_div_scale_f32 v46, s3, v11, v112, v11
	v_div_fixup_f32 v21, v21, v112, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v47, v43, v45
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v43, v41, v40
	v_rcp_f32_e32 v41, v49
	v_fma_f32 v24, -v47, v43, v45
	v_fma_f32 v45, -v39, v23, v44
	v_mul_f32_e32 v47, v46, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v24, v24, v40, v43
	v_fma_f32 v52, -v49, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v23, v45, v38
	v_fma_f32 v40, -v48, v47, v46
	v_div_scale_f32 v43, s4, v12, v112, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v41, v52, v41
	v_fma_f32 v45, -v50, v51, 1.0
	v_div_fixup_f32 v9, v24, v112, v9
	v_fma_f32 v24, -v39, v23, v44
	v_fmac_f32_e32 v47, v40, v42
	v_mul_f32_e32 v39, v43, v41
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v51, v45, v51
	v_div_scale_f32 v40, s6, v13, v112, v13
	v_div_scale_f32 v44, null, v112, v112, v14
	v_div_fmas_f32 v23, v24, v38, v23
	v_fma_f32 v24, -v48, v47, v46
	v_fma_f32 v38, -v49, v39, v43
	v_div_scale_f32 v48, null, v112, v112, v15
	v_rcp_f32_e32 v45, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v46, v40, v51 :: v_dual_fmac_f32 v39, v38, v41
	v_rcp_f32_e32 v38, v48
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v10, v23, v112, v10
	v_div_fmas_f32 v24, v24, v42, v47
	v_fma_f32 v42, -v50, v46, v40
	v_fma_f32 v23, -v49, v39, v43
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v47, -v44, v45, 1.0
	v_div_fixup_f32 v11, v24, v112, v11
	v_fmac_f32_e32 v46, v42, v51
	v_fma_f32 v42, -v48, v38, 1.0
	v_div_scale_f32 v24, s3, v14, v112, v14
	v_fmac_f32_e32 v45, v47, v45
	v_div_scale_f32 v49, null, v112, v112, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v38, v42, v38
	v_div_fmas_f32 v23, v23, v41, v39
	v_fma_f32 v39, -v50, v46, v40
	s_mov_b32 vcc_lo, s6
	v_mul_f32_e32 v40, v24, v45
	v_div_scale_f32 v41, null, v112, v112, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v51, v46
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v46, -v44, v40, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v43, v41
	v_div_scale_f32 v42, s4, v15, v112, v15
	v_div_fixup_f32 v13, v39, v112, v13
	v_rcp_f32_e32 v39, v49
	v_fmac_f32_e32 v40, v46, v45
	v_div_fixup_f32 v12, v23, v112, v12
	v_div_scale_f32 v51, null, v112, v112, v3
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v24, -v44, v40, v24
	v_fma_f32 v46, -v41, v43, 1.0
	v_div_scale_f32 v44, null, v112, v112, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v49, v39, 1.0
	v_div_fmas_f32 v24, v24, v45, v40
	v_div_scale_f32 v45, s3, v1, v112, v1
	v_fmac_f32_e32 v43, v46, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v39, v50, v39
	v_rcp_f32_e32 v46, v44
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v53, v51
	v_div_fixup_f32 v14, v24, v112, v14
	v_dual_mul_f32 v52, v45, v39 :: v_dual_mul_f32 v47, v42, v38
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s2
	v_cndmask_b32_e64 v12, 0, v12, s2
	v_cndmask_b32_e64 v11, 0, v11, s2
	v_cndmask_b32_e64 v14, 0, v14, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v23, -v48, v47, v42
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v47, v23, v38
	v_div_scale_f32 v23, s5, v16, v112, v16
	v_fma_f32 v40, -v48, v47, v42
	v_fma_f32 v48, -v44, v46, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v42, v23, v43
	v_div_fmas_f32 v38, v40, v38, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s6, v2, v112, v2
	v_fma_f32 v50, -v41, v42, v23
	v_fma_f32 v40, -v49, v52, v45
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v47, v48, v46
	v_div_fixup_f32 v15, v38, v112, v15
	v_fmac_f32_e32 v42, v50, v43
	v_fmac_f32_e32 v52, v40, v39
	v_fma_f32 v38, -v51, v53, 1.0
	v_fma_f32 v24, -v44, v47, v48
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v23, -v41, v42, v23
	v_fma_f32 v40, -v49, v52, v45
	v_fmac_f32_e32 v53, v38, v53
	v_fmac_f32_e32 v47, v24, v46
	v_div_scale_f32 v24, s4, v3, v112, v3
	v_div_fmas_f32 v23, v23, v43, v42
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v42, -v44, v47, v48
	v_div_fmas_f32 v39, v40, v39, v52
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v38, null, v112, v112, v4
	v_div_fmas_f32 v42, v42, v46, v47
	v_mul_f32_e32 v40, v24, v53
	v_div_scale_f32 v43, null, v112, v112, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v41, v38
	v_div_fixup_f32 v2, v42, v112, v2
	v_div_scale_f32 v42, null, v112, v112, v6
	v_fma_f32 v44, -v51, v40, v24
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v16, v23, v112, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v46, v42
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v40, v44, v53
	v_fma_f32 v44, -v38, v41, 1.0
	v_div_fixup_f32 v1, v39, v112, v1
	v_div_scale_f32 v47, s4, v5, v112, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v23, -v51, v40, v24
	v_div_scale_f32 v24, s3, v4, v112, v4
	v_fma_f32 v50, -v42, v46, 1.0
	v_fmac_f32_e32 v41, v44, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v23, v23, v53, v40
	v_fma_f32 v39, -v43, v45, 1.0
	v_div_scale_f32 v44, null, v112, v112, v7
	v_fmac_f32_e32 v46, v50, v46
	v_mul_f32_e32 v40, v24, v41
	v_div_scale_f32 v50, s5, v6, v112, v6
	v_fmac_f32_e32 v45, v39, v45
	v_rcp_f32_e32 v39, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v38, v40, v24
	v_div_scale_f32 v48, null, v112, v112, v8
	v_div_fixup_f32 v3, v23, v112, v3
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v40, v49, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v51, v48
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s2
	v_cndmask_b32_e64 v1, 0, v1, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v49, -v44, v39, 1.0
	v_fma_f32 v24, -v38, v40, v24
	v_dual_mul_f32 v38, v50, v46 :: v_dual_mul_f32 v23, v47, v45
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v39, v49, v39
	v_div_scale_f32 v49, s6, v7, v112, v7
	v_fma_f32 v52, -v43, v23, v47
	v_fma_f32 v53, -v48, v51, 1.0
	v_div_fmas_f32 v24, v24, v41, v40
	v_fma_f32 v41, -v42, v38, v50
	s_mov_b32 vcc_lo, s4
	v_dual_fmac_f32 v23, v52, v45 :: v_dual_mul_f32 v52, v49, v39
	v_fmac_f32_e32 v51, v53, v51
	v_div_scale_f32 v53, s7, v8, v112, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v43, v23, v47
	v_fma_f32 v43, -v44, v52, v49
	v_fmac_f32_e32 v38, v41, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v47, v53, v51
	v_div_fixup_f32 v4, v24, v112, v4
	v_div_fmas_f32 v23, v40, v45, v23
	v_fmac_f32_e32 v52, v43, v39
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v40, -v48, v47, v53
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s4, s19, v0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v5, v23, v112, v5
	v_fma_f32 v23, -v42, v38, v50
	v_fma_f32 v24, -v44, v52, v49
	v_fmac_f32_e32 v47, v40, v51
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s2
	v_cndmask_b32_e64 v5, 0, v5, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v23, v23, v46, v38
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v38, -v48, v47, v53
	v_div_fmas_f32 v24, v24, v39, v52
	s_mov_b32 vcc_lo, s7
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cmp_o_f32_e64 s7, v28, v28
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v6, v23, v112, v6
	v_div_fmas_f32 v38, v38, v51, v47
	v_div_fixup_f32 v7, v24, v112, v7
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v26, s2
	v_cndmask_b32_e64 v26, 0, v36, s2
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_mov_b16_e64 v36.h, v128.h
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v8, v38, v112, v8
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s19, v35
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e64 v128.l, v24.h
	v_mov_b16_e32 v36.l, v26.h
	v_cmp_o_f32_e64 s6, v24, v24
	.loc	1 843 24                        ; attention.py:843:24
	v_or_b32_e32 v23, s28, v111
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v38, 1, v128
	v_and_b32_e32 v36, 1, v36
	v_mov_b16_e64 v128.l, v28.h
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v23, s19, v23
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v6, 0, v6, s2
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v38, v24, v38, 0x7fff
	v_add3_u32 v24, v26, v36, 0x7fff
	v_mov_b16_e32 v36.l, v25.h
	v_mov_b16_e64 v36.h, v128.h
	v_and_b32_e32 v39, 1, v128
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s6
	v_cmp_o_f32_e64 s6, v26, v26
	v_mov_b16_e64 v128.l, v30.h
	v_and_b32_e32 v26, 1, v36
	v_add3_u32 v36, v28, v39, 0x7fff
	v_mov_b16_e32 v39.l, v27.h
	v_mov_b16_e64 v39.h, v128.h
	v_cndmask_b16 v38.l, 0x7fff, v24.h, s6
	v_add3_u32 v24, v25, v26, 0x7fff
	v_cndmask_b16 v28.h, 0x7fff, v36.h, s7
	v_and_b32_e32 v36, 1, v128
	v_and_b32_e32 v26, 1, v39
	v_cmp_o_f32_e64 s6, v25, v25
	v_cmp_o_f32_e64 s7, v30, v30
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v0, v23, v0, 1
	.loc	1 841 19 is_stmt 1              ; attention.py:841:19
	v_cndmask_b32_e64 v7, 0, v7, s2
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v25, v27, v26, 0x7fff
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v31, s2
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v31, v30, v36, 0x7fff
	v_mov_b16_e32 v36.l, v29.h
	v_mov_b16_e64 v36.h, v128.h
	v_cndmask_b16 v28.l, 0x7fff, v24.h, s6
	v_mov_b16_e64 v128.l, v26.h
	v_cndmask_b16 v27.h, 0x7fff, v31.h, s7
	v_cndmask_b16 v27.l, 0x7fff, v25.h, s8
	v_and_b32_e32 v24, 1, v36
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v25, 0, v32, s2
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v30, 1, v128
	v_cmp_o_f32_e64 s7, v29, v29
	v_cmp_o_f32_e64 s6, v26, v26
	v_add3_u32 v24, v29, v24, 0x7fff
	v_mov_b16_e64 v128.l, v25.h
	v_add3_u32 v30, v26, v30, 0x7fff
	v_mov_b16_e32 v26.l, v17.h
	v_mov_b16_e64 v26.h, v128.h
	v_cndmask_b16 v29.l, 0x7fff, v24.h, s7
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v37, s2
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v29.h, 0x7fff, v30.h, s6
	v_and_b32_e32 v30, 1, v128
	v_and_b32_e32 v26, 1, v26
	v_cmp_o_f32_e64 s6, v25, v25
	v_mov_b16_e64 v128.l, v24.h
	v_cmp_o_f32_e64 s7, v24, v24
	v_add3_u32 v30, v25, v30, 0x7fff
	v_add3_u32 v25, v17, v26, 0x7fff
	v_mov_b16_e32 v26.l, v18.h
	v_mov_b16_e64 v26.h, v128.h
	v_and_b32_e32 v31, 1, v128
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s6
	v_cmp_o_f32_e64 s6, v17, v17
	v_mov_b16_e64 v128.l, v22.h
	v_and_b32_e32 v17, 1, v26
	v_add3_u32 v26, v24, v31, 0x7fff
	v_mov_b16_e32 v31.l, v19.h
	v_mov_b16_e64 v31.h, v128.h
	v_cndmask_b16 v30.l, 0x7fff, v25.h, s6
	v_add3_u32 v17, v18, v17, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s7
	v_and_b32_e32 v26, 1, v128
	v_and_b32_e32 v24, 1, v31
	v_cmp_o_f32_e64 s6, v18, v18
	v_mov_b16_e64 v128.l, v21.h
	v_cmp_o_f32_e64 s7, v22, v22
	v_cmp_o_f32_e64 s8, v19, v19
	v_add3_u32 v18, v19, v24, 0x7fff
	v_add3_u32 v24, v22, v26, 0x7fff
	v_mov_b16_e32 v26.l, v20.h
	v_mov_b16_e64 v26.h, v128.h
	v_cndmask_b16 v25.l, 0x7fff, v17.h, s6
	v_and_b32_e32 v22, 1, v128
	v_cndmask_b16 v19.h, 0x7fff, v24.h, s7
	v_mov_b16_e64 v128.l, v10.h
	v_and_b32_e32 v17, 1, v26
	v_cmp_o_f32_e64 s7, v20, v20
	v_cndmask_b16 v19.l, 0x7fff, v18.h, s8
	v_add3_u32 v18, v21, v22, 0x7fff
	v_cmp_o_f32_e64 s6, v21, v21
	v_add3_u32 v17, v20, v17, 0x7fff
	v_mov_b16_e32 v20.l, v9.h
	v_mov_b16_e64 v20.h, v128.h
	v_and_b32_e32 v21, 1, v128
	v_mov_b16_e64 v128.l, v12.h
	v_cndmask_b16 v18.l, 0x7fff, v17.h, s7
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s6
	v_and_b32_e32 v17, 1, v20
	v_add3_u32 v20, v10, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v10, v10
	v_and_b32_e32 v21, 1, v128
	v_cmp_o_f32_e64 s7, v12, v12
	v_add3_u32 v10, v9, v17, 0x7fff
	v_mov_b16_e32 v17.l, v11.h
	v_mov_b16_e64 v17.h, v128.h
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s6
	v_cmp_o_f32_e64 s6, v9, v9
	v_mov_b16_e64 v128.l, v14.h
	v_cmp_o_f32_e64 s8, v13, v13
	v_and_b32_e32 v9, 1, v17
	v_add3_u32 v17, v12, v21, 0x7fff
	v_mov_b16_e32 v21.l, v13.h
	v_mov_b16_e64 v21.h, v128.h
	v_cndmask_b16 v20.l, 0x7fff, v10.h, s6
	v_add3_u32 v9, v11, v9, 0x7fff
	v_cndmask_b16 v12.h, 0x7fff, v17.h, s7
	v_and_b32_e32 v17, 1, v128
	v_cmp_o_f32_e64 s6, v11, v11
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v16, s2
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v10, 1, v21
	v_cmp_o_f32_e64 s7, v14, v14
	v_add3_u32 v16, v14, v17, 0x7fff
	v_mov_b16_e32 v17.l, v15.h
	v_mov_b16_e64 v17.h, v128.h
	v_mov_b16_e64 v128.l, v11.h
	v_add3_u32 v10, v13, v10, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s6
	v_cndmask_b16 v13.h, 0x7fff, v16.h, s7
	v_and_b32_e32 v9, 1, v17
	v_and_b32_e32 v14, 1, v128
	v_mov_b16_e64 v128.l, v2.h
	v_cndmask_b16 v13.l, 0x7fff, v10.h, s8
	v_cmp_o_f32_e64 s6, v11, v11
	v_add3_u32 v9, v15, v9, 0x7fff
	v_add3_u32 v10, v11, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v15, v15
	v_mov_b16_e32 v11.l, v1.h
	v_mov_b16_e64 v11.h, v128.h
	v_and_b32_e32 v14, 1, v128
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s6
	v_cndmask_b16 v10.l, 0x7fff, v9.h, s7
	v_cmp_o_f32_e64 s6, v2, v2
	v_and_b32_e32 v9, 1, v11
	v_add3_u32 v11, v2, v14, 0x7fff
	v_mov_b16_e32 v2.l, v3.h
	v_mov_b16_e64 v2.h, v128.h
	v_mov_b16_e64 v128.l, v4.h
	v_add3_u32 v9, v1, v9, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s6
	v_cmp_o_f32_e64 s6, v1, v1
	v_and_b32_e32 v1, 1, v2
	v_and_b32_e32 v2, 1, v128
	v_mov_b16_e64 v128.l, v6.h
	v_mov_b16_e32 v9.l, v5.h
	v_cndmask_b16 v11.l, 0x7fff, v9.h, s6
	v_mov_b16_e64 v9.h, v128.h
	v_add3_u32 v2, v4, v2, 0x7fff
	v_cmp_o_f32_e64 s6, v4, v4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v8, s2
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v8, 1, v128
	v_and_b32_e32 v9, 1, v9
	v_mov_b16_e32 v14.l, v7.h
	v_mov_b16_e64 v14.h, v128.h
	v_mov_b16_e64 v128.l, v4.h
	v_add3_u32 v1, v3, v1, 0x7fff
	v_cmp_o_f32_e64 s2, v3, v3
	v_add3_u32 v3, v5, v9, 0x7fff
	v_and_b32_e32 v9, 1, v14
	v_and_b32_e32 v14, 1, v128
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s6
	v_add3_u32 v8, v6, v8, 0x7fff
	v_cmp_o_f32_e64 s6, v6, v6
	v_cmp_o_f32_e64 s7, v5, v5
	v_add3_u32 v5, v7, v9, 0x7fff
	v_add3_u32 v6, v4, v14, 0x7fff
	v_cmp_o_f32_e64 s8, v4, v4
	v_cmp_o_f32_e64 s9, v7, v7
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s2
	v_cndmask_b16 v1.h, 0x7fff, v8.h, s6
	v_cndmask_b16 v1.l, 0x7fff, v3.h, s7
	v_cndmask_b16 v3.h, 0x7fff, v6.h, s8
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s9
	v_cndmask_b32_e64 v5, v38, v27, s1
	v_cndmask_b32_e64 v7, v28, v29, s1
	v_cndmask_b32_e64 v9, v30, v19, s1
	v_cndmask_b32_e64 v14, v18, v25, s1
	v_cndmask_b32_e64 v15, v25, v18, s1
	v_cndmask_b32_e64 v18, v1, v11, s1
	v_cndmask_b32_e64 v1, v11, v1, s1
	v_cndmask_b32_e64 v16, v13, v20, s1
	v_cndmask_b32_e64 v13, v20, v13, s1
	v_cndmask_b32_e64 v17, v10, v12, s1
	v_cndmask_b32_e64 v10, v12, v10, s1
	v_cndmask_b32_e64 v8, v19, v30, s1
	v_cndmask_b32_e64 v19, v3, v2, s1
	v_cndmask_b32_e64 v2, v2, v3, s1
	s_mov_b32 s2, 0x76543210
	v_cndmask_b32_e64 v4, v27, v38, s1
	v_cndmask_b32_e64 v6, v29, v28, s1
	v_permlanex16_b32 v3, v5, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v7, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v9, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v15, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v13, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v10, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v2, s2, 0xfedcba98 op_sel:[1,0]
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s5, s19, v34
	v_cmp_gt_i32_e64 s3, s19, v33
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v1, v3, v4, v109
	v_perm_b32 v2, v3, v4, v110
	v_perm_b32 v3, v5, v6, v109
	v_perm_b32 v4, v5, v6, v110
	v_perm_b32 v5, v7, v8, v109
	v_perm_b32 v6, v7, v8, v110
	v_perm_b32 v7, v9, v14, v109
	v_perm_b32 v8, v9, v14, v110
	v_perm_b32 v13, v15, v18, v109
	v_perm_b32 v14, v15, v18, v110
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v18, v23, v35, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v9, v11, v16, v109
	v_perm_b32 v10, v11, v16, v110
	v_perm_b32 v11, v12, v17, v109
	v_perm_b32 v12, v12, v17, v110
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v17, v23, v34, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v15, v20, v19, v109
	v_perm_b32 v16, v20, v19, v110
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v19, v23, v33, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s1, s0, s5
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v17, 0x80000000, v17, s1
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s4
	s_mov_b32 s19, 0x31027000
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[1:4], v17, s[16:19], 0 offen
	buffer_store_b128 v[5:8], v18, s[16:19], 0 offen
	buffer_store_b128 v[9:12], v19, s[16:19], 0 offen
	buffer_store_b128 v[13:16], v0, s[16:19], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp55:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 165
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 165
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13316
; TotalNumSgprs: 33
; NumVgprs: 165
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 33
; NumVGPRsForWavesPerEU: 165
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
	.short	687                             ; DW_AT_call_line
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
	.short	691                             ; DW_AT_call_line
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
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
.Ldebug_ranges2:
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
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     165
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
