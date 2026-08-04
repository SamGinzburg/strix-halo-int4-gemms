	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b64 s[28:29], s[0:1], 0x5c
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[20:21], s[0:1], 0x10
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v3, 5, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v65, 3, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s33, s2, 6
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v77, 15, v0
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s19, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s33, v3
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v1, 0xf8, v65
	.loc	1 787 26 is_stmt 0              ; attention.py:787:26
	s_add_i32 s18, s33, s19
	.loc	1 889 86 is_stmt 1              ; attention.py:889:86
	v_lshlrev_b32_e32 v71, 3, v77
	s_clause 0x1
	s_load_b32 s3, s[0:1], 0x64
	s_load_b64 s[16:17], s[0:1], 0x38
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v2
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s23, s27
	s_mov_b32 s22, s26
	v_mov_b16_e64 v241.h, 0
	s_mov_b32 s30, 0x76543210
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[136:137], null, s28, v3, v[1:2]
	s_mul_i32 s15, s28, s18
	s_mul_i32 s9, s28, 40
	s_lshl_b32 s2, s28, 5
	s_mul_i32 s12, s28, 52
	s_mul_i32 s8, s28, 36
	s_mul_i32 s13, s28, 56
	v_mad_u64_u32 v[80:81], null, s28, 12, v[136:137]
	v_mad_u64_u32 v[81:82], null, s28, 20, v[136:137]
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v76, 0x70, v0
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[82:83], null, s28, 24, v[136:137]
	v_mad_u64_u32 v[83:84], null, s28, 28, v[136:137]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v67, 2, v76
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v87, s28, 2, v136
	v_lshl_add_u32 v73, s28, 3, v136
	v_lshl_add_u32 v74, s28, 4, v136
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v13, v81, s15, 1
	.loc	1 889 30                        ; attention.py:889:30
	v_mad_u64_u32 v[84:85], null, s29, v67, v[71:72]
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s10, s28, 44
	s_mul_i32 s11, s28, 48
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, v87, s15, 1
	v_add_lshl_u32 v9, v73, s15, 1
	v_add_lshl_u32 v11, v74, s15, 1
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s14, s28, 60
	.loc	1 889 30                        ; attention.py:889:30
	v_mad_u64_u32 v[85:86], null, s29, 3, v[84:85]
	v_dual_mov_b32 v72, v84 :: v_dual_add_nc_u32 v25, s15, v136
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s28, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v16, v82, s15, 1
	.loc	1 786 26                        ; attention.py:786:26
	s_mul_i32 s1, s28, s19
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v21, v25, s9, 1
	v_lshlrev_b32_e32 v1, 1, v25
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s0, s0, vcc_lo
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v14, v25, s2, 1
	v_add_lshl_u32 v15, v25, s8, 1
	v_cndmask_b32_e64 v29, 0x80000000, v21, s0
	v_add_lshl_u32 v21, v25, s12, 1
	v_add_lshl_u32 v24, v25, s13, 1
	v_add_lshl_u32 v10, v80, s15, 1
	v_add_lshl_u32 v22, v25, s11, 1
	v_add_lshl_u32 v23, v25, s10, 1
	v_add_lshl_u32 v46, v83, s15, 1
	v_add_lshl_u32 v26, v25, s14, 1
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v2, v136, s1, 1
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_cndmask_b32_e64 v45, 0x80000000, v13, s0
	v_cndmask_b32_e64 v13, 0x80000000, v14, s0
	v_cndmask_b32_e64 v25, 0x80000000, v21, s0
	v_cndmask_b32_e64 v5, 0x80000000, v3, s0
	v_cndmask_b32_e64 v49, 0x80000000, v9, s0
	v_cndmask_b32_e64 v9, 0x80000000, v11, s0
	v_cndmask_b32_e64 v17, 0x80000000, v15, s0
	v_cndmask_b32_e64 v53, 0x80000000, v16, s0
	v_cndmask_b32_e64 v33, 0x80000000, v24, s0
	s_and_b32 s25, s5, 0xffff
	s_mov_b32 s24, s4
	v_cndmask_b32_e64 v57, 0x80000000, v10, s0
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	v_cndmask_b32_e64 v37, 0x80000000, v23, s0
	v_cndmask_b32_e64 v41, 0x80000000, v26, s0
	v_cndmask_b32_e64 v61, 0x80000000, v46, s0
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v66, 0x80000000, v2, vcc_lo
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0xf
	buffer_load_b128 v[1:4], v1, s[24:27], 0 offen
	buffer_load_b128 v[5:8], v5, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v17, s[24:27], 0 offen
	buffer_load_b128 v[25:28], v25, s[24:27], 0 offen
	buffer_load_b128 v[29:32], v29, s[24:27], 0 offen
	buffer_load_b128 v[33:36], v33, s[24:27], 0 offen
	buffer_load_b128 v[37:40], v37, s[24:27], 0 offen
	buffer_load_b128 v[41:44], v41, s[24:27], 0 offen
	buffer_load_b128 v[45:48], v45, s[24:27], 0 offen
	buffer_load_b128 v[49:52], v49, s[24:27], 0 offen
	buffer_load_b128 v[53:56], v53, s[24:27], 0 offen
	buffer_load_b128 v[57:60], v57, s[24:27], 0 offen
	buffer_load_b128 v[61:64], v61, s[24:27], 0 offen
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[21:24], v22, s[24:27], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v75, 0x60, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v78, 4, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v87, off offset:304
	scratch_store_b64 off, v[72:73], off offset:284
	.loc	1 889 30                        ; attention.py:889:30
	v_lshl_add_u32 v72, s29, 1, v84
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v79, 1, v75
	.loc	1 888 30                        ; attention.py:888:30
	s_mul_i32 s0, s29, s19
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s2, s29, v71
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v70, s0, v84
	scratch_store_b32 off, v72, off offset:300 ; 4-byte Folded Spill
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v68, v78, v79
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v71, v72, s0, 1
	v_mov_b32_e32 v72, v85
	v_mov_b32_e32 v252, 0xff800000
	.loc	1 854 32                        ; attention.py:854:32
	s_and_b32 s7, s7, 0xffff
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v67, 0x840, v68
	v_add_nc_u32_e32 v250, 0, v68
	v_xor_b32_e32 v69, 0x1080, v68
	v_xor_b32_e32 v68, 0x18c0, v68
	.loc	1 890 30                        ; attention.py:890:30
	scratch_store_b64 off, v[72:73], off offset:292 ; 8-byte Folded Spill
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v247, 0, v67
	v_dual_mov_b32 v84, 0x7632 :: v_dual_lshlrev_b32 v67, 1, v70
	v_add_nc_u32_e32 v111, 0, v69
	v_add_nc_u32_e32 v253, 0, v68
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v72, v85, s0, 1
	v_cndmask_b32_e64 v68, 0x80000000, v71, s2
	v_cndmask_b32_e64 v67, 0x80000000, v67, s2
	s_and_b32 s21, s21, 0xffff
	.loc	1 854 32                        ; attention.py:854:32
	s_mov_b32 s24, s6
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v69, 0x80000000, v72, s2
	.loc	1 854 32                        ; attention.py:854:32
	s_mov_b32 s25, s7
	v_bfe_i32 v86, v0, 3, 1
	s_mov_b32 s8, 0
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s5, s3, 0x3fb8aa3b
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	s_mov_b32 s31, s8
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(15)
	ds_store_b128 v250, v[1:4]
	s_waitcnt vmcnt(1)
	ds_store_b128 v250, v[9:12] offset:8192
	ds_store_b128 v250, v[13:16] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v250, v[21:24] offset:24576
	ds_store_b128 v247, v[17:20] offset:16384
	ds_store_b128 v247, v[25:28] offset:24576
	ds_store_b128 v111, v[29:32] offset:16384
	ds_store_b128 v111, v[33:36] offset:24576
	ds_store_b128 v253, v[37:40] offset:16384
	ds_store_b128 v253, v[41:44] offset:24576
	ds_store_b128 v247, v[5:8]
	ds_store_b128 v247, v[45:48] offset:8192
	ds_store_b128 v111, v[49:52]
	ds_store_b128 v111, v[53:56] offset:8192
	ds_store_b128 v253, v[57:60]
	ds_store_b128 v253, v[61:64] offset:8192
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v5, v70, s29, 1
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v9, v74, s1, 1
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[1:4], v68, s[20:23], 0 offen
	buffer_load_b128 v[194:197], v69, s[20:23], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[198:201], v5, s[20:23], 0 offen
	buffer_load_b128 v[5:8], v67, s[20:23], 0 offen
	v_mov_b32_e32 v11, v81
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x1
	buffer_load_b128 v[13:16], v66, s[24:27], 0 offen
	buffer_load_b128 v[67:70], v9, s[24:27], 0 offen
	v_add_lshl_u32 v10, v87, s1, 1
	v_mov_b32_e32 v25, v80
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v73, off offset:192
	scratch_store_b32 off, v74, off offset:256
	scratch_store_b64 off, v[11:12], off offset:260
	v_add_lshl_u32 v11, v81, s1, 1
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	scratch_store_b64 off, v[25:26], off offset:224 ; 8-byte Folded Spill
	v_mov_b32_e32 v26, v83
	v_add_lshl_u32 v17, v73, s1, 1
	v_dual_cndmask_b32 v10, 0x80000000, v11 :: v_dual_mov_b32 v11, v82
	v_add_lshl_u32 v25, v80, s1, 1
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[26:27], off offset:276
	scratch_store_b32 off, v0, off offset:320
	v_add_lshl_u32 v26, v83, s1, 1
	scratch_store_b64 off, v[11:12], off offset:268 ; 8-byte Folded Spill
	s_clause 0x1
	buffer_load_b128 v[71:74], v9, s[24:27], 0 offen
	buffer_load_b128 v[9:12], v10, s[24:27], 0 offen
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_and_b32 v58, 48, v78
	v_add_lshl_u32 v18, v82, s1, 1
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[203:206], v25, s[24:27], 0 offen
	buffer_load_b128 v[207:210], v26, s[24:27], 0 offen
	v_mov_b32_e32 v25, 0
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v87, 9, v77
	v_lshlrev_b32_e32 v56, 8, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v28, v25
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x1
	buffer_load_b128 v[21:24], v17, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v18, s[24:27], 0 offen
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v75, 4, v77
	v_and_b32_e32 v57, 16, v0
	.loc	1 890 30                        ; attention.py:890:30
	v_lshrrev_b32_e32 v59, 1, v76
	v_lshlrev_b32_e32 v85, 6, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, v79, v77
	.loc	1 788 26                        ; attention.py:788:26
	v_or3_b32 v60, v56, v75, v87
	v_cmp_eq_u32_e64 s0, 0, v57
	.loc	1 890 30                        ; attention.py:890:30
	v_xor_b32_e32 v88, v58, v59
	v_dual_mov_b32 v66, 0x5410 :: v_dual_and_b32 v65, 48, v65
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v57, 0, v60
	v_xad_u32 v58, v60, 16, 0
	v_xad_u32 v59, v60, 32, 0
	v_xad_u32 v61, v60, 48, 0
	v_xad_u32 v62, v60, 64, 0
	v_xad_u32 v63, 0x50, v60, 0
	v_xad_u32 v64, 0x60, v60, 0
	v_xad_u32 v76, 0x70, v60, 0
	ds_load_b128 v[185:188], v57
	ds_load_b128 v[112:115], v57 offset:256
	ds_load_b128 v[189:192], v58
	ds_load_b128 v[116:119], v58 offset:256
	ds_load_b128 v[177:180], v59
	ds_load_b128 v[120:123], v59 offset:256
	ds_load_b128 v[181:184], v61
	ds_load_b128 v[124:127], v61 offset:256
	ds_load_b128 v[169:172], v62
	ds_load_b128 v[128:131], v62 offset:256
	ds_load_b128 v[173:176], v63
	ds_load_b128 v[132:135], v63 offset:256
	ds_load_b128 v[161:164], v64
	ds_load_b128 v[89:92], v64 offset:256
	ds_load_b128 v[165:168], v76
	ds_load_b128 v[93:96], v76 offset:256
	v_xad_u32 v78, 0x80, v60, 0
	v_xad_u32 v77, 0x90, v60, 0
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[89:92], off offset:32 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[93:96], off offset:48 ; 16-byte Folded Spill
	ds_load_b128 v[153:156], v78
	ds_load_b128 v[89:92], v78 offset:256
	ds_load_b128 v[157:160], v77
	ds_load_b128 v[93:96], v77 offset:256
	v_xad_u32 v80, 0xa0, v60, 0
	v_xad_u32 v79, 0xb0, v60, 0
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[89:92], off offset:64 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[93:96], off offset:80 ; 16-byte Folded Spill
	ds_load_b128 v[145:148], v80
	ds_load_b128 v[89:92], v80 offset:256
	ds_load_b128 v[149:152], v79
	ds_load_b128 v[93:96], v79 offset:256
	v_xad_u32 v82, 0xc0, v60, 0
	v_xad_u32 v81, 0xd0, v60, 0
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[89:92], off offset:96 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[93:96], off offset:112 ; 16-byte Folded Spill
	ds_load_b128 v[137:140], v82
	ds_load_b128 v[89:92], v82 offset:256
	ds_load_b128 v[141:144], v81
	ds_load_b128 v[93:96], v81 offset:256
	v_xad_u32 v83, 0xf0, v60, 0
	v_xad_u32 v60, 0xe0, v60, 0
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[89:92], off offset:128 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[93:96], off offset:144 ; 16-byte Folded Spill
	ds_load_b128 v[89:92], v60
	ds_load_b128 v[57:60], v60 offset:256
	ds_load_b128 v[93:96], v83
	ds_load_b128 v[61:64], v83 offset:256
	s_waitcnt lgkmcnt(3)
	scratch_store_b128 off, v[89:92], off offset:160 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(1)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[93:96], off offset:176
	scratch_store_b128 off, v[57:60], off
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[61:64], off offset:16 ; 16-byte Folded Spill
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b128 v250, v[13:16]
	s_waitcnt vmcnt(6)
	ds_store_b128 v250, v[67:70] offset:8192
	v_and_b32_e32 v68, 0x210, v86
	v_mov_b32_e32 v54, v25
	.loc	1 890 30                        ; attention.py:890:30
	v_or_b32_e32 v67, v88, v87
	v_mov_b32_e32 v34, v25
	v_mov_b32_e32 v36, v25
	v_mov_b16_e64 v76.h, v198.l
	v_mov_b16_e64 v198.l, v5.h
	v_cndmask_b32_e64 v66, 0x1054, v66, s0
	v_dual_mov_b32 v32, v25 :: v_dual_add_nc_u32 v69, 0, v67
	v_mov_b32_e32 v38, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v40, v25 :: v_dual_mov_b32 v193, v198
	v_mov_b16_e32 v77.l, v1.l
	v_mov_b16_e64 v77.h, v194.l
	v_mov_b16_e64 v194.l, v1.h
	v_mov_b16_e32 v76.l, v5.l
	v_and_or_b32 v65, 0x1c0, v85, v65
	v_cndmask_b32_e64 v70, 0x3276, v84, s0
	v_lshl_or_b32 v66, v66, 8, v66
	v_add_nc_u32_e32 v69, 0x4000, v69
	v_mov_b32_e32 v27, v25
	v_mov_b32_e32 v56, v25
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(5)
	ds_store_b128 v247, v[71:74]
	s_waitcnt vmcnt(4)
	ds_store_b128 v247, v[9:12] offset:8192
	v_or_b32_e32 v74, v87, v75
	v_xor_b32_e32 v75, v65, v68
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:324
	scratch_store_b32 off, v69, off offset:308
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v65, s33, v0
	v_lshl_or_b32 v68, v70, 8, v70
	v_and_b32_e32 v66, 0x540054, v66
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v69, v[76:77], v[193:194] offset1:8
	v_xor_b32_e32 v69, 0x90, v67
	v_xor_b32_e32 v70, 0x120, v67
	v_xor_b32_e32 v67, 0x1b0, v67
	v_mov_b32_e32 v29, v25
	v_mov_b32_e32 v42, v25
	v_mov_b32_e32 v46, v25
	v_mov_b16_e64 v78.h, v199.l
	v_mov_b16_e64 v199.l, v6.h
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s1, 0x800, v65
	v_and_b32_e32 v65, 0x760076, v68
	v_lshl_or_b32 v66, v66, 4, v66
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v68, 0, v69
	v_add_nc_u32_e32 v67, 0, v67
	v_mov_b32_e32 v31, v25
	v_mov_b32_e32 v33, v25
	v_dual_mov_b32 v35, v25 :: v_dual_mov_b32 v194, v199
	v_dual_mov_b32 v44, v25 :: v_dual_add_nc_u32 v69, 0, v70
	v_dual_mov_b32 v48, v25 :: v_dual_add_nc_u32 v67, 0x4000, v67
	v_mov_b16_e32 v79.l, v2.l
	v_mov_b16_e64 v79.h, v195.l
	v_mov_b16_e64 v195.l, v2.h
	v_mov_b16_e64 v83.h, v197.l
	v_mov_b16_e64 v197.l, v4.h
	v_mov_b16_e32 v78.l, v6.l
	v_mov_b16_e64 v80.h, v200.l
	v_mov_b16_e64 v200.l, v7.h
	v_lshl_or_b32 v65, v65, 4, v65
	v_and_b32_e32 v248, 0x5040504, v66
	v_add_nc_u32_e32 v66, 0x4000, v68
	v_mov_b32_e32 v26, v25
	v_mov_b32_e32 v30, v25
	v_dual_mov_b32 v37, v25 :: v_dual_add_nc_u32 v68, 0x4000, v69
	v_dual_mov_b32 v39, v25 :: v_dual_mov_b32 v0, v67
	v_mov_b32_e32 v41, v25
	v_mov_b32_e32 v43, v25
	v_mov_b32_e32 v45, v25
	v_mov_b32_e32 v47, v25
	v_mov_b32_e32 v49, v25
	v_dual_mov_b32 v50, v25 :: v_dual_and_b32 v249, 0x7060706, v65
	v_mov_b32_e32 v51, v25
	v_mov_b32_e32 v52, v25
	v_mov_b32_e32 v53, v25
	v_mov_b32_e32 v55, v25
	v_mov_b16_e32 v81.l, v3.l
	v_mov_b16_e64 v81.h, v196.l
	v_mov_b16_e64 v196.l, v3.h
	v_mov_b16_e32 v83.l, v4.l
	v_mov_b16_e32 v80.l, v7.l
	v_mov_b16_e32 v82.l, v8.l
	v_mov_b16_e64 v82.h, v201.l
	v_mov_b16_e64 v201.l, v8.h
	v_mov_b32_e32 v57, v25
	v_mov_b32_e32 v58, v25
	v_mov_b32_e32 v59, v25
	v_mov_b32_e32 v60, v25
	v_mov_b32_e32 v61, v25
	v_mov_b32_e32 v62, v25
	v_mov_b32_e32 v63, v25
	v_mov_b32_e32 v64, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(1)
	ds_store_b128 v111, v[21:24]
	s_waitcnt vmcnt(0)
	ds_store_b128 v111, v[17:20] offset:8192
	v_mov_b32_e32 v17, v25
	v_mov_b32_e32 v18, v25
	v_mov_b32_e32 v19, v25
	v_mov_b32_e32 v20, v25
	v_mov_b32_e32 v21, v25
	v_mov_b32_e32 v22, v25
	v_mov_b32_e32 v23, v25
	v_mov_b32_e32 v24, v25
	v_mov_b32_e32 v251, v25
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v66, v[78:79], v[194:195] offset1:8
	v_dual_mov_b32 v195, v200 :: v_dual_mov_b32 v202, v197
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v66, off offset:312
	scratch_store_b32 off, v68, off offset:316
	ds_store_2addr_b64 v68, v[80:81], v[195:196] offset1:8
	ds_store_2addr_b64 v67, v[82:83], v[201:202] offset1:8
	.loc	1 854 32                        ; attention.py:854:32
	ds_store_b128 v253, v[203:206]
	ds_store_b128 v253, v[207:210] offset:8192
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x6                            ; 44-byte Folded Reload
	scratch_load_b32 v66, off, off offset:304
	scratch_load_b32 v67, off, off offset:192
	scratch_load_b64 v[68:69], off, off offset:224
	scratch_load_b64 v[70:71], off, off offset:260
	scratch_load_b32 v69, off, off offset:256
	scratch_load_b64 v[71:72], off, off offset:268
	scratch_load_b64 v[72:73], off, off offset:276
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s6, s31, 32
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v255, 0, v74
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s7, s6, s19
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v99, s15 :: v_dual_mov_b32 v94, s10
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s3, s7, s28
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v98, s14
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v65, s3, v136, 1
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v97, s13 :: v_dual_mov_b32 v92, s8
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s7, s7, s29
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s31, 0x7c0
	s_mov_b32 s31, s6
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v96, s12
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v66, s3, v66, 1
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v67, s3, v67, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v68, s3, v68, 1
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v69, s3, v69, 1
	v_add_lshl_u32 v70, s3, v70, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v71, s3, v71, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v72, s3, v72, 1
	v_dual_cndmask_b32 v66, 0x80000000, v66 :: v_dual_cndmask_b32 v67, 0x80000000, v67
	v_dual_cndmask_b32 v68, 0x80000000, v68 :: v_dual_cndmask_b32 v69, 0x80000000, v69
	v_dual_cndmask_b32 v70, 0x80000000, v70 :: v_dual_cndmask_b32 v71, 0x80000000, v71
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	s_clause 0x7
	buffer_load_b128 v[221:224], v65, s[24:27], 0 offen
	buffer_load_b128 v[217:220], v66, s[24:27], 0 offen
	buffer_load_b128 v[213:216], v67, s[24:27], 0 offen
	buffer_load_b128 v[209:212], v68, s[24:27], 0 offen
	buffer_load_b128 v[237:240], v69, s[24:27], 0 offen
	buffer_load_b128 v[233:236], v70, s[24:27], 0 offen
	buffer_load_b128 v[229:232], v71, s[24:27], 0 offen
	buffer_load_b128 v[225:228], v72, s[24:27], 0 offen
	v_xor_b32_e32 v65, 16, v74
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xor_b32_e32 v66, 0x80, v74
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v71, 0, v65
	ds_load_b128 v[76:79], v255
	ds_load_b128 v[80:83], v71
	ds_load_b128 v[84:87], v255 offset:8192
	ds_load_b128 v[88:91], v71 offset:8192
	v_xor_b32_e32 v65, 48, v74
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v95, s11 :: v_dual_add_nc_u32 v66, 0, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v72, 0, v65
	v_xor_b32_e32 v65, 32, v74
	v_add_nc_u32_e32 v73, 0, v65
	v_xor_b32_e32 v65, 0x50, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v69, 0, v65
	v_xor_b32_e32 v65, 64, v74
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v93, s9 :: v_dual_add_nc_u32 v70, 0, v65
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[84:91], v[185:192], v[92:99]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[84:87], off, off offset:160
	scratch_load_b128 v[88:91], off, off offset:176
	v_wmma_f32_16x16x16_bf16 v[201:208], v[76:83], v[185:192], v[92:99]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[80:83], v72
	ds_load_b128 v[76:79], v73
	v_xor_b32_e32 v65, 0x70, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v67, 0, v65
	v_xor_b32_e32 v65, 0x60, v74
	v_add_nc_u32_e32 v68, 0, v65
	v_xor_b32_e32 v65, 0x90, v74
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v65, 0, v65
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[76:83], v[177:184], v[201:208]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[80:83], v72 offset:8192
	ds_load_b128 v[76:79], v73 offset:8192
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[76:83], v[177:184], v[193:200]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[80:83], v69
	ds_load_b128 v[76:79], v70
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[76:83], v[169:176], v[201:208]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[80:83], v69 offset:8192
	ds_load_b128 v[76:79], v70 offset:8192
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[76:83], v[169:176], v[193:200]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[80:83], v67
	ds_load_b128 v[76:79], v68
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[76:83], v[161:168], v[201:208]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[80:83], v67 offset:8192
	ds_load_b128 v[76:79], v68 offset:8192
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[76:83], v[161:168], v[193:200]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[80:83], v65
	ds_load_b128 v[76:79], v66
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[76:83], v[153:160], v[201:208]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[80:83], v65 offset:8192
	ds_load_b128 v[76:79], v66 offset:8192
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[76:83], v[153:160], v[193:200]
	v_xor_b32_e32 v76, 0xb0, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v245, 0, v76
	v_xor_b32_e32 v76, 0xa0, v74
	v_add_nc_u32_e32 v246, 0, v76
	ds_load_b128 v[80:83], v245
	ds_load_b128 v[76:79], v246
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[76:83], v[145:152], v[201:208]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[80:83], v245 offset:8192
	ds_load_b128 v[76:79], v246 offset:8192
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[76:83], v[145:152], v[193:200]
	v_xor_b32_e32 v76, 0xd0, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v243, 0, v76
	v_xor_b32_e32 v76, 0xc0, v74
	v_add_nc_u32_e32 v244, 0, v76
	ds_load_b128 v[80:83], v243
	ds_load_b128 v[76:79], v244
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[76:83], v[137:144], v[201:208]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[80:83], v243 offset:8192
	ds_load_b128 v[76:79], v244 offset:8192
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[76:83], v[137:144], v[193:200]
	v_xor_b32_e32 v76, 0xf0, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v254, 0, v76
	v_xor_b32_e32 v76, 0xe0, v74
	v_add_nc_u32_e32 v242, 0, v76
	ds_load_b128 v[80:83], v254
	ds_load_b128 v[76:79], v242
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[76:83], v[84:91], v[201:208]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[80:83], v254 offset:8192
	ds_load_b128 v[76:79], v242 offset:8192
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[76:83], v[84:91], v[193:200]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[84:87], off, off offset:32
	scratch_load_b128 v[88:91], off, off offset:48
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[76:79], v255 offset:256
	ds_load_b128 v[80:83], v71 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[76:83], v[112:119], v[201:208]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[76:79], v255 offset:8448
	ds_load_b128 v[80:83], v71 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[76:83], v[112:119], v[193:200]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[76:79], v73 offset:256
	ds_load_b128 v[80:83], v72 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[76:83], v[120:127], v[201:208]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[76:79], v73 offset:8448
	ds_load_b128 v[80:83], v72 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[76:83], v[120:127], v[193:200]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[76:79], v70 offset:256
	ds_load_b128 v[80:83], v69 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[76:83], v[128:135], v[201:208]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[76:79], v70 offset:8448
	ds_load_b128 v[80:83], v69 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[76:83], v[128:135], v[193:200]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[76:79], v68 offset:256
	ds_load_b128 v[80:83], v67 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[76:83], v[84:91], v[201:208]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[76:79], v68 offset:8448
	ds_load_b128 v[80:83], v67 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[76:83], v[84:91], v[193:200]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[84:87], off, off offset:64
	scratch_load_b128 v[88:91], off, off offset:80
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[76:79], v66 offset:256
	ds_load_b128 v[80:83], v65 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[76:83], v[84:91], v[201:208]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[76:79], v66 offset:8448
	ds_load_b128 v[80:83], v65 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[76:83], v[84:91], v[193:200]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[84:87], off, off offset:96
	scratch_load_b128 v[88:91], off, off offset:112
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[76:79], v246 offset:256
	ds_load_b128 v[80:83], v245 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[76:83], v[84:91], v[201:208]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[76:79], v246 offset:8448
	ds_load_b128 v[80:83], v245 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[76:83], v[84:91], v[193:200]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[84:87], off, off offset:128
	scratch_load_b128 v[88:91], off, off offset:144
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[76:79], v244 offset:256
	ds_load_b128 v[80:83], v243 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[76:83], v[84:91], v[201:208]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[76:79], v244 offset:8448
	ds_load_b128 v[80:83], v243 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[76:83], v[84:91], v[193:200]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[84:87], off, off
	scratch_load_b128 v[88:91], off, off offset:16
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[76:79], v242 offset:256
	ds_load_b128 v[80:83], v254 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[201:208], v[76:83], v[84:91], v[201:208]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[76:79], v242 offset:8448
	ds_load_b128 v[80:83], v254 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[193:200], v[76:83], v[84:91], v[193:200]
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v76, s5, v201 :: v_dual_mul_f32 v77, s5, v202
	v_dual_mul_f32 v79, s5, v204 :: v_dual_mul_f32 v80, s5, v205
	v_dual_mul_f32 v81, s5, v206 :: v_dual_mul_f32 v78, s5, v203
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v83, s5, v208 :: v_dual_mul_f32 v88, s5, v197
	v_mul_f32_e32 v84, s5, v194
	v_dual_mul_f32 v86, s5, v195 :: v_dual_mul_f32 v87, s5, v196
	v_dual_mul_f32 v90, s5, v199 :: v_dual_mul_f32 v89, s5, v198
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v76, 0xff800000, v76, s1
	v_cndmask_b32_e64 v77, 0xff800000, v77, s1
	v_cndmask_b32_e64 v79, 0xff800000, v79, s1
	v_cndmask_b32_e64 v96, 0xff800000, v80, s1
	v_cndmask_b32_e64 v81, 0xff800000, v81, s1
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v82, s5, v207 :: v_dual_mul_f32 v85, s5, v193
	v_dual_mul_f32 v91, s5, v200 :: v_dual_max_f32 v80, v76, v77
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v78, 0xff800000, v78, s1
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v92, v79, v96, v81
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v84, 0xff800000, v84, s1
	v_cndmask_b32_e64 v86, 0xff800000, v86, s1
	v_cndmask_b32_e64 v87, 0xff800000, v87, s1
	v_cndmask_b32_e64 v88, 0xff800000, v88, s1
	v_cndmask_b32_e64 v89, 0xff800000, v89, s1
	v_cndmask_b32_e64 v90, 0xff800000, v90, s1
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v80, v80, v78, v92
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v91, 0xff800000, v91, s1
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v92, v84, v86, v87
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v82, 0xff800000, v82, s1
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v93, v88, v89, v90
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v83, 0xff800000, v83, s1
	v_cndmask_b32_e64 v85, 0xff800000, v85, s1
	v_mov_b32_e32 v100, v252
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v92, v92, v93, v91
	v_max3_f32 v93, v82, v83, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v80, v80, v93, v92
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v92, v80, s30, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v252, v100, v80, v92
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v84, v84, v252 :: v_dual_add_nc_u32 v201, 0, v75
	v_sub_f32_e32 v77, v77, v252
	v_sub_f32_e32 v85, v85, v252
	v_sub_f32_e32 v87, v87, v252
	v_sub_f32_e32 v86, v86, v252
	v_sub_f32_e32 v88, v88, v252
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v77, v77
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v89, v89, v252
	v_sub_f32_e32 v91, v91, v252
	v_sub_f32_e32 v90, v90, v252
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v88, v88
	v_exp_f32_e32 v86, v86
	v_exp_f32_e32 v89, v89
	v_exp_f32_e32 v87, v87
	v_exp_f32_e32 v85, v85
	v_exp_f32_e32 v90, v90
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v208, 0, v77, s1
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v91, v91
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v88, 0, v88, s1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v241.l, v208.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v76, v76, v252
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v208, v208
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v89, 0, v89, s1
	v_cndmask_b32_e64 v86, 0, v86, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v77, 1, v241
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v76, v76
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v87, 0, v87, s1
	v_cndmask_b32_e64 v90, 0, v90, s1
	v_cndmask_b32_e64 v91, 0, v91, s1
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v77, v208, v77, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v77.h, 0x7fff, v77.h, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v80, 0, v76, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v76.h, v241.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v76.l, v80.h
	v_cmp_o_f32_e64 s4, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v76, 1, v76
	v_add3_u32 v76, v80, v76, 0x7fff
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v80, v80, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v77.l, 0x7fff, v76.h, s4
	v_permlanex16_b32 v76, v77, s30, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v92, v76, v77, v248
	v_perm_b32 v93, v76, v77, v249
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v77, v79, v252
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v77, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v77, 0, v77, s1
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v241.l, v77.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v76, v78, v252
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v78.h, v241.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v77, v77
	v_and_b32_e32 v79, 1, v241
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v76, v76
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v79, v77, v79, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v76, 0, v76, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v78.l, v76.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v76, v76
	v_and_b32_e32 v78, 1, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v78, v76, v78, 0x7fff
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v76, v76, v77
.Ltmp15:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v78.l, 0x7fff, v78.h, s4
	v_cndmask_b16 v78.h, 0x7fff, v79.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v76, v80, v76
.Ltmp17:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v79, v78, s30, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_perm_b32 v94, v79, v78, v248
	v_perm_b32 v95, v79, v78, v249
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v79, v81, v252
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v81.h, v241.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v78, v96, v252
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v79, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v78, v78
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v79, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v78, 0, v78, s1
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v241.l, v79.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v79, v79
	v_mov_b16_e32 v81.l, v78.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s4, v78, v78
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v77, v78, v79 :: v_dual_and_b32 v96, 1, v241
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp19:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v81, 1, v81
	v_add3_u32 v96, v79, v96, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v81, v78, v81, 0x7fff
	v_cndmask_b16 v81.l, 0x7fff, v81.h, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v81.h, 0x7fff, v96.h, s3
	v_permlanex16_b32 v97, v81, s30, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_perm_b32 v96, v97, v81, v248
	v_perm_b32 v97, v97, v81, v249
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v81, v82, v252
	v_sub_f32_e32 v82, v83, v252
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v83.h, v241.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v82, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v82, 0, v82, s1
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v241.l, v82.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v82, v82
	v_and_b32_e32 v98, 1, v241
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v81, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v98, v82, v98, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v81, 0, v81, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v83.l, v81.h
	v_cmp_o_f32_e64 s4, v81, v81
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v78, v81, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v82, v88, v89 :: v_dual_and_b32 v83, 1, v83
	v_add_f32_e32 v77, v77, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v83, v81, v83, 0x7fff
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v81, v86, v87 :: v_dual_add_f32 v76, v76, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v83.l, 0x7fff, v83.h, s4
	v_cndmask_b16 v83.h, 0x7fff, v98.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v100
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v99, v83, s30, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v98, v99, v83, v248
	v_perm_b32 v99, v99, v83, v249
	v_xor_b32_e32 v83, 16, v75
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v202, 0, v83
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v83, v100, v252
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[193:196], v201 offset:16384
	ds_load_b128 v[197:200], v202 offset:16384
	v_xor_b32_e32 v100, 0x430, v75
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v83, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v203, 0, v100
	v_xor_b32_e32 v100, 0x420, v75
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v83, 0, v83, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v29, v29, v83 :: v_dual_add_nc_u32 v204, 0, v100
	v_mul_f32_e32 v26, v26, v83
	v_mul_f32_e32 v25, v25, v83
	v_mul_f32_e32 v27, v27, v83
	v_mul_f32_e32 v28, v28, v83
	v_mul_f32_e32 v30, v30, v83
	v_mul_f32_e32 v31, v31, v83
	v_mul_f32_e32 v32, v32, v83
	v_mul_f32_e32 v33, v33, v83
	v_mul_f32_e32 v34, v34, v83
	v_mul_f32_e32 v35, v35, v83
	v_mul_f32_e32 v36, v36, v83
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[193:200], v[92:99], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[197:200], v203 offset:16384
	ds_load_b128 v[193:196], v204 offset:16384
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v37, v37, v83
	v_mul_f32_e32 v38, v38, v83
	v_mul_f32_e32 v39, v39, v83
	v_mul_f32_e32 v40, v40, v83
	v_mul_f32_e32 v41, v41, v83
	v_mul_f32_e32 v42, v42, v83
	v_mul_f32_e32 v43, v43, v83
	v_mul_f32_e32 v44, v44, v83
	v_mul_f32_e32 v45, v45, v83
	v_mul_f32_e32 v46, v46, v83
	v_mul_f32_e32 v47, v47, v83
	v_mul_f32_e32 v48, v48, v83
	v_mul_f32_e32 v49, v49, v83
	v_mul_f32_e32 v50, v50, v83
	v_mul_f32_e32 v51, v51, v83
	v_mul_f32_e32 v52, v52, v83
	v_mul_f32_e32 v53, v53, v83
	v_mul_f32_e32 v54, v54, v83
	v_mul_f32_e32 v55, v55, v83
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[193:200], v[92:99], v[33:40]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[197:200], v202 offset:18432
	ds_load_b128 v[193:196], v201 offset:18432
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v56, v56, v83
	v_mul_f32_e32 v57, v57, v83
	v_mul_f32_e32 v59, v59, v83
	v_mul_f32_e32 v61, v61, v83
	v_mul_f32_e32 v58, v58, v83
	v_mul_f32_e32 v60, v60, v83
	v_mul_f32_e32 v62, v62, v83
	v_mul_f32_e32 v63, v63, v83
	v_mul_f32_e32 v64, v64, v83
	v_mul_f32_e32 v1, v1, v83
	v_mul_f32_e32 v2, v2, v83
	v_mul_f32_e32 v3, v3, v83
	v_mul_f32_e32 v4, v4, v83
	v_mul_f32_e32 v5, v5, v83
	v_mul_f32_e32 v6, v6, v83
	v_mul_f32_e32 v7, v7, v83
	v_mul_f32_e32 v8, v8, v83
	v_mul_f32_e32 v9, v9, v83
	v_mul_f32_e32 v10, v10, v83
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[193:200], v[92:99], v[41:48]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[193:196], v204 offset:18432
	ds_load_b128 v[197:200], v203 offset:18432
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v83
	v_mul_f32_e32 v12, v12, v83
	v_mul_f32_e32 v13, v13, v83
	v_mul_f32_e32 v14, v14, v83
	v_mul_f32_e32 v15, v15, v83
	v_mul_f32_e32 v16, v16, v83
	v_mul_f32_e32 v17, v17, v83
	v_mul_f32_e32 v18, v18, v83
	v_mul_f32_e32 v19, v19, v83
	v_mul_f32_e32 v20, v20, v83
	v_mul_f32_e32 v21, v21, v83
	v_mul_f32_e32 v22, v22, v83
	v_mul_f32_e32 v23, v23, v83
	v_mul_f32_e32 v24, v24, v83
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[193:200], v[92:99], v[49:56]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[193:196], v201 offset:20480
	ds_load_b128 v[197:200], v202 offset:20480
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[193:200], v[92:99], v[57:64]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[197:200], v203 offset:20480
	ds_load_b128 v[193:196], v204 offset:20480
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[193:200], v[92:99], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[197:200], v202 offset:22528
	ds_load_b128 v[193:196], v201 offset:22528
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[193:200], v[92:99], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[193:196], v204 offset:22528
	ds_load_b128 v[197:200], v203 offset:22528
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[193:200], v[92:99], v[17:24]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v92, v84
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v84, 0, v85, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v84, v84
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v85, 0, v92, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v92.h, v241.h
	v_mov_b16_e32 v92.l, v84.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v241.l, v85.h
	v_cmp_o_f32_e64 s3, v85, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v79, v84, v85 :: v_dual_and_b32 v92, 1, v92
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v93, 1, v241
	v_mov_b16_e64 v241.l, v87.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v92, v84, v92, 0x7fff
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v84, v90, v91
	v_add_f32_e32 v78, v79, v81
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v93, v85, v93, 0x7fff
	v_cndmask_b16 v92.l, 0x7fff, v92.h, s4
	v_cmp_o_f32_e64 s4, v86, v86
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v79, v82, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v92.h, 0x7fff, v93.h, s3
	v_cmp_o_f32_e64 s3, v87, v87
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v77, v78, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v93, v92, s30, 0xfedcba98 op_sel:[1,0]
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v76, v76, v77
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v193, v93, v92, v248
	v_perm_b32 v194, v93, v92, v249
	v_mov_b16_e64 v92.h, v241.h
	v_mov_b16_e32 v92.l, v86.h
	v_and_b32_e32 v93, 1, v241
	v_mov_b16_e64 v241.l, v89.h
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v78, v76, s30, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v77, v251 :: v_dual_and_b32 v92, 1, v92
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v93, v87, v93, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v251, v76, v78
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v92, v86, v92, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v251, v77, v83
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v92.l, 0x7fff, v92.h, s4
	v_cndmask_b16 v92.h, 0x7fff, v93.h, s3
	v_cmp_o_f32_e64 s3, v89, v89
	v_cmp_o_f32_e64 s4, v88, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v93, v92, s30, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v195, v93, v92, v248
	v_perm_b32 v196, v93, v92, v249
	v_mov_b16_e64 v92.h, v241.h
	v_mov_b16_e32 v92.l, v88.h
	v_and_b32_e32 v93, 1, v241
	v_mov_b16_e64 v241.l, v91.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v92, 1, v92
	v_add3_u32 v93, v89, v93, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v92, v88, v92, 0x7fff
	v_cndmask_b16 v92.l, 0x7fff, v92.h, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v92.h, 0x7fff, v93.h, s3
	v_cmp_o_f32_e64 s3, v91, v91
	v_cmp_o_f32_e64 s4, v90, v90
	v_permlanex16_b32 v93, v92, s30, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_perm_b32 v197, v93, v92, v248
	v_perm_b32 v198, v93, v92, v249
	v_mov_b16_e64 v92.h, v241.h
	v_mov_b16_e32 v92.l, v90.h
	v_and_b32_e32 v93, 1, v241
	v_and_b32_e32 v92, 1, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v93, v91, v93, 0x7fff
	v_add3_u32 v92, v90, v92, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v92.l, 0x7fff, v92.h, s4
	v_cndmask_b16 v92.h, 0x7fff, v93.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v93, v92, s30, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v199, v93, v92, v248
	v_perm_b32 v200, v93, v92, v249
	v_xor_b32_e32 v92, 48, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v205, 0, v92
	v_xor_b32_e32 v92, 32, v75
	v_add_nc_u32_e32 v206, 0, v92
	ds_load_b128 v[96:99], v205 offset:16384
	ds_load_b128 v[92:95], v206 offset:16384
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[92:99], v[193:200], v[25:32]
	v_xor_b32_e32 v92, 0x410, v75
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v207, 0, v92
	ds_load_b128 v[92:95], v201 offset:17408
	ds_load_b128 v[96:99], v207 offset:16384
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[92:99], v[193:200], v[33:40]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[92:95], v206 offset:18432
	ds_load_b128 v[96:99], v205 offset:18432
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[92:99], v[193:200], v[41:48]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[92:95], v201 offset:19456
	ds_load_b128 v[96:99], v207 offset:18432
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[92:99], v[193:200], v[49:56]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[96:99], v205 offset:20480
	ds_load_b128 v[92:95], v206 offset:20480
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[92:99], v[193:200], v[57:64]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[92:95], v201 offset:21504
	ds_load_b128 v[96:99], v207 offset:20480
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[92:99], v[193:200], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[92:95], v206 offset:22528
	ds_load_b128 v[96:99], v205 offset:22528
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[92:99], v[193:200], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[92:95], v201 offset:23552
	ds_load_b128 v[96:99], v207 offset:22528
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[92:99], v[193:200], v[17:24]
	.loc	1 889 30                        ; attention.py:889:30
	s_clause 0x2                            ; 20-byte Folded Reload
	scratch_load_b64 v[92:93], off, off offset:284
	scratch_load_b32 v94, off, off offset:300
	scratch_load_b64 v[95:96], off, off offset:292
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v92, s7, v92
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v94, s7, v94, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v95, s7, v95, 1
	v_lshlrev_b32_e32 v93, 1, v92
	v_add_lshl_u32 v92, v92, s29, 1
	v_cndmask_b32_e64 v94, 0x80000000, v94, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v96, 0x80000000, v95, s2
	v_cndmask_b32_e64 v93, 0x80000000, v93, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v92, 0x80000000, v92, s2
	s_clause 0x3
	buffer_load_b128 v[101:104], v94, s[20:23], 0 offen
	buffer_load_b128 v[105:108], v93, s[20:23], 0 offen
	buffer_load_b128 v[92:95], v92, s[20:23], 0 offen
	buffer_load_b128 v[97:100], v96, s[20:23], 0 offen
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v110.l, v101.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v109.l, v105.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v109.h, v92.l
	v_mov_b16_e32 v92.l, v105.h
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v110.h, v97.l
	v_mov_b16_e32 v97.l, v101.h
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v96, v92
	scratch_load_b32 v92, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v92, v[109:110], v[96:97] offset1:8
	scratch_load_b32 v92, off, off offset:312 ; 4-byte Folded Reload
	v_mov_b16_e32 v109.h, v93.l
	v_mov_b16_e32 v93.l, v106.h
	v_mov_b16_e32 v110.l, v102.l
	v_mov_b16_e32 v110.h, v98.l
	v_mov_b16_e32 v98.l, v102.h
	v_mov_b16_e32 v109.l, v106.l
	v_mov_b32_e32 v97, v93
	v_mov_b16_e32 v93.l, v103.l
	v_mov_b16_e32 v93.h, v99.l
	v_mov_b16_e32 v99.l, v103.h
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v92, v[109:110], v[97:98] offset1:8
	v_mov_b16_e32 v92.h, v94.l
	v_mov_b16_e32 v94.l, v107.h
	v_mov_b16_e32 v92.l, v107.l
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v98, v94
	scratch_load_b32 v94, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v94, v[92:93], v[98:99] offset1:8
	v_mov_b16_e32 v93.h, v100.l
	v_mov_b16_e32 v100.l, v104.h
	v_mov_b16_e32 v93.l, v104.l
	v_mov_b16_e32 v92.l, v108.l
	v_mov_b16_e32 v92.h, v95.l
	v_mov_b16_e32 v95.l, v108.h
	v_mov_b32_e32 v96, v100
	ds_store_2addr_b64 v0, v[92:93], v[95:96] offset1:8
	.loc	1 854 32                        ; attention.py:854:32
	ds_store_b128 v250, v[221:224]
	ds_store_b128 v250, v[237:240] offset:8192
	ds_store_b128 v247, v[217:220]
	ds_store_b128 v247, v[233:236] offset:8192
	ds_store_b128 v111, v[213:216]
	ds_store_b128 v111, v[229:232] offset:8192
	ds_store_b128 v253, v[209:212]
	ds_store_b128 v253, v[225:228] offset:8192
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[193:196], v255 offset:8192
	ds_load_b128 v[197:200], v71 offset:8192
	ds_load_b128 v[212:215], v71
	ds_load_b128 v[208:211], v255
	ds_load_b128 v[74:77], v255 offset:256
	ds_load_b128 v[78:81], v71 offset:256
	s_mov_b32 s8, 0
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v252
	.loc	1 859 30                        ; attention.py:859:30
	s_mov_b32 s15, s8
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v97, s15 :: v_dual_mov_b32 v96, s14
	v_dual_mov_b32 v95, s13 :: v_dual_mov_b32 v94, s12
	v_dual_mov_b32 v93, s11 :: v_dual_mov_b32 v92, s10
	v_dual_mov_b32 v91, s9 :: v_dual_mov_b32 v90, s8
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[74:77], off offset:192 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[78:81], off offset:208 ; 16-byte Folded Spill
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[74:77], v255 offset:8448
	ds_load_b128 v[78:81], v71 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	v_wmma_f32_16x16x16_bf16 v[216:223], v[208:215], v[185:192], v[90:97]
	v_wmma_f32_16x16x16_bf16 v[90:97], v[193:200], v[185:192], v[90:97]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[189:192], v72
	ds_load_b128 v[185:188], v73
	ds_load_b128 v[193:196], v73 offset:256
	ds_load_b128 v[197:200], v72 offset:256
	s_mov_b32 s8, 0x76543210
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	s_waitcnt lgkmcnt(5)
	scratch_store_b128 off, v[74:77], off offset:224 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(4)
	scratch_store_b128 off, v[78:81], off offset:240 ; 16-byte Folded Spill
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[185:192], v[177:184], v[216:223]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[189:192], v72 offset:8192
	ds_load_b128 v[185:188], v73 offset:8192
	ds_load_b128 v[208:211], v73 offset:8448
	ds_load_b128 v[212:215], v72 offset:8448
	v_dual_mov_b32 v73, v128 :: v_dual_mov_b32 v74, v129
	v_dual_mov_b32 v75, v130 :: v_dual_mov_b32 v76, v131
	v_dual_mov_b32 v77, v132 :: v_dual_mov_b32 v78, v133
	v_dual_mov_b32 v79, v134 :: v_dual_mov_b32 v80, v135
	v_mov_b32_e32 v129, v127
	v_dual_mov_b32 v128, v126 :: v_dual_mov_b32 v127, v125
	v_mov_b32_e32 v126, v124
	v_mov_b32_e32 v125, v123
	v_mov_b32_e32 v124, v122
	v_mov_b32_e32 v123, v121
	v_dual_mov_b32 v122, v120 :: v_dual_mov_b32 v121, v119
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[90:97], v[185:192], v[177:184], v[90:97]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[181:184], v69
	ds_load_b128 v[177:180], v70
	ds_load_b128 v[185:188], v70 offset:256
	ds_load_b128 v[189:192], v69 offset:256
	v_dual_mov_b32 v120, v118 :: v_dual_mov_b32 v119, v117
	v_mov_b32_e32 v118, v116
	v_mov_b32_e32 v117, v115
	v_mov_b32_e32 v116, v114
	v_mov_b32_e32 v115, v113
	v_mov_b32_e32 v114, v112
	ds_load_b128 v[110:113], v243 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[177:184], v[169:176], v[216:223]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[181:184], v69 offset:8192
	ds_load_b128 v[177:180], v70 offset:8192
	ds_load_b128 v[224:227], v70 offset:8448
	ds_load_b128 v[228:231], v69 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[90:97], v[177:184], v[169:176], v[90:97]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[173:176], v67
	ds_load_b128 v[169:172], v68
	ds_load_b128 v[177:180], v68 offset:256
	ds_load_b128 v[181:184], v67 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[169:176], v[161:168], v[216:223]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[173:176], v67 offset:8192
	ds_load_b128 v[169:172], v68 offset:8192
	ds_load_b128 v[232:235], v68 offset:8448
	ds_load_b128 v[236:239], v67 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[90:97], v[169:176], v[161:168], v[90:97]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[165:168], v65
	ds_load_b128 v[161:164], v66
	ds_load_b128 v[169:172], v66 offset:256
	ds_load_b128 v[173:176], v65 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[161:168], v[153:160], v[216:223]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[165:168], v65 offset:8192
	ds_load_b128 v[161:164], v66 offset:8192
	ds_load_b128 v[81:84], v66 offset:8448
	ds_load_b128 v[85:88], v65 offset:8448
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[65:68], off, off offset:160
	scratch_load_b128 v[69:72], off, off offset:176
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[90:97], v[161:168], v[153:160], v[90:97]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[157:160], v245
	ds_load_b128 v[153:156], v246
	ds_load_b128 v[161:164], v246 offset:256
	ds_load_b128 v[165:168], v245 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[153:160], v[145:152], v[216:223]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[157:160], v245 offset:8192
	ds_load_b128 v[153:156], v246 offset:8192
	ds_load_b128 v[98:101], v246 offset:8448
	ds_load_b128 v[102:105], v245 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[90:97], v[153:160], v[145:152], v[90:97]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[149:152], v243
	ds_load_b128 v[145:148], v244
	ds_load_b128 v[153:156], v244 offset:256
	ds_load_b128 v[157:160], v243 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[145:152], v[137:144], v[216:223]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[149:152], v243 offset:8192
	ds_load_b128 v[145:148], v244 offset:8192
	ds_load_b128 v[106:109], v244 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[90:97], v[145:152], v[137:144], v[90:97]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[141:144], v254
	ds_load_b128 v[137:140], v242
	ds_load_b128 v[145:148], v242 offset:256
	ds_load_b128 v[149:152], v254 offset:256
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[137:144], v[65:72], v[216:223]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[141:144], v254 offset:8192
	ds_load_b128 v[137:140], v242 offset:8192
	ds_load_b128 v[240:243], v242 offset:8448
	ds_load_b128 v[244:247], v254 offset:8448
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[90:97], v[137:144], v[65:72], v[90:97]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[65:68], off, off offset:192
	scratch_load_b128 v[69:72], off, off offset:208
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[65:72], v[114:121], v[216:223]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[65:68], off, off offset:224
	scratch_load_b128 v[69:72], off, off offset:240
	v_wmma_f32_16x16x16_bf16 v[216:223], v[193:200], v[122:129], v[216:223]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[185:192], v[73:80], v[216:223]
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[90:97], v[65:72], v[114:121], v[90:97]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[65:68], off, off offset:32
	scratch_load_b128 v[69:72], off, off offset:48
	v_wmma_f32_16x16x16_bf16 v[90:97], v[208:215], v[122:129], v[90:97]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[90:97], v[224:231], v[73:80], v[90:97]
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[177:184], v[65:72], v[216:223]
	v_wmma_f32_16x16x16_bf16 v[90:97], v[232:239], v[65:72], v[90:97]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[65:68], off, off offset:64
	scratch_load_b128 v[69:72], off, off offset:80
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[169:176], v[65:72], v[216:223]
	v_wmma_f32_16x16x16_bf16 v[90:97], v[81:88], v[65:72], v[90:97]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[65:68], off, off offset:96
	scratch_load_b128 v[69:72], off, off offset:112
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[161:168], v[65:72], v[216:223]
	v_wmma_f32_16x16x16_bf16 v[90:97], v[98:105], v[65:72], v[90:97]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[65:68], off, off offset:128
	scratch_load_b128 v[69:72], off, off offset:144
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[153:160], v[65:72], v[216:223]
	v_wmma_f32_16x16x16_bf16 v[90:97], v[106:113], v[65:72], v[90:97]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[65:68], off, off
	scratch_load_b128 v[69:72], off, off offset:16
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[145:152], v[65:72], v[216:223]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[90:97], v[240:247], v[65:72], v[90:97]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v0, s5, v216 :: v_dual_mul_f32 v65, s5, v217
	v_dual_mul_f32 v66, s5, v218 :: v_dual_mul_f32 v67, s5, v219
	v_dual_mul_f32 v68, s5, v220 :: v_dual_mul_f32 v69, s5, v221
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v72, s5, v90 :: v_dual_mul_f32 v73, s5, v91
	v_dual_mul_f32 v74, s5, v92 :: v_dual_mul_f32 v75, s5, v93
	v_dual_mul_f32 v76, s5, v94 :: v_dual_mul_f32 v77, s5, v95
	v_dual_mul_f32 v78, s5, v96 :: v_dual_mul_f32 v79, s5, v97
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v90, 0xff800000, v0, s1
	v_cndmask_b32_e64 v91, 0xff800000, v65, s1
	v_cndmask_b32_e64 v93, 0xff800000, v67, s1
	v_cndmask_b32_e64 v95, 0xff800000, v68, s1
	v_cndmask_b32_e64 v96, 0xff800000, v69, s1
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v70, s5, v222 :: v_dual_mul_f32 v71, s5, v223
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v94, 0xff800000, v66, s1
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v0, v90, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v65, v93, v95, v96
.Ltmp39:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v88, 0xff800000, v73, s1
	v_cndmask_b32_e64 v87, 0xff800000, v74, s1
	v_cndmask_b32_e64 v86, 0xff800000, v75, s1
	v_cndmask_b32_e64 v85, 0xff800000, v76, s1
	v_cndmask_b32_e64 v84, 0xff800000, v77, s1
	v_cndmask_b32_e64 v81, 0xff800000, v78, s1
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v0, v0, v94, v65
.Ltmp41:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v82, 0xff800000, v79, s1
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v88, v87, v86
.Ltmp43:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v97, 0xff800000, v70, s1
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v85, v84, v81
.Ltmp45:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v98, 0xff800000, v71, s1
	v_cndmask_b32_e64 v89, 0xff800000, v72, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v92.h, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v65, v66, v82
	v_max3_f32 v66, v97, v98, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v0, v0, v66, v65
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v65, v0, s8, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v83, v252, v0, v65
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v0, v252, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v0, v0
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v0, 0, v0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v65, v33, v0
	v_mul_f32_e32 v33, v49, v0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v90, v83
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v73, v25, v0
	v_mul_f32_e32 v66, v34, v0
	v_mul_f32_e32 v34, v50, v0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v50, v91, v83
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v74, v26, v0
	v_mul_f32_e32 v75, v27, v0
	v_mul_f32_e32 v76, v28, v0
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v50, v50
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v57, v0
	v_mul_f32_e32 v26, v58, v0
	v_mul_f32_e32 v77, v29, v0
	v_mul_f32_e32 v27, v59, v0
	v_mul_f32_e32 v28, v60, v0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v90, 0, v49, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v49.h, v92.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v79, v31, v0
	v_mul_f32_e32 v80, v32, v0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v91, 0, v50, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v49.l, v90.h
	v_cmp_o_f32_e64 s2, v90, v90
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v29, v61, v0
	v_mul_f32_e32 v67, v35, v0
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v92.l, v91.h
	v_and_b32_e32 v49, 1, v49
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v68, v36, v0
	v_mul_f32_e32 v69, v37, v0
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v50, 1, v92
	v_add3_u32 v49, v90, v49, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v70, v38, v0
	v_mul_f32_e32 v71, v39, v0
	v_mul_f32_e32 v72, v40, v0
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v50, v91, v50, 0x7fff
	v_cndmask_b16 v50.l, 0x7fff, v49.h, s2
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v35, v51, v0
	v_mul_f32_e32 v36, v52, v0
	v_mul_f32_e32 v37, v53, v0
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v50.h, 0x7fff, v50.h, vcc_lo
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v38, v54, v0
	v_mul_f32_e32 v39, v55, v0
	v_mul_f32_e32 v40, v56, v0
	v_mul_f32_e32 v31, v63, v0
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v49, v50, s8, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v32, v64, v0
	v_mul_f32_e32 v41, v41, v0
	v_mul_f32_e32 v42, v42, v0
	v_mul_f32_e32 v44, v44, v0
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v57, v49, v50, v248
	v_perm_b32 v58, v49, v50, v249
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v94, v83
	v_sub_f32_e32 v50, v93, v83
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v45, v45, v0
	v_mul_f32_e32 v46, v46, v0
	v_mul_f32_e32 v48, v48, v0
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v50, v50
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v0
	v_mul_f32_e32 v10, v10, v0
	v_mul_f32_e32 v11, v11, v0
	v_mul_f32_e32 v12, v12, v0
	v_mul_f32_e32 v13, v13, v0
	v_mul_f32_e32 v14, v14, v0
	v_mul_f32_e32 v15, v15, v0
	v_mul_f32_e32 v16, v16, v0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v93, 0, v49, s1
	v_cndmask_b32_e64 v94, 0, v50, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v49.h, v92.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v43, v43, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v49.l, v93.h
	v_mov_b16_e32 v92.l, v94.h
	v_cmp_o_f32_e32 vcc_lo, v94, v94
	v_cmp_o_f32_e64 s2, v93, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v49, 1, v49
	v_and_b32_e32 v50, 1, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v49, v93, v49, 0x7fff
	v_add3_u32 v50, v94, v50, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v50.l, 0x7fff, v49.h, s2
	v_cndmask_b16 v50.h, 0x7fff, v50.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v49, v50, s8, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v59, v49, v50, v248
	v_perm_b32 v60, v49, v50, v249
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v95, v83
	v_sub_f32_e32 v50, v96, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v50, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v95, 0, v49, s1
	v_cndmask_b32_e64 v96, 0, v50, s1
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v49.h, v92.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v49.l, v95.h
	v_mov_b16_e32 v92.l, v96.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v78, v30, v0
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e32 vcc_lo, v96, v96
	v_cmp_o_f32_e64 s2, v95, v95
	v_and_b32_e32 v49, 1, v49
	v_and_b32_e32 v50, 1, v92
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v30, v62, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v49, v95, v49, 0x7fff
	v_add3_u32 v50, v96, v50, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v50.l, 0x7fff, v49.h, s2
	v_cndmask_b16 v50.h, 0x7fff, v50.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v49, v50, s8, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v61, v49, v50, v248
	v_perm_b32 v62, v49, v50, v249
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v97, v83
	v_sub_f32_e32 v50, v98, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v50, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v97, 0, v49, s1
	v_cndmask_b32_e64 v98, 0, v50, s1
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v49.h, v92.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v47, v47, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v49.l, v97.h
	v_mov_b16_e32 v92.l, v98.h
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	v_cmp_o_f32_e64 s2, v97, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v49, 1, v49
	v_and_b32_e32 v50, 1, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v49, v97, v49, 0x7fff
	v_add3_u32 v50, v98, v50, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v50.l, 0x7fff, v49.h, s2
	v_cndmask_b16 v50.h, 0x7fff, v50.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v49, v50, s8, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v63, v49, v50, v248
	v_perm_b32 v64, v49, v50, v249
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[49:52], v201 offset:16384
	ds_load_b128 v[53:56], v202 offset:16384
	ds_load_b128 v[103:106], v202 offset:18432
	ds_load_b128 v[107:110], v201 offset:17408
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[49:56], v[57:64], v[73:80]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v49, v1, v0
	v_mul_f32_e32 v50, v2, v0
	v_mul_f32_e32 v51, v3, v0
	v_mul_f32_e32 v52, v4, v0
	v_mul_f32_e32 v53, v5, v0
	v_mul_f32_e32 v54, v6, v0
	v_mul_f32_e32 v55, v7, v0
	v_mul_f32_e32 v56, v8, v0
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[5:8], v203 offset:16384
	ds_load_b128 v[1:4], v204 offset:16384
	ds_load_b128 v[111:114], v204 offset:18432
	ds_load_b128 v[115:118], v203 offset:18432
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[1:8], v[57:64], v[65:72]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v17, v0
	v_mul_f32_e32 v2, v18, v0
	v_mul_f32_e32 v3, v19, v0
	v_mul_f32_e32 v4, v20, v0
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[99:102], v201 offset:18432
	ds_load_b128 v[17:20], v201 offset:19456
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[111:118], v[57:64], v[33:40]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v21, v0
	v_dual_mul_f32 v6, v22, v0 :: v_dual_sub_f32 v21, v89, v83
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v22, v88, v83 :: v_dual_mul_f32 v7, v23, v0
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v24, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v21, v21
	v_exp_f32_e32 v22, v22
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[99:106], v[57:64], v[41:48]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[99:102], v201 offset:20480
	ds_load_b128 v[103:106], v202 offset:20480
	ds_load_b128 v[115:118], v202 offset:22528
	ds_load_b128 v[119:122], v201 offset:21504
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v89, 0, v21, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v21.h, v92.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v21.l, v89.h
	v_cmp_o_f32_e64 s2, v89, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v21, v89, v21, 0x7fff
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[99:106], v[57:64], v[25:32]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[103:106], v203 offset:20480
	ds_load_b128 v[99:102], v204 offset:20480
	ds_load_b128 v[123:126], v204 offset:22528
	ds_load_b128 v[127:130], v203 offset:22528
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[99:106], v[57:64], v[49:56]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[111:114], v201 offset:22528
	ds_load_b128 v[99:102], v201 offset:23552
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[123:130], v[57:64], v[1:8]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[111:118], v[57:64], v[9:16]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v115, 0, v22, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v92.l, v115.h
	v_cmp_o_f32_e32 vcc_lo, v115, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v22, 1, v92
	v_add3_u32 v22, v115, v22, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v21.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	v_permlanex16_b32 v21, v22, s8, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v57, v21, v22, v248
	v_perm_b32 v58, v21, v22, v249
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v21, v87, v83
	v_sub_f32_e32 v22, v86, v83
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v22, v22
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v116, 0, v21, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v117, 0, v22, s1
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v21.h, v92.h
	v_mov_b16_e32 v21.l, v116.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v92.l, v117.h
	v_cmp_o_f32_e32 vcc_lo, v117, v117
	v_cmp_o_f32_e64 s2, v116, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v21, 1, v21
	v_and_b32_e32 v22, 1, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v21, v116, v21, 0x7fff
	v_add3_u32 v22, v117, v22, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v22.l, 0x7fff, v21.h, s2
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v21, v22, s8, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v59, v21, v22, v248
	v_perm_b32 v60, v21, v22, v249
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v21, v85, v83
	v_sub_f32_e32 v22, v84, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v21, v21
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v118, 0, v21, s1
	v_cndmask_b32_e64 v131, 0, v22, s1
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v21.h, v92.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v21.l, v118.h
	v_mov_b16_e64 v92.l, v131.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v131, v131
	v_cmp_o_f32_e64 s2, v118, v118
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v22, 1, v92
	v_add3_u32 v21, v118, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v22, v131, v22, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v21.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	v_permlanex16_b32 v21, v22, s8, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v61, v21, v22, v248
	v_perm_b32 v62, v21, v22, v249
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v21, v81, v83
	v_sub_f32_e32 v22, v82, v83
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[85:88], v205 offset:16384
	ds_load_b128 v[81:84], v206 offset:16384
	ds_load_b128 v[123:126], v206 offset:18432
	ds_load_b128 v[127:130], v205 offset:18432
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v21, v21
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v132, 0, v21, s1
	v_cndmask_b32_e64 v133, 0, v22, s1
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v21.h, v92.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v21.l, v132.h
	v_mov_b16_e64 v92.l, v133.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v133, v133
	v_cmp_o_f32_e64 s2, v132, v132
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v22, 1, v92
	v_add3_u32 v21, v132, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v22, v133, v22, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v21.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	v_permlanex16_b32 v21, v22, s8, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v63, v21, v22, v248
	v_perm_b32 v64, v21, v22, v249
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[111:114], v207 offset:16384
	ds_load_b128 v[21:24], v207 offset:18432
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[81:88], v[57:64], v[73:80]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[123:130], v[57:64], v[41:48]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[123:126], v207 offset:20480
	ds_load_b128 v[103:106], v207 offset:22528
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[107:114], v[57:64], v[65:72]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[17:24], v[57:64], v[33:40]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[21:24], v205 offset:20480
	ds_load_b128 v[17:20], v206 offset:20480
	ds_load_b128 v[81:84], v206 offset:22528
	ds_load_b128 v[85:88], v205 offset:22528
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[119:126], v[57:64], v[49:56]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[99:106], v[57:64], v[1:8]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[17:24], v[57:64], v[25:32]
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v17, v90, v91 :: v_dual_add_f32 v18, v93, v94
	v_dual_add_f32 v19, v95, v96 :: v_dual_add_f32 v20, v97, v98
	v_dual_add_f32 v21, v89, v115 :: v_dual_add_f32 v22, v116, v117
	v_dual_add_f32 v23, v118, v131 :: v_dual_add_f32 v24, v132, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v17, v17, v18 :: v_dual_add_f32 v18, v19, v20
	v_add_f32_e32 v19, v21, v22
.Ltmp50:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[57:64], v[9:16]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v20, v23, v24 :: v_dual_add_f32 v17, v17, v18
	v_add_f32_e32 v18, v19, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v17, v17, v18
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v18, v17, s8, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v64, v17, v18
.Ltmp54:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v64, v251, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v0, null, v64, v64, v73
	v_rcp_f32_e32 v17, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v0, v17, 1.0
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v73, v64, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v19, v18, v17
	v_fma_f32 v20, -v0, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v20, v17
	v_fma_f32 v0, -v0, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v0, v0, v17, v19
	v_div_scale_f32 v17, null, v64, v64, v74
	v_div_fixup_f32 v82, v0, v64, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v18, v17
	v_fma_f32 v19, -v17, v18, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v19, v18
	v_div_scale_f32 v19, vcc_lo, v74, v64, v74
	v_mul_f32_e32 v20, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v17, v20, v19
	v_fmac_f32_e32 v20, v21, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v20, v19
	v_div_fmas_f32 v17, v17, v18, v20
	v_div_scale_f32 v18, null, v64, v64, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v81, v17, v64, v74
	v_rcp_f32_e32 v19, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v18, v19, 1.0
	v_fmac_f32_e32 v19, v20, v19
	v_div_scale_f32 v20, vcc_lo, v75, v64, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v21, v20, v19
	v_fma_f32 v22, -v18, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v19
	v_fma_f32 v18, -v18, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v18, v18, v19, v21
	v_div_scale_f32 v19, null, v64, v64, v76
	v_rcp_f32_e32 v20, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v19, v20, 1.0
	v_fmac_f32_e32 v20, v21, v20
	v_div_scale_f32 v21, vcc_lo, v76, v64, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v22, v21, v20
	v_fma_f32 v23, -v19, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v20
	v_fma_f32 v19, -v19, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v19, v20, v22
	v_div_scale_f32 v20, null, v64, v64, v77
	v_div_fixup_f32 v0, v19, v64, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v22, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v77, v64, v77
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v20, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v20, v23, v22
	v_div_fmas_f32 v20, v20, v21, v23
	v_div_scale_f32 v21, null, v64, v64, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v74, v20, v64, v77
	v_rcp_f32_e32 v22, v21
	v_div_scale_f32 v20, null, v64, v64, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v21, v22, 1.0
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v78, v64, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v24, v23, v22
	v_fma_f32 v57, -v21, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v57, v22
	v_fma_f32 v21, -v21, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v21, v21, v22, v24
	v_div_scale_f32 v22, null, v64, v64, v79
	v_div_fixup_f32 v73, v21, v64, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v23, v22
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v24, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v79, v64, v79
	v_mul_f32_e32 v57, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v58, -v22, v57, v24
	v_fmac_f32_e32 v57, v58, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v57, v24
	v_div_fmas_f32 v22, v22, v23, v57
	v_div_scale_f32 v23, null, v64, v64, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v19, v22, v64, v79
	v_rcp_f32_e32 v24, v23
	v_fma_f32 v22, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_fma_f32 v57, -v23, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v57, v24
	v_div_scale_f32 v57, vcc_lo, v80, v64, v80
	v_mul_f32_e32 v58, v57, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v23, v58, v57
	v_fmac_f32_e32 v58, v59, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v23, v58, v57
	v_div_fmas_f32 v23, v23, v24, v58
	v_div_scale_f32 v22, vcc_lo, v65, v64, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v17, v23, v64, v80
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v20, v23, v22
	v_fmac_f32_e32 v23, v24, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v20, v23, v22
	v_div_fmas_f32 v20, v20, v21, v23
	v_div_scale_f32 v21, null, v64, v64, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v22, v21
	v_fma_f32 v23, -v21, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v66, v64, v66
	v_mul_f32_e32 v24, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v21, v24, v23
	v_fmac_f32_e32 v24, v57, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v21, v24, v23
	v_div_fmas_f32 v21, v21, v22, v24
	v_div_scale_f32 v22, null, v64, v64, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v24, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v67, v64, v67
	v_mul_f32_e32 v57, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v58, -v22, v57, v24
	v_fmac_f32_e32 v57, v58, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v57, v24
	v_div_fmas_f32 v22, v22, v23, v57
	v_div_scale_f32 v23, null, v64, v64, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v23
	v_fma_f32 v57, -v23, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v57, v24
	v_div_scale_f32 v57, vcc_lo, v68, v64, v68
	v_mul_f32_e32 v58, v57, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v23, v58, v57
	v_fmac_f32_e32 v58, v59, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v23, v58, v57
	v_div_fmas_f32 v23, v23, v24, v58
	v_div_scale_f32 v24, null, v64, v64, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v57, v24
	v_fma_f32 v58, -v24, v57, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v57, v58, v57
	v_div_scale_f32 v58, vcc_lo, v69, v64, v69
	v_mul_f32_e32 v59, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v24, v59, v58
	v_fmac_f32_e32 v59, v60, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v24, v59, v58
	v_div_fmas_f32 v60, v24, v57, v59
	v_div_scale_f32 v24, null, v64, v64, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v57, v24
	v_fma_f32 v58, -v24, v57, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v57, v58, v57
	v_div_scale_f32 v58, vcc_lo, v70, v64, v70
	v_mul_f32_e32 v59, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v24, v59, v58
	v_fmac_f32_e32 v59, v61, v57
	v_div_fixup_f32 v18, v18, v64, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v24, v59, v58
	v_div_fmas_f32 v61, v24, v57, v59
	v_div_scale_f32 v24, null, v64, v64, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v57, v24
	v_fma_f32 v58, -v24, v57, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v57, v58, v57
	v_div_scale_f32 v58, vcc_lo, v71, v64, v71
	v_mul_f32_e32 v59, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v24, v59, v58
	v_fmac_f32_e32 v59, v62, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v24, v59, v58
	v_div_fmas_f32 v62, v24, v57, v59
	v_div_scale_f32 v24, null, v64, v64, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v57, v24
	v_fma_f32 v58, -v24, v57, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v57, v58, v57
	v_div_scale_f32 v58, vcc_lo, v72, v64, v72
	v_mul_f32_e32 v59, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v24, v59, v58
	v_fmac_f32_e32 v59, v63, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v24, -v24, v59, v58
	v_div_fixup_f32 v58, v21, v64, v66
	v_div_fixup_f32 v21, v62, v64, v71
	v_div_fmas_f32 v63, v24, v57, v59
	v_div_fixup_f32 v24, v23, v64, v68
	v_div_fixup_f32 v23, v60, v64, v69
	v_div_scale_f32 v60, null, v64, v64, v41
	v_div_fixup_f32 v57, v22, v64, v67
	v_div_fixup_f32 v22, v61, v64, v70
	v_div_fixup_f32 v59, v20, v64, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v61, v60
	v_div_fixup_f32 v20, v63, v64, v72
	v_fma_f32 v62, -v60, v61, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v61, v62, v61
	v_div_scale_f32 v62, vcc_lo, v41, v64, v41
	v_mul_f32_e32 v63, v62, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v60, v63, v62
	v_fmac_f32_e32 v63, v65, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v60, v63, v62
	v_div_fmas_f32 v60, v60, v61, v63
	v_div_scale_f32 v61, null, v64, v64, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v62, v61
	v_fma_f32 v63, -v61, v62, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, v63, v62
	v_div_scale_f32 v63, vcc_lo, v42, v64, v42
	v_mul_f32_e32 v65, v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v61, v65, v63
	v_fmac_f32_e32 v65, v66, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v61, v65, v63
	v_div_fmas_f32 v61, v61, v62, v65
	v_div_scale_f32 v62, null, v64, v64, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v63, v62
	v_fma_f32 v65, -v62, v63, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v65, v63
	v_div_scale_f32 v65, vcc_lo, v43, v64, v43
	v_mul_f32_e32 v66, v65, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v62, v66, v65
	v_fmac_f32_e32 v66, v67, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v62, v66, v65
	v_div_fmas_f32 v65, v62, v63, v66
	v_div_scale_f32 v62, null, v64, v64, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v63, v62
	v_fma_f32 v66, -v62, v63, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v66, v63
	v_div_scale_f32 v66, vcc_lo, v44, v64, v44
	v_mul_f32_e32 v67, v66, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v62, v67, v66
	v_fmac_f32_e32 v67, v68, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v62, v67, v66
	v_div_fmas_f32 v66, v62, v63, v67
	v_div_scale_f32 v62, null, v64, v64, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v63, v62
	v_fma_f32 v67, -v62, v63, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v67, v63
	v_div_scale_f32 v67, vcc_lo, v45, v64, v45
	v_mul_f32_e32 v68, v67, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v62, v68, v67
	v_fmac_f32_e32 v68, v69, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v62, v68, v67
	v_div_fmas_f32 v67, v62, v63, v68
	v_div_scale_f32 v62, null, v64, v64, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v63, v62
	v_fma_f32 v68, -v62, v63, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v68, v63
	v_div_scale_f32 v68, vcc_lo, v46, v64, v46
	v_mul_f32_e32 v69, v68, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v62, v69, v68
	v_fmac_f32_e32 v69, v70, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v62, v69, v68
	v_div_fmas_f32 v68, v62, v63, v69
	v_div_scale_f32 v62, null, v64, v64, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v63, v62
	v_fma_f32 v69, -v62, v63, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v69, v63
	v_div_scale_f32 v69, vcc_lo, v47, v64, v47
	v_mul_f32_e32 v70, v69, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v62, v70, v69
	v_fmac_f32_e32 v70, v71, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v62, v70, v69
	v_div_fmas_f32 v69, v62, v63, v70
	v_div_scale_f32 v62, null, v64, v64, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v63, v62
	v_fma_f32 v70, -v62, v63, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v70, v63
	v_div_scale_f32 v70, vcc_lo, v48, v64, v48
	v_mul_f32_e32 v71, v70, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v62, v71, v70
	v_fmac_f32_e32 v71, v72, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v62, v71, v70
	v_div_fmas_f32 v70, v62, v63, v71
	v_div_fixup_f32 v63, v60, v64, v41
	v_div_fixup_f32 v60, v66, v64, v44
	v_div_fixup_f32 v44, v67, v64, v45
	v_div_scale_f32 v45, null, v64, v64, v33
	v_div_fixup_f32 v62, v61, v64, v42
	v_div_fixup_f32 v42, v68, v64, v46
	v_div_fixup_f32 v61, v65, v64, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v46, v45
	v_div_fixup_f32 v43, v69, v64, v47
	v_div_fixup_f32 v41, v70, v64, v48
	v_fma_f32 v47, -v45, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, vcc_lo, v33, v64, v33
	v_mul_f32_e32 v48, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v45, v48, v47
	v_fmac_f32_e32 v48, v65, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v45, v48, v47
	v_div_fmas_f32 v45, v45, v46, v48
	v_div_scale_f32 v46, null, v64, v64, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v47, v46
	v_fma_f32 v48, -v46, v47, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v34, v64, v34
	v_mul_f32_e32 v65, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v46, v65, v48
	v_fmac_f32_e32 v65, v66, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v46, v65, v48
	v_div_fmas_f32 v46, v46, v47, v65
	v_div_scale_f32 v47, null, v64, v64, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v48, v47
	v_fma_f32 v65, -v47, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v65, v48
	v_div_scale_f32 v65, vcc_lo, v35, v64, v35
	v_mul_f32_e32 v66, v65, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v47, v66, v65
	v_fmac_f32_e32 v66, v67, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v47, v66, v65
	v_div_fmas_f32 v65, v47, v48, v66
	v_div_scale_f32 v47, null, v64, v64, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v48, v47
	v_fma_f32 v66, -v47, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v66, v48
	v_div_scale_f32 v66, vcc_lo, v36, v64, v36
	v_mul_f32_e32 v67, v66, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v47, v67, v66
	v_fmac_f32_e32 v67, v68, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v47, v67, v66
	v_div_fmas_f32 v66, v47, v48, v67
	v_div_scale_f32 v47, null, v64, v64, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v48, v47
	v_fma_f32 v67, -v47, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v67, v48
	v_div_scale_f32 v67, vcc_lo, v37, v64, v37
	v_mul_f32_e32 v68, v67, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v47, v68, v67
	v_fmac_f32_e32 v68, v69, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v47, v68, v67
	v_div_fmas_f32 v67, v47, v48, v68
	v_div_scale_f32 v47, null, v64, v64, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v48, v47
	v_fma_f32 v68, -v47, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v68, v48
	v_div_scale_f32 v68, vcc_lo, v38, v64, v38
	v_mul_f32_e32 v69, v68, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v47, v69, v68
	v_fmac_f32_e32 v69, v70, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v47, v69, v68
	v_div_fmas_f32 v68, v47, v48, v69
	v_div_scale_f32 v47, null, v64, v64, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v48, v47
	v_fma_f32 v69, -v47, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v69, v48
	v_div_scale_f32 v69, vcc_lo, v39, v64, v39
	v_mul_f32_e32 v70, v69, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v47, v70, v69
	v_fmac_f32_e32 v70, v71, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v47, v70, v69
	v_div_fmas_f32 v69, v47, v48, v70
	v_div_scale_f32 v47, null, v64, v64, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v48, v47
	v_fma_f32 v70, -v47, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v70, v48
	v_div_scale_f32 v70, vcc_lo, v40, v64, v40
	v_mul_f32_e32 v71, v70, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v47, v71, v70
	v_fmac_f32_e32 v71, v72, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v47, v71, v70
	v_div_fmas_f32 v70, v47, v48, v71
	v_div_fixup_f32 v48, v45, v64, v33
	v_div_fixup_f32 v45, v66, v64, v36
	v_div_fixup_f32 v36, v67, v64, v37
	v_div_scale_f32 v37, null, v64, v64, v25
	v_div_fixup_f32 v47, v46, v64, v34
	v_div_fixup_f32 v46, v65, v64, v35
	v_div_fixup_f32 v35, v68, v64, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v38, v37
	v_div_fixup_f32 v33, v69, v64, v39
	v_div_fixup_f32 v34, v70, v64, v40
	v_fma_f32 v39, -v37, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, vcc_lo, v25, v64, v25
	v_mul_f32_e32 v40, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v37, v40, v39
	v_fmac_f32_e32 v40, v65, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v37, v40, v39
	v_div_fmas_f32 v37, v37, v38, v40
	v_div_scale_f32 v38, null, v64, v64, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v40, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v26, v64, v26
	v_mul_f32_e32 v65, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v38, v65, v40
	v_fmac_f32_e32 v65, v66, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v65, v40
	v_div_fmas_f32 v38, v38, v39, v65
	v_div_scale_f32 v39, null, v64, v64, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v65, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v65, v40
	v_div_scale_f32 v65, vcc_lo, v27, v64, v27
	v_mul_f32_e32 v66, v65, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v39, v66, v65
	v_fmac_f32_e32 v66, v67, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v66, v65
	v_div_fmas_f32 v65, v39, v40, v66
	v_div_scale_f32 v39, null, v64, v64, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v66, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v66, v40
	v_div_scale_f32 v66, vcc_lo, v28, v64, v28
	v_mul_f32_e32 v67, v66, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v39, v67, v66
	v_fmac_f32_e32 v67, v68, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v67, v66
	v_div_fmas_f32 v66, v39, v40, v67
	v_div_scale_f32 v39, null, v64, v64, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v67, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v67, v40
	v_div_scale_f32 v67, vcc_lo, v29, v64, v29
	v_mul_f32_e32 v68, v67, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v39, v68, v67
	v_fmac_f32_e32 v68, v69, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v68, v67
	v_div_fmas_f32 v67, v39, v40, v68
	v_div_scale_f32 v39, null, v64, v64, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v68, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v68, v40
	v_div_scale_f32 v68, vcc_lo, v30, v64, v30
	v_mul_f32_e32 v69, v68, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v39, v69, v68
	v_fmac_f32_e32 v69, v70, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v69, v68
	v_div_fmas_f32 v68, v39, v40, v69
	v_div_scale_f32 v39, null, v64, v64, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v69, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v69, v40
	v_div_scale_f32 v69, vcc_lo, v31, v64, v31
	v_mul_f32_e32 v70, v69, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v39, v70, v69
	v_fmac_f32_e32 v70, v71, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v70, v69
	v_div_fmas_f32 v69, v39, v40, v70
	v_div_scale_f32 v39, null, v64, v64, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v70, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v70, v40
	v_div_scale_f32 v70, vcc_lo, v32, v64, v32
	v_mul_f32_e32 v71, v70, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v39, v71, v70
	v_fmac_f32_e32 v71, v72, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v71, v70
	v_div_fmas_f32 v70, v39, v40, v71
	v_div_fixup_f32 v40, v37, v64, v25
	v_div_fixup_f32 v37, v66, v64, v28
	v_div_fixup_f32 v28, v67, v64, v29
	v_div_scale_f32 v29, null, v64, v64, v49
	v_div_fixup_f32 v39, v38, v64, v26
	v_div_fixup_f32 v38, v65, v64, v27
	v_div_fixup_f32 v27, v68, v64, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v30, v29
	v_div_fixup_f32 v26, v69, v64, v31
	v_div_fixup_f32 v25, v70, v64, v32
	v_fma_f32 v31, -v29, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v49, v64, v49
	v_mul_f32_e32 v32, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v29, v32, v31
	v_fmac_f32_e32 v32, v65, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v29, v32, v31
	v_div_fmas_f32 v29, v29, v30, v32
	v_div_scale_f32 v30, null, v64, v64, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v31, v30
	v_fma_f32 v32, -v30, v31, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v32, v31
	v_div_scale_f32 v32, vcc_lo, v50, v64, v50
	v_mul_f32_e32 v65, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v30, v65, v32
	v_fmac_f32_e32 v65, v66, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v30, v65, v32
	v_div_fmas_f32 v30, v30, v31, v65
	v_div_scale_f32 v31, null, v64, v64, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v32, v31
	v_fma_f32 v65, -v31, v32, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v65, v32
	v_div_scale_f32 v65, vcc_lo, v51, v64, v51
	v_mul_f32_e32 v66, v65, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v31, v66, v65
	v_fmac_f32_e32 v66, v67, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v31, v66, v65
	v_div_fmas_f32 v31, v31, v32, v66
	v_div_scale_f32 v32, null, v64, v64, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v65, v32
	v_fma_f32 v66, -v32, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v52, v64, v52
	v_mul_f32_e32 v67, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v32, v67, v66
	v_fmac_f32_e32 v67, v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v67, v66
	v_div_fmas_f32 v32, v32, v65, v67
	v_div_scale_f32 v65, null, v64, v64, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v65
	v_fma_f32 v67, -v65, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v53, v64, v53
	v_mul_f32_e32 v68, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v65, v68, v67
	v_fmac_f32_e32 v68, v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v65, v68, v67
	v_div_fmas_f32 v67, v65, v66, v68
	v_div_scale_f32 v65, null, v64, v64, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v65
	v_fma_f32 v68, -v65, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v68, v66
	v_div_scale_f32 v68, vcc_lo, v54, v64, v54
	v_mul_f32_e32 v69, v68, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v65, v69, v68
	v_fmac_f32_e32 v69, v70, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v65, v69, v68
	v_div_fmas_f32 v68, v65, v66, v69
	v_div_scale_f32 v65, null, v64, v64, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v65
	v_fma_f32 v69, -v65, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v69, v66
	v_div_scale_f32 v69, vcc_lo, v55, v64, v55
	v_mul_f32_e32 v70, v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v65, v70, v69
	v_fmac_f32_e32 v70, v71, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v65, v70, v69
	v_div_fmas_f32 v69, v65, v66, v70
	v_div_scale_f32 v65, null, v64, v64, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v65
	v_fma_f32 v70, -v65, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v70, v66
	v_div_scale_f32 v70, vcc_lo, v56, v64, v56
	v_mul_f32_e32 v71, v70, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v65, v71, v70
	v_fmac_f32_e32 v71, v72, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v65, v71, v70
	v_div_fmas_f32 v70, v65, v66, v71
	v_div_fixup_f32 v65, v30, v64, v50
	v_div_fixup_f32 v50, v31, v64, v51
	v_div_scale_f32 v51, null, v64, v64, v9
	v_div_fixup_f32 v66, v29, v64, v49
	v_div_fixup_f32 v49, v32, v64, v52
	v_div_fixup_f32 v32, v67, v64, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v52, v51
	v_div_fixup_f32 v31, v68, v64, v54
	v_div_fixup_f32 v30, v69, v64, v55
	v_div_fixup_f32 v29, v70, v64, v56
	v_fma_f32 v53, -v51, v52, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, v53, v52
	v_div_scale_f32 v53, vcc_lo, v9, v64, v9
	v_mul_f32_e32 v54, v53, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v55, -v51, v54, v53
	v_fmac_f32_e32 v54, v55, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v51, v54, v53
	v_div_fmas_f32 v51, v51, v52, v54
	v_div_scale_f32 v52, null, v64, v64, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v53, v52
	v_fma_f32 v54, -v52, v53, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v54, v53
	v_div_scale_f32 v54, vcc_lo, v10, v64, v10
	v_mul_f32_e32 v55, v54, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, -v52, v55, v54
	v_fmac_f32_e32 v55, v56, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v52, v55, v54
	v_div_fmas_f32 v52, v52, v53, v55
	v_div_scale_f32 v53, null, v64, v64, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v54, v53
	v_fma_f32 v55, -v53, v54, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v54, v55, v54
	v_div_scale_f32 v55, vcc_lo, v11, v64, v11
	v_mul_f32_e32 v56, v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v53, v56, v55
	v_fmac_f32_e32 v56, v67, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v53, v56, v55
	v_div_fmas_f32 v55, v53, v54, v56
	v_div_scale_f32 v53, null, v64, v64, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v54, v53
	v_fma_f32 v56, -v53, v54, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v54, v56, v54
	v_div_scale_f32 v56, vcc_lo, v12, v64, v12
	v_mul_f32_e32 v67, v56, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v53, v67, v56
	v_fmac_f32_e32 v67, v68, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v53, v67, v56
	v_div_fmas_f32 v56, v53, v54, v67
	v_div_scale_f32 v53, null, v64, v64, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v54, v53
	v_fma_f32 v67, -v53, v54, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v54, v67, v54
	v_div_scale_f32 v67, vcc_lo, v13, v64, v13
	v_mul_f32_e32 v68, v67, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v53, v68, v67
	v_fmac_f32_e32 v68, v69, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v53, v68, v67
	v_div_fmas_f32 v67, v53, v54, v68
	v_div_scale_f32 v53, null, v64, v64, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v54, v53
	v_fma_f32 v68, -v53, v54, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v54, v68, v54
	v_div_scale_f32 v68, vcc_lo, v14, v64, v14
	v_mul_f32_e32 v69, v68, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v53, v69, v68
	v_fmac_f32_e32 v69, v70, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v53, v69, v68
	v_div_fmas_f32 v68, v53, v54, v69
	v_div_scale_f32 v53, null, v64, v64, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v54, v53
	v_fma_f32 v69, -v53, v54, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v54, v69, v54
	v_div_scale_f32 v69, vcc_lo, v15, v64, v15
	v_mul_f32_e32 v70, v69, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v53, v70, v69
	v_fmac_f32_e32 v70, v71, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v53, v70, v69
	v_div_fmas_f32 v69, v53, v54, v70
	v_div_scale_f32 v53, null, v64, v64, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v54, v53
	v_fma_f32 v70, -v53, v54, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v54, v70, v54
	v_div_scale_f32 v70, vcc_lo, v16, v64, v16
	v_mul_f32_e32 v71, v70, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v53, v71, v70
	v_fmac_f32_e32 v71, v72, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v53, v71, v70
	v_div_fmas_f32 v70, v53, v54, v71
	v_div_fixup_f32 v53, v52, v64, v10
	v_div_fixup_f32 v52, v55, v64, v11
	v_div_fixup_f32 v11, v67, v64, v13
	v_div_scale_f32 v13, null, v64, v64, v1
	v_div_fixup_f32 v54, v51, v64, v9
	v_div_fixup_f32 v9, v68, v64, v14
	v_div_fixup_f32 v51, v56, v64, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v14, v13
	v_div_fixup_f32 v12, v69, v64, v15
	v_div_fixup_f32 v10, v70, v64, v16
	v_fma_f32 v15, -v13, v14, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v1, v64, v1
	v_mul_f32_e32 v16, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v55, -v13, v16, v15
	v_fmac_f32_e32 v16, v55, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v13, -v13, v16, v15
	v_div_fmas_f32 v13, v13, v14, v16
	v_div_scale_f32 v14, null, v64, v64, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v15, v14
	v_fma_f32 v16, -v14, v15, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, v16, v15
	v_div_scale_f32 v16, vcc_lo, v2, v64, v2
	v_mul_f32_e32 v55, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, -v14, v55, v16
	v_fmac_f32_e32 v55, v56, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v14, -v14, v55, v16
	v_div_fmas_f32 v14, v14, v15, v55
	v_div_scale_f32 v15, null, v64, v64, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v14, v14, v64, v2
	v_rcp_f32_e32 v16, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v55, -v15, v16, 1.0
	v_fmac_f32_e32 v16, v55, v16
	v_div_scale_f32 v55, vcc_lo, v3, v64, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v56, v55, v16
	v_fma_f32 v67, -v15, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v67, v16
	v_fma_f32 v15, -v15, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v16, v15, v16, v56
	v_div_scale_f32 v15, null, v64, v64, v4
	v_rcp_f32_e32 v55, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, -v15, v55, 1.0
	v_fmac_f32_e32 v55, v56, v55
	v_div_scale_f32 v56, vcc_lo, v4, v64, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v56, v55
	v_fma_f32 v68, -v15, v67, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v55
	v_fma_f32 v15, -v15, v67, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v55, v15, v55, v67
	v_div_scale_f32 v15, null, v64, v64, v5
	v_div_fixup_f32 v2, v55, v64, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v56, v15
	v_fma_f32 v67, -v15, v56, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v67, v56
	v_div_scale_f32 v67, vcc_lo, v5, v64, v5
	v_mul_f32_e32 v68, v67, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v15, v68, v67
	v_fmac_f32_e32 v68, v69, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v15, v68, v67
	v_div_fmas_f32 v56, v15, v56, v68
	v_div_scale_f32 v15, null, v64, v64, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v15
	v_fma_f32 v68, -v15, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v6, v64, v6
	v_mul_f32_e32 v69, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v15, v69, v68
	v_fmac_f32_e32 v69, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v15, v69, v68
	v_div_fmas_f32 v67, v15, v67, v69
	v_div_scale_f32 v15, null, v64, v64, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v4, v67, v64, v6
	v_rcp_f32_e32 v68, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v15, v68, 1.0
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v7, v64, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v69, v68
	v_fma_f32 v71, -v15, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v68
	v_fma_f32 v15, -v15, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v68, v15, v68, v70
	v_div_scale_f32 v15, null, v64, v64, v8
	v_rcp_f32_e32 v69, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v15, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v8, v64, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v15, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v15, -v15, v71, v70
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v69, v15, v69, v71
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e32 vcc_lo, 0, v64
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v15, v13, v64, v1
	v_div_fixup_f32 v13, v16, v64, v3
	v_div_fixup_f32 v3, v56, v64, v5
	v_div_fixup_f32 v5, v68, v64, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v6, 0, v82, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v1, v69, v64, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_dual_cndmask_b32 v0, 0, v0 :: v_dual_cndmask_b32 v27, 0, v27
	v_cndmask_b32_e32 v28, 0, v28, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v7, v6, 16, 1
	v_cmp_o_f32_e64 s2, v6, v6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v26, 0, v26, vcc_lo
	v_cndmask_b32_e32 v30, 0, v30, vcc_lo
	v_cndmask_b32_e32 v12, 0, v12, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v7, v6, v7, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v6, 0, v81, vcc_lo
	v_cndmask_b32_e32 v10, 0, v10, vcc_lo
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
	v_dual_cndmask_b32 v4, 0, v4 :: v_dual_cndmask_b32 v25, 0, v25
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v8, v6, 16, 1
	v_cmp_o_f32_e64 s3, v6, v6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v31, 0, v31, vcc_lo
	v_cndmask_b32_e32 v29, 0, v29, vcc_lo
	v_cndmask_b32_e32 v11, 0, v11, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v8, v6, v8, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_dual_cndmask_b32 v6, 0, v74 :: v_dual_cndmask_b32 v15, 0, v15
	v_cndmask_b32_e32 v9, 0, v9, vcc_lo
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
	v_cndmask_b32_e32 v5, 0, v5, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v16, v6, 16, 1
	v_cmp_o_f32_e64 s4, v6, v6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v16, v6, v16, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v6, 0, v73, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v7.l, 0x7fff, v16.h, s4
	v_bfe_u32 v55, v6, 16, 1
	v_cmp_o_f32_e64 s5, v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v55, v6, v55, 0x7fff
	v_cndmask_b16 v6.l, 0x7fff, v7.h, s2
	v_cndmask_b16 v6.h, 0x7fff, v8.h, s3
	v_cmp_o_f32_e64 s3, v0, v0
	v_cndmask_b16 v7.h, 0x7fff, v55.h, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v8, v6, v7, s0
	v_cndmask_b32_e64 v6, v7, v6, s0
	v_permlanex16_b32 v7, v8, s8, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v67, v7, v6, v248
	v_perm_b32 v68, v7, v6, v249
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v6, 0, v18, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v7, v6, 16, 1
	v_cmp_o_f32_e64 s2, v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v7, v6, v7, 0x7fff
	v_bfe_u32 v6, v0, 16, 1
	v_add3_u32 v6, v0, v6, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v0, 0, v19, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v8, v0, 16, 1
	v_cmp_o_f32_e64 s4, v0, v0
	v_add3_u32 v8, v0, v8, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v0, 0, v17, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v6.l, 0x7fff, v8.h, s4
	v_bfe_u32 v16, v0, 16, 1
	v_cmp_o_f32_e64 s5, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v16, v0, v16, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v7.h, s2
	v_cndmask_b16 v0.h, 0x7fff, v6.h, s3
	v_cndmask_b16 v6.h, 0x7fff, v16.h, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v7, v0, v6, s0
	v_cndmask_b32_e64 v0, v6, v0, s0
	v_permlanex16_b32 v6, v7, s8, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v69, v6, v0, v248
	v_perm_b32 v70, v6, v0, v249
	.loc	1 1046 24                       ; attention.py:1046:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:324
	scratch_load_b32 v6, off, off offset:320
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v0, s18, v0
	.loc	1 1046 74 is_stmt 0             ; attention.py:1046:74
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v6, 1, v6
	s_mov_b32 s18, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v0, s29, v0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_and_b32_e32 v55, 8, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s29, v55
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v6, v0, v55, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s2, s1, s2
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	buffer_store_b128 v[67:70], v6, s[16:19], 0 offen
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v6, 0, v59, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v7, v6, 16, 1
	v_cmp_o_f32_e64 s2, v6, v6
	v_add3_u32 v7, v6, v7, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v6, 0, v58, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v8, v6, 16, 1
	v_cmp_o_f32_e64 s3, v6, v6
	v_add3_u32 v8, v6, v8, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v6, 0, v57, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v16, v6, 16, 1
	v_cmp_o_f32_e64 s4, v6, v6
	v_add3_u32 v16, v6, v16, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v6, 0, v24, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v7.l, 0x7fff, v16.h, s4
	v_bfe_u32 v17, v6, 16, 1
	v_cmp_o_f32_e64 s5, v6, v6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v16, 0, v21, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v17, v6, v17, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v6, 0, v23, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v18, v6, 16, 1
	v_cmp_o_f32_e64 s6, v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v18, v6, v18, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v6, 0, v22, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.l, 0x7fff, v18.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v19, v6, 16, 1
	v_cmp_o_f32_e64 s7, v6, v6
	v_add3_u32 v19, v6, v19, 0x7fff
	v_cndmask_b16 v6.l, 0x7fff, v7.h, s2
	v_cndmask_b16 v7.h, 0x7fff, v17.h, s5
	v_bfe_u32 v17, v16, 16, 1
	v_cmp_o_f32_e64 s2, v16, v16
	v_cndmask_b16 v6.h, 0x7fff, v8.h, s3
	v_cndmask_b16 v8.h, 0x7fff, v19.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v17, v16, v17, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v16, 0, v20, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v18, v16, 16, 1
	v_cmp_o_f32_e64 s3, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v18, v16, v18, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v16, 0, v63, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v19, v16, 16, 1
	v_cmp_o_f32_e64 s4, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v19, v16, v19, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v16, 0, v62, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.l, 0x7fff, v19.h, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_bfe_u32 v20, v16, 16, 1
	v_cmp_o_f32_e64 s5, v16, v16
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v19, 0, v44, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v20, v16, v20, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v16, 0, v61, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v21, v16, 16, 1
	v_cmp_o_f32_e64 s6, v16, v16
	v_add3_u32 v21, v16, v21, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v16, 0, v60, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.l, 0x7fff, v21.h, s6
	v_bfe_u32 v22, v16, 16, 1
	v_cmp_o_f32_e64 s7, v16, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v22, v16, v22, 0x7fff
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s2
	v_cndmask_b16 v17.h, 0x7fff, v20.h, s5
	v_bfe_u32 v20, v19, 16, 1
	v_cmp_o_f32_e64 s2, v19, v19
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s3
	v_cndmask_b16 v18.h, 0x7fff, v22.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v20, v19, v20, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v19, 0, v42, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v21, v19, 16, 1
	v_cmp_o_f32_e64 s3, v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v21, v19, v21, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v19, 0, v43, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v22, v19, 16, 1
	v_cmp_o_f32_e64 s4, v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v22, v19, v22, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v19, 0, v41, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v20.l, 0x7fff, v22.h, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_bfe_u32 v23, v19, 16, 1
	v_cmp_o_f32_e64 s5, v19, v19
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v22, 0, v46, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v23, v19, v23, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v19, 0, v48, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v24, v19, 16, 1
	v_cmp_o_f32_e64 s6, v19, v19
	v_add3_u32 v24, v19, v24, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v19, 0, v47, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v21.l, 0x7fff, v24.h, s6
	v_bfe_u32 v41, v19, 16, 1
	v_cmp_o_f32_e64 s7, v19, v19
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v41, v19, v41, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v20.h, s2
	v_cndmask_b16 v20.h, 0x7fff, v23.h, s5
	v_bfe_u32 v23, v22, 16, 1
	v_cmp_o_f32_e64 s2, v22, v22
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s3
	v_cndmask_b16 v21.h, 0x7fff, v41.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v23, v22, v23, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v22, 0, v45, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v24, v22, 16, 1
	v_cmp_o_f32_e64 s3, v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v24, v22, v24, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v22, 0, v36, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v36, v22, 16, 1
	v_cmp_o_f32_e64 s4, v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v36, v22, v36, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v22, 0, v35, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v23.l, 0x7fff, v36.h, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v35, v22, 16, 1
	v_cmp_o_f32_e64 s5, v22, v22
	v_add3_u32 v35, v22, v35, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v22, 0, v33, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v33, v22, 16, 1
	v_cmp_o_f32_e64 s6, v22, v22
	v_add3_u32 v33, v22, v33, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v22, 0, v34, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v24.l, 0x7fff, v33.h, s6
	v_bfe_u32 v34, v22, 16, 1
	v_cmp_o_f32_e64 s7, v22, v22
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v33, 0, v40, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v28, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v34, v22, v34, 0x7fff
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s3
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s2
	v_cmp_o_f32_e64 s2, v33, v33
	v_cndmask_b16 v23.h, 0x7fff, v35.h, s5
	v_cndmask_b16 v24.h, 0x7fff, v34.h, s7
	v_bfe_u32 v34, v33, 16, 1
	v_cmp_o_f32_e64 s7, v27, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v33, 0, v39, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v35, v33, 16, 1
	v_cmp_o_f32_e64 s3, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v33, v35, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v33, 0, v38, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v36, v33, 16, 1
	v_cmp_o_f32_e64 s4, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v36, v33, v36, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v33, 0, v37, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v34.l, 0x7fff, v36.h, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v37, v33, 16, 1
	v_cmp_o_f32_e64 s5, v33, v33
	v_add3_u32 v37, v33, v37, 0x7fff
	v_bfe_u32 v33, v28, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v33, v28, v33, 0x7fff
	v_bfe_u32 v28, v27, 16, 1
	v_add3_u32 v28, v27, v28, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v28.l, 0x7fff, v33.h, s6
	v_bfe_u32 v33, v26, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v34.h, s2
	v_cmp_o_f32_e64 s2, v26, v26
	v_cndmask_b16 v27.h, 0x7fff, v35.h, s3
	v_cmp_o_f32_e64 s3, v25, v25
	v_add3_u32 v33, v26, v33, 0x7fff
	v_bfe_u32 v26, v25, 16, 1
	v_cndmask_b16 v34.h, 0x7fff, v37.h, s5
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v26, v25, v26, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v25, 0, v66, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v35, v25, 16, 1
	v_cmp_o_f32_e64 s4, v25, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v25, v35, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v25, 0, v65, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v36, v25, 16, 1
	v_cmp_o_f32_e64 s5, v25, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v36, v25, v36, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v25, 0, v50, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v37, v25, 16, 1
	v_cmp_o_f32_e64 s6, v25, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v37, v25, v37, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v25, 0, v49, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_bfe_u32 v38, v25, 16, 1
	v_cmp_o_f32_e64 s7, v25, v25
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v37, 0, v54, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v38, v25, v38, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v26, 0, v32, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.l, 0x7fff, v33.h, s2
	v_cndmask_b16 v32.h, 0x7fff, v36.h, s5
	v_bfe_u32 v36, v31, 16, 1
	v_cmp_o_f32_e64 s3, v31, v31
	v_bfe_u32 v33, v26, 16, 1
	v_cmp_o_f32_e64 s2, v26, v26
	v_cndmask_b16 v32.l, 0x7fff, v35.h, s4
	v_add3_u32 v36, v31, v36, 0x7fff
	v_bfe_u32 v31, v29, 16, 1
	v_add3_u32 v33, v26, v33, 0x7fff
	v_bfe_u32 v26, v30, 16, 1
	v_cndmask_b16 v35.h, 0x7fff, v38.h, s7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v38, 0, v53, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s4, v30, v30
	v_cmp_o_f32_e64 s5, v29, v29
	v_add3_u32 v26, v30, v26, 0x7fff
	v_add3_u32 v30, v29, v31, 0x7fff
	v_bfe_u32 v31, v37, 16, 1
	v_bfe_u32 v29, v38, 16, 1
	v_cmp_o_f32_e64 s6, v37, v37
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s2
	v_cndmask_b16 v33.h, 0x7fff, v36.h, s3
	v_add3_u32 v31, v37, v31, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_dual_cndmask_b32 v37, 0, v52 :: v_dual_cndmask_b32 v36, 0, v51
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v38, v29, 0x7fff
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s4
	v_cndmask_b16 v26.h, 0x7fff, v30.h, s5
	s_delay_alu instid0(VALU_DEP_4)
	v_bfe_u32 v30, v37, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v31.h, s6
	v_bfe_u32 v31, v36, 16, 1
	v_cmp_o_f32_e64 s7, v38, v38
	v_bfe_u32 v38, v11, 16, 1
	v_add3_u32 v30, v37, v30, 0x7fff
	v_cmp_o_f32_e64 s2, v37, v37
	v_add3_u32 v31, v36, v31, 0x7fff
	v_cmp_o_f32_e64 s3, v36, v36
	v_add3_u32 v36, v11, v38, 0x7fff
	v_cmp_o_f32_e64 s4, v11, v11
	v_bfe_u32 v11, v9, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s2
	v_bfe_u32 v37, v12, 16, 1
	v_cndmask_b16 v30.h, 0x7fff, v31.h, s3
	v_bfe_u32 v31, v10, 16, 1
	v_add3_u32 v11, v9, v11, 0x7fff
	v_cmp_o_f32_e64 s2, v9, v9
	v_add3_u32 v9, v12, v37, 0x7fff
	v_cmp_o_f32_e64 s3, v12, v12
	v_add3_u32 v12, v10, v31, 0x7fff
	v_cmp_o_f32_e64 s5, v10, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v10, 0, v14, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v14, v15, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s3
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s2
	v_cndmask_b16 v9.h, 0x7fff, v12.h, s5
	v_bfe_u32 v31, v10, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v12, 0, v13, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v13, v15, v14, 0x7fff
	v_cmp_o_f32_e64 s2, v15, v15
	v_cmp_o_f32_e64 s3, v10, v10
	v_add3_u32 v14, v10, v31, 0x7fff
	v_bfe_u32 v10, v12, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v36.h, s4
	v_cmp_o_f32_e64 s4, v12, v12
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s2
	v_cndmask_b16 v13.h, 0x7fff, v14.h, s3
	v_add3_u32 v10, v12, v10, 0x7fff
	v_bfe_u32 v12, v2, 16, 1
	v_bfe_u32 v14, v3, 16, 1
	v_bfe_u32 v15, v4, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_cmp_o_f32_e64 s2, v3, v3
	v_add3_u32 v12, v2, v12, 0x7fff
	v_add3_u32 v2, v3, v14, 0x7fff
	v_bfe_u32 v14, v5, 16, 1
	v_add3_u32 v3, v4, v15, 0x7fff
	v_cmp_o_f32_e64 s3, v4, v4
	v_bfe_u32 v4, v1, 16, 1
	v_cmp_o_f32_e64 s5, v5, v5
	v_add3_u32 v14, v5, v14, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v10.h, s4
	v_cmp_o_f32_e64 s4, v1, v1
	v_add3_u32 v4, v1, v4, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s7
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s2
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v5.h, 0x7fff, v12.h, vcc_lo
	v_cndmask_b16 v2.l, 0x7fff, v14.h, s5
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s4
	v_cndmask_b32_e64 v3, v8, v6, s0
	v_cndmask_b32_e64 v4, v6, v8, s0
	v_cndmask_b32_e64 v6, v16, v7, s0
	v_cndmask_b32_e64 v7, v7, v16, s0
	v_cndmask_b32_e64 v8, v19, v17, s0
	v_cndmask_b32_e64 v10, v17, v19, s0
	v_cndmask_b32_e64 v12, v20, v18, s0
	v_cndmask_b32_e64 v14, v18, v20, s0
	v_cndmask_b32_e64 v15, v23, v21, s0
	v_cndmask_b32_e64 v16, v21, v23, s0
	v_cndmask_b32_e64 v17, v24, v22, s0
	v_cndmask_b32_e64 v18, v22, v24, s0
	v_cndmask_b32_e64 v19, v28, v27, s0
	v_cndmask_b32_e64 v20, v27, v28, s0
	v_cndmask_b32_e64 v21, v25, v34, s0
	v_cndmask_b32_e64 v22, v34, v25, s0
	v_cndmask_b32_e64 v24, v32, v33, s0
	v_cndmask_b32_e64 v25, v26, v35, s0
	v_cndmask_b32_e64 v26, v35, v26, s0
	v_cndmask_b32_e64 v27, v11, v29, s0
	v_cndmask_b32_e64 v11, v29, v11, s0
	v_cndmask_b32_e64 v28, v9, v30, s0
	v_cndmask_b32_e64 v9, v30, v9, s0
	v_cndmask_b32_e64 v29, v1, v13, s0
	v_cndmask_b32_e64 v1, v13, v1, s0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v31, 16, v55
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v30, v2, v5, s0
	v_cndmask_b32_e64 v2, v5, v2, s0
	v_cndmask_b32_e64 v23, v33, v32, s0
	v_permlanex16_b32 v4, v4, s8, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v7, s8, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v10, s8, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v14, s8, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v16, s8, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v18, s8, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v20, s8, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v22, s8, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v24, s8, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v26, s8, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v11, s8, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v9, s8, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v1, s8, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s29, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_permlanex16_b32 v33, v2, s8, 0xfedcba98 op_sel:[1,0]
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v31, v0, v31, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v1, v4, v3, v248
	v_perm_b32 v2, v4, v3, v249
	v_perm_b32 v3, v5, v6, v248
	v_perm_b32 v4, v5, v6, v249
	v_perm_b32 v5, v7, v8, v248
	v_perm_b32 v6, v7, v8, v249
	v_perm_b32 v7, v10, v12, v248
	v_perm_b32 v8, v10, v12, v249
	v_perm_b32 v9, v13, v15, v248
	v_perm_b32 v10, v13, v15, v249
	v_perm_b32 v11, v14, v17, v248
	v_perm_b32 v12, v14, v17, v249
	v_perm_b32 v13, v16, v19, v248
	v_perm_b32 v14, v16, v19, v249
	v_perm_b32 v15, v18, v21, v248
	v_perm_b32 v16, v18, v21, v249
	v_perm_b32 v17, v20, v23, v248
	v_perm_b32 v18, v20, v23, v249
	v_perm_b32 v19, v22, v25, v248
	v_perm_b32 v20, v22, v25, v249
	v_perm_b32 v21, v24, v27, v248
	v_perm_b32 v22, v24, v27, v249
	v_perm_b32 v23, v26, v28, v248
	v_perm_b32 v24, v26, v28, v249
	v_perm_b32 v25, v32, v29, v248
	v_perm_b32 v26, v32, v29, v249
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	v_or_b32_e32 v29, 32, v55
	v_or_b32_e32 v32, 48, v55
	v_or_b32_e32 v34, 64, v55
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s1, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v27, v33, v30, v248
	v_perm_b32 v28, v33, v30, v249
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v30, 0x50, v55
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s29, v29
	v_cmp_gt_i32_e64 s2, s29, v32
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 0x60, v55
	v_or_b32_e32 v35, 0x70, v55
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s29, v34
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v29, v0, v29, 1
	v_add_lshl_u32 v32, v0, v32, 1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s29, v30
	.loc	1 1049 17                       ; attention.py:1049:17
	buffer_store_b128 v[1:4], v31, s[16:19], 0 offen
	v_add_lshl_u32 v1, v0, v34, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s1, s0
	s_and_b32 s0, s1, s2
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s29, v33
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	v_add_lshl_u32 v3, v0, v30, 1
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s29, v35
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v2, 0x80000000, v32, s0
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s0, s1, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v4, v0, v33, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_add_lshl_u32 v0, v0, v35, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s0, s1, s4
	s_and_b32 vcc_lo, s1, vcc_lo
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s0, s1, s5
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	s_clause 0x5
	buffer_store_b128 v[5:8], v29, s[16:19], 0 offen
	buffer_store_b128 v[9:12], v2, s[16:19], 0 offen
	buffer_store_b128 v[13:16], v1, s[16:19], 0 offen
	buffer_store_b128 v[17:20], v3, s[16:19], 0 offen
	buffer_store_b128 v[21:24], v4, s[16:19], 0 offen
	buffer_store_b128 v[25:28], v0, s[16:19], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp55:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 332
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
		.amdhsa_next_free_sgpr 34
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1.numbered_sgpr, 34
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1.private_seg_size, 332
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21224
; TotalNumSgprs: 36
; NumVgprs: 256
; ScratchSize: 332
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 36
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
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
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
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
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
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1
    .private_segment_fixed_size: 332
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d192_dv128_hq128_hkv128_lq2048_lk2048_bm64_bn32_w4_s2_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 85
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
